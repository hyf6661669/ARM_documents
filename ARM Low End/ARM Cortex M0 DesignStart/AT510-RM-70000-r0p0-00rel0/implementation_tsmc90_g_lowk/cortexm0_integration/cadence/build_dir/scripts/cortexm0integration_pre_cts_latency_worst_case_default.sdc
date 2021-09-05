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
#
# File Name     : cortexm0integration_pre_cts_latency_worst_case_default.sdc
# 
# Purpose       : Clock latency definitions used to overconstrain in synthesis and pre-cts 
#
# $Revision: 1.0 $
#
################################################################################

set_clock_latency -late -source $rm_clock_latency_max_HCLK [get_clocks {HCLK}  ]
set_clock_latency -late -source $rm_clock_latency_max_HCLK [get_clocks {VHCLK} ]
set_clock_latency -early -source [expr $rm_clock_latency_max_HCLK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {HCLK}  ]
set_clock_latency -early -source [expr $rm_clock_latency_max_HCLK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {VHCLK} ]

set_clock_latency -late -source $rm_clock_latency_max_SCLK [get_clocks {SCLK}  ]
set_clock_latency -late -source $rm_clock_latency_max_SCLK [get_clocks {VSCLK} ]
set_clock_latency -early -source [expr $rm_clock_latency_max_SCLK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {SCLK}  ]
set_clock_latency -early -source [expr $rm_clock_latency_max_SCLK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {VSCLK} ]

if {$rm_include_wic == "1"} {
set_clock_latency -late -source $rm_clock_latency_max_FCLK [get_clocks {FCLK}  ]
set_clock_latency -late -source $rm_clock_latency_max_FCLK [get_clocks {VFCLK} ]
set_clock_latency -early -source [expr $rm_clock_latency_max_FCLK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {FCLK}  ]
set_clock_latency -early -source [expr $rm_clock_latency_max_FCLK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {VFCLK} ] }

if {$rm_include_dbg == "1" } {
	set_clock_latency -late -source $rm_clock_latency_max_DCLK [get_clocks {DCLK}  ]
	set_clock_latency -late -source $rm_clock_latency_max_DCLK [get_clocks {VDCLK} ]
	set_clock_latency -early -source [expr $rm_clock_latency_max_DCLK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {DCLK}  ]
	set_clock_latency -early -source [expr $rm_clock_latency_max_DCLK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {VDCLK} ]
	
	set_clock_latency -late -source $rm_clock_latency_max_SWCLKTCK [get_clocks {SWCLKTCK}  ]
	set_clock_latency -late -source $rm_clock_latency_max_SWCLKTCK [get_clocks {VSWCLKTCK} ]
	set_clock_latency -early -source [expr $rm_clock_latency_max_SWCLKTCK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {SWCLKTCK}  ]
set_clock_latency -early -source [expr $rm_clock_latency_max_SWCLKTCK * (1 - $rm_pre_cts_clock_latency_margin)] [get_clocks {VSWCLKTCK} ] }
