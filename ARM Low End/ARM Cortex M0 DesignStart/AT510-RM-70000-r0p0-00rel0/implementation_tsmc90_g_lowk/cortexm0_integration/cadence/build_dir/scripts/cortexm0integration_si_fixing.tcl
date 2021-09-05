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
# File Name      :cortexm0integration_si_fixing.tcl
# RM Release     :RTL_VERSION
# Purpose        :encounter si fixing scripts
#
# RM version     :7.1.2
# 
################################################################################

source ../scripts/cortexm0integration_config.tcl

#allow the tri-lib flow and read cdb's from the conf file
set soceAllowTrilibFlow 1
set useCdbFileInfoFromConfFile 1

# Skip si_fixing step if previously run
set si_fixing [file exists ../data/cortexm0integration_si_fixing.enc]

if {$si_fixing == 0} {
Puts "BEGIN SI_FIXING : [exec date]"

#-----------------------------------------------------------------------
#  Restore Design
#-----------------------------------------------------------------------

puts "=====> RESTORING ROUTE IPO DESIGN <====="
restoreDesign ../data/cortexm0integration_route_ipo.enc.dat $rm_top_module

#-----------------------------------------------------------------------
# Set Multi-Threading if required
#-----------------------------------------------------------------------

if [info exists rm_parallel_cpus] { 
    setMultiCpuUsage -numThreads $rm_parallel_cpus
}

if {[info exists rm_skip_si_fixing] && [expr $rm_skip_si_fixing == 1]} {
    Puts "Skipping SI fixing since rm_skip_si_fixing = 1"
} else {
    Puts "Running SI fixing since rm_skip_si_fixing is not defined or it is 0"

    #-------------------------------------------------------------------
    # Setup CrossTalk Analysis/Fixing Flow
    #-------------------------------------------------------------------

    setSIMode -noiseProcess  $rm_noise_process
    setSIMode -outputPath    ../data
    setSIMode -analyzeNoiseThreshold $rm_noise_threshold
    setSIMode -deltaDelayThreshold $rm_delay_threshold

    #-------------------------------------------------------------------
    # Run CrossTalk Analysis/Fixing Flow checking for setups at max
    # corner
    #-------------------------------------------------------------------

    optDesign -postRoute -si -outDir ../reports/postroute -prefix cortexm0integration_siopt
    report_timing -max_slack 0.0 -max_paths 1000 -format {instance cell arc delay slew load arrival fanout instance_location}  > ../reports/postroute/cortexm0integration_siopt.armtarpt

    #-------------------------------------------------------------------
    # Run CrossTalk Analysis/Fixing Flow checking for holds at min
    # corner
    #-------------------------------------------------------------------

    optDesign -postRoute -si -hold -outDir ../reports/postroute -prefix cortexm0integration_siholdopt
    report_timing -max_slack 0.0 -max_paths 1000 -format {instance cell arc delay slew load arrival fanout instance_location}  > ../reports/postroute/cortexm0integration_siholdopt.armtarpt
    setAnalysisMode -checkType setup
}

#-----------------------------------------------------------------------
# Add filler cells
#-----------------------------------------------------------------------

setFillerMode -corePrefix FILL -core $rm_filler_cell_list
addFiller

#-----------------------------------------------------------------------
# Trim Metal Fill
#-----------------------------------------------------------------------

if {$rm_metal_fill_insertion == "1"} {
     trimMetalFill
}

#-----------------------------------------------------------------------
# Generate GDSII 
#-----------------------------------------------------------------------

#streamOut ../data/cortexm0integration.gds2 \
#          -mapFile $rm_soce_gds2_map_file) -libName DesignLib \
#          -merge $rm_gds2_file_list) \
#          -structureName $rm_top_module -stripes 1 -units 2000 -mode ALL

#-----------------------------------------------------------------------
# Verify Design, report final leakage power
#-----------------------------------------------------------------------

verifyConnectivity -type regular -reportfile ../reports/postroute/cortexm0integration_verifyConnectivity_regular_si_fixing.rpt
verifyConnectivity -type special -reportfile ../reports/postroute/cortexm0integration_verifyConnectivity_special_si_fixing.rpt

verifyGeometry  -noOverlap -regRoutingOnly -allowSameCellViols  -report  ../reports/postroute/cortexm0integration_verifyGeometry_si_fixing.rpt
verifyProcessAntenna -reportfile ../reports/postroute/cortexm0integration_verifyProcessAntenna.rpt -leffile ../data/cortexm0integration_verifyProcessAntenna_si_fixing.lef

# Checks the density against the values specified by the LEF file or the setMetalFill command.
# verifyMetalDensity -reportfile ../reports/cortexm0integration_density_si_fixing.rpt

reportLeakagePower -outfile ../reports/postroute/cortexm0integration_finalLeakOpt.rpt 

#-----------------------------------------------------------------------
# Save Design Data Generate LEF and IO file for LEF validation flow
#-----------------------------------------------------------------------

saveNetlist ../data/cortexm0integration_si_fixing.v
defOut -floorplan -placement -cutRow -routing ../data/cortexm0integration_si_fixing.def
saveDesign ../data/cortexm0integration_si_fixing.enc

lefOut ../data/cortexm0integration.lef
saveIoFile ../data/cortexm0integration_order.io

Puts "END SI_FIXING : [exec date]"

} else {

puts "=====> SKIPPING SI FIXING since data/cortexm0integration_si_fixing.enc exists <====="

}

exit
