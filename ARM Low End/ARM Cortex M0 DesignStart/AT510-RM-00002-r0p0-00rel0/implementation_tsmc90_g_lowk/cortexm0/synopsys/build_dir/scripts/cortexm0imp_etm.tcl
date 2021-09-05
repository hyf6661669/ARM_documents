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
# File Name     : cortexm0imp_etm.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Extracts a timing model (ETM) of the CORTEXM0IMP using PrimeTime
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

sh hostname
date
set rm_task etm

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

# Define a network latency on virtual clock(s). This uses median clock latency figures
# computed from IC Compiler route_opt step. The median latency figures are generated
# during route_opt, and stored as TCL variables in the file sourced below.
# These figures are used to define a network clock latency for the virtual clock(s),
# based on the selected process corner
source ../data/CORTEXM0IMP-sta_virtual_clk_latencies.sdc

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
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
  }

  rcworst
  -
  cbest {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${min_lib} ]
    }
    # Set virtual clock latencies approriate for best-corner
    set VCLK_clock_latency $VCLK_clock_latency_min
  }

  typical {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${typ_lib} ]
    }
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
  }

  default {
    echo "WARNING: No valid value set for rm_process variable !"
    echo "WARNING: Using worst-case libraries as a default"
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${max_lib} ]
    }
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
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
# Specify Clocks
# -----------------------------------------------------------------------------------


create_clock -name SCLK -period ${rm_clock_period} [get_ports SCLK]
  set_propagated_clock [get_clocks {SCLK} ]

create_clock -name HCLK -period ${rm_clock_period} [get_ports HCLK]
  set_propagated_clock [get_clocks {HCLK} ]

create_clock -name VCLK -period ${rm_clock_period}

if { ${rm_include_dbg} || ${rm_include_ahbslv} } {

create_clock -name DCLK -period ${rm_clock_period} [get_ports DCLK]
  set_propagated_clock [get_clocks {DCLK} ]

}

# Define a network latency on the virtual clock(s), based on median values computed from
# IC Compiler for the internal clock domains
  set_clock_latency $VCLK_clock_latency [get_clocks {VCLK} ]

if { ${rm_create_test_wrapper} } {
create_clock -period ${rm_clock_period} [get_ports ${rm_wrp_clock} ]
  set_propagated_clock [get_clocks ${rm_wrp_clock} ]
  set_clock_latency -source [expr $rm_clock_latency - $rm_cts_latency_WCLK] [get_clocks ${rm_wrp_clock}]
}


# -----------------------------------------------------------------------------------
# Include the IO constraints
# -----------------------------------------------------------------------------------

source -echo -verbose  ../scripts/cortexm0imp_constraints.tcl

set si_enable_analysis true
set si_xtalk_reselect_critical_path false

#------------------------------------------------------------------------------------
# Define context for the design.
# -----------------------------------------------------------------------------------

# Set the maximum transition value on the design
set_max_transition ${rm_max_transition} CORTEXM0IMP

# Transition inputs with maximum slope
set_input_transition ${rm_max_transition} ${inputs}

# Input transition setting for clock ports
set_input_transition ${rm_max_clock_transition} [get_ports ${rm_clock_ports}]

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
# Update and check the timing
# -----------------------------------------------------------------------------------

update_timing

check_timing -verbose > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-etm.checktiming

# -----------------------------------------------------------------------------------
# Extract The Timing Model
# -----------------------------------------------------------------------------------

set timing_enable_preset_clear_arcs true
set timing_disable_clock_gating_checks false

set extract_model_status_level high
set extract_model_enable_report_delay_calculation false
set extract_model_with_clock_latency_arcs true
set extract_model_use_conservative_current_slew true

set extract_model_tolerance 0.02
set extract_model_min_resolution 0.01
set extract_model_capacitance_limit 16.0
set extract_model_num_capacitance_points 10
set extract_model_clock_transition_limit 5.0
set extract_model_data_transition_limit 5.0

extract_model -library_cell -test_design -format { db lib } -output CORTEXM0IMP

# -----------------------------------------------------------------------------------
# Relocate Timing Models
# -----------------------------------------------------------------------------------

sh /bin/mv CORTEXM0IMP_test.db   ../models/timing/CORTEXM0IMP_test.db
sh /bin/mv CORTEXM0IMP.lib       ../models/timing/CORTEXM0IMP-${rm_process_corner}.lib
sh /bin/mv CORTEXM0IMP_lib.db    ../models/timing/CORTEXM0IMP-${rm_process_corner}_lib.db
sh /bin/mv CORTEXM0IMP_constr.pt ../models/timing/CORTEXM0IMP-${rm_process_corner}_constr.pt

# -----------------------------------------------------------------------------------
# Set output load and driving cell for netlist interface timing report 
# -----------------------------------------------------------------------------------

# Load all outputs with suitable capacitance
set_load ${rm_load_value} [all_outputs]

# Set transitions on all input ports
# Use of set_driving_cell is not recommended in etm/qual because of the difference in behaviour 
# when driving lumped capacitance vs distributed parasitics. This would usually be seen as clock 
# ports failing effective capacitance checks. Using set_input_transition avoids this problem.
set_input_transition $rm_max_transition $inputs
set_input_transition $rm_max_clock_transition [get_ports ${rm_clock_ports}]

update_timing

# ----------------------------------------------------------------------------------------------------------------------
# Report Global Clock Latency and transition (Global skew determined from difference between max (setup) and min (hold) latency)
# ----------------------------------------------------------------------------------------------------------------------

report_clock_timing -type latency -setup > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-etm_max_clock.latency
report_clock_timing -type latency -hold > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-etm_min_clock.latency

# -----------------------------------------------------------------------------------
# Write Interface Timing For The Netlist
# -----------------------------------------------------------------------------------

report_design -nosplit > ../reports/sta/CORTEXM0IMP-${rm_process_corner}-etm.design

report_disable_timing -nosplit > ../reports/sta/CORTEXM0IMP-etm.disabled

write_interface_timing -timing_type arc ../reports/sta/CORTEXM0IMP-${rm_process_corner}.ntiming

date
quit
