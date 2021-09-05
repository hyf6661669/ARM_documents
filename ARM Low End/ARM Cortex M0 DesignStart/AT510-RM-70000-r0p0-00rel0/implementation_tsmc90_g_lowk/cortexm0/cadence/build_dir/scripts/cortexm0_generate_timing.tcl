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
# File Name      :cortexm0_generate_timing.tcl
# RM Release     :RTL_VERSION
# Purpose        :encounter timing model generation script
#
# RM version     :7.1.2
# 
################################################################################
Puts "BEGIN GENERATE_TIMING : [exec date]"

#-----------------------------------------------------------------------
# Load the verilog and libraries
#-----------------------------------------------------------------------
source ../scripts/cortexm0_config.tcl
source ../scripts/cortexm0_fe.conf 
set rda_Input(ui_netlist) "../data/cortexm0_si_fixing.enc.dat/${rm_top_module}.v"
set rda_Input(ui_timingcon_file) "../scripts/cortexm0_constraints_default_mode.sdc"
commitConfig

if {$rm_skew_io == "1"} {
    loadTimingCon -incr  ../data/cortexm0_post_route_skew_latency_worst_case_default.sdc
} else {
    loadTimingCon -incr  ../data/cortexm0_post_route_latency_worst_case_default.sdc
}

source $rm_inst_dir/lnx86/etc/cteng/write_model_timing.tcl

#-----------------------------------------------------------------------
# Reading spef from sign-off extraction
#-----------------------------------------------------------------------
if {[file exists "../data/cortexm0_${rm_wc_extraction_corner}.spef.gz" ]} { 
    Puts "Reading spef from the file: ../data/cortexm0_${rm_wc_extraction_corner}.spef.gz"
    spefIn ../data/cortexm0_${rm_wc_extraction_corner}.spef.gz
} else { 
    Puts "Reading spef from the file: ../data/cortexm0.spef.gz"
    spefIn ../data/cortexm0.spef.gz
}

#-----------------------------------------------------------------------
# Set slew propagation mode to model worst behaviour
#-----------------------------------------------------------------------
set_global timing_extract_model_slew_propagation_mode worst_slew

setAnalysisMode -checkType setup

write_model_timing -nworst 40\
                   -type arc ../reports/models/designArcs_wc.rpt
                   
write_model_timing -nworst 40\
                   -type slack ../reports/models/designSlacks_wc.rpt
                   
do_extract_model -verilog_shell_file ../data/cortexm0_shell.v \
                 -verilog_shell_module cortexm0_shell \
                 ../data/cortexm0_wc.lib

write_sdf -precision 3 \
          -edges check_edge \
          -process worst \
          -voltage $rm_pvt_max_v:$rm_pvt_max_v:$rm_pvt_max_v \
	       ../data/cortexm0_sta_wc_SPEF.sdf

setAnalysisMode -checkType hold

write_model_timing -nworst 40\
                   -type arc ../reports/models/designArcs_bc.rpt
                   
write_model_timing -nworst 40\
                   -type slack ../reports/models/designSlacks_bc.rpt
                   
do_extract_model ../data/cortexm0_bc.lib

write_sdf -precision 3 \
          -edges check_edge \
          -process best \
          -voltage $rm_pvt_min_v:$rm_pvt_min_v:$rm_pvt_min_v \
          ../data/cortexm0_sta_bc_SPEF.sdf

#-----------------------------------------------------------------------
# create a setup files for the run_ampkg script
#-----------------------------------------------------------------------
# create the hdl.var file
set filename1 "./hdl.var"
set cmdFile1 [open $filename1 w]
puts $cmdFile1 "DEFINE WORK ncsimlib"
puts $cmdFile1 "DEFINE NCELABOPTS -messages -error 10 -timescale 1ns/1ps"
close $cmdFile1

# create the cds.lib file
set filename2 "./cds.lib"
set cmdFile2 [open $filename2 w]
puts $cmdFile2 "DEFINE ncsimlib ./\$NC_OS/tbench"
puts $cmdFile2 "DEFINE techlib  ./\$NC_OS/lib"
close $cmdFile2

# create the ampkg_control.sdf.ctl file
set filename3 "./ampkg_control.sdf.ctl"
set cmdFile3 [open $filename3 w]
puts $cmdFile3 "SUPPLIER   \"Cadence Design Systems\""
puts $cmdFile3 "DIRECTORY   cadence/$rm_top_module"
puts $cmdFile3 "ACTIVATION  inputs"
puts $cmdFile3 "MODEL      \"${rm_top_module}_model\""
puts $cmdFile3 "OUTPUT     ${rm_top_module}"
puts $cmdFile3 "ELABORATE  \"-nowarn CSINFI -nowarn CUVWSP -notimingchecks -nowarn SDFNGL -sdf_cmd_file ./ampkg.sdf_max_cmd\""
puts $cmdFile3 "REVISION   \"1.0\""
close $cmdFile3

# create the ampkg_control.ctl file
set filename3 "./ampkg_control.ctl"
set cmdFile3 [open $filename3 w]
puts $cmdFile3 "SUPPLIER   \"Cadence Design Systems\""
puts $cmdFile3 "DIRECTORY   cadence/$rm_top_module"
puts $cmdFile3 "ACTIVATION  inputs"
puts $cmdFile3 "MODEL      \"${rm_top_module}_model\""
puts $cmdFile3 "OUTPUT     ${rm_top_module}"
puts $cmdFile3 "ELABORATE  \"-nowarn CSINFI -nowarn CUVWSP -notimingchecks\""
puts $cmdFile3 "REVISION   \"1.0\""
close $cmdFile3

# create the ampkg.sdf_max_cmd file
set filename4 "./ampkg.sdf_max_cmd"
set cmdFile4 [open $filename4 w]
puts $cmdFile4 "COMPILED_SDF_FILE = \"../data/${rm_top_module}.sdf.X\","
puts $cmdFile4 "SCOPE = ${rm_top_module},"
puts $cmdFile4 "MTM_CONTROL = \"MAXIMUM\","
puts $cmdFile4 "LOG_FILE = \"../logs/${rm_top_module}_ampkg_sdf_worst.log\";"
close $cmdFile4

# create the setup_ampkg.csh file
set filename "../scripts/cortexm0_setup_ampkg.csh"
set cmdFile [open $filename w]
puts $cmdFile "#!/bin/csh -f"
puts $cmdFile "setenv rm_top_module  \"$rm_top_module\""
puts $cmdFile "setenv rm_tech_cell_lib_ver \"$rm_tech_cell_lib_ver\""
close $cmdFile

# make the csh scripts executable
exec chmod a+x ../scripts/cortexm0_setup_ampkg.csh
exec chmod a+x ../scripts/cortexm0_run_ampkg.csh

Puts "END OF GENERATE_TIMING : [exec date]"
exit
