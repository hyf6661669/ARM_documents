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
# File Name     : cortexm0integrationimp_compile.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Compile script for the CORTEXM0INTEGRATIONIMP
#
#                 
# Date          : Mar. 17 2009
#
#####################################################################################

set rm_task     synthesis
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

# Set up the link_library - lists all the db's that contain cells in the netlist
set link_library [list *]
foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
  set link_library [concat ${link_library} ${max_lib} ]
}

set synthetic_library dw_foundation.sldb

set link_library [concat ${link_library} ${synthetic_library} ]

# Standard cells in the target library(s) will appear in the synth'd netlist
set target_library ${rm_target_library}

# The search path contains all the directory paths to the library files in the link-path
set search_path    ${rm_search_path}

# -----------------------------------------------------------------------------------
# Create MW Database
# -----------------------------------------------------------------------------------

set mw_reference_library ${rm_mw_reflib}
set mw_design_library "CORTEXM0INTEGRATIONIMP"

create_mw_lib -technology ${rm_tech_file} \
              -mw_reference_library $mw_reference_library \
              $mw_design_library

open_mw_lib   $mw_design_library

# Check consistency of logical vs. physical libraries
check_library 

set_tlu_plus_files -max_tluplus  ${rm_max_tluplus_file} \
                   -min_tluplus  ${rm_min_tluplus_file} \
                   -tech2itf_map ${rm_tf2itf_map_file}

check_tlu_plus_files

# Set min libraries if they exist
foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
  set_min_library $max_lib -min_version $min_lib
}

# -----------------------------------------------------------------------------------
# Read in list of dont_use cells
# -----------------------------------------------------------------------------------

foreach dont_use ${rm_dont_use} {
  set_dont_use [get_lib_cells ${dont_use} ]
}

#------------------------------------------------------------------------------------
# Setup for Verification / Equivalence Checking
#------------------------------------------------------------------------------------

set synlib_dwgen_fmlink_active true
set_svf ../data/CORTEXM0INTEGRATIONIMP.svf

#------------------------------------------------------------------------------------
# Setup Clock Gating Style
#------------------------------------------------------------------------------------

# set power_cg_always_enabled_registers true
# set hdlin_no_group_register true

set_clock_gating_style -sequential_cell latch \
                 -positive_edge_logic $rm_icg_name \
                 -control_point before \
                 -control_signal scan_enable

#------------------------------------------------------------------------------------
# Read In The Verilog RTL Design
#------------------------------------------------------------------------------------

## Local directory for intermediate files 
define_design_lib work -path ../elab

# Don't optimize constants for Formality and ID registers.
set compile_seqmap_propagate_constants false

set hdlin_check_no_latch true

source -echo -verbose ../scripts/cortexm0integrationimp_verilog.tcl

analyze -f verilog ${rtl_image}
elaborate -architecture verilog CORTEXM0INTEGRATIONIMP

# -----------------------------------------------------------------------------------
# Link and Check the Design
# -----------------------------------------------------------------------------------

current_design CORTEXM0INTEGRATIONIMP
link
check_design >  ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.check


# -----------------------------------------------------------------------------------
# Set size_only on all Hand Instantiated cells (Allow removal if unused)
# -----------------------------------------------------------------------------------
set_size_only [get_cells -hier *HANDINST* ] -all_instances

set_attribute [get_cell  -hier *HANDINST* ] const_prop_off false
set_attribute [get_cell  -hier *HANDINST* ] del_unloaded_gate_off false

# -----------------------------------------------------------------------------------
# Add Design For Test Ports and optionally Test Modes
# -----------------------------------------------------------------------------------

## Create scan-compression enable port 
if { ${rm_use_scan_comp} } {
  create_port ${rm_comp_enable} -direction in
  set_dft_signal -view spec -type TestMode -port ${rm_comp_enable} -test_mode all_dft
}

if { ${rm_create_test_wrapper} } {
  create_port ${rm_wrp_clock}  -direction in
  create_port ${rm_wrp_ishift} -direction in
  create_port ${rm_wrp_oshift} -direction in
  create_port ${rm_wrp_mode1}  -direction in
  create_port ${rm_wrp_mode2}  -direction in

  set_dft_signal -type TestMode  -port $rm_wrp_mode1 -test_mode all_dft
  set_dft_signal -type TestMode  -port $rm_wrp_mode2 -test_mode all_dft

  if { ${rm_use_scan_comp} } {
    define_test_mode Internal_scan -usage scan -encoding [list $rm_wrp_mode1 0 $rm_wrp_mode2 1 $rm_comp_enable 0]
    define_test_mode wrp_if -usage wrp_if -encoding [list $rm_wrp_mode1 1 $rm_wrp_mode2 0 $rm_comp_enable 0]
    define_test_mode wrp_of -usage wrp_of -encoding [list $rm_wrp_mode1 1 $rm_wrp_mode2 1 $rm_comp_enable 0]
    define_test_mode ScanCompression_mode -usage scan_compression -encoding [list $rm_wrp_mode1 1 $rm_wrp_mode2 0 $rm_comp_enable 1]
    current_test_mode Internal_scan
  } else {
    define_test_mode Internal_scan -usage scan   -encoding [list $rm_wrp_mode1 0 $rm_wrp_mode2 1]
    define_test_mode wrp_if        -usage wrp_if -encoding [list $rm_wrp_mode1 1 $rm_wrp_mode2 0]
    define_test_mode wrp_of        -usage wrp_of -encoding [list $rm_wrp_mode1 1 $rm_wrp_mode2 1]
    current_test_mode Internal_scan
  }

  for { set i 0 } {$i < ${rm_num_wrap_chains} } {incr i} {
    create_port ${rm_wrp_si}$i -direction in
    set_dft_signal -view spec -port ${rm_wrp_si}$i -type ScanDataIn -test_mode wrp_if
    set_dft_signal -view spec -port ${rm_wrp_si}$i -type ScanDataIn -test_mode wrp_of
    create_port ${rm_wrp_so}$i -direction out
    set_dft_signal -view spec -port ${rm_wrp_so}$i -type ScanDataOut -test_mode wrp_if
    set_dft_signal -view spec -port ${rm_wrp_so}$i -type ScanDataOut -test_mode wrp_of
  }
} else {
  define_test_mode Internal_scan -usage scan
  if { ${rm_use_scan_comp} } {
    define_test_mode ScanCompression_mode -usage scan_compression
  }
}

for { set i 0 } {$i < ${rm_num_scan_chains} } {incr i} {
  create_port ${rm_scan_data_in}$i -direction in
  set_dft_signal -view spec -port ${rm_scan_data_in}$i -type ScanDataIn -test_mode Internal_scan
  create_port ${rm_scan_data_out}$i -direction out
  set_dft_signal -view spec -port ${rm_scan_data_out}$i -type ScanDataOut -test_mode Internal_scan
  if { ${rm_create_test_wrapper} } {
    set_dft_signal -view spec -port ${rm_scan_data_in}$i -type ScanDataIn -test_mode wrp_if
    set_dft_signal -view spec -port ${rm_scan_data_out}$i -type ScanDataOut -test_mode wrp_if
  }
}

set_dft_signal -view spec \
               -port ${rm_scan_enable} \
               -type ScanEnable \
               -active_state 1 \
               -test_mode all_dft

set_dft_signal -view existing_dft \
               -port ${rm_scan_enable} \
               -type ScanEnable \
               -active_state 1 \
               -test_mode all_dft

# -----------------------------------------------------------------------------------
# Define Scan Configuration 
# -----------------------------------------------------------------------------------

set_scan_configuration -style multiplexed_flip_flop  \
                       -clock_mixing mix_clocks \
                       -add_lockup true \
                       -lockup_type latch \
                       -create_dedicated_scan_out_ports true \
                       -chain_count ${rm_num_scan_chains} \
                       -test_mode Internal_scan  

# -----------------------------------------------------------------------------------
# Define Design For Test Variables
# -----------------------------------------------------------------------------------

set test_scan_enable_port_naming_style ${rm_scan_enable}%s
set test_scan_in_port_naming_style ${rm_scan_data_in}%s
set test_scan_out_port_naming_style ${rm_scan_data_out}%s
set test_default_delay 0
set test_default_bidir_delay 0 
set test_default_strobe 40
set test_default_period 100
set test_stil_netlist_format verilog
set_dft_drc_configuration -clock_gating_init_cycles 1

# Identify reset ports
set_dft_signal -view existing_dft \
               -port [get_ports ${rm_reset_ports} ]  \
               -type Reset \
               -active_state 0 \
               -test_mode all_dft

# Identify test control ports
set_dft_signal -view existing_dft \
               -type Constant \
               -active_state 1 \
               -port ${rm_dft_const} \
               -test_mode all_dft

# -----------------------------------------------------------------------------------
# Create Test Clocks
# -----------------------------------------------------------------------------------

set_dft_signal -view existing_dft \
               -type ScanClock \
               -timing {45 55} \
               -port [get_ports ${rm_clock_ports} ] \
               -test_mode all_dft

# -----------------------------------------------------------------------------------
# Define the Clocks in the CORTEXM0INTEGRATIONIMP
# -----------------------------------------------------------------------------------

# Declares the clocks present in the design with period, uncertainty and
# latency information for synthesis
# Period - Describes the frequency to be acheieved by synthesis.
# Uncertainty - Describes all parameters that could influence the difference
#               in clock timing between two related flops. Since jitter is
#               explicitly mentioned this will include OCV, skew and margin
# Latency - Describes the delay in the clock tree from the core clock pin to
#           the flop clock pin; at this point it is an estimate


create_clock -name SCLK -period ${rm_clock_period} [get_ports SCLK]
  set_clock_uncertainty [expr ${rm_clock_uncertainty} + ${rm_period_jitter}] [get_clocks {SCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SCLK} ]
  set_clock_latency ${rm_clock_latency} [get_clocks {SCLK} ]

create_clock -name HCLK -period ${rm_clock_period} [get_ports HCLK]
  set_clock_uncertainty [expr ${rm_clock_uncertainty} + ${rm_period_jitter}] [get_clocks {HCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {HCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {HCLK} ]
  set_clock_latency ${rm_clock_latency} [get_clocks {HCLK} ]

create_clock -name VCLK -period ${rm_clock_period}
  set_clock_uncertainty [expr ${rm_clock_uncertainty} + ${rm_period_jitter}] [get_clocks {VCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {VCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {VCLK} ]
  set_clock_latency ${rm_clock_latency} [get_clocks {VCLK} ]

if { ${rm_include_dbg} } {

create_clock -name DCLK -period ${rm_clock_period} [get_ports DCLK]
  set_clock_uncertainty [expr ${rm_clock_uncertainty} + ${rm_period_jitter}] [get_clocks {DCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {DCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {DCLK} ]
  set_clock_latency ${rm_clock_latency} [get_clocks {DCLK} ]

create_clock -name SWCLKTCK -period ${rm_swclk_period} [get_ports SWCLKTCK]
  set_clock_uncertainty [expr ${rm_clock_uncertainty} + ${rm_period_jitter}] [get_clocks {SWCLKTCK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SWCLKTCK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SWCLKTCK} ]
  set_clock_latency ${rm_clock_latency} [get_clocks {SWCLKTCK} ]

create_clock -name SVCLK -period ${rm_swclk_period}
  set_clock_uncertainty [expr ${rm_clock_uncertainty} + ${rm_period_jitter}] [get_clocks {SVCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SVCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SVCLK} ]
  set_clock_latency ${rm_clock_latency} [get_clocks {SVCLK} ]

}

if { ${rm_include_wic} } {

create_clock -name FCLK -period ${rm_clock_period} [get_ports FCLK]
  set_clock_uncertainty [expr ${rm_clock_uncertainty} + ${rm_period_jitter}] [get_clocks {FCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {FCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {FCLK} ]
  set_clock_latency ${rm_clock_latency} [get_clocks {FCLK} ]

}


# -----------------------------------------------------------------------------------
# Define the Design Environment
# -----------------------------------------------------------------------------------

#Import input/output port constraints
source -echo -verbose ../scripts/cortexm0integrationimp_constraints.tcl
#Educate DC-Topo about the target utilization and aspect ratio
set_utilization  $rm_core_utilization
set_aspect_ratio $rm_aspect_ratio

set_max_transition ${rm_max_transition} CORTEXM0INTEGRATIONIMP
set_max_fanout ${rm_max_fanout} CORTEXM0INTEGRATIONIMP
set_max_area 0

set_driving_cell -library ${rm_rvt_lib} \
                 -lib_cell ${rm_driving_cell} \
                 -pin ${rm_driving_pin} \
                 -input_transition_rise ${rm_max_transition} \
                 -input_transition_fall ${rm_max_transition} \
                 ${inputs}

set_driving_cell -library ${rm_rvt_lib} \
                 -lib_cell ${rm_clock_driving_cell} \
                 -pin ${rm_clock_driving_pin} \
                 -input_transition_rise ${rm_max_clock_transition} \
                 -input_transition_fall ${rm_max_clock_transition} \
                 [get_ports ${rm_clock_ports}]

set_load ${rm_load_value} ${outputs}

set_operating_conditions \
    -max ${rm_max_operating_condition} -max_lib $rm_slow_rvt_lib_name \
    -min ${rm_min_operating_condition} -min_lib $rm_fast_rvt_lib_name \
    -analysis_type bc_wc

# -----------------------------------------------------------------------------------
# Identify High Fanout Nets
# -----------------------------------------------------------------------------------

set_ideal_network -no_propagate [concat ${rm_reset_ports} \
                                        ${rm_scan_enable} ]

# Apply ideal nets on wrapper control ports
if { ${rm_create_test_wrapper} } {
  set_ideal_network [concat ${rm_wrp_ishift} ${rm_wrp_oshift} ]
}
                                         
## Apply ideal net on scan-compression enable port 
if { ${rm_use_scan_comp} } {
  set_ideal_network -no_propagate [list ${rm_comp_enable} ]
}

# -----------------------------------------------------------------------------------
# Setup the Compile Options
# -----------------------------------------------------------------------------------

set_fix_multiple_port_nets -all -buffer_constants 
set_critical_range [expr ${rm_critical_range} * ${rm_clock_period} ] CORTEXM0INTEGRATIONIMP
set enable_recovery_removal_arcs true

# Limit some optimisations to enable vector replay
set trans_dc_max_depth 1

# -----------------------------------------------------------------------------------
# Isolate The Ports For Accurate Timing Model Creation
# -----------------------------------------------------------------------------------

set isolated_inputs [remove_from_collection [all_inputs] [concat ${rm_clock_ports} \
                                                                 ${rm_reset_ports} \
                                                                 ${rm_scan_enable} ] ]

set_isolate_ports -type buffer -force [get_ports ${isolated_inputs} ]
set_isolate_ports -type buffer -force [all_outputs]

# -----------------------------------------------------------------------------------
# Group Interface Paths Separately From Other Paths
# -----------------------------------------------------------------------------------

group_path -name Inputs  -from [all_inputs]     -to [get_clocks $rm_clock_ports]
group_path -name Outputs -from [get_clocks $rm_clock_ports] -to [all_outputs]

# Feedthrough paths in a separate path group
group_path -name Feedthrough -from [all_inputs] -to [all_outputs]

if { ${rm_create_test_wrapper} } {
  group_path -name Inputs2Wrapper   -from [all_inputs] -to [get_clocks ${rm_wrp_clock}]
  group_path -name Wrapper2Outputs  -from [get_clocks ${rm_wrp_clock}] -to [all_outputs]
}

# -----------------------------------------------------------------------------------
# Compile the CORTEXM0INTEGRATIONIMP Using Design Compiler
# -----------------------------------------------------------------------------------

#Uncomment the following command to force full ungrouping. Hierarchical names will
#change leading to possible errors or warnings further on in the flow.
#ungroup -all -flatten

compile_ultra -scan -gate_clock

change_names -rules verilog -hier

## Clock-gating is performed during compile. Report on the gating results here
report_clock_gating

# -----------------------------------------------------------------------------------
# Enable Adaptive Scan Settings (optional)
# -----------------------------------------------------------------------------------

if { ${rm_use_scan_comp} } {
  set_dft_configuration -scan_compression enable
  if { ${rm_create_test_wrapper} } {
    set_scan_compression_configuration -minimum_compression ${rm_comp_ratio} \
     -test_mode ScanCompression_mode -base_mode wrp_if \
     -xtolerance $rm_comp_xtolerance -min_power $rm_comp_min_power
  } else {
    set_scan_compression_configuration -minimum_compression ${rm_comp_ratio} \
     -test_mode ScanCompression_mode -base_mode Internal_scan \
     -xtolerance $rm_comp_xtolerance -min_power $rm_comp_min_power
  }
}

# -----------------------------------------------------------------------------------
# Set Up IEEE 1500 Test Wrapper Configuration (Optional)
# -----------------------------------------------------------------------------------

if { ${rm_create_test_wrapper} } {

  create_clock -period ${rm_clock_period} [get_ports ${rm_wrp_clock} ]
  set_clock_uncertainty [expr ${rm_clock_uncertainty} + ${rm_period_jitter}] [get_clocks ${rm_wrp_clock} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks ${rm_wrp_clock} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks ${rm_wrp_clock} ]
  set_clock_latency ${rm_clock_latency} [get_clocks ${rm_wrp_clock} ]

  group_path -name Inputs2Wrapper   -from [all_inputs] -to [get_clocks ${rm_wrp_clock}]
  group_path -name Wrapper2Outputs  -from [get_clocks ${rm_wrp_clock}] -to [all_outputs]

  set_dft_configuration -wrapper enable

  set_scan_configuration -chain_count ${rm_num_wrap_chains} \
      -test_mode wrp_of -clock_mixing mix_clocks
  set_scan_configuration -chain_count [expr ${rm_num_wrap_chains} + ${rm_num_scan_chains}] \
      -test_mode wrp_if -clock_mixing mix_clocks

  set_dft_signal -type wrp_clock -port ${rm_wrp_clock} -test_mode all_dft
  set_dft_signal -type wrp_shift -port ${rm_wrp_ishift} -test_mode all_dft
  set_dft_signal -type wrp_shift -port ${rm_wrp_oshift} -test_mode all_dft

  set_wrapper_configuration -class core_wrapper \
      -register_io_implementation swap \
      -style shared \
      -shared_cell_type WC_S1 \
      -dedicated_cell_type WC_D1 \
      -chain_count ${rm_num_wrap_chains} \
      -mix_cells false \
      -input_shift_enable ${rm_wrp_ishift} \
      -output_shift_enable ${rm_wrp_oshift}
}

# -----------------------------------------------------------------------------------
# Do not run incremental compile as a part of insert_dft
# -----------------------------------------------------------------------------------

set_dft_insertion_configuration -preserve_design_name true
set_dft_insertion_configuration -synthesis_optimization none

# Change the cell instance naming scheme for newly added cells:
# This simplifies the task of identifying test-related logic
set compile_instance_name_prefix DFTC_LOGIC_
   
# -----------------------------------------------------------------------------------
# Perform DFT DRC
# -----------------------------------------------------------------------------------

create_test_protocol -capture_procedure multi_clock 

dft_drc > ../reports/dft/CORTEXM0INTEGRATIONIMP-prescan.dft

# -----------------------------------------------------------------------------------
# Insert Scan structures
# -----------------------------------------------------------------------------------

if {${rm_create_test_wrapper} } {
  preview_dft -show all \
              -test_wrapper all \
              > ../reports/dft/CORTEXM0INTEGRATIONIMP-prescan_preview.dft
} else {
  preview_dft -show all > ../reports/dft/CORTEXM0INTEGRATIONIMP-prescan_preview.dft
}

report_dft_insertion_configuration
insert_dft

change_names -rules verilog -hier

# -----------------------------------------------------------------------------------
# Post Scan DFT and Creation of Test Protocol Files
# -----------------------------------------------------------------------------------

# Reset the cell instance naming scheme 
set compile_instance_name_prefix U

# Incremental compile required after scan insertion
compile_ultra -incremental -no_autoungroup -scan

if {${rm_create_test_wrapper} } {
  foreach test_mode [list Internal_scan wrp_if] {
    current_test_mode ${test_mode}
    dft_drc > ../reports/dft/CORTEXM0INTEGRATIONIMP-${test_mode}.dft
    report_scan_path -view existing_dft -chain all \
                     > ../reports/dft/CORTEXM0INTEGRATIONIMP-${test_mode}.scanpath_chain
    report_scan_path -view existing_dft -cell all \
                     > ../reports/dft/CORTEXM0INTEGRATIONIMP-${test_mode}.scanpath_cell
  }
  write_test_protocol -test_mode Internal_scan \
                      -out ../data/CORTEXM0INTEGRATIONIMP-InternalScan.spf
  write_test_protocol -test_mode wrp_if \
                      -out ../data/CORTEXM0INTEGRATIONIMP-InternalTest.spf
  write_test_model -format ctl -out ../models/test/CORTEXM0INTEGRATIONIMP.ctl

} else {
  dft_drc > ../reports/dft/CORTEXM0INTEGRATIONIMP-InternalScan.dft
  write_test_protocol -test_mode Internal_scan \
                      -out ../data/CORTEXM0INTEGRATIONIMP-InternalScan.spf
  report_scan_path -view existing_dft -chain all \
                   > ../reports/dft/CORTEXM0INTEGRATIONIMP.scanpath_chain
  report_scan_path -view existing_dft -cell all \
                   > ../reports/dft/CORTEXM0INTEGRATIONIMP.scanpath_cell
}

if { ${rm_use_scan_comp} } {
  current_test_mode ScanCompression_mode
  dft_drc > ../reports/dft/CORTEXM0INTEGRATIONIMP-ScanCompression.dft
  write_test_protocol -test_mode ScanCompression_mode \
                      -out ../data/CORTEXM0INTEGRATIONIMP-ScanCompression.spf
}

# -----------------------------------------------------------------------------------
# Report on the Design
# -----------------------------------------------------------------------------------

report_hierarchy                 > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.hier
report_compile_options           > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.options
report_constraint -all -nos      > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.constraint
report_area                      > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.area
report_qor                       > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.qor
report_net_fanout -threshold ${rm_max_fanout} \
                                 > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.fanout
report_isolate_ports             > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.isolated
report_port -verbose             > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.ports
all_registers -level_sensitive   > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.latches
report_timing -nets -trans -inp -nos \
                                 > ../reports/compile/CORTEXM0INTEGRATIONIMP-compile.timing

# -----------------------------------------------------------------------------------
# Save the Design
# -----------------------------------------------------------------------------------

set verilogout_higher_designs_first true
set verilogout_no_tri true
change_names -rules verilog -hier

# Write out SCAN DEF file 
write_scan_def -output ../data/CORTEXM0INTEGRATIONIMP.scandef
check_scan_def -file ../data/CORTEXM0INTEGRATIONIMP.scandef

# Write out test model
write_test_model -format ctl -output ../data/CORTEXM0INTEGRATIONIMP.ctl

# Remove ideal net definitions before saving design
remove_ideal_net [concat ${rm_reset_ports} \
		         ${rm_scan_enable} ]

if { ${rm_create_test_wrapper} } {
  remove_ideal_net [concat ${rm_wrp_ishift} ${rm_wrp_oshift} ]
}

if { ${rm_use_scan_comp} } {
  remove_ideal_net [list ${rm_comp_enable} ]
}

## Generate SDC for use in MCMM optimization in ICC
if { ${rm_use_mcmm} } {
  set write_sdc_output_lumped_net_capacitance false
  set write_sdc_output_net_resistance false
  write_sdc -nosplit ../data/CORTEXM0INTEGRATIONIMP-compile.sdc

  ## Split min and max constraints into separate SDC files
  exec sh -c {grep -v "\-max " ../data/CORTEXM0INTEGRATIONIMP-compile.sdc | sed -e 's/ \-min//g' > ../data/CORTEXM0INTEGRATIONIMP-compile_min.sdc }
  exec sh -c {grep -v "\-min " ../data/CORTEXM0INTEGRATIONIMP-compile.sdc | sed -e 's/ \-max//g' > ../data/CORTEXM0INTEGRATIONIMP-compile_max.sdc }
}

# DDC file can be read back into Design Compiler for synthesis debug/exploration
write -format ddc -hierarchy -output ../data/CORTEXM0INTEGRATIONIMP-compile.ddc

write -f verilog -hierarchy -o ../data/CORTEXM0INTEGRATIONIMP-compile.v

date
quit
