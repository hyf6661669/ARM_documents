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
# File Name     : cortexm0imp_dmsa_link_design.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : PT-DMSA: script to link the CORTEXM0IMP
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

set link_path [list *]

# pointer to cell lib for driving cells
set driving_cell_lib ""

# Set a source latency on virtual clock(s). This uses median clock latency figures
# computed from IC Compiler route_opt step
source $sh_launch_dir/../data/CORTEXM0IMP-sta_virtual_clk_latencies.sdc

switch ${process} {
  rcbest
  -
  cworst { 
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${max_lib} ]
    }
    set driving_cell_lib ${rm_slow_rvt_lib_name}
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
  }

  rcworst
  -
  cbest {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${min_lib} ]
    }
    set driving_cell_lib ${rm_fast_rvt_lib_name}
    set driving_cell_lib ${rm_fast_rvt_lib_name}
    # Set virtual clock latencies approriate for best-corner
    set VCLK_clock_latency $VCLK_clock_latency_min
  }

  typical {
    foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
      set link_path [concat ${link_path} ${typ_lib} ]
    }
    set driving_cell_lib ${rm_typical_rvt_lib_name}
    # Set virtual clock latencies approriate for worst-corner
    set VCLK_clock_latency $VCLK_clock_latency_max
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
  }
}

# -----------------------------------------------------------------------------------
# Link The Design
# -----------------------------------------------------------------------------------

current_design CORTEXM0IMP
link_design -remove_sub_designs

set si_enable_analysis true
set si_xtalk_reselect_critical_path false

set enable_recovery_removal_arcs true
set timing_remove_clock_reconvergence_pessimism true

# -----------------------------------------------------------------------------------
# Annotate Extracted Parasitics / Set the operating conditions
# -----------------------------------------------------------------------------------

read_parasitics -keep_capacitive_coupling \
                -comp wlm \
                $sh_launch_dir/../data/CORTEXM0IMP_${process}.spef.gz

switch ${process} {
  rcbest
  -
  cworst {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_max_operating_condition \
                             -library $rm_slow_rvt_lib_name
    set_timing_derate -late  -clock -net_delay -cell_delay 1.0
    set_timing_derate -early -clock -net_delay -cell_delay [expr 1.0 - $rm_ocv_derate_factor ]
  }
  rcworst
  -
  cbest {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_min_operating_condition \
                             -library $rm_fast_rvt_lib_name
    set_timing_derate -late  -clock -net_delay -cell_delay [expr 1.0 + $rm_ocv_derate_factor ]
    set_timing_derate -early -clock -net_delay -cell_delay 1.0
  }
  typical {
    set_operating_conditions -analysis_type on_chip_variation \
                             $rm_typ_operating_condition \
                             -library $rm_typical_rvt_lib_name
    set_timing_derate -late  -clock -net_delay -cell_delay [expr 1.0 + ($rm_ocv_derate_factor/2) ]
    set_timing_derate -early -clock -net_delay -cell_delay [expr 1.0 - ($rm_ocv_derate_factor/2) ]
  }
}

report_annotated_parasitics -check \
                            -constant_arcs \
                            -list_not_annotated \
                            -max_nets 200 \
                            > $sh_launch_dir/../reports/dmsa/CORTEXM0IMP-${process}.annotated
