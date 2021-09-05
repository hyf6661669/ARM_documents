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
# File Name     : cortexm0integrationimp_fm.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Formality script for equivalence checking a gate level 
#                 netlist to the RTL for the CORTEXM0INTEGRATIONIMP.
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

set rm_task fm
sh hostname
date

# -----------------------------------------------------------------------------------
# Setup the configuration
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/core_config.tcl
source -echo -verbose ../scripts/cortexm0integrationimp_config.tcl

# -----------------------------------------------------------------------------------
# Setup the Target Technology
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0integrationimp_tech.tcl

set search_path $rm_search_path

# -----------------------------------------------------------------------------------
# Set Formality Variables
# -----------------------------------------------------------------------------------

# The "auto setup" variable configures FM variables to recommended defaults
set synopsys_auto_setup true

set verification_assume_reg_init none
set hdlin_warn_on_mismatch_message [list FMR_ELAB-145 FMR_ELAB-146 FMR_ELAB-147 FMR_ELAB-034 ]
set hdlin_unresolved_modules error

#This variable allows extra pre-verification effort which prevents excessive runtime and
#INCONCLUSIVE results being returned on low-speed multipliers
set verification_datapath_effort_level unlimited

# -----------------------------------------------------------------------------------
# Identify the version of DesignWare used in building the netlist
# -----------------------------------------------------------------------------------

set hdlin_dwroot  $rm_hdlin_dwroot

# -----------------------------------------------------------------------------------
# Read in the technology libraries to determine cell functionality
# -----------------------------------------------------------------------------------

# Read in one (corner) library for each cell library type
foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
  read_db $max_lib
  if { [lsearch -exact $rm_target_library $max_lib] == -1 } {
# If memory macro, ie. not in $rm_target_library, then set as interface model only
    set hdlin_interface_only $max_lib
  }
}

# -----------------------------------------------------------------------------------
# Read the SVF file created during implementation
# -----------------------------------------------------------------------------------

set_svf ../data/CORTEXM0INTEGRATIONIMP.svf

# -----------------------------------------------------------------------------------
# Read in the Reference Design ( -> r )
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0integrationimp_verilog.tcl
read_verilog -container r -libname WORK $rtl_image

set_top r:/WORK/CORTEXM0INTEGRATIONIMP

# -----------------------------------------------------------------------------------
# Read in the Implementation Design ( -> i )
# -----------------------------------------------------------------------------------
#The netlist can be verified either immediately after synthesis or after place and 
#routing. By default, if a post-route netlist is absent the post-compile one is used.

if { [file exists ../data/CORTEXM0INTEGRATIONIMP.v] } {
  read_verilog -libname WORK -netlist -c i ../data/CORTEXM0INTEGRATIONIMP.v
  puts "Verifying post-route netlist"
} else {
  read_verilog -libname WORK -netlist -c i ../data/CORTEXM0INTEGRATIONIMP-compile.v
  puts "Verifying post-compile netlist"
}

set_top i:/WORK/CORTEXM0INTEGRATIONIMP

# -----------------------------------------------------------------------------------
# Disable DFT modes, including test wrapper if applicable
# -----------------------------------------------------------------------------------

set_constant  r:/WORK/CORTEXM0INTEGRATIONIMP/${rm_scan_enable} 0 -type port
set_constant  i:/WORK/CORTEXM0INTEGRATIONIMP/${rm_scan_enable} 0 -type port

if { $rm_create_test_wrapper } {
  set_constant i:/WORK/CORTEXM0INTEGRATIONIMP/${rm_wrp_mode1}  0 -type port
  set_constant i:/WORK/CORTEXM0INTEGRATIONIMP/${rm_wrp_mode2}  0 -type port
  set_constant i:/WORK/CORTEXM0INTEGRATIONIMP/${rm_wrp_ishift} 0 -type port
  set_constant i:/WORK/CORTEXM0INTEGRATIONIMP/${rm_wrp_oshift} 0 -type port
}

set_dont_verify_point i:/WORK/CORTEXM0INTEGRATIONIMP/${rm_scan_data_out}* -type port

# -----------------------------------------------------------------------------------
# Identify the mode of clock gating if used in the design
# -----------------------------------------------------------------------------------

set verification_clock_gate_hold_mode low

# -----------------------------------------------------------------------------------
# Set reference and implementation designs
# -----------------------------------------------------------------------------------

set_reference_design  r:/WORK/CORTEXM0INTEGRATIONIMP
set_implementation_design  i:/WORK/CORTEXM0INTEGRATIONIMP

# -----------------------------------------------------------------------------------
# Perform matching of compare points
# -----------------------------------------------------------------------------------

## User match for wrapper cells
if { $rm_create_test_wrapper } {
  set_compare_rule -from {/temp_cto_reg} -to {} $impl
}

match

report_matched                > ../reports/lec/CORTEXM0INTEGRATIONIMP-matched.fm
report_matched -status unread > ../reports/lec/CORTEXM0INTEGRATIONIMP-unread.fm
report_unmatched              > ../reports/lec/CORTEXM0INTEGRATIONIMP-unmatched.fm

# -----------------------------------------------------------------------------------
# Verify the CORTEXM0INTEGRATIONIMP
# -----------------------------------------------------------------------------------

if [ verify r:/WORK/CORTEXM0INTEGRATIONIMP i:/WORK/CORTEXM0INTEGRATIONIMP ] {
} else {
  report_passing_points         > ../reports/lec/CORTEXM0INTEGRATIONIMP-passed.fm
  report_failing                > ../reports/lec/CORTEXM0INTEGRATIONIMP-failed.fm
  diagnose
  report_error_candidates       > ../reports/lec/CORTEXM0INTEGRATIONIMP-candidates.fm
}

date
quit
