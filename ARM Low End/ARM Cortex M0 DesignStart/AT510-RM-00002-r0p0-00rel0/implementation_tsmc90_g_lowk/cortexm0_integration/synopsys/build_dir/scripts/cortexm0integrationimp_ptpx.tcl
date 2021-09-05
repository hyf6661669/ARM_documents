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
# File Name     : cortexm0integrationimp_ptpx.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : PrimeTime-PX script for the CORTEXM0INTEGRATIONIMP
#
#                 
# Date          : Mar. 17 2009
#
#####################################################################################
set rm_task sta
sh hostname
date

# Enable power analysis using PrimeTime-PX
set power_ui_backward_compatibility TRUE
set power_enable_analysis TRUE

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

# pointer to cell lib for driving cells
set driving_cell_lib ""

# Define a network latency on virtual clock(s). This uses median clock latency figures
# computed from IC Compiler route_opt step. The median latency figures are generated
# during route_opt, and stored as TCL variables in the file sourced below.
# These figures are used to define a network clock latency for the virtual clock(s),
# based on the selected process corner
source -echo -verbose ../data/CORTEXM0INTEGRATIONIMP-sta_virtual_clk_latencies.sdc

# -----------------------------------------------------------------------------------
# Define the link path based on process corner
# -----------------------------------------------------------------------------------

switch ${rm_process_corner_power} {
  rcbest
  -
  cworst { 
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${max_lib} ]
    }
    set driving_cell_lib ${rm_slow_rvt_lib_name}
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
if { ${rm_include_dbg} } {

    set SVCLK_clock_latency $SVCLK_clock_latency_max

}
  }

  rcworst
  -
  cbest {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${min_lib} ]
    }
    set driving_cell_lib ${rm_fast_rvt_lib_name}
    # Set virtual clock latencies approriate for best-corner
    set VCLK_clock_latency $VCLK_clock_latency_min
if { ${rm_include_dbg} } {

    set SVCLK_clock_latency $SVCLK_clock_latency_min

}
  }

  typical {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${typ_lib} ]
    }
    set driving_cell_lib ${rm_typical_rvt_lib_name}
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
if { ${rm_include_dbg} } {

    set SVCLK_clock_latency $SVCLK_clock_latency_max

}
  }

  default {
    echo "WARNING: No valid value set for rm_process variable !"
    echo "WARNING: Using worst-case libraries as a default"
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${max_lib} ]
    }
    set driving_cell_lib ${rm_slow_rvt_lib_name}
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
if { ${rm_include_dbg} } {

    set SVCLK_clock_latency $SVCLK_clock_latency_max

}
  }
}

# -----------------------------------------------------------------------------------
# Read In The Post Layout Verilog Netlist
# -----------------------------------------------------------------------------------

set svr_keep_unconnected_nets true
read_verilog ../data/CORTEXM0INTEGRATIONIMP.v

# -----------------------------------------------------------------------------------
# Link The Design
# -----------------------------------------------------------------------------------

current_design CORTEXM0INTEGRATIONIMP
link

# -----------------------------------------------------------------------------------
# Create Clocks
# -----------------------------------------------------------------------------------

# Declares the clocks present in the design post implementation
# Period - Describes the frequency at which timing is to be checked. Coupled
#          with zero setup margin this will give the max frequency that can
#          be achieved by the core
# Uncertainty - Since the clock is now propagated (actual timing) and explicit
#               OCV derating is used the only 'uncertainty' in the clock
#               distribution is margin
# Latency - Describes the delay in the clock tree from the core clock pin to
#           the flop clock pin. Only on virtual clocks; one should use the
#           achieved value and not the target



create_clock -name SCLK -period ${rm_clock_period} [get_ports SCLK]
  set_propagated_clock [get_clocks {SCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {SCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {SCLK} ]

create_clock -name HCLK -period ${rm_clock_period} [get_ports HCLK]
  set_propagated_clock [get_clocks {HCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {HCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {HCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {HCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {HCLK} ]

create_clock -name VCLK -period ${rm_clock_period}
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {VCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {VCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {VCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {VCLK} ]

if { ${rm_include_dbg} } {

create_clock -name DCLK -period ${rm_clock_period} [get_ports DCLK]
  set_propagated_clock [get_clocks {DCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {DCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {DCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {DCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {DCLK} ]

create_clock -name SWCLKTCK -period ${rm_swclk_period} [get_ports SWCLKTCK]
  set_propagated_clock [get_clocks {SWCLKTCK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SWCLKTCK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SWCLKTCK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {SWCLKTCK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {SWCLKTCK} ]

create_clock -name SVCLK -period ${rm_swclk_period}
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SVCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {SVCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {SVCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {SVCLK} ]

}

if { ${rm_include_wic} } {

create_clock -name FCLK -period ${rm_clock_period} [get_ports FCLK]
  set_propagated_clock [get_clocks {FCLK} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {FCLK} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks {FCLK} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks {FCLK} ]
  set_clock_uncertainty -hold  ${rm_hold_margin}  [get_clocks {FCLK} ]

}

# Define a network latency on the virtual clock(s), based on median values computed from
# IC Compiler for the internal clock domains
  set_clock_latency $VCLK_clock_latency [get_clocks {VCLK} ]

if { ${rm_include_dbg} } {

  set_clock_latency $SVCLK_clock_latency [get_clocks {SVCLK} ]

}

if { ${rm_create_test_wrapper} } {
create_clock -period ${rm_clock_period} [get_ports ${rm_wrp_clock} ]
  set_propagated_clock [get_clocks ${rm_wrp_clock} ]
  set_clock_latency -source -fall -early [expr -(${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks ${rm_wrp_clock} ]
  set_clock_latency -source -fall -late  [expr  (${rm_dcd_jitter} * ${rm_clock_period})] [get_clocks ${rm_wrp_clock} ]
  set_clock_uncertainty -setup [expr ${rm_setup_margin} + ${rm_period_jitter}] [get_clocks ${rm_wrp_clock} ]
  set_clock_uncertainty -hold  ${rm_hold_margin} [get_clocks ${rm_wrp_clock} ]

# Source latency applied to WCLK, nominally to balance with functional clock
  set_clock_latency -source [expr $rm_clock_latency - $rm_cts_latency_WCLK] [get_clocks ${rm_wrp_clock}]
}

# -----------------------------------------------------------------------------------
# Define context for the design
# -----------------------------------------------------------------------------------

source -echo -verbose  ../scripts/cortexm0integrationimp_constraints.tcl

set hierarchy_separator /
set_load ${rm_load_value} [all_outputs]

# Drive the ports with a standard driving cell with input transition
set_driving_cell -library ${driving_cell_lib} \
                 -lib_cell ${rm_driving_cell} \
                 -pin ${rm_driving_pin} \
                 -input_transition_rise ${rm_max_transition} \
                 -input_transition_fall ${rm_max_transition} \
                 ${inputs}

# Drive the clock ports with a different driving cell and input transition
set_driving_cell -library ${driving_cell_lib} \
                 -lib_cell ${rm_clock_driving_cell} \
                 -pin ${rm_clock_driving_pin} \
                 -input_transition_rise ${rm_max_clock_transition} \
                 -input_transition_fall ${rm_max_clock_transition} \
                 [get_ports ${rm_clock_ports}]

# -----------------------------------------------------------------------------------
# Read In The Parasitics
# -----------------------------------------------------------------------------------
read_parasitics -format SPEF ../data/CORTEXM0INTEGRATIONIMP_${rm_process_corner_power}.spef.gz

report_design -nosplit

#------------------------------------------------------------------------------------
# Set the operating conditions
# -----------------------------------------------------------------------------------

switch ${rm_process_corner_power} {
  rcbest
  -
  cworst { 
    set_operating_conditions -analysis_type on_chip_variation ${rm_max_operating_condition} \
                             -library ${rm_slow_rvt_lib_name}
  }

  rcworst
  -
  cbest {
    set_operating_conditions -analysis_type on_chip_variation ${rm_min_operating_condition} \
                             -library ${rm_fast_rvt_lib_name}
  }

  typical {
    set_operating_conditions -analysis_type on_chip_variation ${rm_typ_operating_condition} \
                             -library ${rm_typical_rvt_lib_name}
  }
}

# -----------------------------------------------------------------------------------
# Read in the Activity File
# -----------------------------------------------------------------------------------

if { ${rm_use_vcd_for_pp} } {

# Example read_vcd command; change as appropriate
#  read_vcd \
#    ../../../vectors/dhrystone.vcd \
#    -strip_path VecReplayTbenchName/uut \
#    -time [list S{rm_pwr_vcd_start_time} S{rm_pwr_vcd_end_time} ]

} else {

  # If no VCD file available the following may be substituted for simple mission-mode power estimation.

  # Disable reset
  set_case_analysis 1 [get_ports ${rm_reset_ports}]

  # Disable scan paths
  set_case_analysis 0 [get_ports ${rm_scan_enable}]
  set_case_analysis 0 [get_ports ${rm_dft_const}]
  for { set i 0 } {$i <= [expr ${rm_num_scan_chains} - 1] } {incr i} {
    set_case_analysis 0 [get_ports ${rm_scan_data_in}$i]
  }

  if { ${rm_create_test_wrapper} } {
    set_case_analysis 0 [get_ports [list ${rm_wrp_ishift} ${rm_wrp_oshift} \
                                         ${rm_wrp_mode1} ${rm_wrp_mode2} \
                                         ${rm_wrp_si}* ${rm_wrp_so}*]]
  }

  if { ${rm_use_scan_comp} } {
    set_case_analysis 0 [get_ports ${rm_comp_enable}]
  }

  # Set estimated input toggle rate
  set_switching_activity -static_probability 0.5 \
                         -toggle_count ${rm_pp_activity} \
                         -clocks "*" \
                         ${inputs}
}

# -----------------------------------------------------------------------------------
# Power Analysis
# -----------------------------------------------------------------------------------

if { ${rm_use_vcd_for_pp} } {
  report_vcd_hier > ../reports/power/CORTEXM0INTEGRATIONIMP.vcd
}

set power_force_saif_flow FALSE
set power_reset_negative_internal_power FALSE
set power_rail_output_file "ptpx2primerail.vf"

create_power_waveforms -interval ${rm_clock_period} \
                       -format "fsdb" \
                       -output "../reports/power/CORTEXM0INTEGRATIONIMP"

report_power -clocks ${rm_clock_ports} \
             -cell_power \
             > ../reports/power/CORTEXM0INTEGRATIONIMP-clock.power

report_power > ../reports/power/CORTEXM0INTEGRATIONIMP.power

date
quit
