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
# File Name     : cortexm0imp_mcmm_testmode_constraints.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Test-mode MCMM constraints for the CORTEXM0IMP
#
#                 
# Date          : Mar. 17 2009
#
#####################################################################################

# -----------------------------------------------------------------------------------
# MCMM constraints for test_best_corner scenario
# Details:
# - Core clocks defined under tester conditions: 
# Inputs applied at time 0 in test cycle
# Outputs strobed at time 45ns
# -----------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------
## Test mode clocks
# -----------------------------------------------------------------------------------
# --- Clock for wrapper chains ----
if { ${rm_create_test_wrapper} } {
create_clock -period 100.0 -waveform {45 55} [get_ports ${rm_wrp_clock} ]
  set_clock_latency ${rm_clock_latency} [get_clocks ${rm_wrp_clock} ]
  set_clock_uncertainty -setup ${rm_setup_margin} [get_clocks ${rm_wrp_clock} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks ${rm_wrp_clock} ]

# Source latency applied to WCLK, nominally to balance with functional clock
  set_clock_latency -source [expr $rm_clock_latency - $rm_cts_latency_WCLK] [get_clocks ${rm_wrp_clock}]
}

# --- Virtual Clock for PI apply and PO strobe ----
create_clock -name VTCLK -period 100.0 -waveform {45 55}
  set_clock_latency ${rm_clock_latency} [get_clocks {VTCLK} ]
  set_clock_uncertainty -setup ${rm_setup_margin} [get_clocks {VTCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {VTCLK} ]

# -----------------------------------------------------------------------------------
# Test mode I/O constraints
# -----------------------------------------------------------------------------------

## Input delay constraints for primary inputs
## Delay is specified w.r.t to clock edge - not clock period start/end
set inputs [remove_from_collection [all_inputs] ${rm_clock_ports}];
set_input_delay 55.0 -clock VTCLK $inputs

## Output delays: Strobe time is 2.0 ns before the clock edge
set_output_delay 2.0 -clock VTCLK [all_outputs]

# -----------------------------------------------------------------------------------
# Case analysis settings for test mode
# -----------------------------------------------------------------------------------
set_case_analysis 1 [get_ports ${rm_scan_enable}]

if { $rm_create_test_wrapper } {
  set_case_analysis 1 [list $rm_wrp_ishift $rm_wrp_oshift]
}

if { $rm_use_scan_comp } {
  set_case_analysis 1 [get_ports ${rm_comp_enable}]
}


# -----------------------------------------------------------------------------------
## Design rule constraints
# -----------------------------------------------------------------------------------
set_driving_cell -library ${rm_rvt_lib} \
                 -lib_cell ${rm_driving_cell} \
                 -pin ${rm_driving_pin} \
                 -input_transition_rise ${rm_max_transition} \
                 -input_transition_fall ${rm_max_transition} \
                 ${inputs}

# Drive the clock ports with a different driving cell and input transition
set_driving_cell -library ${rm_rvt_lib} \
                 -lib_cell ${rm_clock_driving_cell} \
                 -input_transition_rise ${rm_max_clock_transition} \
                 -input_transition_fall ${rm_max_clock_transition} \
                 -pin ${rm_clock_driving_pin} \
                 [get_ports ${rm_clock_ports}]

set_load ${rm_load_value} [all_outputs]
