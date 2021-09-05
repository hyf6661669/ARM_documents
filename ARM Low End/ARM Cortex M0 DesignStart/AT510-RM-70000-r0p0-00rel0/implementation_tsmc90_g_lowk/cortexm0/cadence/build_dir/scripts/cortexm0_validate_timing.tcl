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
# File Name      :cortexm0_valaidate_timing.tcl
# RM Release     :RTL_VERSION
# Purpose        :encounter timing valaidation script
#
# RM version     :7.1.2
# 
################################################################################
Puts "BEGIN VALIDATE : [exec date]"

source ../scripts/cortexm0_config.tcl
source $rm_inst_dir/lnx86/etc/cteng/write_model_timing.tcl
source $rm_inst_dir/lnx86/etc/cteng/compare_model_timing.tcl

#-----------------------------------------------------------------------
# Load the verilog and libraries
#-----------------------------------------------------------------------
source ../scripts/cortexm0_fe.conf 

set rda_Input(ui_netlist) "../data/cortexm0_shell.v"
set rda_Input(ui_timelib,max) "$rm_tech_cell_lib_wc ../data/cortexm0_wc.lib"
set rda_Input(ui_timelib,min) "$rm_tech_cell_lib_bc ../data/cortexm0_bc.lib"
set rda_Input(ui_leffile) "$rm_tech_proc_lef $rm_tech_cell_lef $rm_tech_ant_lef ../data/cortexm0.lef"
set rda_Input(ui_timingcon_file) "../scripts/cortexm0_constraints_default_mode.sdc"
commitConfig

if {$rm_skew_io == "1"} {
    loadTimingCon -incr  ../data/cortexm0_post_route_skew_latency_worst_case_default.sdc
} else {
    loadTimingCon -incr  ../data/cortexm0_post_route_latency_worst_case_default.sdc
}

#-----------------------------------------------------------------------
# BC model validation
#-----------------------------------------------------------------------

setAnalysisMode -checkType hold

write_model_timing -nworst 40\
                   -type arc ../reports/models/modelArcs_bc.rpt
                   
write_model_timing -nworst 40\
                   -type slack ../reports/models/modelSlacks_bc.rpt

compare_model_timing -ref     ../reports/models/designArcs_bc.rpt \
                     -compare ../reports/models/modelArcs_bc.rpt \
                     -outFile ../reports/models/compare_arcs_bc.rpt \
                     -percent_tolerance 5 \
                     -absolute_tolerance 0.001

compare_model_timing -ref     ../reports/models/designSlacks_bc.rpt \
                     -compare ../reports/models/modelSlacks_bc.rpt \
                     -outFile ../reports/models/compare_slacks_bc.rpt \
                     -percent_tolerance 5 \
                     -absolute_tolerance 0.001

#-----------------------------------------------------------------------
# WC model validation
#-----------------------------------------------------------------------
setAnalysisMode -checkType setup

write_model_timing -nworst 40\
                   -type arc ../reports/models/modelArcs_wc.rpt
                   
write_model_timing -nworst 40\
                   -type slack ../reports/models/modelSlacks_wc.rpt

compare_model_timing -ref     ../reports/models/designArcs_wc.rpt \
                     -compare ../reports/models/modelArcs_wc.rpt \
                     -outFile ../reports/models/compare_arcs_wc.rpt \
                     -percent_tolerance 5 \
                     -absolute_tolerance 0.001

compare_model_timing -ref     ../reports/models/designSlacks_wc.rpt \
                     -compare ../reports/models/modelSlacks_wc.rpt \
                     -outFile ../reports/models/compare_slacks_wc.rpt \
                     -percent_tolerance 5 \
                     -absolute_tolerance 0.001

#-----------------------------------------------------------------------
# validation of lef
#-----------------------------------------------------------------------
#-----------------------------------------------------------------------
# Load encounter pin placement order from spr run
#-----------------------------------------------------------------------
loadIoFile ../data/cortexm0_order.io


#-----------------------------------------------------------------------
# Note: manually place the macro in the centre of the die. The pin orders
# should match for easy routing.
#-----------------------------------------------------------------------
# win

placeInstance $rm_top_module 50 50 -fixed

placeDesign -noPrePlaceOpt

timeDesign -preCTS

Puts "END VALIDATE_TIMING : [exec date]"

exit
