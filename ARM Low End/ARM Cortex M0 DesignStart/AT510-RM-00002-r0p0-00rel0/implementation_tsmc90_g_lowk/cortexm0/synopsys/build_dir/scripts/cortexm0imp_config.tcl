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
# File Name     : cortexm0imp_config.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Configuration file for the CORTEXM0IMP
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

# -----------------------------------------------------------------------------------
# Power Analysis Flow Configuration Parameters
# -----------------------------------------------------------------------------------

set rm_use_vcd_for_pp     0        ;# Use a vcd for power calculation in PrimePower
set rm_pp_activity        0.25     ;# Node activity for PP, valid values 0->1

# ----------------------------------------------------------------------------------------------------------------------
# Define design configuration parameters
# ----------------------------------------------------------------------------------------------------------------------

# See RM User Guide & Configuration and Signoff Guide for further details on setting these variables.

set rm_include_dbg            1     ;# Set to 0 if Debug Logic is not included in the RTL (parameter DBG = 0)
set rm_include_ahbslv         1     ;# Set to 0 if non AHB-Lite compliant SLV port is defined in the RTL (parameter AHBSLV = 0)

# -----------------------------------------------------------------------------------
# DFT Flow Configuration Parameters
# -----------------------------------------------------------------------------------

set rm_num_scan_chains     4       ;# Number of scan chains to be inserted
set rm_create_test_wrapper 0        ;# Create a test wrapper for CORTEXM0IMP 
set rm_num_wrap_chains     2        ;# Number of wrapper chains to be inserted
set rm_use_scan_comp       0        ;# Use DFT-MAX scan pattern compression
set rm_comp_ratio          10       ;# Compression ratio
set rm_comp_xtolerance     default  ;# X-tolerant compression on/off (options: default(off) / high)
set rm_comp_min_power      false    ;# enable low-power compression logic
set rm_low_power_atpg      false    ;# enable low-power ATPG features
set rm_atpg_power_budget   25       ;# Defines switching budget for ATPG - 25%

# -----------------------------------------------------------------------------------
# Define DFT Port Names
# -----------------------------------------------------------------------------------

set rm_scan_data_in       SI         ;# Name of internal scan data in ports
set rm_scan_data_out      SO         ;# Name of internal scan data out ports
set rm_comp_enable        COMP_EN    ;# Name of compression enable port

set rm_wrp_clock          WCLK       ;# Name of test wrapper clock port
set rm_wrp_ishift         WSEIN      ;# Name of test wrapper input scan enable port
set rm_wrp_oshift         WSEOUT     ;# Name of test wrapper output scan enable port
set rm_wrp_mode1          WRP_MODE1  ;# Name of test wrapper intest port
set rm_wrp_mode2          WRP_MODE2  ;# Name of test wrapper extest port
set rm_wrp_si             WSI        ;# Name of test wrapper scan data in port for input test wrapper chains
set rm_wrp_so             WSO        ;# Name of test wrapper scan data out port for input test wrapper chains

# -----------------------------------------------------------------------------------
# ICC Flow Configuration Parameters
# -----------------------------------------------------------------------------------

set rm_use_mcmm           0          ;# Enable Multi-Corner, Multi-Mode optimization

set rm_use_zroute         1          ;# Enable ZRoute

# -----------------------------------------------------------------------------------
# Implementation Configuration Parameters
# -----------------------------------------------------------------------------------

set rm_use_multivt        1          ;# Enable use of multiple threshold voltage standard cells. 

# -----------------------------------------------------------------------------------
# Clock Definitions
# -----------------------------------------------------------------------------------

if {${rm_create_test_wrapper} } {
  set rm_clock_ports [concat ${rm_wrp_clock} ${rm_clock_ports} ]
}


if {${rm_include_dbg} || ${rm_include_ahbslv} } {
    set rm_clock_ports [concat ${rm_clock_ports} DCLK ]
}




# end
