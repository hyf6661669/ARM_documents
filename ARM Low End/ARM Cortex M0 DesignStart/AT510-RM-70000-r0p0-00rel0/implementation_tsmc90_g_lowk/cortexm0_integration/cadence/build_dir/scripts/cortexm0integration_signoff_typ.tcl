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
# File Name      :cortexm0integration_signoff_typ.tcl
# RM Release     :RTL_VERSION
# Purpose        :encounter timing system typical script
#
# RM version     :7.1.2
# 
################################################################################

Puts "BEGIN SIGNOFF_TYP : [exec date]"

source ../scripts/cortexm0integration_config.tcl
#-----------------------------------------------------------------------
# Reading library models for timing and SI
#-----------------------------------------------------------------------
if {[info exists rm_skip_si_fixing] && [expr $rm_skip_si_fixing == 1]} {
    read_lib $rm_tech_cell_lib_tc
} else {
    read_lib $rm_tech_cell_lib_tc -cdb $rm_cdb_typ_cell_list
}

#-----------------------------------------------------------------------
# Reading final netlist
#-----------------------------------------------------------------------
read_verilog ../data/cortexm0integration_si_fixing.v

set_top_module $rm_top_module

set_dc_sources -global $rm_pvt_typ_v
set_dc_sources -power $rm_pwr_net_name
set_dc_sources -ground $rm_gnd_net_name

#-----------------------------------------------------------------------
# Reading design constraints  
#-----------------------------------------------------------------------
read_sdc  ../scripts/cortexm0integration_constraints_default_mode.sdc 

if {$rm_skew_io == "1"} {
    read_sdc ../data/cortexm0integration_post_route_skew_latency_typical_case_default.sdc
} else {
    read_sdc  ../data/cortexm0integration_post_route_latency_typical_case_default.sdc
}

set_clock_propagation propagated

#-----------------------------------------------------------------------
# Reading spef from sign-off extraction
#-----------------------------------------------------------------------
if {[file exists "../data/cortexm0integration_${rm_tc_extraction_corner}.spef.gz" ]} { 
   Puts "Reading spef from the file: ../data/cortexm0integration_${rm_tc_extraction_corner}.spef.gz"
   read_spef ../data/cortexm0integration_${rm_tc_extraction_corner}.spef.gz
} else { 
   Puts "Reading spef from the file: ../data/cortexm0integration.spef.gz"
   read_spef ../data/cortexm0integration.spef.gz
}

#-----------------------------------------------------------------------
# Checking the data which provides information about design
#-----------------------------------------------------------------------
check_design  -outdir    ../reports/signoff/signoff_${rm_tc_extraction_corner}_check_design
check_library -outfile   ../reports/signoff/signoff_${rm_tc_extraction_corner}_check_library.rpt
check_timing  -type loops > ../reports/signoff/signoff_${rm_tc_extraction_corner}_check_timing_loops.rpt
check_timing  -verbose > ../reports/signoff/signoff_${rm_tc_extraction_corner}_check_timing.rpt
report_ports >           ../reports/signoff/signoff_${rm_tc_extraction_corner}_report_ports.rpt

# Annotation
report_annotated_parasitics -list_not_annotated -max_missing 20000 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_spef_annotation.rpt

# Coverage
report_analysis_coverage -sort slack -verbose {untested violated} \
            > ../reports/signoff/signoff_${rm_tc_extraction_corner}_analysis_coverage.rpt

# Constraint reporting
report_constraint -all_violators > ../reports/signoff/signoff_${rm_tc_extraction_corner}_constraint.rpt

#-----------------------------------------------------------------------
# report design rule violations for capacitance, transition and fanout
# constraint violations
#-----------------------------------------------------------------------
report_design_rule -cap    -outfile ../reports/signoff/signoff_${rm_tc_extraction_corner}_check_cap_violations_drv.rpt
report_design_rule -tran   -outfile ../reports/signoff/signoff_${rm_tc_extraction_corner}_check_tran_violations_drv.rpt
report_design_rule -fanout -outfile ../reports/signoff/signoff_${rm_tc_extraction_corner}_check_fanout_violations_drv.rpt

#-----------------------------------------------------------------------
# OCV/CPPR settings being applied. Timing analysis is then run and timing
# results reported for all path groups. Then Noise Analysis is run to calculate
# the SI effects and a second set of timing reports are generated.
#-----------------------------------------------------------------------
set_timing_derate -early 1.0 -late 1.0

set_analysis_mode -cppr true -analysisType onChipVariation

set_op_cond -max $rm_tc_op_cond -maxLibrary $rm_tech_cell_lib_name_tc

#-----------------------------------------------------------------------
# setup report column format. customise as required.
#-----------------------------------------------------------------------
set_global report_timing_format {instance cell arc delay slew load arrival fanout instance_location net}

#-----------------------------------------------------------------------
# setup the path groups for reporting
#-----------------------------------------------------------------------
set_path_group -name reg2reg -from [all_registers] -to [all_registers]
set_path_group -name in2reg  -from [all_inputs]    -to [all_registers]
set_path_group -name reg2out -from [all_registers] -to [all_outputs]
set_path_group -name in2out  -from [all_inputs]    -to [all_outputs]

#-----------------------------------------------------------------------
# write out the timing windows file for power analysis
#-----------------------------------------------------------------------
write_twf ../data/cortexm0integration_${rm_tc_extraction_corner}.twf

write_sdf -version 3.0 \
  -collapse_internal_pins -celltiming all -delimiter / -edges noedge \
  -interconn all -merge_arcs -min_period_edges both -precision 3 \
  -process best -transform_out_to_out_arcs ../data/cortexm0integration_${rm_tc_extraction_corner}.sdf

#-----------------------------------------------------------------------
# report timing without SI and without IR drop
#-----------------------------------------------------------------------
#setup
report_timing -path_type end -late -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_setup.slk
report_timing -net -path_group reg2reg -late -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_reg2reg_setup.rpt
report_timing -net -path_group in2reg  -late -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_in2reg_setup.rpt
report_timing -net -path_group reg2out -late -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_reg2out_setup.rpt

# report the half cycle paths for setup timing
report_timing -clock_from [get_clocks] -edge_from trail -clock_to [get_clocks] -edge_to lead  -max_slack 0.0 -max_paths 1000 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_trail_to_lead_setup.rpt
report_timing -clock_from [get_clocks] -edge_from lead  -clock_to [get_clocks] -edge_to trail -max_slack 0.0 -max_paths 1000 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_lead_to_trail_setup.rpt

#hold
report_timing -path_type end -early -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_hold.slk
report_timing -net -path_group reg2reg -early -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_reg2reg_hold.rpt
report_timing -net -path_group in2reg  -early -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_in2reg_hold.rpt
report_timing -net -path_group reg2out -early -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_ocv_reg2out_hold.rpt

# report the top critical instances
report_critical_instance > ../reports/signoff/signoff_${rm_tc_extraction_corner}_critical_instance.rpt

# report the clock tree paramenters
report_clock_timing -type summary > ../reports/signoff/signoff_${rm_tc_extraction_corner}_clock_timing.rpt

if {[info exists rm_skip_si_fixing] && [expr $rm_skip_si_fixing == 1]} {
    Puts "Info: Skipping SI analysis since rm_skip_si_fixing = 1"
} else {
    Puts "Info: Running SI analysis"

    #-------------------------------------------------------------------
    # Run SI analysis
    #-------------------------------------------------------------------
    set_noise_run_mode -process $rm_noise_process -mode signoff
    set rm_delay_value [expr 1.0e-9 * $rm_delay_threshold]
    set_noise_thresh -delta_absolute $rm_delay_value
    set_tw_convergence

    #-------------------------------------------------------------------
    # write out the Noise model command files in the
    # <process_corner>_create_cdb directory
    #-------------------------------------------------------------------
    if [file exists ../data/${rm_tc_extraction_corner}_noise_models ] {
       puts "The directory ../data/${rm_tc_extraction_corner}_noise_models already exists"
    } else {
        exec mkdir ../data/${rm_tc_extraction_corner}_noise_models
    }
    if [file exists ./create_cdb] {
       puts "The directory create_cdb already exists"
    } else {
       exec mkdir create_cdb
    }
    # This command can only be run once per session
    save_cdb -gnd $rm_ground_pin_list -vdd $rm_power_pin_list \
      -file ${rm_top_module}_${rm_tc_extraction_corner}.cdB \
      -name $rm_top_module

    #-------------------------------------------------------------------
    # run noise analysis
    #-------------------------------------------------------------------
    analyze_noise -delay -quiet_mode

    #-------------------------------------------------------------------
    # run make_cdb to generate the Noise model for this process corner
    #-------------------------------------------------------------------
    exec make_cdb ./create_cdb/create_cdb.tcl
    # move the directory to a corner specific name to prevent overwriting
    # by other corners 
    exec cp ./create_cdb/${rm_top_module}_${rm_tc_extraction_corner}.cdB \
	   ../data/${rm_tc_extraction_corner}_noise_models

    #-------------------------------------------------------------------
    # report the noise net failures generate text summary and html
    # detailed path formats
    #-------------------------------------------------------------------
    report_noise -sort_by rcvr_peak -failure -html -hdir  \
        ../reports/signoff/signoff_${rm_tc_extraction_corner}_noise
        
    report_noise -sort_by rcvr_peak -failure -text -txtfile \
        ../reports/signoff/signoff_${rm_tc_extraction_corner}_noise/noise_results.txt -style summary

    report_double_clocking -file ../reports/signoff/signoff_${rm_tc_extraction_corner}_noise_double_clocking_check.rpt

    #-------------------------------------------------------------------
    # write out the Encounter ECO commands to fix the SI victim nets
    #-------------------------------------------------------------------
    write_noise_eco -format fe -separate_report -filename_prefix \
	 ../reports/signoff/signoff_${rm_tc_extraction_corner}_noise_eco_fixing

    #-------------------------------------------------------------------
    # update the report column format to include incremental SI delays
    #-------------------------------------------------------------------
    set_global report_timing_format {instance cell arc delay slew load arrival fanout instance_location net incr_delay}

    #-------------------------------------------------------------------
    # report timing with the SI effects included
    #-------------------------------------------------------------------
    #setup
    report_timing -path_type end -late -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_setup.slk
    report_timing -net -path_group reg2reg -late -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_reg2reg_setup.rpt
    report_timing -net -path_group in2reg  -late -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_in2reg_setup.rpt
    report_timing -net -path_group reg2out -late -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_reg2out_setup.rpt

    # report the half cycle paths for setup timing
    report_timing -clock_from [get_clocks] -edge_from trail -clock_to [get_clocks] -edge_to lead  -max_slack 0.0 -max_paths 1000 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_trail_to_lead_setup.rpt
    report_timing -clock_from [get_clocks] -edge_from lead  -clock_to [get_clocks] -edge_to trail -max_slack 0.0 -max_paths 1000 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_lead_to_trail_setup.rpt

    #hold
    report_timing -path_type end -early -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_hold.slk
    report_timing -net -path_group reg2reg -early -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_reg2reg_hold.rpt
    report_timing -net -path_group in2reg  -early -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_in2reg_hold.rpt
    report_timing -net -path_group reg2out -early -path_type full_clock -max_points 1000 -max_slack 0.0 > ../reports/signoff/signoff_${rm_tc_extraction_corner}_inc_si_reg2out_hold.rpt
}

Puts "END SIGNOFF_TYP : [exec date]"

exit

