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
#######################################################################################
#
# File Name     : cortexm0imp_rail.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : PrimeRail analysis script for the CORTEXM0IMP. 
#
#
# Date          : Mar. 17 2009
#
#######################################################################################

date
printSystemInfo
set rm_task  Rail

setDisplayMode "QueryBoxes" 0

# -----------------------------------------------------------------------------------
# Setup the Configuration
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/core_config.tcl
source -echo -verbose ../scripts/cortexm0imp_config.tcl

# -----------------------------------------------------------------------------------
# Setup the Target Technology
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0imp_tech.tcl

# -----------------------------------------------------------------------------------
# Open library and cell (CEL view saved in ICC by "create_rail_setup")
# -----------------------------------------------------------------------------------

dbOpenLibrary CORTEXM0IMP "w"

geOpenCell 
 formDefault "Open Cell"
  setFormField "Open Cell" "Cell Name" "5_routeopt_pr"
formOK "Open Cell"

# -----------------------------------------------------------------------------------
# Delete any existing extraction information
# -----------------------------------------------------------------------------------

poCleanupExtraction
 formDefault cleanup_pg_extraction
  formOK cleanup_pg_extraction
geCloseCellList

# -----------------------------------------------------------------------------------
# Load Power Supply and Switching Information
# -----------------------------------------------------------------------------------
#Disable new power db to allow 2007.03 script to run
scheme {define poUseNewPowerDB 0}

poLoadPowerSupply
 formDefault "Load Power Supply"
  setFormField "Load Power Supply" "TDF File Name" ${rm_supplies_file}
formOK "Load Power Supply"

poLoadNetSwitchingInfo
 formDefault "Load Net Switching Activity"
#  setFormField "Load Net Switching Activity" "Input Format" "VCD"
  setFormField "Load Net Switching Activity" "Input Format" "Scheme"
  setFormField "Load Net Switching Activity" "Pattern Match" 1
  setFormField "Load Net Switching Activity" "File Name" ${rm_activity_file}
formOK "Load Net Switching Activity"

# -----------------------------------------------------------------------------------
# Run Power Analysis
# -----------------------------------------------------------------------------------

# uncomment following line for individual cell power information to be written to log
# WARNING: can generate very large log files.
# scheme { define poPrintCellPower 1 }

poPowerAnalysis
 formDefault "Power Analysis"
formOK "Power Analysis"

# -----------------------------------------------------------------------------------
# PG Extraction for VDD and VSS
# -----------------------------------------------------------------------------------

poPGExtraction
 formDefault "PG Net Extraction"
  setFormField "PG Net Extraction" "Reuse Old Extraction" 0
  setFormField "PG Net Extraction" "RC Extraction" 1
  setFormField "PG Net Extraction" "PG Net Name" ${mw_power_net}
formOK "PG Net Extraction"

poPGExtraction
 formDefault "PG Net Extraction"
  setFormField "PG Net Extraction" "Reuse Old Extraction" 0
  setFormField "PG Net Extraction" "RC Extraction" 1
  setFormField "PG Net Extraction" "PG Net Name" ${mw_ground_net}
formOK "PG Net Extraction"

# -----------------------------------------------------------------------------------
# Analyze Power & Ground Rails
# -----------------------------------------------------------------------------------

poRailAnalysis
 formDefault "P/G Rail Analysis"
  setFormField "P/G Rail Analysis" "Power Net Name" ${mw_power_net}
  setFormField "P/G Rail Analysis" "Ground Net Name" ${mw_ground_net}
  setFormField "P/G Rail Analysis" "Top-Level Design Pin" "1"
  setFormField "P/G Rail Analysis" "User-Defined Tap" "0"
  setFormField "P/G Rail Analysis" "Extract Net" "Extract Power Net"
formOK "P/G Rail Analysis"

poRailAnalysis
 formDefault "P/G Rail Analysis"
  setFormField "P/G Rail Analysis" "Power Net Name" ${mw_power_net}
  setFormField "P/G Rail Analysis" "Ground Net Name" ${mw_ground_net}
  setFormField "P/G Rail Analysis" "Top-Level Design Pin" "1"
  setFormField "P/G Rail Analysis" "User-Defined Tap" "0"
  setFormField "P/G Rail Analysis" "Extract Net" "Extract Ground Net"
  setFormField "P/G Rail Analysis" "Delay Scaling" "Combine Previous Values"
formOK "P/G Rail Analysis"

# -----------------------------------------------------------------------------------
# Report on Power 
# -----------------------------------------------------------------------------------

poQueryPowerInfo
 formDefault "Query Power Info"
  setFormField "Query Power Info" "Object Type" "Cell Instance IR Drop For PrimeTime"
  setFormField "Query Power Info" "Object Name" ".*"
  setFormField "Query Power Info" "Pattern Match" "1"
  setFormField "Query Power Info" "Report To" "File"
  setFormField "Query Power Info" "File Name" ../reports/power/CORTEXM0IMP-PT_CellInst_IRdrop.rpt
formOK "Query Power Info"

poQueryPowerInfo
  setFormField "Query Power Info" "Object Type" "Cell Instance IR Drop"
  setFormField "Query Power Info" "File Name" ../reports/power/CORTEXM0IMP-CellInst_IRdrop.rpt
formOK "Query Power Info"

poQueryPowerInfo
  setFormField "Query Power Info" "Object Type" "Cell Instance Power"
  setFormField "Query Power Info" "File Name" ../reports/power/CORTEXM0IMP-CellInst_power.rpt
formOK "Query Power Info"

poQueryPowerInfo
  setFormField "Query Power Info" "Object Type" "Net Loading Capacitance"
  setFormField "Query Power Info" "File Name" ../reports/power/CORTEXM0IMP-net_load_cap.rpt
formOK "Query Power Info"

poQueryPowerInfo
  setFormField "Query Power Info" "Object Type" "I/O Net Power"
  setFormField "Query Power Info" "File Name" ../reports/power/CORTEXM0IMP-IO_net_power.rpt
formOK "Query Power Info"

# -----------------------------------------------------------------------------------
# Voltage Drop Mapping Reports
# -----------------------------------------------------------------------------------

poDisplayVoltageDropMap
 # first top level
 formDefault voltage_drop_map
 formApply voltage_drop_map
  setFormField voltage_drop_map hierarchical_option "Flatten Hierarchical Cells"
  setFormField voltage_drop_map dump_voltage 1
  setFormField voltage_drop_map dump_file_name ../reports/power/CORTEXM0IMP-VDD_drop.rpt
 formButton voltage_drop_map report
  setFormField voltage_drop_map Rail_analysis_net_name VSS
  setFormField voltage_drop_map dump_file_name ../reports/power/CORTEXM0IMP-VSS_drop.rpt
 formButton voltage_drop_map report

 # now macros
 formDefault voltage_drop_map
  setFormField voltage_drop_map hierarchical_option "Flatten Hierarchical Cells"
  setFormField voltage_drop_map dump_macro 1
  setFormField voltage_drop_map dump_file_name ../reports/power/CORTEXM0IMP-VDD_drop_macro.rpt
formButton voltage_drop_map report
  setFormField voltage_drop_map Rail_analysis_net_name VSS
  setFormField voltage_drop_map dump_file_name ../reports/power/CORTEXM0IMP-VSS_drop_macro.rpt
 formButton voltage_drop_map report
formCancel voltage_drop_map

# -----------------------------------------------------------------------------------
# Create White-Box-Model
# -----------------------------------------------------------------------------------

poGenWhiteBox 
 formDefault pg_net_white_box_generation
  setFormField pg_net_white_box_generation pg_net_name VDD
 formApply pg_net_white_box_generation
  setFormField pg_net_white_box_generation pg_net_name VSS
formOK pg_net_white_box_generation

# -----------------------------------------------------------------------------------
# Close design
# -----------------------------------------------------------------------------------

geSaveAllOpenCells
dbAbortCell [geGetEditCell]

exit 
