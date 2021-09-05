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
# File Name     : cortexm0imp_sta.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : PrimeTime STA (test-mode) script for the CORTEXM0IMP. With SI support.
#
#
# Date          : Mar. 17 2009
#
#####################################################################################
set rm_task sta
sh hostname
date

# -----------------------------------------------------------------------------------
# Setup The Configuration
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/core_config.tcl
source -echo -verbose ../scripts/cortexm0imp_config.tcl

# -----------------------------------------------------------------------------------
# Setup the Target Technology
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0imp_tech.tcl

set search_path ${rm_search_path}

set link_path [list *]

# pointer to cell lib for driving cells
set driving_cell_lib ""

# -----------------------------------------------------------------------------------
# Define the link path based on process corner
# -----------------------------------------------------------------------------------

switch ${rm_process_corner} {
  rcbest
  -
  cworst { 
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${max_lib} ]
    }
    set driving_cell_lib ${rm_slow_rvt_lib_name}
  }

  rcworst
  -
  cbest {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${min_lib} ]
    }
    set driving_cell_lib ${rm_fast_rvt_lib_name}
  }

  typical {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${typ_lib} ]
    }
    set driving_cell_lib ${rm_typical_rvt_lib_name}
  }

  default {
    echo "WARNING: No valid value set for rm_process_corner variable !"
    echo "WARNING: Using worst-case libraries as a default"
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${max_lib} ]
    }
    set driving_cell_lib ${rm_slow_rvt_lib_name}
  }
}

# -----------------------------------------------------------------------------------
# Read In The Post Layout Verilog Netlist
# -----------------------------------------------------------------------------------

set svr_keep_unconnected_nets true
read_verilog ../data/CORTEXM0IMP.v

# -----------------------------------------------------------------------------------
# Link The Design
# -----------------------------------------------------------------------------------

current_design CORTEXM0IMP
link_design

# -----------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------
# TEST TIMING : Capture cycle
# -----------------------------------------------------------------------------------
# - Core clocks defined under tester conditions: and set as propagated
# - Virtual clocks defined for PI / PO constraints
# - Case analysis settings to apply test-mode conditions
# -----------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------
# Core clocks
# -----------------------------------------------------------------------------------

create_clock -name SCLK_wft1   -period 100 -waveform { 45 55 } [get_ports SCLK]
create_clock -name HCLK_wft1   -period 100 -waveform { 45 55 } [get_ports HCLK]

if { ${rm_include_dbg} || ${rm_include_ahbslv} } {

create_clock -name DCLK_wft1   -period 100 -waveform { 45 55 } [get_ports DCLK]

}

set_propagated_clock [all_clocks]

# -----------------------------------------------------------------------------------
# Virtual clocks for PI, PO & PIO events
# -----------------------------------------------------------------------------------
# Clock used to constrain input ports
create_clock -name forcePI_wft1 -period 100 -waveform { 0 1 } 

# Clock used to constrain output ports
create_clock -name measurePO_wft1 -period 100 -waveform { 0 40 } 

# -----------------------------------------------------------------------------------
# Input port constraints
# -----------------------------------------------------------------------------------

set inputs [remove_from_collection [all_inputs] [get_ports ${rm_clock_ports}] ]

set_input_delay 0 -clock forcePI_wft1 [get_ports $inputs ]

# -----------------------------------------------------------------------------------
# Output port constraints
# -----------------------------------------------------------------------------------

set_output_delay 0 -clock measurePO_wft1 [all_outputs] -clock_fall

# -----------------------------------------------------------------------------------
# Capture cycle : Reset disabled, testmode signals active
# -----------------------------------------------------------------------------------

set_case_analysis 1 [get_ports ${rm_reset_ports}]

# nonscan sequential elements 

#------------------------------------------------------------------------------------
# Define context for the design.
# -----------------------------------------------------------------------------------

set si_enable_analysis true
set si_xtalk_reselect_critical_path false

# Set the maximum allowed transition value on the design
set_max_transition ${rm_max_transition} CORTEXM0IMP

# Load all outputs with suitable capacitance
set_load ${rm_load_value} [all_outputs]

# Drive the ports with a standard driving cell with input transition
set_driving_cell -library ${driving_cell_lib} \
                 -lib_cell ${rm_driving_cell} \
                 -input_transition_rise ${rm_max_transition} \
                 -input_transition_fall ${rm_max_transition} \
                 -pin ${rm_driving_pin} \
                 ${inputs}

# Drive the clock ports with a different driving cell and input transition
set_driving_cell -library ${driving_cell_lib} \
                 -lib_cell ${rm_clock_driving_cell} \
                 -input_transition_rise ${rm_max_clock_transition} \
                 -input_transition_fall ${rm_max_clock_transition} \
                 -pin ${rm_clock_driving_pin} \
                 [get_ports ${rm_clock_ports}]

# -----------------------------------------------------------------------------------
# Annotate Extracted Parasitics / Set the operating conditions
# -----------------------------------------------------------------------------------

read_parasitics -keep_capacitive_coupling \
                -comp wlm \
                ../data/CORTEXM0IMP_${rm_process_corner}.spef.gz

report_annotated_parasitics -check \
                            -constant_arcs \
                            -list_not_annotated \
                            -max_nets 200 \
			    > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.annotated

switch ${rm_process_corner} {
  cworst {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_max_operating_condition \
                             -library $rm_slow_rvt_lib_name
  }
  rcworst {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_min_operating_condition \
                             -library $rm_fast_rvt_lib_name
  }
  cbest {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_min_operating_condition \
                             -library $rm_fast_rvt_lib_name
  }
  rcbest {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_max_operating_condition \
                             -library $rm_slow_rvt_lib_name
  }
  typical {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_typ_operating_condition \
                             -library $rm_typical_rvt_lib_name
  }
}

# -----------------------------------------------------------------------------------
# Separate Path Groups then Update and Check Timing
# -----------------------------------------------------------------------------------

group_path -name Inputs -from [all_inputs]
group_path -name Outputs -to [all_outputs]

update_timing
check_timing -verbose > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-capture.checktiming

# -----------------------------------------------------------------------------------
# Reports
# -----------------------------------------------------------------------------------

report_disable_timing -nosplit > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-capture.disabled

report_timing -input -net -trans -cap \
              -nosplit -crosstalk_delta \
              > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-capture.max_timing
              
report_timing -input -net -trans -cap \
              -nosplit -crosstalk_delta -delay min \
              > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-capture.min_timing

report_constraint -all_violators                  > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-capture.constraints
report_analysis_coverage -status_details untested > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-capture.coverage

# -----------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------
# TEST TIMING : Shift cycle
# -----------------------------------------------------------------------------------
# Shift cycle : shift-enable signals == active
# All other conditions and constraints as for Capture cycle
# -----------------------------------------------------------------------------------

set_case_analysis 1 [get_ports ${rm_scan_enable}]

if { ${rm_create_test_wrapper} } {
  set_case_analysis 1 [get_ports $rm_wrp_ishift]
  set_case_analysis 1 [get_ports $rm_wrp_oshift]
}

# Ignore endpoints to/from all RAM macros


# -----------------------------------------------------------------------------------
# Update Timing
# -----------------------------------------------------------------------------------

update_timing

# -----------------------------------------------------------------------------------
# Reports
# -----------------------------------------------------------------------------------

report_timing -inp -net -trans -cap \
              -nosplit -crosstalk_delta \
              > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-shift.max_timing
              
report_timing -inp -net -trans -cap \
              -nos -crosstalk_delta -delay min \
              > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-shift.min_timing

report_constraint -all_violators > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-shift.constraints

# -----------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------
# TEST TIMING : At-speed capture
# -----------------------------------------------------------------------------------
# For at-speed delay test, the tester clocks can have different waveforms 
# between the last shift cycle and the capture cycle.
# Primetime can model this by superimposing two clock waveforms on top of each other
# Each cycle has a separate input-force and output-capture virtual clocks
# -----------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------
# Remove all existing constraints
# This is required because at-speed analysis uses different clock definitions
# -----------------------------------------------------------------------------------

reset_design

# -----------------------------------------------------------------------------------
# Core clocks
# -----------------------------------------------------------------------------------


# -----------------------------------------------------------------------------------
# At-speed waveforms defined at a rate of 100 MHz (10ns period)
# -----------------------------------------------------------------------------------

create_clock -name HCLK_master -period 200 -waveform { 94 99 104 109 } [get_ports HCLK]
create_generated_clock -name HCLK_wft1 \
	-edges { 1 2 5 } -source [get_ports HCLK] \
	[get_ports HCLK] -add -master_clock HCLK_master
create_generated_clock -name HCLK_wft2 \
	-edges { 3 4 7 } -source [get_ports HCLK] \
	[get_ports HCLK] -add -master_clock HCLK_master


set_propagated_clock [all_clocks]

# -----------------------------------------------------------------------------------
# Virtual clocks for I/O constraints
# -----------------------------------------------------------------------------------

create_clock -name forcePI_wft1   -period 200 -waveform { 0 1 } 
create_clock -name measurePO_wft1 -period 200 -waveform { 0 40 } 
create_clock -name forcePI_wft2   -period 200 -waveform { 100 101 } 
create_clock -name measurePO_wft2 -period 200 -waveform { 0 101 } 

# -----------------------------------------------------------------------------------
# Input constraints 
# -----------------------------------------------------------------------------------

set inputs [remove_from_collection [all_inputs] [get_ports ${rm_clock_ports}] ]

set_input_delay 0             -clock forcePI_wft1 [get_ports $inputs ]
set_input_delay -add_delay 0  -clock forcePI_wft2 [get_ports $inputs]

# -----------------------------------------------------------------------------------
# Output constraints
# -----------------------------------------------------------------------------------

set_output_delay 0            -clock measurePO_wft1 [all_outputs]
set_output_delay -add_delay 0 -clock measurePO_wft2 [all_outputs] -clock_fall

# -----------------------------------------------------------------------------------
## Case analysis settings
# -----------------------------------------------------------------------------------

set_case_analysis 1 [get_ports ${rm_reset_ports}]
set_case_analysis 0 [get_ports ${rm_scan_enable}]

## Set wrapper test mode encoding for Internal Test
if { ${rm_create_test_wrapper} } {
  set_case_analysis 1 [get_ports $rm_wrp_mode2]
  set_case_analysis 0 [get_ports $rm_wrp_mode1]
}

# nonscan sequential elements 

#------------------------------------------------------------------------------------
# At-speed testmode timing exceptions
# -----------------------------------------------------------------------------------


#------------------------------------------------------------------------------------
# Re-define context for the design.
# -----------------------------------------------------------------------------------

set si_enable_analysis true
set si_xtalk_reselect_critical_path false

# Load all outputs with suitable capacitance
set_load ${rm_load_value} [all_outputs]

# Drive the ports with a standard driving cell with input transition
set_driving_cell -library ${driving_cell_lib} \
                 -lib_cell ${rm_driving_cell} \
                 -input_transition_rise ${rm_max_transition} \
                 -input_transition_fall ${rm_max_transition} \
                 -pin ${rm_driving_pin} \
                 ${inputs}

# Drive the clock ports with a different driving cell and input transition
set_driving_cell -library ${driving_cell_lib} \
                 -lib_cell ${rm_clock_driving_cell} \
                 -input_transition_rise ${rm_max_clock_transition} \
                 -input_transition_fall ${rm_max_clock_transition} \
                 -pin ${rm_clock_driving_pin} \
                 [get_ports ${rm_clock_ports}]

# -----------------------------------------------------------------------------------
# Annotate Extracted Parasitics / Set the operating conditions
# -----------------------------------------------------------------------------------

read_parasitics -keep_capacitive_coupling \
                -comp wlm \
                ../data/CORTEXM0IMP_${rm_process_corner}.spef.gz

report_annotated_parasitics -check \
                            -constant_arcs \
                            -list_not_annotated \
                            -max_nets 200 \
                            > ../reports/sta/CORTEXM0IMP_${rm_process_corner}.annotated

switch ${rm_process_corner} {
  rcbest
  -
  cworst { 
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_max_operating_condition \
                             -library $rm_slow_rvt_lib_name
  }
  rcworst
  -
  cbest {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_min_operating_condition \
                             -library $rm_fast_rvt_lib_name
  }
  typical {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_typ_operating_condition \
                             -library $rm_typical_rvt_lib_name
  }
}

# -----------------------------------------------------------------------------------
# Update and Check Timing
# -----------------------------------------------------------------------------------

update_timing
check_timing -verbose > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-AtSpeed.checktiming

# -----------------------------------------------------------------------------------
# Reports
# -----------------------------------------------------------------------------------

report_disable_timing -nosplit \
                      > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-AtSpeed.disabled

report_timing -inp -net -trans -cap \
              -nosplit -crosstalk_delta \
              > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-AtSpeed.max_timing
report_timing -inp -net -trans -cap \
              -nosplit -crosstalk_delta -delay min \
              > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-AtSpeed.min_timing

report_constraint -all_violators \
                  > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-AtSpeed.constraints
report_analysis_coverage -status_details untested \
                         > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-AtSpeed.coverage

# Generate testmode timing exceptions for use by TMAX
write_sdc -include exceptions ../data/CORTEXM0IMP-${rm_process_corner}_testmode.sdc

# -----------------------------------------------------------------------------------
# Path Delay Data For TetraMAX 
# -----------------------------------------------------------------------------------

# Check for "pt2tmax" file:
if {[file exists ${rm_pt2tmax_path}/pt2tmax.tcl]} {
  source ${rm_pt2tmax_path}/pt2tmax.tcl
  write_delay_paths -max_paths 10000 ../data/CORTEXM0IMP-${rm_process_corner}_pathdelay.cmd
  write_timing_exceptions -output ../data/CORTEXM0IMP-${rm_process_corner}_pathdelay_exceptions.tcl
  write_timing_slacks ../data/CORTEXM0IMP-${rm_process_corner}_timing_slacks.dat
} else {
  echo "**ERROR**: \n \'pt2tmax\' script not found:" 
  echo "Skipping critical path data generation for Tetramax"
  echo "Check location of \'pt2tmax.tcl\' script !!"
  echo "Normal location for this script is: \n \t ${rm_pt2tmax_path}/pt2tmax.tcl"
}

date
quit
