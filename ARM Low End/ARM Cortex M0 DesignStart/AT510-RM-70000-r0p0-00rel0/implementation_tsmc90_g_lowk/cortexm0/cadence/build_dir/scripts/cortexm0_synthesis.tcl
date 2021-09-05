################################################################################
# Copyright Notice and Proprietary Information
# 
# Copyright (c)2007-2009 ARM Limited and Cadence Design Systems, Inc. All rights reserved.
# 
# The accompanying software and documentation contain confidential and 
# proprietary information that is the property of ARM Limited and its 
# licensors.  No part of the software or documentation may be reproduced, 
# transmitted, or translated in any form or by any means, electronic, 
# mechanical, optical or otherwise without the prior written permission 
# of ARM Limited.  Please refer to the license agreement under which you 
# received this software for details on your applicable license rights, 
# restrictions and conditions which shall control over the terms set 
# forth herein.
# 
# Right to Copy Documentation
# Except with the prior written permission of ARM Limited copies of the 
# documentation shall only be made for internal use.
# 
# Disclaimer
# THE ACCOMPANYING SOFTWARE AND DOCUMENTATION IS PROVIDED "AS IS" WITHOUT 
# WARRANTY OF ANY KIND.  ARM LIMITED AND ITS LICENSORS HEREBY DISCLAIM 
# ALL EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, 
# TITLE, AND NON INFRINGEMENT. 
# 
# IN NO EVENT SHALL ARM LIMITED OR ITS LICENSORS BE LIABLE TO YOU OR ANY 
# OTHER PARTY FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, 
# OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR 
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR 
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THE ACCOMPANYING 
# SOFTWARE OR DOCUMENTATION, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH 
# DAMAGE.
#  
################################################################################
# RM Version: CORTEXM0 Encounter7.1usr2 RTL_VERSION
################################################################################
# File Name      :cortexm0_synthesis.tcl
# RM Release     :RTL_VERSION
# Purpose        :encounter rtl compiler synthesis script
#
# RM version     :7.1.2
# 
################################################################################

puts "BEGIN SYNTHESIS : [exec date]"
source ../scripts/cortexm0_config.tcl

set_attribute hdl_track_filename_row_col true /

# ------------------------------------------------------------------------------
# Distribute the synthesis job across multiple processors to improve runtime
# ------------------------------------------------------------------------------

if {[info exists rm_parallel_cpus] && [expr $rm_parallel_cpus > 1]} { 
  for { set i 0 } {$i < [expr $rm_parallel_cpus -1] } {incr i} {
    lappend hostlist "localhost"
  }
  set_attr super_thread_servers $hostlist /
}

# ------------------------------------------------------------------------------
# Report the host, tool version and date to the log
# ------------------------------------------------------------------------------

puts [get_attr program_version /]
sh hostname
sh date

# ------------------------------------------------------------------------------
# Include the standard tcl procedures provided with the tool
# ------------------------------------------------------------------------------

include load_etc.tcl

# ------------------------------------------------------------------------------
# If we read a library cell and RTL module with the same name, we 
# tell RC to use the library cell. Useful if run with some custom logic cells
# ------------------------------------------------------------------------------

set_attr hdl_use_techelt_first true /

# ------------------------------------------------------------------------------
# Error if we have any black boxes in the design
# Comment out this line if you are deliberately running with black boxes
# ------------------------------------------------------------------------------

set_attr hdl_error_on_blackbox true /

# ------------------------------------------------------------------------------
# Turn on TNS optimisation.
# This causes the tool to optimise with the goal of reducing the sum total of
# all violations. The default is to optimise to reduce the worst violation.
# ------------------------------------------------------------------------------

set_attr tns_opto true /

# ------------------------------------------------------------------------------
# Change naming format to generate <signal>_reg_<bit_width>
# ------------------------------------------------------------------------------

set_attr hdl_array_naming_style %s_%d /  

# ----------------------------------------------------------------------
# Read LIB, LEF and captable files. Set operating conditions
#-----------------------------------------------------------------------
if {$rm_low_power_flow==1} {
    set env(rm_tool) rc
    read_cpf -library ../scripts/cortexm0_power_intent.cpf
} else {
    set_attribute library $rm_tech_cell_lib_wc /
    set_attribute operating_conditions $rm_wc_op_cond /
}

set_attribute lef_library "$rm_tech_proc_lef $rm_tech_cell_lef" /
set_attribute cap_table_file $rm_captables([lindex $rm_rc_corners 0])

#----------------------------------------------------------------------------
# Set the Library Constraints
#----------------------------------------------------------------------------

# Dont use these cells
foreach cell $rm_dont_use_cells {
  set_attribute avoid true [find / -libcell $cell]
}

foreach cell $rm_delay_cells {
  set_attribute avoid true [find / -libcell $cell]
}

if [info exists rm_redundant_macro_pattern] {
  foreach pattern $rm_redundant_macro_pattern {
    foreach lcell [find /libraries/ -libcell $pattern] {
        set_attr preserve false $lcell
    }
  }
}

#-----------------------------------------------------------------------
# Read in the verilog files 
#-----------------------------------------------------------------------

source ../scripts/cortexm0_verilog.tcl

read_hdl -v2001 $hdl_file_list

# ------------------------------------------------------------------------------
# Clock gating attribute is set before elaboration as this enables RC to
# increase the number of flip flops that are gated.
# ------------------------------------------------------------------------------

set_attribute lp_insert_clock_gating true /

# ------------------------------------------------------------------------------
# Elaborate the design and report unloaded nets, constant signals etc
# ------------------------------------------------------------------------------

elaborate ${rm_top_module}

edit_netlist uniquify /designs/${rm_top_module}

redirect ../reports/synthesis/cortexm0_premap_check_design.rpt { check_design -multidriven -undriven -unresolved }

#----------------------------------------------------------------------------
# Low Power setup through CPF
#----------------------------------------------------------------------------

if {$rm_low_power_flow==1} {
    set env(rm_tool) rc
    read_cpf ../scripts/cortexm0_power_intent.cpf

    # Identify existing level shifter cells
#obsolete    level_shifter import
    redirect ../reports/synthesis/cortexm0_rtl_level_shifters.txt  {report level_shifter -hier -detail}

    # Identify existing isolation cells shifter cells
#obsolete    isolation_cell import
    redirect ../reports/synthesis/cortexm0_rtl_isolation_cells.txt  {report isolation -hier -detail}


#----------------------------------------------------------------------------
# Switch ON Leakage Power Optimization
#----------------------------------------------------------------------------

   set_attribute max_leakage_power 0 /designs/*
   set_attribute lp_multi_vt_optimization_effort low /
}

#-----------------------------------------------------------------------
# Define the clock gating cell and the fanout limits it should use
#-----------------------------------------------------------------------

set_attribute avoid false [find / -libcell $rm_cgic_cell] [find / -design *]
#find will return multiple copies of same cell if more than one corner defined, so use the first in the list
set_attribute lp_clock_gating_cell [lindex [find / -libcell $rm_cgic_cell] 0] [find / -design *]
set_attribute lp_clock_gating_max_flops $rm_cg_max_bitwidth [find / -design *]
set_attribute lp_clock_gating_min_flops $rm_cg_min_bitwidth [find / -design *]

#-----------------------------------------------------------------------
# Define scan insertion signal and use it to bypass clock gates
#-----------------------------------------------------------------------

define_dft shift_enable -name $rm_scan_enable -active high -create_port $rm_scan_enable
set_attribute lp_clock_gating_test_signal [find / -test_signal $rm_scan_enable] [find / -design *]

#-----------------------------------------------------------------------
# Create scan in and scan out ports and check dft rules
# Identify test signals that need to be held high / low during test
#-----------------------------------------------------------------------

if [info exists rm_test_high_ports] {
   foreach testpin $rm_test_high_ports {
      foreach pin [find /designs/* -port $testpin] {
         define_dft test_mode -no_ideal -active high $pin
      }
   }
}
if [info exists rm_test_low_ports] {
   foreach testpin $rm_test_low_ports {
      foreach pin [find /designs/* -port $testpin] {
         define_dft test_mode -no_ideal -active low $pin
      }
   }
}
for { set i 0 } {$i <= [expr $rm_no_of_chains - 1] } {incr i} {
   define_dft scan_chain -sdi ${rm_scan_data_in}${i} -sdo ${rm_scan_data_out}${i} -create_ports
}

check_dft_rules

# ------------------------------------------------------------------------------
# Read constraints 
# ------------------------------------------------------------------------------

if {$rm_low_power_flow==0} {
    create_mode -name worst_case_default_mode
    read_sdc -mode worst_case_default_mode "../scripts/cortexm0_constraints_default_mode.sdc"
    read_sdc -mode worst_case_default_mode "../scripts/cortexm0_pre_cts_latency_worst_case_default.sdc"
} else {
    foreach functional_mode $rm_synthesis_functional_modes {
        read_sdc -mode worst_case_${functional_mode}_mode "../scripts/cortexm0_constraints_${functional_mode}_mode.sdc"
        read_sdc -mode worst_case_${functional_mode}_mode "../scripts/cortexm0_pre_cts_latency_worst_case_${functional_mode}.sdc"
   }
}

# ------------------------------------------------------------------------------
# Set the number of routing layers to match the number used for signal routing
# during implementation. Capacitance and resistance scaling factors should
# be set to the same values as used in the place and route scripts
# ------------------------------------------------------------------------------

set_attr number_of_routing_layers $rm_top_routing_layer [find / -design *]
set_attr scale_of_cap_per_unit_len $rm_pre_metal_fill_default_cap_factor /
set_attr scale_of_res_per_unit_len $rm_trial_route_res_factor / 

# ----------------------------------------------------------------------
# Read DEF if using "sythesize -to_placed" later
#-----------------------------------------------------------------------

if [info exists rm_rc_physical] {
  if {$rm_rc_physical == 1} {
    read_def $rm_def_floorplan_path
  }
}

# ------------------------------------------------------------------------------
# Apply additional maximum slew constraint that is harder to meet than the
# value applied within the SDC. This improves the timing closure within
# the implementation flow.
# ------------------------------------------------------------------------------

set_attr max_transition $rm_max_transition [find / -design *]

# ------------------------------------------------------------------------------
# Define cost and path groups to allow RC to optimise each group independently
# ------------------------------------------------------------------------------

define_cost_group -name In2Out
define_cost_group -name In2Clk
define_cost_group -name Clk2Out
define_cost_group -name Clk2Clk
foreach rm_mode [find -mode *] {
  path_group -mode $rm_mode -from [all::all_inps] -to [all::all_outs] -group In2Out -name In2Out    
  path_group -mode $rm_mode -from [all::all_inps] -to [all::all_seqs] -group In2Clk -name In2Clk    
  path_group -mode $rm_mode -from [all::all_seqs] -to [all::all_outs] -group Clk2Out -name Clk2Out  
  path_group -mode $rm_mode -from [all::all_seqs] -to [all::all_seqs] -group Clk2Clk -name Clk2Clk  
}

if [info exists rm_latch_path_group] {  							  
  if ${rm_latch_path_group} {									  
    if {[llength [all::all_seqs -level_sensitive]] > 0} {					  
      define_cost_group -name 2Lat								  
      define_cost_group -name Lat2								  
      foreach rm_mode [find -mode *] {
	path_group -mode $rm_mode -from [all::all_seqs -level_sensitive] -group Lat2 -name Lat2     
	path_group -mode $rm_mode -to [all::all_seqs -level_sensitive] -group 2Lat -name 2Lat	  
      }
    }												  
  }												  
}												  


#----------------------------------------------------------------------------
# Check test configuration and the timing constraints before mapping.
#----------------------------------------------------------------------------

redirect ../reports/synthesis/cortexm0_preinsert.dft { check_dft }
redirect ../reports/synthesis/cortexm0_premap.lint {report timing -lint -verbose -mode [lindex [find -mode *] 0]}
redirect ../reports/synthesis/cortexm0_sequential.rpt { report sequential -hier }
redirect ../reports/synthesis/cortexm0_cdn_loop_breakers.rpt { report_cdn_loop_breaker /designs/${rm_top_module} }

#----------------------------------------------------------------------------
# Synthesize to generic logic.
#----------------------------------------------------------------------------

synthesize -to_generic -effort medium

# ------------------------------------------------------------------------------
# Synthesize to gates.
# Increase the level of detail reported so that paths used for target setting
# can be checked for correlation with final timing.
# ------------------------------------------------------------------------------

set old_info_level [get_attr information_level /]
set_attr information_level 3 /
synthesize -to_mapped -effort high -no_incr
set_attr information_level $old_info_level /

#----------------------------------------------------------------------------
# Write mapped netlist and timing report
#----------------------------------------------------------------------------

write -mapped > ../data/cortexm0_rtl2gates.mapped.v

redirect ../reports/synthesis/cortexm0_postmap.lint {report timing -lint -verbose -mode [lindex [find -mode *] 0] }

# ------------------------------------------------------------------------------
# Create cost group for clock gating latches inserted during synthesis.
# Tighten paths to enable inputs of clock gating cells and run incremental
# synthesis if the rm_pre_cts_clock_gating_target_slack variable is set
# ------------------------------------------------------------------------------

define_cost_group -name  ClockGateEnables
foreach rm_mode [find -mode *] {
  path_group -mode $rm_mode  -to [find /designs/* -inst RC_CGIC_INST] -group ClockGateEnables -name clock_gating_enables
}
if [info exists rm_pre_cts_clock_gating_target_slack] {
  foreach rm_mode [find -mode *] {
    path_adjust -mode $rm_mode -to [find /designs/* -inst RC_CGIC_INST] -delay [expr 0 - $rm_pre_cts_clock_gating_target_slack]  -name clock_gates
  }
  synthesize -to_mapped -effort high -incremental   
}


if [info exists rm_synth_extra_opt] {
  if {$rm_synth_extra_opt == 1} {
    synthesize -to_mapped -effort high -incremental   
    synthesize -to_mapped -effort high -incremental   
  }
}

# ------------------------------------------------------------------------------
# Connect scan chains and generate scan chain report
# Write the control file to be used with Encounter Test
# ------------------------------------------------------------------------------

set_attribute dft_min_number_of_scan_chains $rm_no_of_chains ${rm_top_module}
check_dft_rules
connect_scan_chains

redirect ../reports/synthesis/cortexm0_scanpath { report dft_chains ${rm_top_module} }
write_atpg -cadence > ../data/cortexm0_assign

# ------------------------------------------------------------------------------
# Run incremental synthesis to optimise paths loaded by scan chains
# ------------------------------------------------------------------------------

synthesize -to_mapped -effort high -incremental   

# ------------------------------------------------------------------------------
# Insert tie cells, setting attributes to allow tie cells
# to connect to preserved instances (e.g. rams).
# Run incremental optimisation to include the effect of the increase in area.
# ------------------------------------------------------------------------------

set_attr ui_respects_preserve false /
insert_tiehilo_cells  -skip_unused_hier_pins
set_attr ui_respects_preserve true /
synthesize -to_mapped -effort low -incremental   

# ------------------------------------------------------------------------------
# Run "synthesize -to_placed" if selected
# ------------------------------------------------------------------------------

if [info exists rm_rc_physical] {
  if {$rm_rc_physical == 1} {
    synthesize -to_placed -effort high
    if [info exists rm_synth_extra_opt] {
      if {$rm_synth_extra_opt == 1} {
        synthesize -to_placed -effort high -incremental   
        synthesize -to_placed -effort high -incremental  
      }
    } 
  }
}

# ------------------------------------------------------------------------------
# Final pass of tie cell insertion.
# Included to handle changes introduced by previous optimisation step.
# ------------------------------------------------------------------------------

set_attr ui_respects_preserve false /
insert_tiehilo_cells -skip_unused_hier_pins
set_attr ui_respects_preserve true /

# ------------------------------------------------------------------------------
# Remove the clock gating adjusts before generating the final timing reports.
# ------------------------------------------------------------------------------

if {[find /designs -exception clock_gates] != ""} {
  rm [find /designs -exception clock_gates]
}

# ------------------------------------------------------------------------------
# Remove any assign statements on top level I/O pins.
# Currently First Encounter will not insert IO isolation buffers if the pins
# are connected with an assign statement. This can occur with scan chain outputs
# and signals that are driven by tie cells.
# ------------------------------------------------------------------------------

foreach sub_design [find /designs/* -subdes *] {
  set_attr -quiet preserve true $sub_design
}
remove_assigns
foreach sub_design [find /designs/* -subdes *] {
  set_attr -quiet preserve false $sub_design
}

# ------------------------------------------------------------------------------
# Write out only referenced style verilog.
# Default behaviour is to write out each module using the same style of verilog
# as the RTL description of that module.
# These commands ensure we use only one style for the final netlist.
# ------------------------------------------------------------------------------

foreach tmp [find /designs/${rm_top_module} -inst *] {
   set_attr -quiet write_vlog_port_association_style named $tmp
}
write_hdl -mapped > ../data/cortexm0_rtl2gates.opt.v

#-----------------------------------------------------------------------
# Write scan DEF to be used by the place and route flow
#-----------------------------------------------------------------------

write_scandef > ../data/cortexm0_scan_chains.def
        
#-----------------------------------------------------------------------
# Report design QoR
#-----------------------------------------------------------------------

redirect ../reports/synthesis/cortexm0_area.rpt         { report area }
redirect ../reports/synthesis/cortexm0_gates.rpt        { report gates }
redirect ../reports/synthesis/cortexm0_power.rpt        { report power }
redirect ../reports/synthesis/cortexm0_clock_gating.rpt { report clock_gating }
redirect ../reports/synthesis/cortexm0_messages.rpt     { report messages }

if {$rm_low_power_flow==0} {
  echo "" > ../reports/synthesis/cortexm0_timing_final.rpt
  foreach rm_mode [find -mode *] {
    echo "Reporting mode $rm_mode"       >> ../reports/synthesis/cortexm0_timing_final.rpt
    echo ""				>> ../reports/synthesis/cortexm0_timing_final.rpt
    foreach cg [find /designs/${rm_top_module} -cost_group -null_ok *] {
      echo "Reporting cost group $cg"	  >> ../reports/synthesis/cortexm0_timing_final.rpt
      echo ""				  >> ../reports/synthesis/cortexm0_timing_final.rpt
      report timing -num 20 -mode $rm_mode -cost_group $cg >> ../reports/synthesis/cortexm0_timing_final.rpt
    }
  }
}

if {$rm_low_power_flow==0} {
    report qor -levels_of_logic /designs/${rm_top_module} > ../reports/synthesis/cortexm0_timing_qor_final.rpt
} else {
    report qor /designs/${rm_top_module} > ../reports/synthesis/cortexm0_timing_qor_final.rpt
}

# ------------------------------------------------------------------------------
# Include the path to designware modules in the Conformal lec control file
# ------------------------------------------------------------------------------

set_attr wlec_set_cdn_synth_root true /

# ------------------------------------------------------------------------------
# By default the lec control file generated will include constraints on all
# test signals to force Conformal to check the design in functional mode only.
# We do not need to do this for the rm_test_high_ports and rm_test_low_ports
# as they are only used when running the DFT checks.
# Those ports are removed from the list of test signals as leaving them in would
# reduce the coverage of the formal equivalence check.
# ------------------------------------------------------------------------------

if [info exists rm_test_high_ports] {
   foreach test_pin $rm_test_high_ports {
      foreach test_signal [find /designs/ -test_signal $test_pin] {
         rm $test_signal
      }
   }
}
if [info exists rm_test_low_ports] {
   foreach test_pin $rm_test_low_ports {
      foreach test_signal [find /designs/ -test_signal $test_pin] {
         rm $test_signal
      }
   }
}

# ------------------------------------------------------------------------------
# Create lec control file
#
# By default the lec dofile will run in hierarchical mode to reduce runtime.
# If you wish to run in flat mode, change the lec script file to flat file in makefile.
# ------------------------------------------------------------------------------

write_do_lec -top ${rm_top_module} \
             -revised_design ../data/cortexm0_si_fixing.v \
             -sim_lib $rm_tech_cell_lib_ver \
             -verbose -flat \
             -logfile ../logs/cortexm0_rtl_vs_netlist_lec_flat.log \
             > ../data/cortexm0_rtl_vs_netlist_flat.do

write_do_lec -top ${rm_top_module} \
             -revised_design ../data/cortexm0_si_fixing.v \
             -sim_lib $rm_tech_cell_lib_ver \
             -verbose \
             -logfile ../logs/cortexm0_rtl_vs_netlist_lec.log \
             > ../data/cortexm0_rtl_vs_netlist.do
##Remove the verilog models of hard instantiated instances and the logical files remain

sh grep -v "cells/fe_tsmc090g_sc-adv_v10_2007q4v2" ../data/cortexm0_rtl_vs_netlist.do > cortexm0_rtl_vs_netlist.do_tmp
sh mv cortexm0_rtl_vs_netlist.do_tmp ../data/cortexm0_rtl_vs_netlist.do

sh grep -v "cells/fe_tsmc090g_sc-adv_v10_2007q4v2" ../data/cortexm0_rtl_vs_netlist_flat.do > cortexm0_rtl_vs_netlist.do_tmp
sh mv cortexm0_rtl_vs_netlist.do_tmp ../data/cortexm0_rtl_vs_netlist_flat.do


# ------------------------------------------------------------------------------
# Edit the lec control file to avoid a false error code when running
# hierarchical comparison.
# When a hierarchical comparison is run with the original script, the exit code
# reported by Conformal will reflect the status of all modules compared.
# This edit recalculates the exit code to return the status of
# only the final comparison
# ------------------------------------------------------------------------------

sh grep -v exit ../data/cortexm0_rtl_vs_netlist.do > cortexm0_rtl_vs_netlist.do_tmp
sh echo tclmode >>  cortexm0_rtl_vs_netlist.do_tmp
sh echo set_exit_code -clear >>  cortexm0_rtl_vs_netlist.do_tmp
sh echo vpxmode  >>  cortexm0_rtl_vs_netlist.do_tmp
sh echo exit -force  >>  cortexm0_rtl_vs_netlist.do_tmp
sh mv cortexm0_rtl_vs_netlist.do_tmp ../data/cortexm0_rtl_vs_netlist.do

# ------------------------------------------------------------------------------
# Create conformal low power control file
# ------------------------------------------------------------------------------

if {$rm_low_power_flow==1} {
    write_do_clp -design ${rm_top_module} \
                 -netlist ../data/cortexm0_si_fixing.v \
                 -logfile ../logs/cortexm0_cpf_vs_netlist_clp.log \
                 -add_iso_cell "$rm_down_isolation_cell"\
                 -verbose \
                 -clp_out_report ../reports/signoff/cortexm0_cpf_vs_netlist.rpt \
                 > ../data/cortexm0_cpf_vs_netlist.do
}

puts "END SYNTHESIS : [exec date]"

exit
