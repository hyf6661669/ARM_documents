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
# File Name     : cortexm0integrationimp_mcmm_scenarios.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : MCMM setup script for the CORTEXM0INTEGRATIONIMP
#
#                 
# Date          : Mar. 17 2009
#
#####################################################################################

# -----------------------------------------------------------------------------------
# Define MCMM scenario variables
# -----------------------------------------------------------------------------------

# Note: the SDC constraints for functional mode are automatically generated 
# during the DC-T step and written to the "data" directory: whereas testmode 
# constraints are defined in a supplied script

set func_worst_corner_scenario  "func_worst_corner"
set func_worst_corner_sdc_file  "../data/CORTEXM0INTEGRATIONIMP-compile_max.sdc"

set func_best_corner_scenario   "func_best_corner"
set func_best_corner_sdc_file   "../data/CORTEXM0INTEGRATIONIMP-compile_min.sdc"

set test_best_corner_scenario   "test_best_corner"
set test_best_corner_sdc_file   "../scripts/cortexm0integrationimp_mcmm_testmode_constraints.tcl"

set cts_scenario	        "cts_scenario"
set cts_sdc_file                "../data/CORTEXM0INTEGRATIONIMP-compile_max.sdc"

# -----------------------------------------------------------------------------------
# Define the MCMM setup for Functional mode, worst-case corner
# -----------------------------------------------------------------------------------
if {$func_worst_corner_scenario != "" && $func_worst_corner_sdc_file != ""} {
    echo "SCRIPT-Info : Setting up scenario $func_worst_corner_scenario"
    create_scenario $func_worst_corner_scenario

    # Only use MAX TLUPLUS in the worst-case scenario
    set_tlu_plus_files -max_tluplus $rm_max_tluplus_file -tech2itf_map $rm_tf2itf_map_file

    set auto_link_disable true
    source $func_worst_corner_sdc_file

    # Operating conditions are set for OCV around a single (worst) corner:
    # Derating is applied at the appropriate steps in the flow
    set_operating_conditions \
	-analysis_type on_chip_variation  \
	-max_library $rm_slow_rvt_lib_name -max $rm_max_operating_condition \
	-min_library $rm_slow_rvt_lib_name -min $rm_max_operating_condition

    set auto_link_disable false

}

# -----------------------------------------------------------------------------------
# Define the MCMM setup for Functional mode, best-case corner
# -----------------------------------------------------------------------------------
if {$func_best_corner_scenario != "" && $func_best_corner_sdc_file != ""} {
    echo "SCRIPT-Info : Setting up scenario $func_best_corner_scenario"
    create_scenario $func_best_corner_scenario

    # Only use MIN TLUPLUS in the best-case scenario
    set_tlu_plus_files -max_tluplus $rm_min_tluplus_file -tech2itf_map $rm_tf2itf_map_file

    set auto_link_disable true
    source $func_best_corner_sdc_file

    # Operating conditions are set for OCV around a single (best) corner:
    # Derating is applied at the appropriate steps in the flow
    set_operating_conditions \
	-analysis_type on_chip_variation \
	-max_library $rm_fast_rvt_lib_name -max $rm_min_operating_condition  \
	-min_library $rm_fast_rvt_lib_name -min $rm_min_operating_condition

    set auto_link_disable false

}

# -----------------------------------------------------------------------------------
# Define the MCMM setup for Test mode, best-case corner
# -----------------------------------------------------------------------------------
if {$test_best_corner_scenario != "" && $test_best_corner_sdc_file != ""} {
    echo "SCRIPT-Info : Setting up scenario $test_best_corner_scenario"
    create_scenario $test_best_corner_scenario

    # Only use MIN TLUPLUS in this best-case scenario
    set_tlu_plus_files -max_tluplus $rm_min_tluplus_file -tech2itf_map $rm_tf2itf_map_file

    set auto_link_disable true
    source $test_best_corner_sdc_file

    # Operating conditions are set for OCV around a single (best) corner:
    # Derating is applied at the appropriate steps in the flow
    set_operating_conditions \
	-analysis_type on_chip_variation \
	-max_library $rm_fast_rvt_lib_name -max $rm_min_operating_condition  \
	-min_library $rm_fast_rvt_lib_name -min $rm_min_operating_condition

    set auto_link_disable false

}

# -----------------------------------------------------------------------------------
# Define the MCMM setup to be used for CTS
# -----------------------------------------------------------------------------------
if {$cts_scenario != "" && $cts_sdc_file != ""} {
    echo "SCRIPT-Info : Setting up scenario $cts_scenario"
    create_scenario $cts_scenario

    # Only use MAX TLUPLUS in the worst-case scenario
    set_tlu_plus_files -max_tluplus $rm_max_tluplus_file -tech2itf_map $rm_tf2itf_map_file

    set auto_link_disable true
    source $cts_sdc_file

    # Operating conditions are set for OCV around a single corner:
    # Derating is applied at the appropriate steps in the flow
    set_operating_conditions \
	-analysis_type on_chip_variation \
	-max_library $rm_slow_rvt_lib_name -max $rm_max_operating_condition \
	-min_library $rm_slow_rvt_lib_name -min $rm_max_operating_condition 

    set auto_link_disable false

}


