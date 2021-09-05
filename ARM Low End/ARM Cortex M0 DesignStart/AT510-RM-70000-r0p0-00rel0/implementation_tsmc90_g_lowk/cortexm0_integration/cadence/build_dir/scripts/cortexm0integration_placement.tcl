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
# File Name      :cortexm0integration_synthesis.tcl
# RM Release     :RTL_VERSION
# Purpose        :encounter rtl compiler synthesis script
#
# RM version     :7.1.2
# 
################################################################################



Puts "BEGIN PLACEMENT : [exec date]"
source ../scripts/cortexm0integration_config.tcl

#allow the tri-lib flow and read cdb's from the conf file
set soceAllowTrilibFlow 1
set useCdbFileInfoFromConfFile 1


# Skip placement if previously run
set placement [file exists ../data/cortexm0integration_placement.enc]

if {$placement == 0} {

#-----------------------------------------------------------------------
#  Restore Design
#-----------------------------------------------------------------------

Puts "BEGIN PLACEMENT : [exec date]"
# Restore previous step
puts "=====> RESTORING FLOORPLANNED DESIGN <====="
restoreDesign ../data/cortexm0integration_floorplan.enc.dat $rm_top_module

#-----------------------------------------------------------------------
# Set Multi-Threading if required
#-----------------------------------------------------------------------

if [info exists rm_parallel_cpus] { 
    setMultiCpuUsage -numThreads $rm_parallel_cpus
}

#-----------------------------------------------------------------------
# Path Groups
#-----------------------------------------------------------------------

#swap from clock domains to path groups
setAnalysisMode -honorClockDomains false

#create list of implemntation analysis views and constraint modes
set rm_analysis_view_names ""
set rm_constraint_mode_names ""
foreach rc_corner $rm_implementation_rc_corners {
    foreach functional_mode $rm_functional_modes {
     	lappend rm_analysis_view_names "${rc_corner}_${functional_mode}_view"
     	lappend rm_constraint_mode_names "${rc_corner}_${functional_mode}_mode"
    }
}

#set constraint modes interactive and set dont use
set_interactive_constraint_modes $rm_constraint_mode_names

foreach cell $rm_dont_use_cells {
   set_dont_use [get_lib_cell $cell]
   puts "set_dont_use $cell"
}
foreach cell $rm_delay_cells {
   set_dont_use [get_lib_cell $cell]
   puts "set_dont_use $cell"
}


#make a list of clock gating cells
set gated_cell_list [list]
foreach_in_collection cell [get_cells -hier * -filter {is_clock_gating == true}]  {
  lappend gated_cell_list [get_object_name ${cell}]
}

#read the reg lists from file created before MMMC mode was set up
source ../data/cortexm0integration_fall_reg_list.tcl
source ../data/cortexm0integration_rise_reg_list.tcl

#create path groups - splitting up falling and rising edge registers to ensure half cycle paths are optimized
foreach rc_corner $rm_rc_corners {
     foreach functional_mode $rm_functional_modes {
     	 set_analysis_view -setup ${rc_corner}_${functional_mode}_view -hold ${rc_corner}_${functional_mode}_view
	 foreach clk $rm_clock_ports {
	     group_path -name in2clkg -from V${clk} -to $gated_cell_list
	     group_path -name in2out -from V${clk} -to V${clk}
	     group_path -name in2regf -from V${clk} -to $rm_fall_reg_cell_list
	     group_path -name in2regr -from V${clk} -to $rm_rise_reg_cell_list
	     group_path -name regf2out -from $rm_fall_reg_cell_list -to V${clk}
	     group_path -name regr2out -from $rm_rise_reg_cell_list -to V${clk}
	 }
	 group_path -name regf2clkg -from $rm_fall_reg_cell_list -to $gated_cell_list
	 group_path -name regf2regf -from $rm_fall_reg_cell_list -to $rm_fall_reg_cell_list
	 group_path -name regf2regr -from $rm_fall_reg_cell_list -to $rm_rise_reg_cell_list
	 group_path -name regr2clkg -from $rm_rise_reg_cell_list -to $gated_cell_list
	 group_path -name regr2regf -from $rm_rise_reg_cell_list -to $rm_fall_reg_cell_list
	 group_path -name regr2regr -from $rm_rise_reg_cell_list -to $rm_rise_reg_cell_list

         #write out timing costraints with the path groups and update the constraint modes
         #to use the new constraints
     	 writeTimingCon -filePrefix ../data/cortexm0integration_path_group_constraints_${rc_corner}_$functional_mode -sdc 
         if [file exists "../scripts/cortexm0integration_fe_only_constraints.sdc"] { 
      	    update_constraint_mode \
     	      -name  ${rc_corner}_${functional_mode}_mode -sdc \
	      "../data/cortexm0integration_path_group_constraints_${rc_corner}_$functional_mode.sdc \
	      ../scripts/cortexm0integration_pre_cts_latency_${rc_corner}_${functional_mode}.sdc \
	      ../scripts/cortexm0integration_fe_only_constraints.sdc"
         } else {
      	       update_constraint_mode \
     	         -name  ${rc_corner}_${functional_mode}_mode -sdc \
	         "../data/cortexm0integration_path_group_constraints_${rc_corner}_$functional_mode.sdc \
	         ../scripts/cortexm0integration_pre_cts_latency_${rc_corner}_${functional_mode}.sdc"
         }
     }
}

#set encounter to use only those analysis views with corners in rm_implementation_rc_corners
set_analysis_view -setup $rm_analysis_view_names -hold $rm_analysis_view_names

#set high effort levels to ensure key path groups (especially half cycle path groups) get optimized for best path group WNS
#as opposed to best overall WNS.
#set overconstraint for clock gating paths to model that the gates will get clocked slightly early and a critical range to ensure 
#no clock gate enables are 'shadowed' by enables that do not meet timing.
setPathGroupOptions in2clkg   -effortLevel high 
setPathGroupOptions in2regf   -effortLevel high
setPathGroupOptions regf2clkg -effortLevel high 
setPathGroupOptions regf2out  -effortLevel high
setPathGroupOptions regf2regf -effortLevel high
setPathGroupOptions regf2regr -effortLevel high
setPathGroupOptions regr2clkg -effortLevel high
setPathGroupOptions regr2regf -effortLevel high
setPathGroupOptions regr2regr -effortLevel high -targetSlack $rm_pre_cts_reg2reg_target_slack -criticalRange 1


#-----------------------------------------------------------------------
# Report Timing Pre-Placement with Zero Wire Load Model
#-----------------------------------------------------------------------

timeDesign -prePlace -outDir ../reports/preroute -prefix cortexm0integration_prePlace

#-----------------------------------------------------------------------
# Place design
#-----------------------------------------------------------------------

#Specify a routing layer limit for trialRoute, NanoRoute, placement and CTS
setMaxRouteLayer $rm_top_routing_layer
setPlaceMode -maxRouteLayer $rm_top_routing_layer
setTrialRouteMode -maxRouteLayer $rm_top_routing_layer
#allow placement to work a bit harder with a possible runtime hit
setPlaceMode -congEffort high
#set the mid-place opt to use useful skew
setOptMode -usefulSkew true
#set the useful skew to balance slacks when using useful skew
setUsefulSkewMode -maxSkew true
#set the opts to reclaim area
setOptMode -reclaimArea true

# low power setup
if {$rm_low_power_flow==1} {
    setPlaceMode -fixedShifter true
    setTrialRouteMode -handlePD true
}

placeDesign -inPlaceOpt -verbose

#-----------------------------------------------------------------------
# Pre cts optimization
# Perform optimization at pre-CTS (ideal clock) phase
# and generate detail timing reports
#-----------------------------------------------------------------------

optDesign -preCTS -outDir ../reports/preroute -prefix cortexm0integration_preCtsOpt
report_timing -max_slack 0.0 -max_paths 1000 -format {instance cell arc delay slew load arrival fanout instance_location}  > ../reports/preroute/cortexm0integration_preCtsOpt.armtarpt
if [info exists rm_extra_opt] {
    if {$rm_extra_opt == 1} {
        optDesign -preCTS -outDir ../reports/preroute -prefix cortexm0integration_preCtsOpt2
        report_timing -max_slack 0.0 -max_paths 1000 -format {instance cell arc delay slew load arrival fanout instance_location}  > ../reports/preroute/cortexm0integration_preCtsOpt2.armtarpt
   }
}

#-----------------------------------------------------------------------
# Remove pre-cts clock gate path overconstraint
#-----------------------------------------------------------------------

resetPathGroupOptions in2clkg    -targetSlack -criticalRange
resetPathGroupOptions regr2clkg  -targetSlack -criticalRange
resetPathGroupOptions regf2clkg  -targetSlack -criticalRange
resetPathGroupOptions regr2regr  -targetSlack -criticalRange

#-----------------------------------------------------------------------
# Add power connections for secondary power pins of level shifters and
# verify low power domain
#-----------------------------------------------------------------------

if {$rm_low_power_flow==1} {
    deleteTrialRoute
    sroute -noBlockPins -noPadRings -noCorePins -noPadPins -noStripes -powerDomains { vram } -lsStripePitch 27 -shifterPinConnection { VDDCORE } -jogControl { preferWithChanges differentLayer } -lsStripeLayer 3
    sroute -noBlockPins -noPadRings -noCorePins -noPadPins -noStripes -powerDomains { vsoc } -lsStripePitch 27 -shifterPinConnection { VDDCORE } -jogControl { preferWithChanges differentLayer } -lsStripeLayer 3 -extraConfig ../scripts/cortexm0integration_sr_config.tcl 
    verifyPowerDomain -xNetPD   ../reports/preroute/cortexm0integration_verify_power_domain_x_nets_placement.rpt
    verifyPowerDomain -isoNetPD ../reports/preroute/cortexm0integration_verify_power_domain_iso_nets_placement.rpt
}

#-----------------------------------------------------------------------
# Save Design
#-----------------------------------------------------------------------

saveDesign ../data/cortexm0integration_placement.enc

Puts "END PLACEMENT : [exec date]"
} else {

puts "=====> SKIPPING PLACEMENT since data/cortexm0integration_placement.enc exists <====="

}

exit
