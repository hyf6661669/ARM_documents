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
# File Name      :cortexm0_route.tcl
# RM Release     :RTL_VERSION
# Purpose        :encounter route and postroute opt script
#
# RM version     :7.1.2
# 
################################################################################

source ../scripts/cortexm0_config.tcl
source ../scripts/cortexm0_update_clock_insertion.tcl

#allow the tri-lib flow and read cdb's from the conf file
set soceAllowTrilibFlow 1
set useCdbFileInfoFromConfFile 1

#set delay cal mode to signalstorm and signoff for best correclation with signoff
#timing
setDelayCalMode -engine signalStorm -signoff true 

# Skip route if previously run
set route [file exists ../data/cortexm0_route.enc]
if {$route == 0} {
Puts "BEGIN ROUTE: [exec date]"

#-----------------------------------------------------------------------
#  Restore Design
#-----------------------------------------------------------------------

puts "=====> RESTORING IPO DESIGN <====="
restoreDesign ../data/cortexm0_ipo.enc.dat $rm_top_module

#-----------------------------------------------------------------------
# Setup Captable scale factors
#-----------------------------------------------------------------------

#set the rc factors used with a nanorouted design   
foreach rc_corner $rm_rc_corners {
    update_rc_corner -name ${rc_corner}_rc_corner -cap_table $rm_captables($rc_corner) -res_factor $rm_nano_route_res_factor \
                 -xcap_factor $rm_pre_metal_fill_coupling_cap_factor -default_cap_factor $rm_pre_metal_fill_default_cap_factor \
		 -detailed_cap_factor $rm_pre_metal_fill_detailed_cap_factor 
}

#-----------------------------------------------------------------------
# Set Multi-Threading if required
#-----------------------------------------------------------------------

if [info exists rm_parallel_cpus] { 
    setMultiCpuUsage -numThreads $rm_parallel_cpus
}

#-----------------------------------------------------------------------
# Tie high/low connections
#-----------------------------------------------------------------------

# tieHiCell and tieLoCell are added to the netlist, in case they are 
# defined and available from the tech library.
# Otherwise nanoRoute is connecting tie hi/low to P/G nets
if {($rm_tie_hi_cell != "") && ($rm_tie_lo_cell != "")} {
   setTieHiLoMode -cell "$rm_tie_hi_cell $rm_tie_lo_cell"
   addTieHiLo -prefix TIECELL
}

#-----------------------------------------------------------------------
# Run nanoroute
#-----------------------------------------------------------------------

#set multicut via effort for general nets
setNanoRouteMode -drouteUseMultiCutViaEffort  $rm_route_multicut_via_effort 

# Run NanoRoute with clock nets fixed
globalDetailRoute

# Unfix clock nets to ensure no routing problems
if {[isClockTreeSpecLoaded] == 0} {
    specifyClockTree -clkfile ../data/cortexm0_cts.ctstch
}

changeClockStatus -all -noFixedNetWires

# Run NanoRoute with clock nets unfixed to tidy up and then spread wires
globalDetailRoute
setNanoRouteMode -droutePostRouteSpreadWire true 
detailRoute  
setNanoRouteMode -droutePostRouteSpreadWire false 

saveDesign ../data/cortexm0_route.enc


Puts " END ROUTE: [exec date]"

} else {

puts "=====> SKIPPING ROUTE since data/cortexm0_route.enc exists <====="

}

# Skip route ipo if previously run
set route_ipo [file exists ../data/cortexm0_route_ipo.enc]

if {$route_ipo == 0} {

Puts "BEGIN ROUTE IPO: [exec date]"

#-----------------------------------------------------------------------
# restore design if route was skipped
#-----------------------------------------------------------------------

if {$route == 1} {
    puts "=====> RESTORING ROUTE DESIGN <====="
    restoreDesign ../data/cortexm0_route.enc.dat $rm_top_module

#-----------------------------------------------------------------------
# Set Multi-Threading if required
#-----------------------------------------------------------------------

    if [info exists rm_parallel_cpus] { 
        setMultiCpuUsage -numThreads $rm_parallel_cpus
    }
}

# Update the SDC constraints to reflect the Clock Insertion Delays
update_clock_insertion post_route_min_max

# Load the propagated.sdc and  post route latency constraints
foreach rc_corner $rm_rc_corners {
     foreach functional_mode $rm_functional_modes {
      	 update_constraint_mode \
     	   -name  ${rc_corner}_${functional_mode}_mode -sdc \
	   "../data/cortexm0_path_group_constraints_${rc_corner}_${functional_mode}.sdc \
	   ../data/cortexm0_post_route_latency_${rc_corner}_${functional_mode}.sdc\
	   ../scripts/cortexm0_propagate.sdc"
     }
}

#----------------------------------------------------------------------
# Post-Route Optimization and Holdfixing
#-----------------------------------------------------------------------

# optional, useful skew IO timing
if [info exists rm_skew_io] {
    if {$rm_skew_io == 1} {
        setOptMode -effort low
        setOptMode -usefulSkew false 
        optDesign -postRoute -outDir ../reports/postroute -prefix cortexm0_postRouteOptQuick
        setOptMode -usefulSkew true
        update_clock_insertion post_route_skew
 	foreach rc_corner $rm_rc_corners {
 	    foreach functional_mode $rm_functional_modes {
 		update_constraint_mode \
 		  -name  ${rc_corner}_${functional_mode}_mode -sdc \
		  "../data/cortexm0_path_group_constraints_${rc_corner}_${functional_mode}.sdc \
		  ../data/cortexm0_post_route_skew_latency_${rc_corner}_${functional_mode}.sdc\
		  ../scripts/cortexm0_propagate.sdc"
 	       setOptMode -effort high
 	    }
 	}
    }
}


optDesign -postRoute -outDir ../reports/postroute -prefix cortexm0_postrouteopt
report_timing -max_slack 0.0 -max_paths 1000 -format {instance cell arc delay slew load arrival fanout instance_location}  > ../reports/postroute/cortexm0_postrouteopt.armtarpt

# Hold fixing 
optDesign -postRoute -hold -outDir ../reports/postroute -prefix cortexm0_postroutehopt

# More Optimization 
optDesign -postRoute -outDir ../reports/postroute -prefix cortexm0_postroutereopt
report_timing -max_slack 0.0 -max_paths 1000 -format {instance cell arc delay slew load arrival fanout instance_location}  > ../reports/postroute/cortexm0_postroutereopt.armtarpt

#-----------------------------------------------------------------------
# Metal Fill
#-----------------------------------------------------------------------

if {$rm_metal_fill_insertion == "1"} {
   saveDesign ../data/cortexm0_preMetalFill.enc

   for { set i 1 } { $i <= $rm_top_routing_layer } { incr i } {
      lappend fillLayers $i
      setMetalFill -layer $i -windowSize $rm_metal_fill_window_x  $rm_metal_fill_window_y\
                 -maxLength $rm_metal_fill_max_length -maxWidth $rm_metal_fill_max_width -activeSpacing $rm_metal_fill_active_spacing \
                 -minWidth $rm_metal_fill_min_width -minLength $rm_metal_fill_min_length -gapSpacing $rm_metal_fill_gap_spacing \
                 -windowStep $rm_metal_fill_window_step_x $rm_metal_fill_window_step_y -minDensity $rm_metal_fill_min_density -maxDensity $rm_metal_fill_max_density \
		 -preferredDensity $rm_metal_fill_preferred_density
   }
   addMetalFill -timingAware on -slackThreshold 100ps -layer $fillLayers 

   #set the rc factors used with a nanorouted design   
   foreach rc_corner $rm_rc_corners {
       update_rc_corner -name ${rc_corner}_rc_corner -cap_table $rm_captables($rc_corner) -res_factor $rm_nano_route_res_factor \
                 -xcap_factor $rm_post_metal_fill_coupling_cap_factor -detailed_cap_factor $rm_post_metal_fill_detailed_cap_factor 
   }
}

#----------------------------------------------------------------------- 
# Multi vt optimization - reduce leakage power
#----------------------------------------------------------------------- 

if {$rm_mvt_run_opt == 1} {

#----------------------------------------------------------------------- 
# Report the Leakage Power prior to optimization 
#----------------------------------------------------------------------- 

reportLeakagePower -outfile ../reports/postroute/cortexm0_preLeakOpt.rpt 

#----------------------------------------------------------------------- 
# Optimize the Leakage Power 
#----------------------------------------------------------------------- 

optLeakagePower -postRoute -highEffort 

#----------------------------------------------------------------------- 
# Report the Post Optimization Leakage Power 
#-----------------------------------------------------------------------
 
reportLeakagePower -outfile ../reports/postroute/cortexm0_postLeakOpt.rpt

} 

#-----------------------------------------------------------------------
# Generate Timing Reports (Pre-SI)
#-----------------------------------------------------------------------

timeDesign -postRoute -numPaths 500 -outDir ../reports/postroute -prefix cortexm0_postroutefill
timeDesign -postRoute -hold -numPaths 500 -outDir ../reports/postroute -prefix cortexm0_postroutefill
setAnalysisMode -checkType setup

#-----------------------------------------------------------------------
# Generate Custom WireLoad Model
#-----------------------------------------------------------------------

wireload -outfile ../data/cortexm0_wlm

#-----------------------------------------------------------------------
# Save Design data
#-----------------------------------------------------------------------

saveDesign ../data/cortexm0_route_ipo.enc


Puts "END ROUTE IPO: [exec date]"

} else {

puts "=====> SKIPPING ROUTE IPO since data/cortexm0_route_ipo.enc exists <====="

}

exit
