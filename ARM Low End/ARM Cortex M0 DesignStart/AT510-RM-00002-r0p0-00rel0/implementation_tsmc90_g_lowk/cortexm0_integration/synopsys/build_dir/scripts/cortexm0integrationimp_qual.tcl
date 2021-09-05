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
# File Name     : cortexm0integrationimp_qual.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : PrimeTime script for verifying the accuracy
#               : of an extracted timing model for the CORTEXM0INTEGRATIONIMP.
#
# Date          : Mar. 17 2009
#
#####################################################################################
date
sh hostname
set rm_task "qual"

# -----------------------------------------------------------------------------------
# Setup the Configuration
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/core_config.tcl
source -echo -verbose ../scripts/cortexm0integrationimp_config.tcl

# -----------------------------------------------------------------------------------
# Setup the Target Technology
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0integrationimp_tech.tcl

set search_path ${rm_search_path}

set link_path [list *]

# Define a network latency on virtual clock(s). This uses median clock latency figures
# computed from IC Compiler route_opt step. The median latency figures are generated
# during route_opt, and stored as TCL variables in the file sourced below.
# These figures are used to define a network clock latency for the virtual clock(s),
# based on the selected process corner
source ../data/CORTEXM0INTEGRATIONIMP-sta_virtual_clk_latencies.sdc

# -----------------------------------------------------------------------------------
# Define the link path based on process corner
# -----------------------------------------------------------------------------------

switch ${rm_process_corner} {
  rcbest
  -
  cworst { 
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${max_lib} ]
    }
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
  }

  rcworst
  -
  cbest {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${min_lib} ]
    }
    # Set virtual clock latencies approriate for best-corner
    set VCLK_clock_latency $VCLK_clock_latency_min
  }

  typical {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${typ_lib} ]
    }
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
  }

  default {
    echo "WARNING: No valid value set for rm_process variable !"
    echo "WARNING: Using worst-case libraries as a default"
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${max_lib} ]
    }
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
  }
}

# -----------------------------------------------------------------------------------
# Read in the ETM and associated test fixture
# -----------------------------------------------------------------------------------

set si_enable_analysis true
set si_xtalk_reselect_critical_path false

set search_path [concat ${search_path} ../models/timing]

set link_path [ concat ${link_path} CORTEXM0INTEGRATIONIMP-${rm_process_corner}_lib.db ]

read_db ../models/timing/CORTEXM0INTEGRATIONIMP_test.db

# -----------------------------------------------------------------------------------
# Link The Design
# -----------------------------------------------------------------------------------

current_design CORTEXM0INTEGRATIONIMP_test
link

# -----------------------------------------------------------------------------------
# Specify clocks
# -----------------------------------------------------------------------------------


create_clock -name SCLK -period ${rm_clock_period} [get_ports SCLK]
  set_propagated_clock [get_clocks {SCLK} ]

create_clock -name HCLK -period ${rm_clock_period} [get_ports HCLK]
  set_propagated_clock [get_clocks {HCLK} ]

create_clock -name VCLK -period ${rm_clock_period}

if { ${rm_include_dbg} } {

create_clock -name DCLK -period ${rm_clock_period} [get_ports DCLK]
  set_propagated_clock [get_clocks {DCLK} ]

create_clock -name SWCLKTCK -period ${rm_swclk_period} [get_ports SWCLKTCK]
  set_propagated_clock [get_clocks {SWCLKTCK} ]

create_clock -name SVCLK -period ${rm_swclk_period}

}

if { ${rm_include_wic} } {

create_clock -name FCLK -period ${rm_clock_period} [get_ports FCLK]
  set_propagated_clock [get_clocks {FCLK} ]

}
if { ${rm_create_test_wrapper} } {
create_clock -period ${rm_clock_period} [get_ports ${rm_wrp_clock} ]
  set_propagated_clock [get_clocks ${rm_wrp_clock} ]
  set_clock_latency -source [expr $rm_clock_latency - $rm_cts_latency_WCLK] [get_clocks ${rm_wrp_clock}]
}


# -----------------------------------------------------------------------------------
# Include the IO constraints
# -----------------------------------------------------------------------------------

source -echo -verbose  ../scripts/cortexm0integrationimp_constraints.tcl

# -----------------------------------------------------------------------------------
# Define context for the design.
# -----------------------------------------------------------------------------------

# Set the maximum transition value on the design
set_max_transition ${rm_max_transition} CORTEXM0INTEGRATIONIMP_test

# Transition inputs with maximum slope
set_input_transition ${rm_max_transition} ${inputs}

# Input transition setting for clock ports
set_input_transition ${rm_max_clock_transition} [get_ports ${rm_clock_ports}]

# -----------------------------------------------------------------------------------
# Set the operating conditions
# -----------------------------------------------------------------------------------

switch ${rm_process_corner} {
  rcbest
  -
  cworst {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_max_operating_condition \
                             -library $rm_slow_rvt_lib_name
  }
  rcworst
  -
  cbest {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_min_operating_condition \
                             -library $rm_fast_rvt_lib_name
  }
  typical {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_typ_operating_condition \
                             -library $rm_typical_rvt_lib_name
  }
}

# -----------------------------------------------------------------------------------
# Update and check the timing
# -----------------------------------------------------------------------------------

update_timing
check_timing

# -----------------------------------------------------------------------------------
# Set output load and driving cell for model interface timing report 
# -----------------------------------------------------------------------------------

# Load all outputs with suitable capacitance
set_load ${rm_load_value} [all_outputs]

# Set transitions on all input ports
# Use of set_driving_cell is not recommended in etm/qual because of the difference in behaviour 
# when driving lumped capacitance vs distributed parasitics. This would usually be seen as clock 
# ports failing effective capacitance checks. Using set_input_transition avoids this problem.
set_input_transition $rm_max_transition $inputs
set_input_transition $rm_max_clock_transition [get_ports ${rm_clock_ports}]

update_timing

# -----------------------------------------------------------------------------------
# Write the interface timing for the ETM
# -----------------------------------------------------------------------------------

write_interface_timing -timing_type arc ../reports/sta/CORTEXM0INTEGRATIONIMP-${rm_process_corner}.mtiming

# -----------------------------------------------------------------------------------
# Compare the interface timing for netlist and ETM
# -----------------------------------------------------------------------------------

compare_interface_timing -nos  \
    ../reports/sta/CORTEXM0INTEGRATIONIMP-${rm_process_corner}.ntiming \
    ../reports/sta/CORTEXM0INTEGRATIONIMP-${rm_process_corner}.mtiming \
    -output ../reports/sta/CORTEXM0INTEGRATIONIMP-${rm_process_corner}.accuracy \
    -absolute_tolerance { 0.05 -0.05 } \
    -percent_tolerance 20 \
    -sort_by_worst

date
quit
