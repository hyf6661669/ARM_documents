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
# File Name     : cortexm0integrationimp_dmsa.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : PT-DMSA master run script for the CORTEXM0INTEGRATIONIMP
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

set rm_task sta
sh hostname
date

# -----------------------------------------------------------------------------------
# Setup The Configuration
# -----------------------------------------------------------------------------------

source -echo -verbose $sh_launch_dir/../scripts/core_config.tcl
source -echo -verbose $sh_launch_dir/../scripts/cortexm0integrationimp_config.tcl

# -----------------------------------------------------------------------------------
# Setup the Target Technology
# -----------------------------------------------------------------------------------

source -echo -verbose $sh_launch_dir/../scripts/cortexm0integrationimp_tech.tcl

# -----------------------------------------------------------------------------------
# set the working directory and error files (delete the old work directory first)
# -----------------------------------------------------------------------------------

file delete -force ./dmsa_work
set multi_scenario_working_directory ./dmsa_work
set multi_scenario_merged_error_log ./dmsa_work/error_log.txt
set lsf_binary_path $env(LSF_BINDIR)

# -----------------------------------------------------------------------------------
#
# add slave workstation information
#
# -----------------------------------------------------------------------------------

add_distributed_hosts -farm lsf \
                      -num_of_hosts 4 \
                      -options "-R 'rhe4&&x86_64' -q low -n 1 -o $multi_scenario_merged_error_log" \
                      -setup_path ${lsf_binary_path}

# -----------------------------------------------------------------------------------
# set license resource usage
#
# If this is less than the processor count, licenses will be
# dynamically moved around to maximize their usage
#
# this license count is only the ceiling;  licenses will only
# be pulled from the license server as they are needed
# -----------------------------------------------------------------------------------

set_multi_scenario_license_limit -feature PrimeTime 30
set_multi_scenario_license_limit -feature PrimeTime-SI 30

# -----------------------------------------------------------------------------------
# Path to TMAX utilities
# -----------------------------------------------------------------------------------

set synopsys_tmax $env(SYNOPSYS_TMAX)

foreach process { cworst cbest rcworst rcbest typical } {
  foreach mode {func} {
    create_scenario -name ${process}_${mode} \
                        -common_data   "$sh_launch_dir/../scripts/cortexm0integrationimp_dmsa_read_netlist.tcl $sh_launch_dir/../scripts/cortexm0integrationimp_dmsa_link_design.tcl" \
                   -common_variable {process mode} \
                   -specific_data "$sh_launch_dir/../scripts/cortexm0integrationimp_dmsa_constraints.tcl $sh_launch_dir/../scripts/cortexm0integrationimp_dmsa_write_reports.tcl" \
                   -specific_variable {process mode synopsys_tmax}
  }
}

# -----------------------------------------------------------------------------------
# start processes on all remote machines
#
# If this hangs, check to make sure that you can run this version
# of PrimeTime on the specified machines/farm
# -----------------------------------------------------------------------------------

create_distributed_farm

# -----------------------------------------------------------------------------------
# set session focus to all scenarios
# -----------------------------------------------------------------------------------

current_session -all

# -----------------------------------------------------------------------------------
# now execute merged reports
# -----------------------------------------------------------------------------------

report_timing -nosplit -derate -cap -trans -crosstalk -nets -input_pins \
              -delay min -nworst 20 \
           > $sh_launch_dir/../reports/dmsa/CORTEXM0INTEGRATIONIMP.all_corners.min_timing
report_timing -nosplit -derate -cap -trans -crosstalk -nets -input_pins \
              -delay max -nworst 20 \
           > $sh_launch_dir/../reports/dmsa/CORTEXM0INTEGRATIONIMP.all_corners.max_timing

quit
