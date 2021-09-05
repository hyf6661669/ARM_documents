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
# File Name     : cortexm0integrationimp_verilog.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Verilog RTL definition file for the CORTEXM0INTEGRATIONIMP
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

# ----------------------------------------------------------------------------------
# Add CORTEXM0 RTL to search path
# ----------------------------------------------------------------------------------


set cortexm0_verilog    ../../../../../logical

set search_path [ concat $search_path $cortexm0_verilog/cortexm0_integration/verilog ]
set search_path [ concat $search_path $cortexm0_verilog/cortexm0/verilog ]
set search_path [ concat $search_path $cortexm0_verilog/cortexm0_dap/verilog ]


# Replace or remove the following path which references the instantiated
# clock-gating cells, etc. 
if { $rm_task == "synthesis" } {
set search_path [ concat $search_path ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2 ]
}

set search_path [ concat $search_path $cortexm0_verilog/models/cells ]
set search_path [ concat $search_path ../../../misc/wrappers/fe_tsmc090g_sc-adv_v10_2007q4v2 ]

# -----------------------------------------------------------------------------------
# Group the CORTEXM0 RTL
# -----------------------------------------------------------------------------------

set imp_wrapper [ list \
		  CORTEXM0INTEGRATIONIMP.v ]

set cortexm0cells     [ list \
                        cm0_acg.v \
                        cm0_dbg_reset_sync.v \
                        cm0_dap_cdc_send_data.v \
                        cm0_dap_cdc_capt_sync.v \
                        cm0_dap_cdc_send_addr.v \
                        cm0_dap_cdc_send.v \
                        cm0_dap_cdc_comb_and_data.v \
                        cm0_dap_cdc_send_reset.v \
                        cm0_dap_cdc_comb_and_addr.v \
                        cm0_dap_jt_cdc_comb_and.v \
                        cm0_dap_cdc_comb_and.v \
                        cm0_dap_sw_cdc_capt_reset.v ]

set cortexm0_integration [ list \
			   CORTEXM0INTEGRATION.v \
			   cortexm0_wic.v ]

set cortexm0 [ list \
	       CORTEXM0.v \
               cm0_top.v \
               cm0_top_clk.v \
               cm0_top_sys.v \
               cm0_core.v \
               cm0_core_alu.v \
               cm0_core_ctl.v \
               cm0_core_dec.v \
               cm0_core_gpr.v \
               cm0_core_mul.v \
               cm0_core_pfu.v \
               cm0_core_psr.v \
               cm0_core_spu.v \
               cm0_matrix.v \
               cm0_matrix_sel.v \
               cm0_nvic.v \
               cm0_nvic_reg.v \
               cm0_nvic_main.v ]

set cortexm0_dbg [ list \
		   cm0_top_dbg.v \
                   cm0_dbg_bpu.v \
                   cm0_dbg_ctl.v \
                   cm0_dbg_dwt.v \
                   cm0_dbg_if.v \
                   cm0_dbg_sel.v ]

set cortexm0_dap [ list \
                   CORTEXM0DAP.v \
                   cm0_dap_dp_pwr.v \
                   cm0_dap_dp_cdc.v \
                   cm0_dap_dp.v \
                   cm0_dap_ap_mast.v \
                   cm0_dap_ap_cdc.v \
                   cm0_dap_ap.v \
                   cm0_dap_dp_jtag.v \
                   cm0_dap_dp_sw.v ]


set rtl_image [ concat $imp_wrapper $cortexm0_integration $cortexm0cells $cortexm0 $cortexm0_dbg $cortexm0_dap]
