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
# File Name     : cortexm0imp_place_opt.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Placement optimization of the CORTEXM0IMP. 
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

set rm_task     place_opt
sh hostname
date

# -----------------------------------------------------------------------------------
# Setup the Configuration
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/core_config.tcl
source -echo -verbose ../scripts/cortexm0imp_config.tcl

# -----------------------------------------------------------------------------------
# Setup the Target Technology
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0imp_tech.tcl

# -----------------------------------------------------------------------------------
# Define link libraries, target libraries, search path
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

open_mw_lib CORTEXM0IMP

copy_mw_cel -from 2_floorplan \
            -to   3_placeopt

open_mw_cel       3_placeopt

# -----------------------------------------------------------------------------------
# Source MCMM setup file or load min-max libs and tluplus
# -----------------------------------------------------------------------------------

if { ${rm_use_mcmm} } {
  remove_sdc
  remove_scenario -all

  source -echo -verbose ../scripts/cortexm0imp_mcmm_scenarios.tcl

  set_active_scenarios { func_worst_corner }
} else {
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
set compile_instance_name_prefix icc_placeopt
set timing_enable_multiple_clocks_per_reg true
set_fix_multiple_port_nets -all -buffer_constants
set_auto_disable_drc_nets -scan false
set enable_recovery_removal_arcs true
set placer_disable_auto_bound_for_gated_clock false

# By default, the tool will set a critical range of 50% of the WNS, per pathgroup.
# If you want to change this behavior, please use the command below
# set_critical_range <your number> [current_design]
set_critical_range [expr ${rm_critical_range} * ${rm_clock_period} ] CORTEXM0IMP

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

# Set Ideal Network so place_opt handles data/clock mixing with high fanout
# Remove before clock_opt cts
set_ideal_network    [all_fanout -flat -clock_tree ]
remove_ideal_network [concat ${rm_reset_ports} ${rm_scan_enable}]

# Remove ideal nets on wrapper control ports
if { ${rm_create_test_wrapper} } {
  remove_ideal_network [concat ${rm_wrp_ishift} ${rm_wrp_oshift} ]
}

## Remove ideal net on scan-compression enable port
if { ${rm_use_scan_comp} } {
  remove_ideal_network [list ${rm_comp_enable} ]
}

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
# Set constraints on min/max layers
# -----------------------------------------------------------------------------------

remove_routing_rules width_and_spacing_rules

# create clock-tree routing rules prior to placement 
set rm_clock_width_rule ""
set rm_clock_spacing_rule ""

# modify routing width
foreach {layer_name layer_width} $rm_clock_routing_widths {
  set layer_width [ expr ${layer_width} * ${rm_clock_routing_width_multiplier} ]
  set rm_clock_width_rule [concat ${rm_clock_width_rule} ${layer_name} ${layer_width}]
}
# modify routing spacing
foreach {layer_name layer_space} ${rm_clock_routing_spacings} {
  set layer_space [ expr ${layer_space} * ${rm_clock_routing_spacing_multiplier} ]
  set rm_clock_spacing_rule [concat ${rm_clock_spacing_rule} ${layer_name} ${layer_space}]
}

set_ignored_layers -max_routing_layer [collection_to_list  -name_only \
                                       -no_braces [ get_layers "M${rm_max_layer}" ] ]

define_routing_rule width_and_spacing_rules \
                    -default_reference_rule \
                    -widths   ${rm_clock_width_rule} \
                    -spacings ${rm_clock_spacing_rule}

report_routing_rule width_and_spacing_rules

set_clock_tree_options -effort medium \
                       -max_transition ${rm_max_clock_transition} \
                       -routing_rule width_and_spacing_rules \
                       -use_default_routing_for_sinks 1 \
                       -layer_list "M3 M4 M5"

set_auto_disable_drc_nets -constant false

remove_pnet_options
report_pnet_options

# -----------------------------------------------------------------------------------
# PLACEMENT OPTIMIZATION
# -----------------------------------------------------------------------------------

# Report on scan chain data, before place_opt & re-ordering
report_scan_chain > ../reports/dft/CORTEXM0IMP-pre-placeopt.scan_path.rpt

place_opt -effort medium -area_recovery -optimize_dft -power

# Post-placement scan chain report, after scan re-order
report_scan_chain > ../reports/dft/CORTEXM0IMP-post-placeopt.scan_path.rpt

# -----------------------------------------------------------------------------------
# Connect Power & Ground ports
# -----------------------------------------------------------------------------------

derive_pg_connection -power_net VDD -ground_net VSS

# -----------------------------------------------------------------------------------
# Save the Design
# -----------------------------------------------------------------------------------

# Create Snapshot and Save
if { ${rm_use_mcmm} } {
  # Note: QoR snapshot feature not yet supported in MCMM
} else {
  create_qor_snapshot -timing -constraint -congestion -name placeopt_icc
  report_qor_snapshot > ../reports/layout/CORTEXM0IMP-placeopt.qor_snapshot.rpt
}

save_mw_cel -as 3_placeopt -overwrite

# -----------------------------------------------------------------------------------
# Report on the Design
# -----------------------------------------------------------------------------------

## Report percentages from standard cell libs
if {${rm_use_multivt} } { 
  set_attribute [get_libs ${rm_hvt_lib}] default_threshold_voltage_group HVt -type string
  set_attribute [get_libs ${rm_rvt_lib}] default_threshold_voltage_group RVt -type string
  report_threshold_voltage_group     > ../reports/layout/CORTEXM0IMP-placeopt.Vt_groups
}

if { ${rm_use_mcmm} } {
  report_timing -nos -scenario [all_active_scenarios] \
                                   > ../reports/layout/CORTEXM0IMP-placeopt.timing
  report_constraint -all -nos -scenario [all_active_scenarios] \
                                   > ../reports/layout/CORTEXM0IMP-placeopt.constraint
} else {
  report_timing -nos               > ../reports/layout/CORTEXM0IMP-placeopt.timing
  report_constraint -all -nos      > ../reports/layout/CORTEXM0IMP-placeopt.constraint
}
report_hierarchy                   > ../reports/layout/CORTEXM0IMP-placeopt.hier
report_qor                         > ../reports/layout/CORTEXM0IMP-placeopt.qor
report_area -physical              > ../reports/layout/CORTEXM0IMP-placeopt.area
report_design -physical            > ../reports/layout/CORTEXM0IMP-placeopt.summary
report_design                      > ../reports/layout/CORTEXM0IMP-placeopt.design
report_clock_tree -summary         > ../reports/layout/CORTEXM0IMP-placeopt.clock_tree
report_net_fanout -threshold 40    > ../reports/layout/CORTEXM0IMP-placeopt.fanout
report_congestion -congestion_effort high \
                                   > ../reports/layout/CORTEXM0IMP-placeopt.congestion

date
exit
