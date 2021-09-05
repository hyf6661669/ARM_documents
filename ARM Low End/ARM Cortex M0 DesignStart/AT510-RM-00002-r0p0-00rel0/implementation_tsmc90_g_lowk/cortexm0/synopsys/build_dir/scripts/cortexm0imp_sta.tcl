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
# Purpose       : PrimeTime STA script for the CORTEXM0IMP. With SI support.
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

# Define a network latency on virtual clock(s). This uses median clock latency figures
# computed from IC Compiler route_opt step. The median latency figures are generated
# during route_opt, and stored as TCL variables in the file sourced below.
# These figures are used to define a network clock latency for the virtual clock(s),
# based on the selected process corner
source -echo -verbose ../data/CORTEXM0IMP-sta_virtual_clk_latencies.sdc

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
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
  }

  rcworst
  -
  cbest {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${min_lib} ]
    }
    set driving_cell_lib ${rm_fast_rvt_lib_name}
    # Set virtual clock latencies approriate for best-corner
    set VCLK_clock_latency $VCLK_clock_latency_min
  }

  typical {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${typ_lib} ]
    }
    set driving_cell_lib ${rm_typical_rvt_lib_name}
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
  }

  default {
    echo "WARNING: No valid value set for rm_process variable !"
    echo "WARNING: Using worst-case libraries as a default"
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${max_lib} ]
    }
    set driving_cell_lib ${rm_slow_rvt_lib_name}
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

# Declares the clocks present in the design post implementation
# Period - Describes the frequency at which timing is to be checked. Coupled
#          with zero setup margin this will give the max frequency that can
#          be achieved by the core
# Uncertainty - Since the clock is now propagated (actual timing) and explicit
#               OCV derating is used the only 'uncertainty' in the clock
#               distribution is margin
# Latency - Describes the delay in the clock tree from the core clock pin to
#           the flop clock pin. Only on virtual clocks; one should use the
#           achieved value and not the target



create_clock -name SCLK -period ${rm_clock_period} [get_ports SCLK]
  set_propagated_clock [get_clocks {SCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {SCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {SCLK} ]

create_clock -name HCLK -period ${rm_clock_period} [get_ports HCLK]
  set_propagated_clock [get_clocks {HCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {HCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {HCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {HCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {HCLK} ]

create_clock -name VCLK -period ${rm_clock_period}
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {VCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {VCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {VCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {VCLK} ]

if { ${rm_include_dbg} || ${rm_include_ahbslv} } {

create_clock -name DCLK -period ${rm_clock_period} [get_ports DCLK]
  set_propagated_clock [get_clocks {DCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {DCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {DCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {DCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {DCLK} ]

}

# Define a network latency on the virtual clock(s), based on median values computed from
# IC Compiler for the internal clock domains
  set_clock_latency $VCLK_clock_latency [get_clocks {VCLK} ]

if { ${rm_create_test_wrapper} } {
create_clock -period ${rm_clock_period} [get_ports ${rm_wrp_clock} ]
  set_propagated_clock [get_clocks ${rm_wrp_clock} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks ${rm_wrp_clock} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks ${rm_wrp_clock} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks ${rm_wrp_clock} ]
  set_clock_uncertainty -hold  ${rm_hold_margin} [get_clocks ${rm_wrp_clock} ]

# Source latency applied to WCLK, nominally to balance with functional clock
  set_clock_latency -source [expr $rm_clock_latency - $rm_cts_latency_WCLK] [get_clocks ${rm_wrp_clock}]
}


# -----------------------------------------------------------------------------------
# Include the IO constraints
# -----------------------------------------------------------------------------------

source -echo -verbose  ../scripts/cortexm0imp_constraints.tcl

# During functional timing checks we disable test related ports/paths...
set_case_analysis 0 [get_ports $rm_scan_enable]

if { $rm_create_test_wrapper } {
# ... including wrapper paths
  set_case_analysis 0 [get_ports $rm_wrp_ishift]
  set_case_analysis 0 [get_ports $rm_wrp_oshift]
  set_case_analysis 0 [get_ports $rm_wrp_mode1]
  set_case_analysis 0 [get_ports $rm_wrp_mode2]
}
if { ${rm_use_scan_comp} } {
# ... and scan compression, if enabled
  set_case_analysis 0 [get_ports ${rm_comp_enable}]
}

#------------------------------------------------------------------------------------
# Define context for the design.
# -----------------------------------------------------------------------------------

set si_enable_analysis true
set si_xtalk_reselect_critical_path false

set enable_recovery_removal_arcs true
set timing_remove_clock_reconvergence_pessimism true

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
  rcbest
  -
  cworst {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_max_operating_condition \
                             -library $rm_slow_rvt_lib_name
    set_timing_derate -late  -clock -net_delay -cell_delay 1.0
    set_timing_derate -early -clock -net_delay -cell_delay [expr 1.0 - $rm_ocv_derate_factor ]
  }
  rcworst
  -
  cbest {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_min_operating_condition \
                             -library $rm_fast_rvt_lib_name
    set_timing_derate -late  -clock -net_delay -cell_delay [expr 1.0 + $rm_ocv_derate_factor ]
    set_timing_derate -early -clock -net_delay -cell_delay 1.0
  }
  typical {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_typ_operating_condition \
                             -library $rm_typical_rvt_lib_name
    set_timing_derate -late  -clock -net_delay -cell_delay [expr 1.0 + ($rm_ocv_derate_factor/2) ]
    set_timing_derate -early -clock -net_delay -cell_delay [expr 1.0 - ($rm_ocv_derate_factor/2) ]
  }
}

# -----------------------------------------------------------------------------------
# Separate Path Groups then Update and Check Timing
# -----------------------------------------------------------------------------------

group_path -name Inputs  -from [all_inputs]     -to [get_clocks $rm_clock_ports]
group_path -name Outputs -from [get_clocks $rm_clock_ports] -to [all_outputs]

# Feedthrough paths in a separate path group
group_path -name Feedthrough -from [all_inputs] -to [all_outputs]

if { ${rm_create_test_wrapper} } {
  group_path -name Inputs2Wrapper   -from [all_inputs] -to [get_clocks ${rm_wrp_clock}]
  group_path -name Wrapper2Outputs  -from [get_clocks ${rm_wrp_clock}] -to [all_outputs]
}

update_timing
check_timing -verbose > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.checktiming

# -----------------------------------------------------------------------------------
# Reports
# -----------------------------------------------------------------------------------

report_disable_timing -nosplit > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.disabled

report_timing -inp -net -trans -cap -nos \
              -crosstalk_delta                    > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.max_timing
report_timing -inp -net -trans -cap -nos \
              -crosstalk_delta -delay min         > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.min_timing

report_constraint -all_violators                  > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.constraints
report_bottleneck -max_cells 40 -max_paths 100    > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.bottleneck
report_analysis_coverage -status_details untested > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.coverage
report_clock_timing -type skew -verbose           > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.clock_skew
report_clock_timing -type latency -verbose        > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.clock_latency
report_clock_timing -type transition -verbose     > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.clock_transition
report_port -verbose                              > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.ports

# -----------------------------------------------------------------------------------
# Write out SDF
# -----------------------------------------------------------------------------------

write_sdf -ver 3.0 -input_port_nets \
                   -output_port_nets \
                   -compress gzip \
                   -con verilog  \
                   ../data/CORTEXM0IMP-${rm_process_corner}.sdf

# -----------------------------------------------------------------------------------
# Check noise
# -----------------------------------------------------------------------------------

update_noise
report_noise -all_violators > ../reports/sta/CORTEXM0IMP-${rm_process_corner}.noise

date
quit
