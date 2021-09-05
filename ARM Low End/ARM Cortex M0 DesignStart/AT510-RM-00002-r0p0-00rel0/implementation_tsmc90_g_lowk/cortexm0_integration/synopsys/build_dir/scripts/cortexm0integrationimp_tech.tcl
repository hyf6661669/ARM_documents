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
# File Name     : cortexm0integrationimp_tech.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Technology Setup file for the CORTEXM0INTEGRATIONIMP
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

# -----------------------------------------------------------------------------------
# Path to libraries
# -----------------------------------------------------------------------------------

if {[info exists sh_launch_dir] == 0} {
  set sh_launch_dir "."
}

set rm_lib_dirs                 "${sh_launch_dir}/../../../../design_kits"

# -----------------------------------------------------------------------------------
# Technology File Locations
# -----------------------------------------------------------------------------------
set rm_max_tluplus_file        ${rm_lib_dirs}/tsmc/star-rcxt/cln90_1p07m+alrdl_cworst.tluplus
set rm_typ_tluplus_file        ${rm_lib_dirs}/tsmc/star-rcxt/cln90_1p07m+alrdl_typical.tluplus
set rm_min_tluplus_file        ${rm_lib_dirs}/tsmc/star-rcxt/cln90_1p07m+alrdl_cbest.tluplus
set rm_tf2itf_map_file         ${rm_lib_dirs}/tsmc/star-rcxt/tsmc90g_tf2itf.map
set rm_tech_file               ${rm_lib_dirs}/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad/astro/tf/tsmc090adgrvt_7lm_1thick.tf
set rm_layer_map               ${rm_lib_dirs}/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad/astro/gds2OutLayer.map

# -----------------------------------------------------------------------------------
# Technology Specific Parameters
# -----------------------------------------------------------------------------------
set rm_load_value              0.10                ;# Capacitive load placed on all outputs
set rm_driving_cell            BUFX4AD             ;# The driving cell for all inputs
set rm_driving_pin             Y                   ;# The output pin of the driving cell

set rm_clock_driving_cell      CLKBUFX8AD          ;# The driving cell for clock ports
set rm_clock_driving_pin       Y                   ;# The output pin of the clock driving cell
set rm_period_jitter           0.02                ;# Cycle jitter (rise-to-rise) +/- N ns
                                                   ;# of the whole cycle
set rm_dcd_jitter              0.02                ;# Duty cycle distortion as a percentage of the whole
                                                   ;# cycle - +/- N%. Affects the falling edge
                                                   ;# of the clock
set rm_setup_margin            0.05                ;# in ns. Setup margin
set rm_hold_margin             0.05                ;# in ns. Hold margin
set rm_ocv_derate_factor       0.00                ;# %. 0.10 = 10%, 0.05 = 5%
set rm_clock_uncertainty       0.25                ;# in ns. Pre-CTS clock skew estimate

set rm_critical_range          0.10                ;# Critical range. % of the rm_clock_period

set rm_icg_name       {integrated:TLATNTSCAX8AD} ;# Name of ICG cell
set rm_max_fanout              32                  ;# Maximum fanout threshold

set rm_max_transition          0.80                ;# Maximum edge rate target for optimization
set rm_max_clock_transition    0.40                ;# Maximum edge rate on the clock
set rm_clock_period            5.00                ;# Target clock period for the system clock
set rm_swclk_period            100.0               ;# Target clock period for the SWCLKTCK clock
set rm_clock_latency           0.60                ;# Predicted clock insertion delay
set rm_icg_latency             0.40                ;# Latency for integrated clock gating cell

set rm_cts_latency_WCLK        0.30                ;# Post-CTS clock latency estimate


# Operating conditions to use for min-max settings in compile
set rm_max_operating_condition scadv_tsmc_cln90g_rvt_ss_0p9v_125c
set rm_min_operating_condition scadv_tsmc_cln90g_rvt_ff_1p1v_m40c
set rm_typ_operating_condition scadv_tsmc_cln90g_rvt_tt_1p0v_25c

set rm_process_corner          cworst              ;# Process corner to use for STA and extraction
                                                   ;# rcbest || cworst || typical || cbest || rcworst
                                                   ;# It is suggested that Users run STA at multiple
                                                   ;# corners
set rm_process_corner_power    typical             ;# Process corner to use for PTPX power analysis

# -----------------------------------------------------------------------------------
# Floorplan Control Setup
# -----------------------------------------------------------------------------------

set rm_core_utilization  "0.80"
set rm_aspect_ratio  "1.00"
set rm_core_offset       "2.0"

# -----------------------------------------------------------------------------------
# Power Analysis Setup
# -----------------------------------------------------------------------------------

set rm_supplies_file  "../scripts/cortexm0integrationimp_powerSupply.scm"
set rm_activity_file  "../scripts/cortexm0integrationimp_netSwitching.scm"

# -----------------------------------------------------------------------------------
# Pointer to DW version for Formality, and pt2tmax script for test pattern generation
# -----------------------------------------------------------------------------------

set rm_hdlin_dwroot /arm/tools/synopsys/synthesis/2008.09-SP2

set rm_pt2tmax_path /arm/tools/synopsys/tetramax/2008.09-SP2/auxx/syn/tmax

# -----------------------------------------------------------------------------------
# Technology Library Setup
# -----------------------------------------------------------------------------------

##  Path to Standard Cell libraries
set rm_rvt_reflib        "${rm_lib_dirs}/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad"

##  Libraries for Multi-Vt synthesis
set rm_hvt_reflib        "${rm_lib_dirs}/arm/fe_tsmc090g-hvt_sc-adv_v10_2007q4v1/aci/sc-ad"

# The search path for the Milkyway library
set rm_mw_reflib   [list ${rm_rvt_reflib}/astro/tsmc090adg_fram \
                         ${rm_hvt_reflib}/astro/tsmc090adghvt_fram ]

# Used to generate search_path - contains the directory paths to libraries that do
# not have a directory component
set rm_search_path [concat ${search_path} . \
                           ${rm_rvt_reflib}/synopsys \
                           ${rm_hvt_reflib}/synopsys ]


## Logical names of libraries
## RVT
set rm_slow_rvt_lib_name     "scadv_tsmc_cln90g_rvt_ss_0p9v_125c"
set rm_fast_rvt_lib_name     "scadv_tsmc_cln90g_rvt_ff_1p1v_m40c"
set rm_typical_rvt_lib_name  "scadv_tsmc_cln90g_rvt_tt_1p0v_25c"
## HVT
set rm_slow_hvt_lib_name     "scadv_tsmc_cln90g_hvt_ss_0p9v_125c"
set rm_fast_hvt_lib_name     "scadv_tsmc_cln90g_hvt_ff_1p1v_m40c"
set rm_typical_hvt_lib_name  "scadv_tsmc_cln90g_hvt_tt_1p0v_25c"

## These logical library variables are used for reference in setting dont_use cells
## and reporting Vt library percentages.
set rm_rvt_lib "scadv_tsmc_cln90g_rvt_ss_0p9v_125c.db:${rm_slow_rvt_lib_name}"
set rm_hvt_lib "scadv_tsmc_cln90g_hvt_ss_0p9v_125c.db:${rm_slow_hvt_lib_name}"

# Target libraries for Multi-Vt synthesis and optimisation. Contains the standard
# cell libraries
set rm_target_library "scadv_tsmc_cln90g_rvt_ss_0p9v_125c.db"
# Best case standard cell libs: These are required in MCMM mode
set rm_best_library "scadv_tsmc_cln90g_rvt_ff_1p1v_m40c.db"

if {${rm_use_multivt} } {
    set rm_target_library [concat ${rm_target_library} \
                                  scadv_tsmc_cln90g_hvt_ss_0p9v_125c.db ]
    set rm_best_library [concat ${rm_best_library} \
                                scadv_tsmc_cln90g_hvt_ff_1p1v_m40c.db ]
}

# -----------------------------------------------------------------------------------
# Min/Typ/Max library triplets for synthesis, optmization and analysis
# -----------------------------------------------------------------------------------
# The rm_mintypmax_libs variable contains 'triplets' of library files used to create
# link paths, etc. in the implementation and analysis scripts. Each triplet is made
# up of the fast, typical and slow (in that order) db's for a particular library of
# cell(s). No specific ordering of library groups is required other than that they
# are in the above order within the group. For example:
#
# set rm_mintypmax_libs [list \
#      fast_rvt.db typical_rvt.db slow_rvt.db \
#      fast_lvt.db typical_lvt.db slow_lvt.db ]

set rm_mintypmax_libs [list \
     scadv_tsmc_cln90g_rvt_ff_1p1v_m40c.db scadv_tsmc_cln90g_rvt_tt_1p0v_25c.db scadv_tsmc_cln90g_rvt_ss_0p9v_125c.db \
     ]

if {${rm_use_multivt} } {
    set rm_mintypmax_libs [concat ${rm_mintypmax_libs} \
    scadv_tsmc_cln90g_hvt_ff_1p1v_m40c.db scadv_tsmc_cln90g_hvt_tt_1p0v_25c.db scadv_tsmc_cln90g_hvt_ss_0p9v_125c.db ]
}

# -----------------------------------------------------------------------------------
# Tetramax Library Setup
# -----------------------------------------------------------------------------------

## Tetramax views for standard cells
#These are ordinary verilog views of the std cells, not dedicated Tetramax views. Errors may occasionally be seen in 
#Tetramax when an unusual cell has been instantiated. The workaround is to add that cell to rm_dont_use_list.
set rm_tmax_verilog_libs [list  ${rm_rvt_reflib}/verilog/tsmc090adgrvt.v \
                                ${rm_hvt_reflib}/verilog/tsmc090adghvt.v \
                                ]

# -----------------------------------------------------------------------------------
# Milkyway Specific Settings
# -----------------------------------------------------------------------------------
# Variables required to keep power info.
# Otherwise Power/Gnd get treated as signal nets.
set mw_logic1_net               "VDD"
set mw_logic0_net               "VSS"

set mw_power_net                "VDD"
set mw_ground_net               "VSS"

set mw_power_port               "VDD.*"
set mw_ground_port              "VSS.*"

# -----------------------------------------------------------------------------------
# Routing rules
# -----------------------------------------------------------------------------------

# This is the maximum layer the router is allowed to use
set rm_max_layer           6

# This establishes the basic rules for the metals to be constrained during clock-tree
# routing. This information is obtained from the technology file. [$rm_tech_file]
set rm_clock_routing_widths   [list M2 0.14 M3 0.14 M4 0.14 M5 0.14 M6 0.14 M7 0.14]
set rm_clock_routing_spacings [list M2 0.14 M3 0.14 M4 0.14 M5 0.14 M6 0.14 M7 0.14]

# Set this multiplier to the desired width and spacing of the clock-tree routing
set rm_clock_routing_width_multiplier   2
set rm_clock_routing_spacing_multiplier 2

# -----------------------------------------------------------------------------------
# Cell Specific Setup
# -----------------------------------------------------------------------------------
# This section contains lists of cells which are used, or excluded, by specific parts
# of the implementation flow

# Cells used to provide logic-1 and logic-0. Variable used in ICC flow steps
set rm_tie_hi_lo_list [list ${rm_rvt_lib}/TIEHIAD \
			    ${rm_rvt_lib}/TIELOAD ]

if {${rm_use_multivt} } { 
  set rm_tie_hi_lo_list [concat ${rm_tie_hi_lo_list} \
  			        ${rm_hvt_lib}/TIEHIADTH \
  			        ${rm_hvt_lib}/TIELOADTH ]
}

# Output pin on above cells
set rm_tie_cell_pin     Y

# This list contains the root names of all the cells that synthesis and optimisation
# stages should not use. Clock and delay cells are also listed since the commands
# that use them ignore the dont_use attribute and use their own lists (below)
# Dont_use lists are used in the DC and ICC flow steps
set rm_dont_use_list    [list *XLAD *X18AD *X20AD *X24AD *X40AD *X32AD \
                              CLK*X*AD *MDFF*AD *EDFF*AD DLY*AD TBUF*AD SDFFTR* ]

# Expand the list to include cells from both the regular and HVT libraries
set rm_dont_use [list ]
foreach dont_use $rm_dont_use_list {
  set rm_dont_use [concat $rm_dont_use \
  		          ${rm_rvt_lib}/${dont_use} ]
  if {${rm_use_multivt} } { 
    set rm_dont_use [concat $rm_dont_use \
        		    ${rm_hvt_lib}/${dont_use}TH ]
  }
}

# These lists contains all the cells available for use by Clock Tree Synthesis (CTS)
# CTS only uses one Vt for better path matching across a die. These lists are
# referenced only during clock_opt
set rm_clock_cell       [list CLKBUFX2AD CLKBUFX3AD CLKBUFX4AD CLKBUFX6AD \
                              CLKBUFX8AD CLKBUFX12AD CLKBUFX16AD \
                              CLKINVX2AD CLKINVX3AD CLKINVX4AD CLKINVX6AD \
                              CLKINVX8AD CLKINVX12AD CLKINVX16AD ]

set rm_clock_size_cell  [list CLKBUFX2AD CLKBUFX3AD CLKBUFX20AD CLKINVX2AD \
                              CLKINVX3AD CLKINVX20AD ]

set rm_clock_delay_cell [list CLKBUFX2AD CLKBUFX4AD ]

# If delay cells are needed they are referenced from this list
set rm_delay_cell       [list DLY1X1AD DLY1X4AD DLY2X1AD DLY2X4AD DLY3X1AD DLY3X4AD \
                              DLY4X1AD DLY4X4AD]

# These lists contain the standard cell filler cells; those with and those without
# metal in the cell. Should be listed with largest first for most efficient placement
# Used during design_planning and after all placement optimisation stages
set rm_fill_cells_wm    [list FILL64AD FILL32AD FILL16AD FILL8AD FILL4AD FILL2AD]
set rm_fill_cells_wom   [list FILL1AD]

## Tap cell to be used in design planning
set rm_tap_cell "FILL2AD"

## Parameters used for tap cell insertion
set rm_tap_cell_distance   57.68
set rm_tap_cell_offset     28.84
# -----------------------------------------------------------------------------------
# Tool reporting defaults
# -----------------------------------------------------------------------------------

# Increase the precision of timing reports to 3 significant digits
# Note: *decreases* precision of area reports to 3 from 6 significant digits
set report_default_significant_digits 3

# end
