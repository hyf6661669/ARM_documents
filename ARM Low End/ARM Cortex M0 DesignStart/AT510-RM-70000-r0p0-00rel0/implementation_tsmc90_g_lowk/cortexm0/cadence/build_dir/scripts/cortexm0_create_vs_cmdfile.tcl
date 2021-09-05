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
# File Name      :cortexm0_create_vs_cmdfile.tcl
# RM Release     :RTL_VERSION
# Purpose        :procedure to create voltage storm command file inside encounter
#
# RM version     :7.1.2
# 
################################################################################
#############################################################################################
#  Script:  create_vs_cmdfile.tcl
#  creates a voltagestorm command file for static power analysis
#  using the variables from config.tcl
#############################################################################################

proc create_vs_cmdfile {} {

  set rm_ir_limit 0.01
   
  source ../scripts/cortexm0_config.tcl
  
  set file_name "./cortexm0_vs_static.cmd"
  set cmdFile [open $file_name w]
  
  set vdd_ir_limit [expr ($rm_pvt_typ_v * (1 - $rm_ir_limit))] 
  set vss_ir_limit [expr ($rm_pvt_typ_v * $rm_ir_limit)]
   
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "# VoltageStorm command file for Signoff static power analysis"
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "setvar output_directory_name \"../data\""
  puts $cmdFile "setvar work_directory_name \"./vstorm_tc\""
  puts $cmdFile " "
  puts $cmdFile "# use signoff_verification mode when the layout is LVS clean"
  puts $cmdFile "#setvar operation_mode signoff_verification"
  puts $cmdFile "setvar operation_mode early_verification"
  puts $cmdFile " "
  puts $cmdFile "# load the library information"
  puts $cmdFile "cell_library \\"
  foreach library ${rm_vstorm_cell_lib} {
    set line "          $library \\"
    puts $cmdFile $line
  }
  puts $cmdFile " "  
  puts $cmdFile "use_cell_view pattern * port"
  puts $cmdFile " "
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "# define the power calculation tool as powermeter"
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "setvar power_calculator powermeter"
  puts $cmdFile " "
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "# define the timing libraries for the cells"
  puts $cmdFile "# the third entry on the line is the required operating condition"
  puts $cmdFile "#-----------------------------------------------------------------------"

  foreach library ${rm_tech_cell_lib_tc} {
    set line "timing_library ${library} ${rm_tc_op_cond}"
    puts $cmdFile $line
  }
  puts $cmdFile " "
  puts $cmdFile "# setup default signal parameters"
  puts $cmdFile "setvar default_transition_time 0.153846"
  puts $cmdFile "setvar default_input_duty_cycle 0.5"
  puts $cmdFile "setvar default_input_activity 0.2"
  puts $cmdFile " "
  puts $cmdFile "power_pin_supply_tolerance 0.0 1.9"
  puts $cmdFile " "
  puts $cmdFile "# define the temperature of the analysis"
  puts $cmdFile "setvar temperature $rm_pvt_typ_t"
  puts $cmdFile " "
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "# The following line reads in a vstorm format em modelling file,"
  puts $cmdFile "# if it exists, to run current density analysis on the power"
  puts $cmdFile "# rails. The syntax for the required model commands in this"
  puts $cmdFile "# file is detailed in the VoltageStormPE Command Reference Manual"
  puts $cmdFile "#-----------------------------------------------------------------------"

  if [file exists ../scripts/cortexm0_vstorm_models.em ] {
      puts $cmdFile "include ../scripts/cortexm0_vstorm_models.em"
  } else {
      puts $cmdFile "# include ../scripts/cortexm0_vstorm_models.em"
  }
   
  puts $cmdFile " "
  puts $cmdFile "# load the layout"
  puts $cmdFile "layout_file ../data/cortexm0_si_fixing.def"
  puts $cmdFile " "
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "# load the design constraints, parasitics and the timing window file"
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "setvar sdc_file  ../data/cortexm0_power_analysis_tc.sdc"
  puts $cmdFile " "
  if [file exists ../data/cortexm0_typical.spef.gz ] {
      puts $cmdFile "parasitic_file     ../data/cortexm0_typical.spef.gz"
  } else {
      puts $cmdFile "parasitic_file     ../data/cortexm0.spef.gz"
  }
  puts $cmdFile "timing_window_file ../data/cortexm0_typical.twf"
  puts $cmdFile " "
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "# run Powermeter in static mode to calculate the power"
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "calculate_power $rm_clock_frequency $rm_pvt_typ_v"
  puts $cmdFile " " 
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "# static analysis for $rm_pwr_net_name supply rail"
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "setvar powerpin_location_file ../data/cortexm0_${rm_pwr_net_name}.vsrc"
  puts $cmdFile "#current_data_file ./vstorm_tc/pmtmp/static_${rm_pwr_net_name}.ptiavg"
  puts $cmdFile " "
  puts $cmdFile "analyze $rm_pwr_net_name $rm_pvt_typ_v avg ${vdd_ir_limit} ir iv rj rc tc vc vv label=${rm_pwr_net_name}_static_tc"
  puts $cmdFile " "
  puts $cmdFile "# generate the power view of ${rm_top_module} for hierarchical analysis"
  puts $cmdFile "generate_view ${rm_top_module} ../data/cortexm0_pg.lef ../data/cortexm0_Power_${rm_pwr_net_name} { abstract }"
  puts $cmdFile " "
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "# static analysis for $rm_gnd_net_name rail"
  puts $cmdFile "#-----------------------------------------------------------------------"
  puts $cmdFile "current_data_file reset"
  puts $cmdFile " "
  puts $cmdFile "setvar powerpin_location_file ../data/cortexm0_${rm_gnd_net_name}.vsrc"
  puts $cmdFile "current_data_file ./vstorm_tc/pmtmp/static_${rm_gnd_net_name}.ptiavg"
  puts $cmdFile " "
  puts $cmdFile "analyze $rm_gnd_net_name 0.0 avg ${vss_ir_limit} ir iv rj rc tc vc vv label=${rm_gnd_net_name}_static_tc"
  puts $cmdFile " "
  puts $cmdFile "# generate the power view of ${rm_top_module} for hierarchical analysis"
  puts $cmdFile "generate_view ${rm_top_module} ../data/cortexm0_pg.lef ../data/cortexm0_Power_${rm_gnd_net_name} { abstract }"
  puts $cmdFile " "

  close $cmdFile
}
