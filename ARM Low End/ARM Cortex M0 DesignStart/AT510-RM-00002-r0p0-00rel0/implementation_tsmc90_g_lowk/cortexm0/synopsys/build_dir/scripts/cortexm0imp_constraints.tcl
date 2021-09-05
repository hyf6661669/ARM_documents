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
# File Name     : cortexm0imp_constraints.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Interface constraints file for the CORTEXM0IMP
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

# -----------------------------------------------------------------------------------
# Define Cycle Percentage Expressions
# -----------------------------------------------------------------------------------

set rm_cycle90    [expr 0.90 * ${rm_clock_period}]
set rm_cycle80    [expr 0.80 * ${rm_clock_period}]
set rm_cycle70    [expr 0.70 * ${rm_clock_period}]
set rm_cycle60    [expr 0.60 * ${rm_clock_period}]
set rm_cycle50    [expr 0.50 * ${rm_clock_period}]
set rm_cycle40    [expr 0.40 * ${rm_clock_period}]
set rm_cycle30    [expr 0.30 * ${rm_clock_period}]
set rm_cycle20    [expr 0.20 * ${rm_clock_period}]
set rm_cycle10    [expr 0.10 * ${rm_clock_period}]

# -----------------------------------------------------------------------------------
# Define Port Lists
# -----------------------------------------------------------------------------------

set inputs [remove_from_collection [all_inputs] ${rm_clock_ports}];
set outputs [all_outputs]

# -----------------------------------------------------------------------------------
# Minimum Constraints
# -----------------------------------------------------------------------------------

set_input_delay 	$rm_clock_uncertainty -min -clock VCLK $inputs
set_output_delay 	$rm_clock_uncertainty -min -clock VCLK $outputs

# ------------------------------------------------------------------------------
# DFT Ports
# ------------------------------------------------------------------------------

set_input_delay  $rm_cycle20           -max -clock VCLK [get_ports ${rm_scan_enable}]
set_input_delay  $rm_clock_uncertainty -min -clock VCLK [get_ports ${rm_scan_enable}]


if { $rm_task == "sta" || $rm_task == "synthesis" || $rm_task == "place_opt" } {
  # Setting a multicycle path on ScanEnable and ResetBypass is standard procedure as ATPG
  # is typically performed at a lower clock frequency
  set_multicycle_path 2 -setup -end -from [get_ports ${rm_scan_enable}]
  set_multicycle_path 1 -hold  -end -from [get_ports ${rm_scan_enable}]

}

for { set i 0 } {$i <= [expr $rm_num_scan_chains - 1] } {incr i} {
  set_input_delay  $rm_cycle20    	 -max -clock VCLK [get_ports ${rm_scan_data_in}$i]
  set_input_delay  $rm_clock_uncertainty -min -clock VCLK [get_ports ${rm_scan_data_in}$i]
  
  set_output_delay $rm_cycle20    	 -max -clock VCLK [get_ports ${rm_scan_data_out}$i]
  set_output_delay $rm_clock_uncertainty -min -clock VCLK [get_ports ${rm_scan_data_out}$i]
  
  if { $rm_task == "sta" || $rm_task == "synthesis" || $rm_task == "place_opt" } {
    set_multicycle_path	2 -setup -end -from [get_ports ${rm_scan_data_in}$i]
    set_multicycle_path	1 -hold  -end -from [get_ports ${rm_scan_data_in}$i]
  }
}

if { $rm_create_test_wrapper } {
  set_input_delay   $rm_cycle20    	  -max -clock VCLK [get_ports $rm_wrp_si*]
  set_input_delay   $rm_clock_uncertainty -min -clock VCLK [get_ports $rm_wrp_si*]
  set_output_delay  $rm_cycle20    	  -max -clock VCLK [get_ports $rm_wrp_so*]
  set_output_delay  $rm_clock_uncertainty -min -clock VCLK [get_ports $rm_wrp_so*]

  set_input_delay   $rm_cycle20    	  -max -clock VCLK [list $rm_wrp_mode1 $rm_wrp_mode2]
  set_input_delay   $rm_clock_uncertainty -min -clock VCLK [list $rm_wrp_mode1 $rm_wrp_mode2]

  set_input_delay   $rm_cycle20    	  -max -clock VCLK [list $rm_wrp_ishift $rm_wrp_oshift]
  set_input_delay   $rm_clock_uncertainty -min -clock VCLK [list $rm_wrp_ishift $rm_wrp_oshift]

  if { $rm_task == "sta" || $rm_task == "synthesis" || $rm_task == "place_opt" } {
    # Multicycle paths from wrapper scan in's
    set_multicycle_path 2 -setup -end -from [get_ports [get_ports $rm_wrp_si*]]
    set_multicycle_path 1 -hold  -end -from [get_ports [get_ports $rm_wrp_si*]]

    # Multicycle paths from wrapper shift enables
    set_multicycle_path 2 -setup -end -from [get_ports [list ${rm_wrp_mode1} ${rm_wrp_mode2}]]
    set_multicycle_path 1 -hold  -end -from [get_ports [list ${rm_wrp_mode1} ${rm_wrp_mode2}]]

    # Multicycle paths from wrapper shift enables
    set_multicycle_path 2 -setup -end -from [get_ports [list ${rm_wrp_ishift} ${rm_wrp_oshift}]]
    set_multicycle_path 1 -hold  -end -from [get_ports [list ${rm_wrp_ishift} ${rm_wrp_oshift}]]
  }
}

if { $rm_use_scan_comp } {
  set_input_delay  $rm_cycle20           -max -clock VCLK [get_ports ${rm_comp_enable}]
  set_input_delay  $rm_clock_uncertainty -min -clock VCLK [get_ports ${rm_comp_enable}]   

  if { $rm_task == "sta" || $rm_task == "synthesis" || $rm_task == "place_opt" } {
    # Multicycle paths from compression enable
    set_multicycle_path 2 -setup -end -from [get_ports ${rm_comp_enable}]
    set_multicycle_path 1 -hold  -end -from [get_ports ${rm_comp_enable}]
  }
}



# -----------------------------------------------------------------------------------
# Set Multicycle Paths On Static Signals
# -----------------------------------------------------------------------------------

if { $rm_task == "sta" || $rm_task == "synthesis" || $rm_task == "place_opt" } {

set_multicycle_path 2 -setup -from [get_ports STCALIB]
set_multicycle_path 1 -hold  -from [get_ports STCALIB]

set_multicycle_path 2 -setup -from [get_ports ECOREVNUM]
set_multicycle_path 1 -hold  -from [get_ports ECOREVNUM]
}

# -----------------------------------------------------------------------------------
# RESETs
# -----------------------------------------------------------------------------------

set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports DBGRESETn]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports HRESETn]

# -----------------------------------------------------------------------------------
# AHB Ports
# -----------------------------------------------------------------------------------

# AHB-LITE Master Port

set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports HREADY]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports HRESP]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports HRDATA] 
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HTRANS]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HBURST]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HPROT]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HSIZE]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HWRITE]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HMASTLOCK]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HADDR]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HWDATA]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HMASTER]

# AHB-LITE SUB-SET Slave Port 
set_input_delay  $rm_cycle20 -max -clock VCLK [get_ports SLVADDR]
set_input_delay  $rm_cycle20 -max -clock VCLK [get_ports SLVSIZE]
set_input_delay  $rm_cycle20 -max -clock VCLK [get_ports SLVTRANS]
set_input_delay  $rm_cycle20 -max -clock VCLK [get_ports SLVWDATA]
set_input_delay  $rm_cycle20 -max -clock VCLK [get_ports SLVWRITE]
set_output_delay $rm_cycle20 -max -clock VCLK [get_ports SLVRDATA]
set_output_delay $rm_cycle20 -max -clock VCLK [get_ports SLVREADY]
set_output_delay $rm_cycle20 -max -clock VCLK [get_ports SLVRESP]

# -----------------------------------------------------------------------------------
# DEBUG
# -----------------------------------------------------------------------------------

set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports DBGRESTART]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports EDBGRQ]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports DBGRESTARTED]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports HALTED]

# -----------------------------------------------------------------------------------
# MISC
# -----------------------------------------------------------------------------------

set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports IRQ]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports IRQLATENCY]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports NMI]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports RXEV]     
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports STCALIB]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports STCLKEN]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports ECOREVNUM]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports SLEEPHOLDREQn]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports SLEEPHOLDACKn]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports SYSRESETREQ]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports TXEV]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports LOCKUP]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports SLEEPING]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports SLEEPDEEP]

# -----------------------------------------------------------------------------------
# CODE SEQUENTIALITY AND SPECULATION
# -----------------------------------------------------------------------------------

set_output_delay $rm_cycle60 -max -clock VCLK [get_ports CODENSEQ]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports CODEHINTDE]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports SPECHTRANS]

# -----------------------------------------------------------------------------------
# POWER MANAGEMENT
# -----------------------------------------------------------------------------------

set_output_delay $rm_cycle60 -max -clock VCLK [get_ports SLEEPING]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports SLEEPDEEP]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports SLEEPHOLDREQn]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports SLEEPHOLDACKn]
set_input_delay  $rm_cycle60 -max -clock VCLK [get_ports WICDSREQn]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports WICDSACKn]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports WICMASKISR]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports WICMASKNMI]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports WICMASKRXEV]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports WICLOAD]
set_output_delay $rm_cycle60 -max -clock VCLK [get_ports WICCLEAR]
