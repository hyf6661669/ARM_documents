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
# File Name      :cortexm0integration_vstorm_analysis.tcl
# RM Release     :RTL_VERSION
# Purpose        :Encounter vstorm wrapper script
#
# RM version     :7.1.2
# 
################################################################################
Puts "BEGIN VSTORM COMMAND FILE GENERATION : [exec date]"

#-----------------------------------------------------------------------
# Load the Design
#-----------------------------------------------------------------------

source ../scripts/cortexm0integration_config.tcl
source ../scripts/cortexm0integration_fe.conf 
set rda_Input(ui_netlist) "../data/cortexm0integration_si_fixing.v"
set rda_Input(ui_timelib,max) "$rm_tech_cell_lib_tc"
set rda_Input(ui_timelib,min) ""
set rda_Input(ui_timingcon_file) "../scripts/cortexm0integration_constraints_default_mode.sdc"
set rda_Input(ui_qxtech_file) "$rm_qrc_tctechfile"
commitconfig

#-----------------------------------------------------------------------
# Now read the incremental constraints for post route and also for
# static power analysis setting constants on the Reset and Scan Enable
# pins. Then write out one file for VoltageStorm to read.
#-----------------------------------------------------------------------
if {$rm_skew_io == "1"} {
    loadTimingCon -incr  ../data/cortexm0integration_post_route_skew_latency_typical_case_default.sdc
} else {
    loadTimingCon -incr  ../data/cortexm0integration_post_route_latency_typical_case_default.sdc
}
loadTimingCon -incr  ../data/cortexm0integration_power_analysis_constraints.sdc

writeTimingCon -filePrefix "../data/cortexm0integration_power_analysis_tc" -sdc

#-----------------------------------------------------------------------
# Load the DEF
#-----------------------------------------------------------------------
defIn ../data/cortexm0integration_si_fixing.def

#-----------------------------------------------------------------------
# Load the SPEF
#-----------------------------------------------------------------------
if {[file exists ../data/cortexm0integration_${rm_tc_extraction_corner}.spef.gz ]} { 
   read_spef ../data/cortexm0integration_${rm_tc_extraction_corner}.spef.gz
} else { 
   read_spef ../data/cortexm0integration.spef.gz
}

#-----------------------------------------------------------------------
# Generate a LEF for PGV model generation
#-----------------------------------------------------------------------
editDelete -shapes FILLWIRE

lefOut ../data/cortexm0integration_pg.lef -5.5 -stripePin -PGpinLayers $rm_layer_v $rm_layer_h

#-----------------------------------------------------------------------
# Generate voltage sources
#-----------------------------------------------------------------------

# I/O power pads must be defined in the floorplan for autoFetchDCSources to work

autoFetchDCSources VDD
savePadLocation -file ../data/cortexm0integration_$rm_pwr_net_name.pp
exec perl ../scripts/cortexm0integration_gen_vsrc_from_encounter.pl ../scripts/cortexm0integration_qrc.tcl ../data/cortexm0integration_$rm_pwr_net_name.pp ../data/cortexm0integration_$rm_pwr_net_name.vsrc $rm_pwr_net_name

autoFetchDCSources VSS
savePadLocation -file ../data/cortexm0integration_$rm_gnd_net_name.pp
exec perl ../scripts/cortexm0integration_gen_vsrc_from_encounter.pl ../scripts/cortexm0integration_qrc.tcl ../data/cortexm0integration_$rm_gnd_net_name.pp ../data/cortexm0integration_$rm_gnd_net_name.vsrc $rm_gnd_net_name

#-----------------------------------------------------------------------
# generate the vstorm static power analysis command files
#-----------------------------------------------------------------------
source ../scripts/cortexm0integration_create_vs_cmdfile.tcl
create_vs_cmdfile 

Puts "END VSTORM COMMAND FILE GENERATION : [exec date]"
 
exit
