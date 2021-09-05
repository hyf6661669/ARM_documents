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
# RM Version: CORTEXM0INTEGRATION Encounter7.1usr2 RTL_VERSION
################################################################################
#
# File Name     : cortexm0integration_constraints.sdc
# 
# Purpose       : Clock definitions and I/O constraints 
#
# $Revision: 1.0 $
#
################################################################################

source ../scripts/cortexm0integration_config.tcl


# ------------------------------------------------------------------------------
# Define the transition constraint in cortexm0integration
# ------------------------------------------------------------------------------

set_max_transition [expr $rm_max_transition / 1000.0] [current_design]

# ------------------------------------------------------------------------------
# Define the Clocks in cortexm0integration
# ------------------------------------------------------------------------------
create_clock -name HCLK -period $rm_clock_period [get_ports {HCLK}]
create_clock -name SCLK -period $rm_clock_period [get_ports {SCLK}]

#virtual clock
create_clock -name VHCLK -period $rm_clock_period 
create_clock -name VSCLK -period $rm_clock_period 

#Define additional clocks if debug module is included 
if {$rm_include_dbg == "1"} {
	create_clock -name DCLK -period $rm_clock_period [get_ports {DCLK}]
	create_clock -name SWCLKTCK -period $rm_swclktck_clock_period [get_ports {SWCLKTCK}]
          #Define the corresponding virtual clocks
 	create_clock -name VDCLK -period $rm_clock_period 
	create_clock -name VSWCLKTCK -period $rm_swclktck_clock_period }

#Define additional clocks if WIC module is included 
if {$rm_include_wic == "1"} {
	create_clock -name FCLK -period $rm_clock_period [get_ports {FCLK}]
        #Define the corresponding virtual clocks 
 	create_clock -name VFCLK -period $rm_clock_period  }

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
#Added this for resolving the hold violations issues
# -----------------------------------------------------------------------------------
set_false_path -hold -from VHCLK -to SWCLKTCK

# -----------------------------------------------------------------------------------
# Define Port Lists
# -----------------------------------------------------------------------------------

set inputs [remove_from_collection [all_inputs] ${rm_clock_ports}];
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


# -----------------------------------------------------------------------------------
# Minimum Constraints
# -----------------------------------------------------------------------------------

set_input_delay 	$rm_clock_uncertainty_hold -min -clock VHCLK $inputs
set_output_delay 	$rm_clock_uncertainty_hold -min -clock VHCLK $outputs

# ------------------------------------------------------------------------------
# DFT Ports
# ------------------------------------------------------------------------------

set_input_delay  $rm_cycle20           -max -clock VHCLK [get_ports ${rm_scan_enable}]
set_input_delay  $rm_clock_uncertainty_hold -min -clock VHCLK [get_ports ${rm_scan_enable}]

set_input_delay  $rm_cycle20           -max -clock VHCLK [get_ports ${rm_test_high_ports}]
set_input_delay  $rm_clock_uncertainty_hold -min -clock VHCLK [get_ports ${rm_test_high_ports}]

  # Setting a multicycle path on ScanEnable and ResetBypass is standard procedure as ATPG
  # is typically performed at a lower clock frequency
  set_multicycle_path 2 -setup -from [get_ports ${rm_scan_enable}]
  set_multicycle_path 1 -hold  -from [get_ports ${rm_scan_enable}]

#Multicycle the rm_test_high_ports

foreach test_port $rm_test_high_ports {
set_multicycle_path 2 -setup -from $test_port 
set_multicycle_path 1 -hold  -from $test_port 
} 



for { set i 0 } {$i <= [expr $rm_no_of_chains - 1] } {incr i} {
  set_input_delay  $rm_cycle20    	 -max -clock VHCLK [get_ports ${rm_scan_data_in}$i]
  set_input_delay  $rm_clock_uncertainty_hold -min -clock VHCLK [get_ports ${rm_scan_data_in}$i]
  
  set_output_delay $rm_cycle20    	 -max -clock VHCLK [get_ports ${rm_scan_data_out}$i]
  set_output_delay $rm_clock_uncertainty_hold -min -clock VHCLK [get_ports ${rm_scan_data_out}$i]
  
    set_multicycle_path	2 -setup -from [get_ports ${rm_scan_data_in}$i]
    set_multicycle_path	1 -hold  -from [get_ports ${rm_scan_data_in}$i]
}

if { ${rm_include_dbg} } {

# -----------------------------------------------------------------------------------
# Set Multicycle Paths Between Asynchronous Clock Domains
# -----------------------------------------------------------------------------------

    set_multicycle_path 2 -setup -end -from SWCLKTCK -to HCLK
    set_multicycle_path 1 -hold  -end -from SWCLKTCK -to HCLK
    set_multicycle_path 2 -setup -end -from SWCLKTCK -to DCLK
    set_multicycle_path 1 -hold  -end -from SWCLKTCK -to SCLK
    set_multicycle_path 2 -setup -end -from SWCLKTCK -to SCLK
    set_multicycle_path 1 -hold  -end -from SWCLKTCK -to DCLK
    set_multicycle_path 2 -setup -end -from SWCLKTCK -to VHCLK
    set_multicycle_path 1 -hold  -end -from SWCLKTCK -to VHCLK

    set_multicycle_path 2 -setup -end -from VSWCLKTCK -to HCLK
    set_multicycle_path 1 -hold  -end -from VSWCLKTCK -to HCLK
    set_multicycle_path 2 -setup -end -from VSWCLKTCK -to DCLK
    set_multicycle_path 1 -hold  -end -from VSWCLKTCK -to DCLK
    set_multicycle_path 2 -setup -end -from VSWCLKTCK -to SCLK
    set_multicycle_path 1 -hold  -end -from VSWCLKTCK -to SCLK

    set_multicycle_path 2 -setup -end -from HCLK -to SWCLKTCK
    set_multicycle_path 1 -hold  -end -from HCLK -to SWCLKTCK
    set_multicycle_path 2 -setup -end -from DCLK -to SWCLKTCK
    set_multicycle_path 1 -hold  -end -from DCLK -to SWCLKTCK
    set_multicycle_path 2 -setup -end -from SCLK -to SWCLKTCK
    set_multicycle_path 1 -hold  -end -from SCLK -to SWCLKTCK
    set_multicycle_path 2 -setup -end -from VHCLK -to SWCLKTCK
    set_multicycle_path 1 -hold  -end -from VHCLK -to SWCLKTCK

    set_multicycle_path 2 -setup -end -from HCLK -to VSWCLKTCK
    set_multicycle_path 1 -hold  -end -from HCLK -to VSWCLKTCK
    set_multicycle_path 2 -setup -end -from DCLK -to VSWCLKTCK
    set_multicycle_path 1 -hold  -end -from DCLK -to VSWCLKTCK
    set_multicycle_path 2 -setup -end -from SCLK -to VSWCLKTCK
    set_multicycle_path 1 -hold  -end -from SCLK -to VSWCLKTCK
    if {$rm_include_wic } {
    set_multicycle_path 2 -setup -end -from SWCLKTCK -to FCLK
    set_multicycle_path 1 -hold  -end -from SWCLKTCK -to FCLK
    
    set_multicycle_path 2 -setup -end -from VSWCLKTCK -to FCLK
    set_multicycle_path 1 -hold  -end -from VSWCLKTCK -to FCLK
    
    set_multicycle_path 2 -setup -end -from FCLK -to SWCLKTCK
    set_multicycle_path 1 -hold  -end -from FCLK -to SWCLKTCK
    
    set_multicycle_path 2 -setup -end -from FCLK -to VSWCLKTCK
    set_multicycle_path 1 -hold  -end -from FCLK -to VSWCLKTCK

   }


}

# -----------------------------------------------------------------------------------
# Set Multicycle Paths On Static Signals
# -----------------------------------------------------------------------------------

set_multicycle_path 2 -setup -from [get_ports STCALIB]
set_multicycle_path 1 -hold  -from [get_ports STCALIB]

set_multicycle_path 2 -setup -from [get_ports ECOREVNUM]
set_multicycle_path 1 -hold  -from [get_ports ECOREVNUM]

# -----------------------------------------------------------------------------------
# Resets
# -----------------------------------------------------------------------------------

# Note: The following resets are connected via reset synchronisers at the 
#       integration level hence do not require constraining.

set_input_delay  $rm_cycle20 -max -clock VHCLK [get_ports DBGRESETn]
set_input_delay  $rm_cycle20 -max -clock VHCLK [get_ports HRESETn]

if { ${rm_include_dbg} } {

set_input_delay  $rm_cycle20 -max -clock VSWCLKTCK [get_ports PORESETn]
set_input_delay  $rm_cycle60 -max -clock VSWCLKTCK [get_ports nTRST]

}

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

# -----------------------------------------------------------------------------------
# DEBUG
# -----------------------------------------------------------------------------------

set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports DBGRESTART]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports EDBGRQ]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports DBGRESTARTED]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports HALTED]

if { ${rm_include_dbg} } {

set_input_delay  $rm_cycle60 -max -clock VSWCLKTCK [get_ports SWDITMS]
set_input_delay  $rm_cycle60 -max -clock VSWCLKTCK [get_ports TDI]
set_output_delay $rm_cycle60 -max -clock VSWCLKTCK [get_ports SWDO]
set_output_delay $rm_cycle60 -max -clock VSWCLKTCK [get_ports SWDOEN]
set_output_delay $rm_cycle60 -max -clock VSWCLKTCK [get_ports nTDOEN]
set_output_delay $rm_cycle60 -max -clock VSWCLKTCK [get_ports TDO]

}

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
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SYSRESETREQ]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports TXEV]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports LOCKUP]

# -----------------------------------------------------------------------------------
# CODE SEQUENTIALITY AND SPECULATION
# -----------------------------------------------------------------------------------

set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports CODENSEQ]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports CODEHINTDE]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SPECHTRANS]

# -----------------------------------------------------------------------------------
# POWER MANAGEMENT
# -----------------------------------------------------------------------------------

set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports SLEEPHOLDREQn]
set_input_delay  $rm_cycle60 -max -clock VHCLK [get_ports WICENREQ]
set_input_delay  $rm_cycle30 -max -clock VHCLK [get_ports CDBGPWRUPACK]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SLEEPHOLDACKn]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports WAKEUP]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports GATEHCLK]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SLEEPING]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports SLEEPDEEP]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports WICENACK]
set_output_delay $rm_cycle60 -max -clock VHCLK [get_ports WICSENSE]

if { ${rm_include_dbg} } {

set_output_delay $rm_cycle60 -max -clock VSWCLKTCK [get_ports CDBGPWRUPREQ]

}


