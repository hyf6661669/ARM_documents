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
# File Name      :cortexm0integration_qrc.tcl
# RM Release     :RTL_VERSION
# Purpose        :qrc extraction command file
#
# RM version     :7.1.2
# 
################################################################################

source ../scripts/cortexm0integration_config.tcl

extract \
      -selection all \
      -type rc_coupled \
      -use_field_solver high_accuracy

extraction_setup \
	 -technology_layer_map \
		"POLY1" "POLYCIDE" \
		"M1" "METAL_1" \
		"VIA1" "VIA_1" \
		"M2" "METAL_2" \
		"VIA2" "VIA_2" \
		"M3" "METAL_3" \
		"VIA3" "VIA_3" \
		"M4" "METAL_4" \
		"VIA4" "VIA_4" \
		"M5" "METAL_5" \
		"VIA5" "VIA_5" \
		"M6" "METAL_6" \
		"VIA6" "VIA_6" \
		"M7" "METAL_7" \
		"VIA7" "VIA_7" \
		"M8" "METAL_8" \
		"VIA8" "VIA_8" \
		"M9" "METAL_9" \
	-max_fracture_length 50
filter_coupling_cap \
	 -coupling_cap_threshold_absolute 5 \
	 -coupling_cap_threshold_relative 0.05
graybox \
	 -type "LEF_OBSTRUCTION"
input_db -type def \
	 -lef_file_list \
         "$rm_qrc_lef_list"
log_file \
	 -dump_options true \
	 -file_name "../logs/cortexm0integration_qrc.log" \
	 -max_warning_messages 10000 \
	 -max_error_messages 1000
metal_fill \
	 -type "FLOATING"
output_db -type spef \
	 -busbit_delimiter "\[\]" \
	 -hierarchy_delimiter "/" \
	 -output_incomplete_nets true \
	 -pin_delimiter ":" \
	 -subtype "CELTICNDC"
output_setup \
	 -compressed true \
	 -directory_name "../data" \
	 -file_name "cortexm0integration"
parasitic_reduction \
	 -enable_reduction false
process_technology \
	 -technology_library_file "./../../../../design_kits/${rm_process_provider}/${rm_process_version}/${rm_process_option}/corner.defs" \
	 -technology_name "tsmc90g" \
	 -technology_corner "$rm_wc_extraction_corner $rm_bc_extraction_corner $rm_tc_extraction_corner"



