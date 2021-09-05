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
#
# File Name     : cortexm0_constraints.sdc
# 
# Purpose       : Clock definitions and I/O constraints 
#
# $Revision: 1.0 $
#
################################################################################

source ../scripts/cortexm0_config.tcl

# ------------------------------------------------------------------------------
# Define the transition constraints in cortexm0
# ------------------------------------------------------------------------------

set_max_transition [expr $rm_max_transition / 1000.0] [current_design]

# ------------------------------------------------------------------------------
# Define the Clocks in cortexm0
# ------------------------------------------------------------------------------

create_clock -name HCLK -period $rm_clock_period [get_ports {HCLK}]
create_clock -name SCLK -period $rm_clock_period  [get_ports {SCLK}]


#virtual clock
create_clock -name VHCLK -period $rm_clock_period 
create_clock -name VSCLK -period $rm_clock_period 

if { ${rm_include_dbg} || ${rm_include_ahbslv} } {

create_clock -name DCLK -period $rm_clock_period [get_ports {DCLK}]
create_clock -name VDCLK -period $rm_clock_period 
}

#create clock transitions, hold margin, pll jitter, pll duty cycle distortion and external clock to clock skew constraints.
foreach clocks $rm_clock_ports {
    set_clock_transition $rm_clock_transition [get_clocks ${clocks}]
    set_clock_uncertainty -hold $rm_clock_uncertainty_hold [get_clocks ${clocks}]
    set_clock_uncertainty -hold $rm_clock_uncertainty_hold [get_clocks V${clocks}]

    set_clock_uncertainty -setup ${rm_clock_uncertainty_setup}  \
       -rise_from [get_clocks "${clocks} V${clocks}"]\
       -rise_to [get_clocks  "${clocks} V${clocks}"]
    set_clock_uncertainty -setup ${rm_clock_uncertainty_setup}  \
       -fall_from [get_clocks "${clocks} V${clocks}"]\
       -fall_to [get_clocks  "${clocks} V${clocks}"]
    set_clock_uncertainty -setup [expr ${rm_dcd_jitter} * ${rm_clock_period} ]\
       -rise_from [get_clocks "${clocks} V${clocks}"]\
       -fall_to [get_clocks "${clocks} V${clocks}"]
    set_clock_uncertainty -setup [expr ${rm_dcd_jitter} * ${rm_clock_period} ]\
       -fall_from [get_clocks "${clocks} V${clocks}"]\
       -rise_to [get_clocks "${clocks} V${clocks}"]
    foreach other_clocks $rm_clock_ports {
       if ![string match $clocks $other_clocks] {
	  set_clock_uncertainty -setup ${rm_inter_clock_uncertainty_setup}  \
	      -rise_from [get_clocks "${clocks} V${clocks}"]\
	      -rise_to [get_clocks  "${other_clocks} V${other_clocks}"]
	  set_clock_uncertainty -setup ${rm_inter_clock_uncertainty_setup}  \
	      -fall_from [get_clocks "${clocks} V${clocks}"]\
	      -fall_to [get_clocks  "${other_clocks} V${other_clocks}"]
	  set_clock_uncertainty -setup [expr (${rm_dcd_jitter} * ${rm_clock_period}) + $rm_inter_clock_uncertainty_setup ]\
	      -rise_from [get_clocks "${clocks} V${clocks}"]\
	      -fall_to [get_clocks "${other_clocks} V${other_clocks}"]
	  set_clock_uncertainty -setup [expr (${rm_dcd_jitter} * ${rm_clock_period}) + $rm_inter_clock_uncertainty_setup ]\
	      -fall_from [get_clocks "${clocks} V${clocks}"]\
	      -rise_to [get_clocks "${other_clocks} V${other_clocks}"]
        }
    }
}

# ------------------------------------------------------------------------------
# Define Cycle Percentage Expressions
# ------------------------------------------------------------------------------

set rm_cycle90             [expr 0.90 * ${rm_clock_period}]
set rm_cycle80             [expr 0.80 * ${rm_clock_period}]
set rm_cycle70             [expr 0.70 * ${rm_clock_period}]
set rm_cycle60             [expr 0.60 * ${rm_clock_period}]
set rm_cycle50             [expr 0.50 * ${rm_clock_period}]
set rm_cycle40             [expr 0.40 * ${rm_clock_period}]
set rm_cycle30             [expr 0.30 * ${rm_clock_period}]
set rm_cycle20             [expr 0.20 * ${rm_clock_period}]
set rm_cycle10             [expr 0.10 * ${rm_clock_period}]

# ------------------------------------------------------------------------------
# Define Port Lists
# ------------------------------------------------------------------------------

set clock_ports [get_ports $rm_clock_ports]
set inputs [remove_from_collection [all_inputs] $clock_ports];
set outputs [all_outputs]

# ------------------------------------------------------------------------------
# Driving Cells
# ------------------------------------------------------------------------------

set_driving_cell -lib_cell $rm_driving_cell -pin "$rm_driving_cell_output_pin" [get_ports $inputs]

set_driving_cell -lib_cell $rm_clock_driving_cell -pin "$rm_clock_driving_pin" [get_ports $rm_clock_ports ]

# ------------------------------------------------------------------------------
#  Load modelling
# ------------------------------------------------------------------------------

set_load -pin_load -max $rm_pin_load [get_ports $outputs]

# ------------------------------------------------------------------------------
# Minimum Constraints
# ------------------------------------------------------------------------------

set_output_delay        $rm_clock_uncertainty_hold -min -clock VHCLK $outputs
set_input_delay         $rm_clock_uncertainty_hold -min -clock VHCLK $inputs 



# ------------------------------------------------------------------------------
# DFT Ports
# ------------------------------------------------------------------------------

for { set i 0 } {$i <= [expr $rm_no_of_chains - 1] } {incr i} {
  set_input_delay       $rm_cycle10 -max -clock VHCLK [list ${rm_scan_data_in}$i]
  set_output_delay      $rm_cycle10 -max -clock VHCLK [list ${rm_scan_data_out}$i]
  set_multicycle_path   2 -setup -from [get_ports ${rm_scan_data_in}$i]
  set_multicycle_path   1 -hold -from [get_ports ${rm_scan_data_in}$i]
}

set_multicycle_path 2 -setup -from $rm_scan_enable  
set_multicycle_path 1 -hold  -from $rm_scan_enable 

##Multicycle the rm_test_high_ports
#foreach test_port $rm_test_high_ports {
#set_multicycle_path 2 -setup -from $test_port 
#set_multicycle_path 1 -hold  -from $test_port 
#} 


set_input_delay $rm_cycle10 -max -clock VHCLK [list $rm_scan_enable  ]


# ------------------------------------------------------------------------------
# I/O Constraints
# ------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------
# Set Multicycle Paths On Static Signals
# -----------------------------------------------------------------------------------

set_multicycle_path 2 -setup -from [get_ports STCALIB]
set_multicycle_path 1 -hold  -from [get_ports STCALIB]

set_multicycle_path 2 -setup -from [get_ports ECOREVNUM]
set_multicycle_path 1 -hold  -from [get_ports ECOREVNUM]

# -----------------------------------------------------------------------------------
# RESETs
# -----------------------------------------------------------------------------------

set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports DBGRESETn]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports HRESETn]

# -----------------------------------------------------------------------------------
# AHB Ports
# -----------------------------------------------------------------------------------

# AHB-LITE Master Port

set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports HREADY]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports HRESP]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports HRDATA] 
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HTRANS]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HBURST]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HPROT]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HSIZE]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HWRITE]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HMASTLOCK]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HADDR]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HWDATA]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HMASTER]

# AHB-LITE SUB-SET Slave Port 
set_input_delay  $rm_cycle20 -max -clock VHCLK [get_ports SLVADDR]
set_input_delay  $rm_cycle20 -max -clock VHCLK [get_ports SLVSIZE]
set_input_delay  $rm_cycle20 -max -clock VHCLK [get_ports SLVTRANS]
set_input_delay  $rm_cycle20 -max -clock VHCLK [get_ports SLVWDATA]
set_input_delay  $rm_cycle20 -max -clock VHCLK [get_ports SLVWRITE]
set_output_delay $rm_cycle20 -max -clock VHCLK [get_ports SLVRDATA]
set_output_delay $rm_cycle20 -max -clock VHCLK [get_ports SLVREADY]
set_output_delay $rm_cycle20 -max -clock VHCLK [get_ports SLVRESP]

# -----------------------------------------------------------------------------------
# DEBUG
# -----------------------------------------------------------------------------------

set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports DBGRESTART]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports EDBGRQ]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports DBGRESTARTED]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HALTED]

# -----------------------------------------------------------------------------------
# MISC
# -----------------------------------------------------------------------------------

set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports IRQ]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports IRQLATENCY]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports NMI]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports RXEV]     
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports STCALIB]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports STCLKEN]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports ECOREVNUM]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports SLEEPHOLDREQn]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SLEEPHOLDACKn]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SYSRESETREQ]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports TXEV]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports LOCKUP]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SLEEPING]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SLEEPDEEP]

# -----------------------------------------------------------------------------------
# CODE SEQUENTIALITY AND SPECULATION
# -----------------------------------------------------------------------------------

set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports CODENSEQ]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports CODEHINTDE]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SPECHTRANS]

# -----------------------------------------------------------------------------------
# POWER MANAGEMENT
# -----------------------------------------------------------------------------------

set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SLEEPING]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SLEEPDEEP]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports SLEEPHOLDREQn]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SLEEPHOLDACKn]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports WICDSREQn]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports WICDSACKn]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports WICMASKISR]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports WICMASKNMI]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports WICMASKRXEV]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports WICLOAD]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports WICCLEAR]

## -----------------------------------------------------------------------------------
## STATE RETENTION AND POWER GATING
## -----------------------------------------------------------------------------------
#
#set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports SYSRETAINn]
#set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports SYSISOLATEn]
#set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports SYSPWRDOWN]
#set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports DBGISOLATEn]
#set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports DBGPWRDOWN]
#set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SYSPWRDOWNACK]
#set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports DBGPWRDOWNACK]
