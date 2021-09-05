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
# RM Version: CORTEXM0INTEGRATION Encounter7.1usr2 RTL_VERSION
################################################################################
# File Name      :cortexm0integration_verilog.tcl
# RM Release     :RTL_VERSION
# Purpose       : verilog read file
#
# RM version     :7.1.2
#
################################################################################

# -----------------------------------------------------------------------------------------------------------------
# Add cortexm0integration RTL to search path
# -----------------------------------------------------------------------------------------------------------------

set_attr hdl_search_path [list \
 $rm_rtl_inst_dir/cortexm0_integration/verilog \
 $rm_rtl_inst_dir/cortexm0_dap/verilog \
 $rm_rtl_inst_dir/cortexm0/verilog \
 $rm_rtl_inst_dir/models/cells  ]

# -----------------------------------------------------------------------------------
# Group the cortexm0integration RTL
# -----------------------------------------------------------------------------------

set cortexm0_integration [ list \
			CORTEXM0INTEGRATION.v \
			cortexm0_wic.v ]

set cortexm0 [ list \
	    CORTEXM0.v \
	    cm0_top.v \
	    cm0_top_clk.v \
	    cm0_matrix.v \
	    cm0_matrix_sel.v \
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
	    cm0_nvic.v \
	    cm0_nvic_reg.v \
	    cm0_nvic_main.v ]

set cortexm0_dbg [ list \
		cm0_top_dbg.v \
		cm0_dbg_bpu.v \
		cm0_dbg_ctl.v \
		cm0_dbg_if.v \
		cm0_dbg_sel.v \
		cm0_dbg_dwt.v ]


set cortexm0_dap [ list \
                CORTEXM0DAP.v \
                cm0_dap_ap.v \
                cm0_dap_ap_cdc.v \
                cm0_dap_dp_cdc.v  \
                cm0_dap_ap_mast.v \
                cm0_dap_dp.v \
                cm0_dap_dp_jtag.v \
                cm0_dap_dp_sw.v \
                cm0_dap_dp_pwr.v ] 



set cortexm0_model_cells [ list cm0_acg.v \
                             cm0_dap_cdc_comb_and_data.v \
                             cm0_dap_jt_cdc_comb_and.v \
                             cm0_dap_cdc_comb_and_addr.v \
                             cm0_dap_cdc_comb_and.v \
                             cm0_dap_cdc_send_addr.v \
                             cm0_dap_cdc_send.v \
                             cm0_dbg_reset_sync.v \
                             cm0_dap_cdc_send_reset.v \
                             cm0_dap_cdc_send_data.v \
                             cm0_dap_cdc_capt_sync.v \
                             cm0_dap_sw_cdc_capt_reset.v ]

set misc_models_cells [ list ../../../misc/wrappers/fe_tsmc090g_sc-adv_v10_2007q4v2/CORTEXM0INTEGRATIONIMP.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_acg.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_cdc_comb_and_data.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_jt_cdc_comb_and.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_cdc_comb_and_addr.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_cdc_comb_and.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_cdc_send_addr.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_cdc_send.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dbg_reset_sync.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_cdc_send_reset.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_cdc_send_data.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_cdc_capt_sync.v \
                             ../../../misc/cells/fe_tsmc090g_sc-adv_v10_2007q4v2/cm0_dap_sw_cdc_capt_reset.v ] 



set hdl_file_list [ concat $cortexm0_integration $cortexm0 $cortexm0_dbg $cortexm0_dap $cortexm0_model_cells $misc_models_cells ]
