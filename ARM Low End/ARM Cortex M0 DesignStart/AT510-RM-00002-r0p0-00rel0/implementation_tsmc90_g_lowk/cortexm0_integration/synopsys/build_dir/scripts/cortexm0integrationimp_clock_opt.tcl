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
# File Name     : cortexm0integrationimp_clock_opt.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Clock tree optimization of the CORTEXM0INTEGRATIONIMP.
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

set rm_task     clock_opt
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

#------------------------------------------------------------------------------------
# Define link libraries, target libraries, search path
#------------------------------------------------------------------------------------

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
# Copy & Read the Design from the Placement Step
# -----------------------------------------------------------------------------------

set mw_reference_library ${rm_mw_reflib}

open_mw_lib CORTEXM0INTEGRATIONIMP

copy_mw_cel -from 3_placeopt \
            -to   4_clockopt

open_mw_cel      4_clockopt

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
# Setup the timing parameters
# -----------------------------------------------------------------------------------

# General Optimization
set compile_instance_name_prefix icc_clockopt
set timing_enable_multiple_clocks_per_reg true
set_fix_multiple_port_nets -all -buffer_constants
set_auto_disable_drc_nets -scan false
set enable_recovery_removal_arcs true
set placer_disable_auto_bound_for_gated_clock false

# By default, the tool will set a critical range of 50% of the WNS, per pathgroup.
# If you want to change this behavior, please use the command below
# set_critical_range <your number> [current_design]
set_critical_range [expr ${rm_critical_range} * ${rm_clock_period} ] CORTEXM0INTEGRATIONIMP

# Set Area Critical Range
# Typical value: 10 percent of critical clock period
set physopt_area_critical_range [expr ${rm_clock_period} * 0.10]

# Set Power Critical Range
# Typical value: 9 percent of critical clock period
set physopt_power_critical_range [expr ${rm_clock_period} * 0.09]

# Specify options for Power optimization
set_power_options -leakage true \
                  -dynamic false \
                  -low_power_placement false \
                  -leakage_effort high \
                  -dynamic_effort low

# -----------------------------------------------------------------------------------
# Read in list of dont_use cells
# -----------------------------------------------------------------------------------

foreach dont_use $rm_dont_use {
  set_dont_use [get_lib_cells ${dont_use} ]
}

#------------------------------------------------------------------------------------
# Enable the use of Z-Route
#------------------------------------------------------------------------------------

if { ${rm_use_zroute} } {
  set_route_mode_options -zroute true
  set_route_options -same_net_notch check_and_fix
  translate_zrt_parameters -direction to_zrt
  set_route_zrt_common_options -max_number_of_threads 1
}

#------------------------------------------------------------------------------------
# Enable the use of tie cells
#------------------------------------------------------------------------------------

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
# Activate CTS scenario (optional)
# -----------------------------------------------------------------------------------

if { ${rm_use_mcmm} } {
  set_cts_scenario cts_scenario
}

# -----------------------------------------------------------------------------------
# Set clock tree options
# -----------------------------------------------------------------------------------

set_clock_tree_options -effort medium \
                       -max_transition ${rm_max_clock_transition} \
                       -routing_rule width_and_spacing_rules \
                       -use_default_routing_for_sinks 1 \
                       -layer_list "M3 M4 M5"

set_clock_tree_references -references ${rm_clock_cell}
set_clock_tree_references -references ${rm_clock_size_cell} -sizing_only
set_clock_tree_references -references ${rm_clock_delay_cell} -delay_insertion_only

remove_clock_latency [get_pins -hier */CLK]
remove_clock_latency [get_pins -hier */ENCLK]

remove_clock_uncertainty [get_clocks ${rm_clock_ports}]
remove_clock_uncertainty [get_clocks ${rm_virtual_clocks}]

# Add for setup and hold margins, and include Period Jitter
set_clock_uncertainty -hold  ${rm_hold_margin}  [all_clocks]
set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [all_clocks]

# Source latency applied to WCLK, nominally to balance with other clocks
if { ${rm_create_test_wrapper} } {
  set_clock_latency -source [expr ${rm_clock_latency} - ${rm_cts_latency_WCLK}] [get_clocks ${rm_wrp_clock}]
}

# -----------------------------------------------------------------------------------
# Perform CTS
# -----------------------------------------------------------------------------------

# Remove any remaining ideal networks
remove_ideal_network [all_fanout -flat -clock_tree]

if { ${rm_use_zroute} } {
  set_delay_calculation -clock_arnoldi 
}

# Using integrated clock global router for clock tree
clock_opt -only_cts -no_clock_route -cts_effort high

if { ${rm_use_mcmm} } {
  # Enable Hold fixing; Remove any pin-based modelled latencies
  set_active_scenarios { func_worst_corner func_best_corner test_best_corner}

  current_scenario test_best_corner
  set_fix_hold [all_clocks]
  # Remove modelled latencies from clock objects and from ICG pins 
  remove_clock_latency [get_pins -hier */CLK]
  remove_clock_latency [get_pins -hier */ENCLK]
  remove_clock_uncertainty [get_clocks *]
  set_propagated_clock [get_ports ${rm_clock_ports}]

  foreach scenario {func_worst_corner func_best_corner} {
    current_scenario $scenario
    set_fix_hold [all_clocks]
    # Remove modelled latencies from clock objects and from ICG pins 
    remove_clock_latency [get_pins -hier */CLK]
    remove_clock_latency [get_pins -hier */ENCLK]
    remove_clock_uncertainty [get_clocks ${rm_clock_ports}]
    remove_clock_uncertainty [get_clocks ${rm_virtual_clocks}]
    set_propagated_clock [get_ports ${rm_clock_ports}]
  # Back-annotate achieved clock latency onto Virtual Clock(s)
    set_latency_adjustment_options -to_clock VCLK -from_clock HCLK

    if { ${rm_include_dbg} } {
      set_latency_adjustment_options -to_clock SVCLK -from_clock SWCLKTCK
    }

    # Add for setup and hold margins, and include Period Jitter
    set_clock_uncertainty -hold  ${rm_hold_margin}  [all_clocks]
    set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [all_clocks]
  }

  # Remove pessimism due to cells that are common to clock and data paths
  set timing_remove_clock_reconvergence_pessimism true

} else {
  # Enable Hold fixing
  set_fix_hold [all_clocks]

  # Back-annotate achieved clock latency onto Virtual Clock(s)
  set_latency_adjustment_options -to_clock VCLK -from_clock HCLK

if { ${rm_include_dbg} } {
  set_latency_adjustment_options -to_clock SVCLK -from_clock SWCLKTCK
}
}

update_clock_latency


# Post CTS Timing Optimization - including scan re-order
clock_opt -only_psyn -no_clock_route -optimize_dft -power

# -----------------------------------------------------------------------------------
# Save the design before clock routing
# -----------------------------------------------------------------------------------

# Create Snapshot and Save
if { ${rm_use_mcmm} } {
  # Note: QoR snapshot feature not yet supported in MCMM
} else {
  create_qor_snapshot -timing -constraint -congestion -clock_tree -name clockopt_pre_rtd_icc
  report_qor_snapshot		     > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt_pre_rtd_icc.qor_snapshot.rpt
}

save_mw_cel -as 4_clockopt -overwrite

# Intermediate reporting
report_qor                         > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt_pre_rtd.qor
if { ${rm_use_mcmm} } {
  report_constraints -all \
  		     -scenario [all_active_scenarios] \
  		     > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt_pre_rtd.con
  report_timing -cap -tran -input \
  		-scenario [all_active_scenarios] \
  		-net -delay max      > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt_pre_rtd.max.tim
  report_timing -cap -tran -input \
  		-scenario [all_active_scenarios] \
  		-net -delay min      > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt_pre_rtd.min.tim
} else {
  report_constraints -all	     > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt_pre_rtd.con
  report_timing -cap -tran -input \
  		-net -delay max      > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt_pre_rtd.max.tim
  report_timing -cap -tran -input \
  		-net -delay min      > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt_pre_rtd.min.tim
}

# -----------------------------------------------------------------------------------
# Optimize Clock Tree after psynopt and update GR information
# -----------------------------------------------------------------------------------

set_delay_calculation -clock_arnoldi
optimize_clock_tree -buffer_sizing -gate_sizing -effort high

# -----------------------------------------------------------------------------------
# Connect PG including secondary power pins
# -----------------------------------------------------------------------------------

derive_pg_connection -power_net VDD -ground_net VSS

# -----------------------------------------------------------------------------------
#       Clock Routing
# -----------------------------------------------------------------------------------

if { ${rm_use_zroute} } {
  ##Route Clocks using the previous ICGR global route
  set_route_mode_options -zroute true

  set_route_zrt_global_options -incremental true
  route_zrt_group -all_clock_nets
  set_route_zrt_global_options -incremental false
} else {
  set_route_options -same_net_notch check_and_fix

  route_group -all_clock_nets -search_repair_loop 15
}

# -----------------------------------------------------------------------------------
# Save the Design
# -----------------------------------------------------------------------------------

# Create Snapshot and Save
if { ${rm_use_mcmm} } {
  # Note: QoR snapshot feature not yet supported in MCMM
} else {
  create_qor_snapshot -timing -constraint -congestion -clock_tree -name clockopt_icc
  report_qor_snapshot > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.qor_snapshot.rpt
}

save_mw_cel -as 4_clockopt -overwrite

# -----------------------------------------------------------------------------------
# Report on the Design
# -----------------------------------------------------------------------------------

## Report percentages from standard cell libs
if {${rm_use_multivt} } { 
  set_attribute [get_libs ${rm_hvt_lib}] default_threshold_voltage_group HVt -type string
  set_attribute [get_libs ${rm_rvt_lib}] default_threshold_voltage_group RVt -type string
  report_threshold_voltage_group     > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.Vt_groups
}

if { ${rm_use_mcmm} } {
  report_constraints -all -scenario [all_active_scenarios] \
 				 > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.constraint
  report_timing -cap -tran -input -scenario [all_active_scenarios] \
 		-net -delay max  > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.max_timing
  report_timing -cap -tran -input -scenario [all_active_scenarios] \
 		-net -delay min  > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.min_timing
} else {
  report_constraints -all	 > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.constraint
  report_timing -cap -tran -input \
  		-net -delay max  > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.max_timing
  report_timing -cap -tran -input \
  		-net -delay min  > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.min_timing
}
report_hierarchy                   > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.hier
report_qor                         > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.qor
report_area -physical              > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.area
report_design -physical            > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.summary
report_design                      > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.design
report_clock_tree -summary         > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.clock_tree
report_net_fanout -threshold 40    > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.fanout
report_clock_timing -type skew     > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.skew
report_congestion -congestion_effort high \
                                   > ../reports/layout/CORTEXM0INTEGRATIONIMP-clockopt.congestion

date
exit
