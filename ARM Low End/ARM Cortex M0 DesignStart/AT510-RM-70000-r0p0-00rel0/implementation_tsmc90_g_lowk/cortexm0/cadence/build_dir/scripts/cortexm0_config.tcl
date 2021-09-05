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
# File Name      :cortexm0_config.tcl
# RM Release     :RTL_VERSION
# Purpose       : irm config file
#
# RM version     :7.1.2
#
#################################################################################

#-----------------------------------------------------------------------
# Library Root
#-----------------------------------------------------------------------

#the directory where the cadence implementation tool is installed.
set rm_inst_dir	             "<TOOL INSTALLATION PATH FOR SOC ENCOUNTER>"

# genrm generated library_config file
#-----------------------------------------------------------------------
# Simulation libraries
#-----------------------------------------------------------------------

# Behavioural verilog
set rm_tech_cell_lib_ver "./../../../../design_kits/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad/verilog/tsmc090adgrvt.v"

# ATPG verilog
set rm_atpg_lib_ver "./../../../../design_kits/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad/verilog/tsmc090adgrvt.v"

#-----------------------------------------------------------------------
# Timing libraries
#-----------------------------------------------------------------------

# Timing Library for worst case process corner for normal voltage
set rm_tech_cell_lib_wc "./../../../../design_kits/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad/synopsys/scadv_tsmc_cln90g_rvt_ss_0p9v_125c.lib"

# Timing Library for best case process corner for normal voltage
set rm_tech_cell_lib_bc "./../../../../design_kits/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad/synopsys/scadv_tsmc_cln90g_rvt_ff_1p1v_m40c.lib"

# Timing Library for typical case process corner for normal voltage
set rm_tech_cell_lib_tc "./../../../../design_kits/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad/synopsys/scadv_tsmc_cln90g_rvt_tt_1p0v_25c.lib"

#-----------------------------------------------------------------------
# Physical libraries
#-----------------------------------------------------------------------
# LEF for standard cells and macros
set rm_tech_cell_lef "./../../../../design_kits/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad/lef/tsmc090adgrvt_macros.lef"

# Process  LEF, must be defined.
set rm_tech_proc_lef    "./../../../../design_kits/arm/fe_tsmc090g_sc-adv_v10_2007q4v2/aci/sc-ad/lef/tsmc090adgrvt_9lm_2thick_tech.lef"

# antenna side LEF. 
# Please edit the next line for your libraries
set rm_tech_ant_lef	   ""

# Extraction and power analysis libraries and setup file
set rm_qrc_lef_list     "$rm_tech_proc_lef $rm_tech_cell_lef"

# VoltageStorm cell library for typical process corner
set rm_vstorm_cell_lib "./../../../../design_kits/cadence_compiled/fe_tsmc090g_sc-adv_v10_2007q4v2/scadv_tsmc_cln90g_rvt_tt_1p0v_25c_dv.cl"

#-----------------------------------------------------------------------
# Signal Integrity libraries
#-----------------------------------------------------------------------

# Noise library for slow process corner
set rm_cdb_slow_cell_list "./../../../../design_kits/cadence_compiled/fe_tsmc090g_sc-adv_v10_2007q4v2/scadv_tsmc_cln90g_rvt_ss_0p9v_125c.cdB"

# Noise library for fast process corner
set rm_cdb_fast_cell_list "./../../../../design_kits/cadence_compiled/fe_tsmc090g_sc-adv_v10_2007q4v2/scadv_tsmc_cln90g_rvt_ff_1p1v_m40c.cdB"

# Noise library for typical process corner
set rm_cdb_typ_cell_list "./../../../../design_kits/cadence_compiled/fe_tsmc090g_sc-adv_v10_2007q4v2/scadv_tsmc_cln90g_rvt_tt_1p0v_25c.cdB"

#-----------------------------------------------------------------------
# Other variables
#-----------------------------------------------------------------------

# library antenna cell
set rm_antenna_cell "ANTENNAAD"

# Power net name
set rm_pwr_net_name "VDD"

# Ground net name
set rm_gnd_net_name "VSS"

# SI black box cell libraries
set rm_udn_cell_list ""

# buffer cell to use on all signal I/Os
set rm_boundary_net_buffer "BUFX6AD"

# library filler cells with largest cell first
set rm_filler_cell_list "FILL64AD FILL32AD FILL16AD FILL8AD FILL4AD FILL2AD FILL1AD"

# library clock tree cells
set rm_clock_cell_list "CLKBUFX4AD CLKBUFX6AD CLKBUFX8AD CLKBUFX12AD CLKINVX4AD CLKINVX8AD CLKINVX12AD CLKINVX16AD"

# library clock tree cells used for useful skew
set rm_clock_skew_cell_list "CLKBUFX4AD CLKBUFX6AD CLKBUFX8AD CLKBUFX12AD CLKINVX4AD CLKINVX8AD CLKINVX12AD CLKINVX16AD"

# clock driving cell
set rm_clock_driving_cell "CLKBUFX8AD"

# clock driving cell pin 
set rm_clock_driving_pin "Y"

# Library tie HI cells if available
set rm_tie_hi_cell "TIEHIAD"

# Library tie LO cells if available
set rm_tie_lo_cell "TIELOAD"

# well tie cellname
set rm_well_tie_cell "FILL2AD"

# well tie interval max distance in microns
set rm_well_tie_interval "40"

# Minimum register width for clock gating
set rm_cg_min_bitwidth "2"

# Maximum fanout from clock gating cell
set rm_cg_max_bitwidth "64"

# clock gating cell
set rm_cgic_cell "TLATNTSCAX8AD"

# driving cell name to be used in synthesis
set rm_driving_cell "SDFFHQX4AD"

# The driving cell input name
set rm_driving_cell_input_pin "D"

# The driving cell output name
set rm_driving_cell_output_pin "Q"

# set the name of the slow timing library and operating conditions
set rm_wc_op_cond "scadv_tsmc_cln90g_rvt_ss_0p9v_125c"

# set the name of the fast timing library and operating conditions
set rm_bc_op_cond "scadv_tsmc_cln90g_rvt_ff_1p1v_m40c"

# set the name of the typical timing library and operating conditions
set rm_tc_op_cond "scadv_tsmc_cln90g_rvt_tt_1p0v_25c"

# set the name of the slow timing library name
set rm_tech_cell_lib_name_wc "scadv_tsmc_cln90g_rvt_ss_0p9v_125c"

# set the name of the fast timing library name
set rm_tech_cell_lib_name_bc "scadv_tsmc_cln90g_rvt_ff_1p1v_m40c"

# set the name of the typical timing library name
set rm_tech_cell_lib_name_tc "scadv_tsmc_cln90g_rvt_tt_1p0v_25c"

# set pvt values, use max for worst case conditions
set rm_pvt_max_p "1"

# worst case temperature
set rm_pvt_max_t "125"

# worst case supply voltage
set rm_pvt_max_v "0.9"

# set pvt values, use min for best case conditions
set rm_pvt_min_p "1"

# best case temperature
set rm_pvt_min_t "-40"

# best case supply voltage
set rm_pvt_min_v "1.1"

# set pvt values, use typ for typical case conditions
set rm_pvt_typ_p "1"

# typical case temperature
set rm_pvt_typ_t "25"

# typical case supply voltage
set rm_pvt_typ_v "1.0"

# gds2 file list. currently not used
set rm_gds2_file_list ""

# list of cells that should not be used for optimisations
set rm_delay_cells ""

# load applied to output pins
set rm_pin_load "0.04"

# list of dont use cells
set rm_dont_use_cells "CLK*"

# Power nets list
set rm_power_pin_list "VDD"

# Ground nets list
set rm_ground_pin_list "VSS"

# -----------------------------------------------------------------------
# End of genrm auto-generated library_config file
# -----------------------------------------------------------------------
 
# ------------------------------------------------------------------------------
# Process specific Settings
# ------------------------------------------------------------------------------

#pll jitter, inter clock uncertainty, hold margin, duty cycle distortion and rm_clock_transition settings
set rm_clock_uncertainty_setup "0.100"
set rm_inter_clock_uncertainty_setup "0.100"
set rm_clock_uncertainty_hold "0.100"
set rm_dcd_jitter "0.03"
set rm_clock_transition  "0.2"

#noise process, threshold for delay pushout and threshold for glitches
set rm_noise_process          "90nm"
set rm_noise_threshold        "0"
set rm_delay_threshold        "0.01"

# process info
set rm_process_provider "tsmc"
set rm_process_version "t-n90-lo-sp-002-f1_1_6a_20060914"
set rm_process_option "6X2Z"

# Metal Layers Horizontal and Vertical Power is inserted on, used for voltage storm
set rm_layer_v "6"
set rm_layer_h "7"

#ocv settings
set rm_derate_max_early "0.9"
set rm_derate_max_late  "1.0"
set rm_derate_min_early "1.0"
set rm_derate_min_late  "1.1"

# Technology manufacturing grid (um)
set rm_manufacture_grid	     "0.005"

# gds2 files
set rm_soce_gds2_map_file    ""

#extraction corners and pointers to techfiles
set rm_wc_extraction_corner "cworst"
set rm_bc_extraction_corner "cbest"
set rm_tc_extraction_corner "typical"
set rm_qrc_wctechfile        "./../../../../design_kits/$rm_process_provider/$rm_process_version/$rm_process_option/$rm_wc_extraction_corner/qrcTechFile"
set rm_qrc_bctechfile        "./../../../../design_kits/$rm_process_provider/$rm_process_version/$rm_process_option/$rm_bc_extraction_corner/qrcTechFile"
set rm_qrc_tctechfile        "./../../../../design_kits/$rm_process_provider/$rm_process_version/$rm_process_option/$rm_tc_extraction_corner/qrcTechFile"

#encounter cap tables
array set rm_captables {}
set rm_captables(best_case)  	 "./../../../../design_kits/$rm_process_provider/$rm_process_version/$rm_process_option/cbest/cln90_1p09m_+alrdl_cbest.capTbl"
set rm_captables(typical_case)   "./../../../../design_kits/$rm_process_provider/$rm_process_version/$rm_process_option/typical/cln90_1p09m_+alrdl_typical.capTbl"
set rm_captables(worst_case)  	 "./../../../../design_kits/$rm_process_provider/$rm_process_version/$rm_process_option/cworst/cln90_1p09m_+alrdl_cworst.capTbl"
set rm_captable  	 "-best $rm_captables(best_case) -typical $rm_captables(typical_case) -worst $rm_captables(worst_case)"

#rc corners, first on list used for synthesis
set rm_rc_corners "worst_case best_case typical_case"

#captable scaling factors
set rm_pre_metal_fill_detailed_cap_factor   "1.0"
set rm_pre_metal_fill_default_cap_factor    "1.0"
set rm_pre_metal_fill_coupling_cap_factor   "1.0"
set rm_post_metal_fill_detailed_cap_factor  "1.0"
set rm_post_metal_fill_coupling_cap_factor  "1.0"
set rm_trial_route_res_factor               "1.0"
set rm_nano_route_res_factor                "1.0"

#multicut via efforts
set rm_clock_multicut_via_effort "high"
set rm_route_multicut_via_effort "medium"

# top routing metal layer
set rm_top_routing_layer     "6"

#metal fill parameters
set rm_metal_fill_window_x	      "100"
set rm_metal_fill_window_y	      "100"
set rm_metal_fill_max_length	      "1.5" 
set rm_metal_fill_max_width	      "1.5" 
set rm_metal_fill_active_spacing      "0.61" 
set rm_metal_fill_min_width	      "0.6" 
set rm_metal_fill_min_length	      "1.17" 
set rm_metal_fill_gap_spacing	      "0.3" 
set rm_metal_fill_window_step_x       "50" 
set rm_metal_fill_window_step_y       "50" 
set rm_metal_fill_min_density	      "15" 
set rm_metal_fill_max_density	      "70" 
set rm_metal_fill_preferred_density   "50"

# Slew limit to use (instead of library defined limit)
set rm_max_transition 500
# ------------------------------------------------------------------------------
# Floorplan
# ------------------------------------------------------------------------------

# path to floorplan fpfile.
set rm_fp_floorplan_path      "../floorplan/cortexm0.fp"
# path to floorplan DEF.
set rm_def_floorplan_path        "../floorplan/cortexm0.def"

#-----------------------------------------------------------------------
# Timing and Margining
#-----------------------------------------------------------------------

#Clock period in ns
set rm_clock_period            "5"
set rm_clock_frequency         "200"

#Clock latency in ns
set rm_clock_latency_max_HCLK   "1.00"
set rm_clock_latency_min_HCLK   "0.75"
set rm_clock_latency_typ_HCLK  "1.00"
set rm_clock_latency_max_DCLK  "1.00"
set rm_clock_latency_min_DCLK  "0.75"
set rm_clock_latency_typ_DCLK "1.00"
set rm_clock_latency_max_SCLK   "1.00"
set rm_clock_latency_min_SCLK   "0.75"
set rm_clock_latency_typ_SCLK  "1.00"

#Pre Cts Clock latency margin as a proportion of clock latency (eg 0.1=10%)
set rm_pre_cts_clock_latency_margin   "0.0"

#Post Cts Pre Route Clock latency margin as a proportion of clock latency (eg 0.1=10%)
set rm_post_cts_clock_latency_margin   "0.0"

# Define the amount to adjust clock gating path by for pre cts synthesis and implementation (ps)
set rm_pre_cts_clock_gating_target_slack "50"

# Define the amount to adjust reg2reg paths for pre-cts and post-cts implementation (ps)

set rm_pre_cts_reg2reg_target_slack "0.200"
set rm_post_cts_reg2reg_target_slack "0.150"

#-----------------------------------------------------------------------
# Flow options
#-----------------------------------------------------------------------

# MVT step  selection
set rm_mvt_run_opt              "1"

# Metal fill insertion step selection
set rm_metal_fill_insertion      "1"

# RC Physical Prediction in synthesis
set rm_rc_physical      "1"

# Extra Opt In synthesis
set rm_synth_extra_opt      "1"

# Extra Opt In Implementation
set rm_extra_opt      "1"

# Pre Route Hold Fix
set rm_preroute_holdfix      "1"

# Balance all clocks externally
set rm_balance_clocks_externally      "1"

# Useful skew to minimise IO timing violations
set rm_skew_io      "1"

#create an extra rc path group for latches
set rm_latch_path_group "0"

#switch off low power commands
set rm_low_power_flow "0"

#rc corners to be used for optimizations
set rm_implementation_rc_corners "worst_case best_case"

#run dynamic power analysis or not
set rm_run_dynamic "0"

#number of cpu's to spread multi-threaded tasks over
set rm_parallel_cpus "0"

#-----------------------------------------------------------------------
# Synthesis options
#-----------------------------------------------------------------------

# Directory containing delivered RTL
set rm_rtl_inst_dir          "../../../../../logical"

# Define number of internal scan chains
set rm_no_of_chains          "4"

# Define names used for scan chain IO
set rm_scan_enable         SE         ;# Pin name for scan enable
set rm_scan_data_in        SI         ;# Pin name for scan in
set rm_scan_data_out       SO         ;# Pout name for scan out


# ----------------------------------------------------------------------------------------------------------------------
# Define design configuration parameters 
# ----------------------------------------------------------------------------------------------------------------------

# See Configuration and Signoff Guide for further details on setting these variables.

set rm_include_dbg            1     ;# Set to 0 if Debug Logic is not included in the RTL (parameter DBG = 0)
set rm_include_ahbslv         1     ;# Set to 0 if non AHB-Lite compliant SLV port is defined in the RTL (parameter AHBSLV = 0)
# ------------------------------------------------------------------------------
# Core Description
# ------------------------------------------------------------------------------

#the name of the top verilog module in the design
set rm_top_module             "CORTEXM0IMP"

#clock and reset port definitions
if { ${rm_include_dbg} || ${rm_include_ahbslv} } {
    set rm_clock_ports [list HCLK SCLK DCLK ] 
} else {
    set rm_clock_ports  [list HCLK SCLK ] 
}

set rm_reset_ports [list DBGRESETn HRESETn ]

# ------------------------------------------------------------------------------
# MMMC/Low Power Modes 
# ------------------------------------------------------------------------------

set rm_functional_modes default


