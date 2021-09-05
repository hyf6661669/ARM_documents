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
# File Name      :cortexm0integration_cts.tcl
# RM Release     :RTL_VERSION
# Purpose        :encounter script for clock tree synthesis and 
#                 post clock tree opt
#
# RM version     :7.1.2
# 
################################################################################

source ../scripts/cortexm0integration_config.tcl
source ../scripts/cortexm0integration_update_clock_insertion.tcl

#allow the tri-lib flow and read cdb's from the conf file
set soceAllowTrilibFlow 1
set useCdbFileInfoFromConfFile 1

# Skip cts if previously run
set cts [file exists ../data/cortexm0integration_cts.enc]

if {$cts == 0} {

#-----------------------------------------------------------------------
#  Restore Design
#-----------------------------------------------------------------------

# Restore previous step
puts "=====> RESTORING PLACED DESIGN <====="
restoreDesign ../data/cortexm0integration_placement.enc.dat $rm_top_module

Puts "BEGIN CLOCK TREE SYNTHESIS : [exec date]"
#-----------------------------------------------------------------------
#  Restore Design
#-----------------------------------------------------------------------
set rm_analysis_views ""
foreach rc_corner $rm_implementation_rc_corners {
     foreach functional_mode $rm_functional_modes {
      	 update_constraint_mode \
     	   -name  ${rc_corner}_${functional_mode}_mode -sdc \
	   "../data/cortexm0integration_path_group_constraints_${rc_corner}_${functional_mode}.sdc \
	   ../scripts/cortexm0integration_pre_cts_latency_${rc_corner}_${functional_mode}.sdc"
     	 lappend rm_analysis_views "${rc_corner}_${functional_mode}_view"
     }
}

set_analysis_view -setup $rm_analysis_views -hold $rm_analysis_views

#-----------------------------------------------------------------------
# Set Multi-Threading if required
#-----------------------------------------------------------------------

if [info exists rm_parallel_cpus] { 
    setMultiCpuUsage -numThreads $rm_parallel_cpus
}

#-----------------------------------------------------------------------
# Nanoroute settings
#-----------------------------------------------------------------------

#enable S.M.A.R.T routing
setNanoRouteMode -routeWithTimingDriven true
setNanoRouteMode -routeWithSiDriven true
#prevent litho hotspots
setNanoRouteMode -routeWithLithoDriven true
#set multi-cut via effort for clock nets
setNanoRouteMode -drouteUseMultiCutViaEffort $rm_clock_multicut_via_effort 
# low power setup
if {$rm_low_power_flow==1} {
    setNanoRouteMode routeHonorPowerDomain true
}

#-----------------------------------------------------------------------
# Run clock tree synthesis
#-----------------------------------------------------------------------

# setup cts mode
setCTSMode -moveGateLimit 25 

# Begin Clock Tree Synthesis
cleanupSpecifyClockTree
specifyClockTree -clkfile ../data/cortexm0integration_cts.ctstch
if {[file exists ../data/cortexm0integration_placement.enc.dat/scheduling_file.cts]} {
  specifyClockTree -clkfile ../data/cortexm0integration_placement.enc.dat/scheduling_file.cts
}
deleteClockTree -all

# setup ocv
set_timing_derate -delay_corner worst_case_delay_corner -early $rm_derate_max_early 
set_timing_derate -delay_corner worst_case_delay_corner -late $rm_derate_max_late
set_timing_derate -delay_corner best_case_delay_corner  -early $rm_derate_min_early 
set_timing_derate -delay_corner best_case_delay_corner  -late $rm_derate_min_late
setAnalysisMode -cppr true
setAnalysisMode -analysisType onChipVariation 

# create clock tree
ckSynthesis -report ../reports/preroute/cortexm0integration_top.ctsrpt -forceReconvergent

#-----------------------------------------------------------------------
# Save Design Data of cts
#-----------------------------------------------------------------------

saveDesign ../data/cortexm0integration_cts.enc

#reset ctstch so there are no mmmc macromodels that don't work in single views
exec cp ../data/cortexm0integration_cts.ctstch ../data/cortexm0integration_cts.enc.dat/${rm_top_module}.ctstch

Puts "END CLOCK TREE SYNTHESIS : [exec date]"
} else {

puts "=====> SKIPPING CTS since data/cortexm0integration_cts.enc exists <====="

} 

# skip ipo if previously run
set ipo [file exists ../data/cortexm0integration_ipo.enc]
if {$ipo == 0} {

# performing inplace optimization
Puts "BEGIN OPTIMIZATION" 

#-----------------------------------------------------------------------
# restore design if cts was skipped
#-----------------------------------------------------------------------

if {$cts == 1} {
    puts "=====> RESTORING CTS DESIGN <====="
    restoreDesign ../data/cortexm0integration_cts.enc.dat $rm_top_module

#-----------------------------------------------------------------------
# Set Multi-Threading if required
#-----------------------------------------------------------------------

    if [info exists rm_parallel_cpus] { 
        setMultiCpuUsage -numThreads $rm_parallel_cpus
    }
}

#-----------------------------------------------------------------------
# Generate Reports
#-----------------------------------------------------------------------
set rm_analysis_view_names ""
set rm_analysis_views ""
foreach functional_mode $rm_functional_modes {
    foreach imp_rc_corner $rm_implementation_rc_corners {
     	 lappend rm_analysis_view_names "${imp_rc_corner}_${functional_mode}_view"
     }

     foreach rc_corner $rm_rc_corners {
     	 lappend rm_analysis_views "${rc_corner}_${functional_mode}"
     }
}

#reset ctstch so there are no mmmc macromodels that don't work in single views
specifyClockTree -clkfile ../data/cortexm0integration_cts.ctstch

foreach view $rm_analysis_views {
    set_analysis_view -setup ${view}_view -hold ${view}_view
    # Generate  Clock Tree Report
    reportClockTree -clkRouteOnly -report ../reports/preroute/cortexm0integration_${view}.rpt -macromodel ../data/cortexm0integration_${view}.ctsmodel
    # Generate On Chip Variation Clock Tree Report
    reportClockTreeOCV -clkRouteOnly -outfile ../reports/preroute/cortexm0integration_Clock_Tree_OCV.rpt -detail
    setAnalysisMode -checkType setup
}
set_analysis_view -setup $rm_analysis_view_names -hold $rm_analysis_view_names

#-----------------------------------------------------------------------
# Update the SDC constraints to reflect the Clock Insertion Delays
#-----------------------------------------------------------------------

update_clock_insertion post_cts_min_max

# Load the propagated.sdc and  post cts latency constraints
foreach view $rm_analysis_views {
    update_constraint_mode \
      -name  ${view}_mode -sdc \
      "../data/cortexm0integration_path_group_constraints_${view}.sdc \
      ../data/cortexm0integration_post_cts_latency_${view}.sdc\
      ../scripts/cortexm0integration_propagate.sdc"
}

#-----------------------------------------------------------------------
# Post CTS Optimizations
#-----------------------------------------------------------------------

# optional, useful skew IO timing
if [info exists rm_skew_io] {
    if {$rm_skew_io == 1} {
        setOptMode -effort low
        setOptMode -usefulSkew false 
        optDesign -postCTS -outDir ../reports/preroute -prefix cortexm0integration_postCtsOptQuick
        setOptMode -usefulSkew true
        update_clock_insertion post_cts_skew
        foreach view $rm_analysis_views {
 	    update_constraint_mode \
 	      -name  ${view}_mode -sdc \
	      "../data/cortexm0integration_path_group_constraints_${view}.sdc\
	      ../data/cortexm0integration_post_cts_skew_latency_${view}.sdc\
	      ../scripts/cortexm0integration_propagate.sdc"
 	    setOptMode -effort high
 	}
    }
}

# reset high effort levels (lost in constraint re-read) to ensure key path groups (especially half cycle path groups) get optimized for best path group WNS
# as opposed to best overall WNS.
setPathGroupOptions in2clkg   -effortLevel high
setPathGroupOptions in2regf   -effortLevel high
setPathGroupOptions regf2clkg -effortLevel high
setPathGroupOptions regf2out  -effortLevel high
setPathGroupOptions regf2regf -effortLevel high
setPathGroupOptions regf2regr -effortLevel high
setPathGroupOptions regr2clkg -effortLevel high
setPathGroupOptions regr2regf -effortLevel high
setPathGroupOptions regr2regr -effortLevel high

# optional, run a pre-route holdfix
if [info exists rm_preroute_holdfix] {
    if {$rm_preroute_holdfix == 1} {
        optDesign -postCTS -hold -outDir ../reports/preroute -prefix cortexm0integration_preroutehopt
    }
}

setUsefulSkewMode -usecells $rm_clock_skew_cell_list

optDesign -postCTS -outDir ../reports/preroute -prefix cortexm0integration_postCtsOpt
report_timing -max_slack 0.0 -max_paths 1000 -format {instance cell arc delay slew load arrival fanout instance_location}  > ../reports/preroute/cortexm0integration_postCtsOpt.armtarpt

# optional, run an extra loop of post cts optimization
if [info exists rm_extra_opt] {
    if {$rm_extra_opt == 1} {
        optDesign -postCTS -outDir ../reports/preroute -prefix cortexm0integration_postCtsOpt2
        report_timing -max_slack 0.0 -max_paths 1000 -format {instance cell arc delay slew load arrival fanout instance_location}  > ../reports/preroute/cortexm0integration_postCtsOpt2.armtarpt
    }
}

#-----------------------------------------------------------------------
# Generate Timing Reports Post CTS
#-----------------------------------------------------------------------

timeDesign -postCTS -hold -outDir ../reports/preroute -prefix cortexm0integration_postCtsOpt

setAnalysisMode -checkType setup
 
#-----------------------------------------------------------------------
# Save Design
#-----------------------------------------------------------------------

saveDesign ../data/cortexm0integration_ipo.enc

Puts "END IPO : [exec date]"

} else {

puts "=====> SKIPPING IPO since data/cortexm0integration_ipo.enc exists <====="

}


exit
