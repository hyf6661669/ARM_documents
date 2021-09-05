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
# File Name      :cortexm0_atpg.sh
# RM Release     :RTL_VERSION
# Purpose        :script to append the core specific and library specific values
#                 to the main atpg configuration file
#
# RM version     :7.1.2
# 
################################################################################

source ../scripts/cortexm0_config.tcl

set atpg_conf_file [open ../scripts/cortexm0_atpg.config a]

puts  $atpg_conf_file "TECHLIB=[join ${rm_atpg_lib_ver} ","]"
puts  $atpg_conf_file "                                      # specify fully qualified name of technology libraries"
puts  $atpg_conf_file "                                      #   (optional)"
puts  $atpg_conf_file "                                      #"
puts  $atpg_conf_file "TOPCELL=$rm_top_module"
puts  $atpg_conf_file "                                      # specfify top level design cell (optional)"
puts  $atpg_conf_file "                                      # (if not specified, ET will choose last cell"
puts  $atpg_conf_file "                                      #  in the design source)"
puts  $atpg_conf_file "DESIGNSOURCE=../data/cortexm0_si_fixing.enc.dat/${rm_top_module}.v"
puts  $atpg_conf_file "                                      # specify fully qualified name of netlist (required)"
puts  $atpg_conf_file "                                      #"

close $atpg_conf_file

exit
