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
# File Name     : cortexm0imp_dmsa_constraints.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : PT-DMSA constraints script for the CORTEXM0IMP
#
#
# Date          : Mar. 17 2009
#
#####################################################################################
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


#------------------------------------------------------------------------------------
# Define context for the design.
# -----------------------------------------------------------------------------------

# Set the maximum transition value on the design
set_max_transition $rm_max_transition CORTEXM0IMP

# Load all outputs with suitable capacitance
set_load $rm_load_value [all_outputs]

source -echo -verbose  $sh_launch_dir/../scripts/cortexm0imp_constraints.tcl

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

# -----------------------------------------------------------------------------------
# Seperate Path Groups then Update and Check Timing
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

check_timing -verbose > $sh_launch_dir/../reports/dmsa/CORTEXM0IMP.${process}.checktiming
