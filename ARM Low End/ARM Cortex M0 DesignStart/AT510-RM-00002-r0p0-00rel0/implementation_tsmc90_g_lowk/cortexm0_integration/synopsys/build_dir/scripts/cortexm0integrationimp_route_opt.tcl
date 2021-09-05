#############################################################################
# Copyright Notice and Proprietary Information
#
# Copyright (c) 2001-2009 ARM Limited and Synopsys, Inc. All rights reserved.
#
# The  accompanying  software  and   documentation  contain  confidential and
# proprietary   information   that  is   the  property  of  ARM  Limited  and
# Synopsys,  Inc.   No   part  of  the  software   or  documentation  may  be
# reproduced, transmitted,  or  translated  in  any form  or  by  any  means,
# electronic,  mechanical, optical  or  otherwise  without the  prior written
# permission of Synopsys, Inc. and  ARM Limited.  If  you have  entered  into
# a  license  with  Synopsys,  Inc.  or  ARM  Limited   with  regard  to  the
# accompanying software and documentation, please  refer  to  that  agreement
# for  details  on   your  applicable   license   rights,  restrictions   and
# conditions.
#############################################################################

#############################################################################
# Right to Copy Documentation
# Except with the  prior written  permission of  ARM  Limited  and  Synopsys,
# Inc. copies of  the  documentation  shall only  be  made for  internal use.
#############################################################################

#############################################################################
# Disclaimer
# THE  ACCOMPANYING SOFTWARE AND  DOCUMENTATION  IS  PROVIDED "AS IS" WITHOUT
# WARRANTY  OF  ANY  KIND.  ARM  LIMITED, SYNOPSYS, INC. AND  THEIR LICENSORS
# HEREBY  DISCLAIM ALL  EXPRESS  OR  IMPLIED  WARRANTIES, INCLUDING, BUT  NOT
# LIMITED  TO, THE  IMPLIED  WARRANTIES  OF  MERCHANTABILITY, FITNESS  FOR  A
# PARTICULAR PURPOSE, TITLE, AND NON INFRINGEMENT.
#
# IN  NO EVENT  SHALL  ARM  LIMITED, SYNOPSYS,  INC. OR  THEIR  LICENSORS  BE
# LIABLE TO YOU OR  ANY OTHER PARTY  FOR ANY  INDIRECT, INCIDENTAL,  SPECIAL,
# EXEMPLARY,  OR  CONSEQUENTIAL  DAMAGES  (INCLUDING,  BUT  NOT  LIMITED  TO,
# PROCUREMENT  OF  SUBSTITUTE  GOODS  OR  SERVICES;  LOSS  OF  USE,  DATA, OR
# PROFITS; OR BUSINESS  INTERRUPTION) HOWEVER  CAUSED AND  ON  ANY THEORY  OF
# LIABILITY, WHETHER  IN  CONTRACT,  STRICT  LIABILITY,  OR  TORT  (INCLUDING
# NEGLIGENCE  OR  OTHERWISE)  ARISING  IN  ANY  WAY  OUT  OF  THE USE  OF THE
# ACCOMPANYING   SOFTWARE  OR   DOCUMENTATION,  EVEN  IF   ADVISED   OF   THE
# POSSIBILITY OF SUCH DAMAGE.
#############################################################################
#####################################################################################
#
# File Name     : cortexm0integrationimp_route_opt.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Detail route optimization of the CORTEXM0INTEGRATIONIMP.
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

set rm_task     route_opt
sh hostname
date

# -----------------------------------------------------------------------------------
# Setup the Configuration
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/core_config.tcl
source -echo -verbose ../scripts/cortexm0integrationimp_config.tcl

# -----------------------------------------------------------------------------------
# Setup the Target Technology
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0integrationimp_tech.tcl

# -----------------------------------------------------------------------------------
# Define link libraries; add Designware to path
# -----------------------------------------------------------------------------------

set link_path [list *]

## If MCMM mode is enabled, both worst and best-case libs are required
foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
  if { ${rm_use_mcmm} } {
    set link_path [concat ${link_path} ${max_lib} ${min_lib}]
  } else {
    set link_path [concat ${link_path} ${max_lib} ]
  }
}

## If MCMM mode is enabled, both worst and best-case libs are required
## in the target library
if { ${rm_use_mcmm} } {
  set target_library [concat ${rm_target_library} ${rm_best_library}]
} else {
  set target_library ${rm_target_library}
}

set search_path    ${rm_search_path}

# -----------------------------------------------------------------------------------
# Copy & Read the Design from the Floorplanning Step
# -----------------------------------------------------------------------------------

set mw_reference_library ${rm_mw_reflib}

open_mw_lib CORTEXM0INTEGRATIONIMP

copy_mw_cel  -from 4_clockopt \
             -to   5_routeopt

open_mw_cel        5_routeopt

# -----------------------------------------------------------------------------------
# Ensure TLU+ files are loaded in library
# -----------------------------------------------------------------------------------

if { !${rm_use_mcmm} } {
  set_tlu_plus_files -max_tluplus  ${rm_max_tluplus_file} \
                     -min_tluplus  ${rm_min_tluplus_file} \
                     -tech2itf_map ${rm_tf2itf_map_file}

  # Set min libraries if they exist
  foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
    set_min_library $max_lib -min_version $min_lib
  }
}

# -----------------------------------------------------------------------------------
# Enable MCMM (optional)
# -----------------------------------------------------------------------------------

if { ${rm_use_mcmm} } {
  set_active_scenarios { func_worst_corner func_best_corner test_best_corner}
  update_timing
}

# -----------------------------------------------------------------------------------
# Setup the timing parameters
# -----------------------------------------------------------------------------------

# General Optimization
set compile_instance_name_prefix icc_routeopt
set compile_delete_unloaded_sequential_cells false
set timing_enable_multiple_clocks_per_reg true
set_fix_multiple_port_nets -all -buffer_constants
set_auto_disable_drc_nets -scan false
set enable_recovery_removal_arcs true
set placer_disable_auto_bound_for_gated_clock false

set psyn_onroute_disable_netlength_drc TRUE

## Disable fanout opto during route_opt. Max fanout has to be taken care of earlier in the flow.
set_app_var psyn_onroute_disable_fanout_drc true

# By default, the tool will set a critical range of 50% of the WNS, per pathgroup.
# If you want to change this behavior, please use the command below
# set_critical_range <your number> [current_design]
set_critical_range [expr ${rm_critical_range} * ${rm_clock_period} ] CORTEXM0INTEGRATIONIMP


# Density Driven Area Recovery during route_opt
set physopt_density_area_recovery true

# Set Area Critical Range
# Typical value: 3-4 percent of critical clock period
set physopt_area_critical_range [expr ${rm_clock_period} * 0.04]

# Set Power Critical Range
# Typical value: 3-4 percent of critical clock period
set physopt_power_critical_range [expr ${rm_clock_period} * 0.04]

# Specify options for Power optimization
set_power_options -leakage true \
                  -dynamic false \
                  -low_power_placement false \
                  -leakage_effort high \
                  -dynamic_effort low
set_timing_derate -max -late  -clock -net_delay -cell_delay 1.0
set_timing_derate -max -early -clock -net_delay -cell_delay [expr 1.0 - ${rm_ocv_derate_factor}]
set_timing_derate -min -late  -clock -net_delay -cell_delay [expr 1.0 + ${rm_ocv_derate_factor}]
set_timing_derate -min -early -clock -net_delay -cell_delay 1.0

# Turning on CRPR has a BIG effect on reducing the number of hold violations
set timing_remove_clock_reconvergence_pessimism true

report_preferred_routing_direction

report_tlu_plus_files


# -----------------------------------------------------------------------------------
# Read in list of dont_use cells
# -----------------------------------------------------------------------------------

foreach dont_use $rm_dont_use {
  set_dont_use [get_lib_cells ${dont_use} ]
}

# -----------------------------------------------------------------------------------
# Enable the use of tie cells
# -----------------------------------------------------------------------------------

foreach tie_cell ${rm_tie_hi_lo_list} {
# Ensure tie cells can be used by the flow
  set _cell [get_lib_cell ${tie_cell}]
  remove_attribute ${_cell} dont_touch
  remove_attribute ${_cell} dont_use
# Ensure that one cell is placed per tie-off
  set _pin [get_lib_pins ${tie_cell}/${rm_tie_cell_pin} ]
  set_attribute ${_pin} max_capacitance 0.1 -type float
  set_attribute ${_pin} max_fanout 1.0 -type float
}

# -----------------------------------------------------------------------------------
# Report constraints on min/max layers
# -----------------------------------------------------------------------------------

report_routing_rule width_and_spacing_rules

# -----------------------------------------------------------------------------------
# Route options
# -----------------------------------------------------------------------------------

report_route_opt_strategy
report_si_options

set_route_options -groute_timing_driven true \
                  -track_assign_timing_driven true \
                  -same_net_notch check_and_fix

set si_use_partial_grounding_for_min_analysis true

set_si_options -delta_delay true \
               -min_delta_delay true \
               -max_transition_mode total_slew \
               -route_xtalk_prevention true \
               -route_xtalk_prevention_threshold 0.25 \
               -static_noise true \
               -static_noise_threshold_above_low 0.35 \
               -static_noise_threshold_below_high 0.35

# Report route settings
report_route_opt_strategy
report_si_options

# Recommended for a QoR-targeted flow (2008.09)
set_delay_calculation -arnoldi

#------------------------------------------------------------------------------------
# Enable the use of Z-Route
#------------------------------------------------------------------------------------

if { ${rm_use_zroute} } {
  set_route_mode_options -zroute true
  set_route_options -same_net_notch check_and_fix
  translate_zrt_parameters -direction to_zrt
# The following variable sets the max. number of threads for zroute. This is multi-threading 
# rather than distributed routing so multiple cpus are required on the host machine. One way 
# to do this on an lsf cluster is to use: bsub -n 4 -R "span[hosts=1]"
  set_route_zrt_common_options -max_number_of_threads 1
}

# -----------------------------------------------------------------------------------
# Detail Route and Post-Route Optimizations
# -----------------------------------------------------------------------------------

route_opt -initial_route_only

save_mw_cel -as route_opt_initial

# Run via optimization - only with classic router 
if { !${rm_use_zroute} } {
  optimize_wire_via -search_repair_loop 5
}

save_mw_cel -as route_opt_initial

report_qor > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt_1.qor

# -------------

set_delay_calculation -arnoldi
route_opt -skip_initial_route -xtalk_reduction -effort medium
report_qor > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt_2.qor

# -------------

route_opt -only_hold_time -effort medium -incremental

report_qor > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt_3.qor

# -------------

set routeopt_allow_min_buffer_with_size_only true

route_opt -size_only -effort medium -incremental

report_qor > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt_4.qor

# -----------------------------------------------------------------------------------
# Add filler cells
# -----------------------------------------------------------------------------------
# Filler cell insertion in Z-Route is not currently supported
if { !${rm_use_zroute} } {
  insert_stdcell_filler \
    -cell_without_metal $rm_fill_cells_wom \
    -cell_with_metal $rm_fill_cells_wm \
    -connect_to_power $mw_power_net \
    -connect_to_ground $mw_ground_net
}

# -----------------------------------------------------------------------------------
# Connect Power & Ground ports
# -----------------------------------------------------------------------------------

derive_pg_connection -power_net VDD -ground_net VSS

# -----------------------------------------------------------------------------------
# Save the Design
# -----------------------------------------------------------------------------------

change_names -rules verilog -hierarchy

# Create QoR Snapshot and Save
if { ${rm_use_mcmm} } {
  # Note: QoR snapshot feature not yet supported in MCMM
} else {
  create_qor_snapshot -timing -constraint -congestion -clock_tree -route -name 5_routeopt
  report_qor_snapshot > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.qor_snapshot.rpt
}

save_mw_cel -as 5_routeopt

copy_mw_cel -from 5_routeopt \
            -to   CORTEXM0INTEGRATIONIMP

write_verilog -no_physical_only_cells ../data/CORTEXM0INTEGRATIONIMP.v

# Generate setup data for use by PrimeRail
create_rail_setup

# -----------------------------------------------------------------------------------
# Report on the Design
# -----------------------------------------------------------------------------------

## Report percentages from standard cell libs
if {${rm_use_multivt} } { 
  set_attribute [get_libs ${rm_hvt_lib}] default_threshold_voltage_group HVt -type string
  set_attribute [get_libs ${rm_rvt_lib}] default_threshold_voltage_group RVt -type string
  report_threshold_voltage_group     > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.Vt_groups
}

report_hierarchy                   > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.hier
report_qor                         > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.qor
report_area -physical              > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.area
report_design -physical            > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.summary
report_design                      > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.design
report_clock_tree -summary         > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.clock_tree
report_net_fanout -threshold 40    > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.fanout

# The following reports are MCMM scenario-aware
if { ${rm_use_mcmm} } {
  report_constraint -all -nos \
      -scenario [all_active_scenarios] \
     > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.constraint

  report_timing -path full_clock \
      -scenario [all_active_scenarios] \
      -delay max \
      -input_pins \
      -nets \
      -max_paths 10 \
      -transition_time \
      -crosstalk_delta \
      -capacitance  > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.max_timing

  report_timing -path  full_clock \
      -scenario [all_active_scenarios] \
      -delay min \
      -input_pins \
      -nets \
      -max_paths 10 \
      -transition_time \
      -crosstalk_delta \
      -capacitance  > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.min_timing

  report_power \
      -scenario [all_active_scenarios] \
      -nosplit > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.power
} else {
  report_constraint -all -nos	     > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.constraint

  report_timing -path full_clock \
      -delay max \
      -input_pins \
      -nets \
      -max_paths 10 \
      -transition_time \
      -crosstalk_delta \
      -capacitance  > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.max_timing

  report_timing -path  full_clock \
      -delay min \
      -input_pins \
      -nets \
      -max_paths 10 \
      -transition_time \
      -crosstalk_delta \
      -capacitance  > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.min_timing

  report_power      > ../reports/layout/CORTEXM0INTEGRATIONIMP-routeopt.power
}

# -----------------------------------------------------------------------------------
# Generate clock latency figures for use in STA
# -----------------------------------------------------------------------------------

## File where latency figures will be stored
set OutFile "../data/CORTEXM0INTEGRATIONIMP-sta_virtual_clk_latencies.sdc"

## Find clock latency attributes, and use these to define latencies for virtual clock(s)

if { ${rm_use_mcmm} } {
  current_scenario func_worst_corner
  set VCLK_latency_max [get_attr [get_clock VCLK] clock_latency_rise_max]

if { ${rm_include_dbg} } {

  set SVCLK_latency_max [get_attr [get_clock SVCLK] clock_latency_rise_max]

}

  current_scenario func_best_corner
  set VCLK_latency_min [get_attr [get_clock VCLK] clock_latency_rise_min]
if { ${rm_include_dbg} } {

  set SVCLK_latency_min [get_attr [get_clock SVCLK] clock_latency_rise_min]

}
} else {
  set VCLK_latency_max [get_attr [get_clock VCLK] clock_latency_rise_max]
  set VCLK_latency_min [get_attr [get_clock VCLK] clock_latency_rise_min]
if { ${rm_include_dbg} } {

  set SVCLK_latency_max [get_attr [get_clock SVCLK] clock_latency_rise_max]
  set SVCLK_latency_min [get_attr [get_clock SVCLK] clock_latency_rise_min]

}
}

# Write these values to the specified file. This is sourced subsequently 
# by the Primetime scripts to define latencies for virtual clocks.
echo "set VCLK_clock_latency_max $VCLK_latency_max"  > $OutFile
echo "set VCLK_clock_latency_min $VCLK_latency_min" >> $OutFile

if { ${rm_include_dbg} } {

echo "set SVCLK_clock_latency_max $SVCLK_latency_max" >> $OutFile
echo "set SVCLK_clock_latency_min $SVCLK_latency_min" >> $OutFile

}

date
exit
