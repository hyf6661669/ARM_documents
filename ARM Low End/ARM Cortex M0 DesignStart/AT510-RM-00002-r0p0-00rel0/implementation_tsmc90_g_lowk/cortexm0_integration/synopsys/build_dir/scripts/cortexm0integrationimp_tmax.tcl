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
# File Name     : cortexm0integrationimp_tmax.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : TMAX script for the CORTEXM0INTEGRATIONIMP 
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

date
exec hostname
set rm_task     tmax

# -------------------------------------------------------------------------------
# Setup the Configuration
# -------------------------------------------------------------------------------

source -echo -verbose ../scripts/core_config.tcl
source -echo -verbose ../scripts/cortexm0integrationimp_config.tcl

# -------------------------------------------------------------------------------
# Setup the Target Technology
# -------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0integrationimp_tech.tcl

# ------------------------------------------------------------------------------
#  Choose the appropriate protocol file
# ------------------------------------------------------------------------------
if { ${rm_use_scan_comp} } {
  # NOTE: Needs DFT-MAX license
  set protocol_file "../data/CORTEXM0INTEGRATIONIMP-ScanCompression.spf"
  set atpg_mode "ScanComp"
} else {
  if { ${rm_create_test_wrapper} } {
    set protocol_file "../data/CORTEXM0INTEGRATIONIMP-InternalTest.spf"
    set atpg_mode "TestWrap"
  } else {
    set protocol_file "../data/CORTEXM0INTEGRATIONIMP-InternalScan.spf"
    set atpg_mode "Scan"
  }
}

# ------------------------------------------------------------------------------
#  Prevent script from stopping or exiting on errors
# ------------------------------------------------------------------------------

set_command noabort

# ------------------------------------------------------------------------------
#  Identify Name and Location of Transcript
# ------------------------------------------------------------------------------

set_messages -replace -log ../logs/tmax_${atpg_mode}

# ------------------------------------------------------------------------------
#  Read in the Tetramax models for the standard cells
# ------------------------------------------------------------------------------

foreach tmax_verilog_lib $rm_tmax_verilog_libs {
  read_netlist -library -f verilog $tmax_verilog_lib
}

# ------------------------------------------------------------------------------
#  Read in the Verilog netlist for the CORTEXM0INTEGRATIONIMP
# ------------------------------------------------------------------------------

read_netlist -f verilog ../data/CORTEXM0INTEGRATIONIMP.v

# ------------------------------------------------------------------------------
#  Check the design
# ------------------------------------------------------------------------------

report_modules -summary
report_modules -error

# ------------------------------------------------------------------------------
#  If working with fault coverage, gates should not be removed during Build
# ------------------------------------------------------------------------------

set_build -nodelete_unused_gates

# ------------------------------------------------------------------------------
#  Build the CORTEXM0INTEGRATIONIMP
# ------------------------------------------------------------------------------

run_build CORTEXM0INTEGRATIONIMP

# ------------------------------------------------------------------------------
#  Enable low-power ATPG
# ------------------------------------------------------------------------------
if { ${rm_low_power_atpg} } {
    # Reduce chain test toggle rate to 25%
    set_atpg -fill adjacent
    set_atpg -chain_test 00001111R
    set_drc -low_power
}

# ------------------------------------------------------------------------------
# Define clock constraints for At-Speed ATPG
# ------------------------------------------------------------------------------

set_delay -allow_multiple_common_clocks
set_delay -common_launch_capture_clock
set_delay -disturb

# ------------------------------------------------------------------------------
#  Resets and scan enable are not at-speed signals - so constrained to off
# ------------------------------------------------------------------------------

add_pi_constraint 0 $rm_scan_enable

# If wrapper is present: enable input wrapper chain for shift,
# and disable output wrapper chain.

if { $rm_create_test_wrapper } {
add_pi_constraint 1 $rm_wrp_ishift
add_pi_constraint 0 $rm_wrp_oshift
}

add_pi_constraint 1 $rm_reset_ports

# ------------------------------------------------------------------------------
#  Masking all primary outputs, so they are not tested at speed
# ------------------------------------------------------------------------------

add_po_masks -all

# ------------------------------------------------------------------------------
# Source any Path Delay timing exceptions from Primetime
# ------------------------------------------------------------------------------

source ../data/CORTEXM0INTEGRATIONIMP-${rm_process_corner}_pathdelay_exceptions.tcl

# ------------------------------------------------------------------------------
#  Run a Test DRC with the protocol file from DFT Compiler
# ------------------------------------------------------------------------------

run_drc ${protocol_file}

# ------------------------------------------------------------------------------
#  Save the TMAX Image for path delay testing
# ------------------------------------------------------------------------------

write_image ../data/CORTEXM0INTEGRATIONIMP-${atpg_mode}_path.img -replace -violations -netlist_data

# ------------------------------------------------------------------------------
#  Report on the CORTEXM0INTEGRATIONIMP
# ------------------------------------------------------------------------------

report_rules          -fail     > ../reports/dft/CORTEXM0INTEGRATIONIMP-fail_${atpg_mode}.tmax
report_nonscan_cells  -all      > ../reports/dft/CORTEXM0INTEGRATIONIMP-nonscan_${atpg_mode}.tmax
report_bus            -summary  > ../reports/dft/CORTEXM0INTEGRATIONIMP-bus_${atpg_mode}.tmax
report_feedback_paths -summary  > ../reports/dft/CORTEXM0INTEGRATIONIMP-feedback_${atpg_mode}.tmax
report_violation -all           > ../reports/dft/CORTEXM0INTEGRATIONIMP-violations_${atpg_mode}.tmax

# Clock-gating report: Analyses CG latches associated with each clock domain
if { ${rm_low_power_atpg} } {
    report_clocks -gating -verbose  > ../reports/dft/CORTEXM0INTEGRATIONIMP-clock_gating_${atpg_mode}.tmax
}

# ------------------------------------------------------------------------------
#  Define ATPG switching budget
# NOTE: Only applies to Basic and Fast-Seq. ATPG
# ------------------------------------------------------------------------------
if { ${rm_low_power_atpg} } {
    set_atpg -power_budget ${rm_atpg_power_budget}
}

# ------------------------------------------------------------------------------
#  Run ATPG for Path Delay Faults
# ------------------------------------------------------------------------------

# Set fault model to PathDelay
set_faults -model path_delay -fault_coverage

# Read the paths to be sensitized - as generated by Primetime
add_delay_paths ../data/CORTEXM0INTEGRATIONIMP-${rm_process_corner}_pathdelay.cmd

# Do not allow PI's or PO's to change during at-speed test
set_delay -nopi_changes -nopo_measures

# Use system clock launch only
set_delay -launch_cycle system_clock

add_faults -all

set_atpg -full_seq_merge medium
run_atpg full_sequential_only -auto

report_faults   -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-path_faults_${atpg_mode}.tmax
report_patterns -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-path_patterns_${atpg_mode}.tmax
report_patterns -all -type  > ../reports/dft/CORTEXM0INTEGRATIONIMP-path_pattern_type_${atpg_mode}.tmax

write_patterns ../data/CORTEXM0INTEGRATIONIMP-path_${atpg_mode}.bin.gz \
    -replace -format binary -compress gzip

# Write out IEEE 1450 compliant patterns (STIL)
# For compression based patterns only, serial/parallel format needs to be explicitly defined
if { $atpg_mode == "ScanComp" } {
  write_patterns ../data/CORTEXM0INTEGRATIONIMP-path_serial_${atpg_mode}.stil \
      -replace -format stil -serial
} else {
  write_patterns ../data/CORTEXM0INTEGRATIONIMP-path_${atpg_mode}.stil \
      -replace -format stil
}

# Optionally write out WGL patterns
# write_patterns ../data/CORTEXM0INTEGRATIONIMP-path_${atpg_mode}.wgl.gz \
#     -replace -format wgl -compress gzip

write_fault ../data/CORTEXM0INTEGRATIONIMP-path_all_${atpg_mode}.dat -all -replace

# ------------------------------------------------------------------------------
#  Run ATPG for SDD + transition faults
# ------------------------------------------------------------------------------

# Go back to DRC to remove Path Delay based exceptions
drc -force
remove_slow_cell -all
remove_capture_mask -all

# Read SDC for testmode timing exceptions
read_sdc ../data/CORTEXM0INTEGRATIONIMP-${rm_process_corner}_testmode.sdc

# Enables fast-seq algorithm for LETE logic
# Uncomment if seeing poor coverage on leading-edge-to-trailing-edge logic
# set_atpg -lete_fastseq

# Re-run DRC checks
run_drc ${protocol_file}

# Save image for SDD + transition ATPG
write_image ../data/CORTEXM0INTEGRATIONIMP-${atpg_mode}_sdd_td.img -replace -violations -netlist_data

set_faults -model transition -fault_coverage

# Add faults only for intra clock domain paths - only these are to be tested
add_faults -intra_clock_domain
set_faults -summary verbose

# Read pin slack data for SDD faults as generated by PrimeTime
if {[file exists ../data/CORTEXM0INTEGRATIONIMP-${rm_process_corner}_timing_slacks.dat ]} {
    # Check that slack data does not have paths that do not meet timing
    set_delay -negative_slack_checks
     read_timing ../data/CORTEXM0INTEGRATIONIMP-${rm_process_corner}_timing_slacks.dat
    ## Consider only 30% of faults for SDD
    set_delay -max_tmgn 30%
    set_atpg -basic_min_detects_per_pattern 1 -fast_min_detects_per_pattern 1
} else {
    echo "RM INFO: Slack Data not available: Small Delay Defect ATPG not run during Transition ATPG"
}

# Run combined SDD and Transition first
set_atpg -abort 1000 -merge [list high high] -nofull_seq_atpg
run_atpg -auto

# Now perform Fast-Seq ATPG
set_atpg -capture 8 -abort 1000 -merge [list high high]
run_atpg -auto

report_faults   -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-sdd_faults_${atpg_mode}.tmax
report_patterns -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-sdd_patterns_${atpg_mode}.tmax
report_patterns -all -type  > ../reports/dft/CORTEXM0INTEGRATIONIMP-sdd_pattern_type_${atpg_mode}.tmax

# Report switching activity on patterns
if { ${rm_low_power_atpg} } {
    report_power -percentage 
}



# ------------------------------------------------------------------------------
# Normally, coverage is sufficient without requiring 
# full sequential ATPG. The following pair of commands
# can be un-commented if required
# NOTE: Full sequential for Transition ATPG does not support SDC timing exceptions
# NOTE: Full sequential patterns cannot be fault simulated for bridging faults
# ------------------------------------------------------------------------------
# set_atpg -full_seq_merge medium -full_seq_atpg
# run_atpg full_sequential_only

# report_faults   -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-sdd_td_faults_${atpg_mode}.tmax
# report_patterns -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-sdd_td_patterns_${atpg_mode}.tmax
# report_patterns -all -type  > ../reports/dft/CORTEXM0INTEGRATIONIMP-sdd_td_pattern_type_${atpg_mode}.tmax

# Save SDD + Transition patterns and faults
write_fault ../data/CORTEXM0INTEGRATIONIMP-sdd_td_all_${atpg_mode}.dat -all -replace

# Temporarily write patterns in binary format for use later in flow
write_patterns ../data/CORTEXM0INTEGRATIONIMP-sdd_td_${atpg_mode}.bin.gz \
    -replace -format binary -compress gzip

# Optionally write out WGL patterns
# write_patterns ../data/CORTEXM0INTEGRATIONIMP-sdd_td_${atpg_mode}.wgl.gz \
#     -replace -format wgl -compress gzip

if {[file exists ../data/CORTEXM0INTEGRATIONIMP-${rm_process_corner}_timing_slacks.dat ]} {
    ## Now turn off use of slack data
    set_delay -noslackdata_for_atpg
    set_delay -noslackdata_for_faultsim
}

# ------------------------------------------------------------------------------
#  Run Dynamic Bridge Fault Simulation on at-speed patterns for Dynamic Bridge
#  coverage
# ------------------------------------------------------------------------------

# Change fault model to dynamic bridge
remove_faults -all
set_faults -model dynamic_bridging

# Allow instance input pins to be valid victim sites
set_faults -bridge_inputs

# Optimize bridge strengths during ATPG
set_atpg -optimize_bridge_strengths

# Read in transition and SDD patterns
set_patterns -external ../data/CORTEXM0INTEGRATIONIMP-sdd_td_${atpg_mode}.bin.gz

# Read in bridging faults
add_faults -node_file ../data/CORTEXM0INTEGRATIONIMP_typ.coupling_rpt

# Run fault sim
run_fault_sim

# Now report stuck-at coverage produced by at-speed patterns
report_faults -summary > ../reports/dft/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_faults_${atpg_mode}.tmax

write_fault ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_all_${atpg_mode}.dat -all -replace

# Change back to internal pattern set
set_patterns -internal

# ------------------------------------------------------------------------------
#  Run Dynamic Bridge ATPG for additional fault coverage
# ------------------------------------------------------------------------------

set_atpg -capture 8 -abort 1000 -merge [list high high]
run_atpg -auto

report_faults   -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-dybr_faults_${atpg_mode}.tmax
report_patterns -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-dybr_patterns_${atpg_mode}.tmax
report_patterns -all -type  > ../reports/dft/CORTEXM0INTEGRATIONIMP-dybr_pattern_type_${atpg_mode}.tmax

# Report switching activity on patterns
if { ${rm_low_power_atpg} } {
    report_power -percentage 
}

# ------------------------------------------------------------------------------
# Add SDD and Transition patterns to end of Dynamic Bridge patterns
# ------------------------------------------------------------------------------

set_patterns -external ../data/CORTEXM0INTEGRATIONIMP-sdd_td_${atpg_mode}.bin.gz -append

# Delete SDD/Transition binary patterns now merged with stuck-at
rm ../data/CORTEXM0INTEGRATIONIMP-sdd_td_${atpg_mode}.bin.gz

# Temporarily write patterns in binary format for use later in flow
write_patterns ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_${atpg_mode}.bin.gz \
    -replace -format binary -compress gzip

# ------------------------------------------------------------------------------
#  Run stuck-at Fault Simulation on at-speed patterns for stuck-at coverage
# ------------------------------------------------------------------------------

# Return to DRC mode
drc -force

# Remove previous constraints on resets and scan-enable
remove_pi_constraint $rm_scan_enable
remove_pi_constraint $rm_reset_ports

if { $rm_create_test_wrapper } {
remove_pi_constraint $rm_wrp_ishift
remove_pi_constraint $rm_wrp_oshift
}

# Remove PO mask
remove_po_masks -all

# Re-run DRC checks
run_drc ${protocol_file}

# Save image file for static defect ATPG
write_image ../data/CORTEXM0INTEGRATIONIMP-${atpg_mode}_static.img -replace -violations -netlist_data
 
# Read all at-speed patterns
set_patterns -external ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_${atpg_mode}.bin.gz

# Changing to stuck-at fault model
set_faults -model stuck

# Create stuck-at faults
add_faults -all

# Run fault simulation
run_fault_sim

# Now report stuck-at coverage produced by at-speed patterns
report_faults -summary > ../reports/dft/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_faults_${atpg_mode}.tmax

write_fault ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_all_${atpg_mode}.dat -all -replace

# Change back to internal pattern set
set_patterns -internal

# ------------------------------------------------------------------------------
#  Run Basic Scan and Fast Sequential ATPG for additional stuck-at fault coverage
# ------------------------------------------------------------------------------

set_atpg -abort 1000 -merge [list high high]
set_atpg -capture 8

run_atpg -auto

# Report switching activity on patterns
if { ${rm_low_power_atpg} } {
    report_power -percentage 
}

# ------------------------------------------------------------------------------
# Add SDD and Transition patterns to end of stuck-at patterns
# Note: Must be added here to maintain them as fast sequential patterns
# ------------------------------------------------------------------------------

set_patterns -external ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_${atpg_mode}.bin.gz -append

# Delete SDD/Transition binary patterns now merged with stuck-at
rm ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_${atpg_mode}.bin.gz

# Temporarily write patterns in binary format for use later in flow
write_patterns ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_nofull_${atpg_mode}.bin.gz \
    -replace -format binary -compress gzip

# ------------------------------------------------------------------------------
#  Run Full Sequential ATPG for Stuck At Faults
# ------------------------------------------------------------------------------

set_atpg -full_seq_merge medium -full_seq_atpg
run_atpg full_sequential_only

report_faults   -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-sa_faults_${atpg_mode}.tmax
report_patterns -all -type  > ../reports/dft/CORTEXM0INTEGRATIONIMP-sa_pattern_type_${atpg_mode}.tmax
report_patterns -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-sa_patterns_${atpg_mode}.tmax

write_fault ../data/CORTEXM0INTEGRATIONIMP-sa_all_${atpg_mode}.dat -all -replace

# Temporarily write patterns in binary format for use later in flow
write_patterns ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_${atpg_mode}.bin.gz \
    -replace -format binary -compress gzip

# ------------------------------------------------------------------------------
#  Run Bridging Fault Simulation on SDD, Transition and stuck-at patterns for
#  Bridging coverage
# ------------------------------------------------------------------------------

reset_state
remove_faults -all

# Changing to bridge fault model
set_faults -model bridging
set_faults -bridge_inputs

# Read all SDD, Transition and SA patterns except full sequential
# NOTE: Cannot do bridging fault sim on full sequential patterns
set_patterns -external ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_nofull_${atpg_mode}.bin.gz

# Read in bridging faults
add_faults -node_file ../data/CORTEXM0INTEGRATIONIMP_typ.coupling_rpt

# Run fault simulation
run_fault_sim
 
# Now report bridging coverage produced by SDD, Transition and stuck-at fault patterns
report_faults -summary > ../reports/dft/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_br_faults_${atpg_mode}.tmax

write_fault ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_br_all_${atpg_mode}.dat -all -replace

# ------------------------------------------------------------------------------
#  Run Basic Scan and Fast Sequential ATPG for additional Bridging fault coverage
# ------------------------------------------------------------------------------

# Change back to internal pattern set
set_patterns -internal

set_atpg -abort 1000 -merge [list high high]
set_atpg -capture 8 -nofull_seq_atpg
set_atpg -optimize_bridge_strengths

run_atpg -auto

report_faults   -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-br_faults_${atpg_mode}.tmax
report_patterns -all -type  > ../reports/dft/CORTEXM0INTEGRATIONIMP-br_pattern_type_${atpg_mode}.tmax
report_patterns -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-br_patterns_${atpg_mode}.tmax

# Report switching activity on patterns
if { ${rm_low_power_atpg} } {
    report_power -percentage 
}

# ------------------------------------------------------------------------------
#  Write out SDD, Transition, Stuck-at and Bridging fault patterns
#  and bridging faults
# ------------------------------------------------------------------------------

write_fault ../data/CORTEXM0INTEGRATIONIMP-br_all_${atpg_mode}.dat -all -replace

set_patterns -external ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_${atpg_mode}.bin.gz -append

# Delete temporary binary pattern files now merged with bridging patterns
rm ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_nofull_${atpg_mode}.bin.gz
rm ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_${atpg_mode}.bin.gz

write_patterns ../data/CORTEXM0INTEGRATIONIMP-sdd_td_sa_br_${atpg_mode}.bin.gz \
    -replace -format binary -compress gzip

# Write out IEEE 1450 compliant patterns (STIL)
# For compression based patterns only, serial/parallel format needs to be explicitly defined
if { $atpg_mode == "ScanComp" } {
  write_patterns ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_br_serial_${atpg_mode}.stil \
      -replace -format stil -serial
} else {
  write_patterns ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_br_${atpg_mode}.stil \
      -replace -format stil
}

# Optionally write out WGL patterns
# write_patterns ../data/CORTEXM0INTEGRATIONIMP-sdd_td_dybr_sa_br_${atpg_mode}.wgl.gz \
#     -replace -format wgl -compress gzip

# Write full pattern summary (excluding path delay and IDDQ)
report_patterns -all -type  > ../reports/dft/CORTEXM0INTEGRATIONIMP-all_pattern_type_${atpg_mode}.tmax
report_patterns -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-all_patterns_${atpg_mode}.tmax

# ------------------------------------------------------------------------------
#  Run stand-alone ATPG for IDDq Faults
# ------------------------------------------------------------------------------

reset_state
remove_faults -all
set_faults -model iddq
set_iddq float strong weak write -atpg -notoggle
add_faults -all
set_atpg -merge [list high high]
set_atpg -patterns 12 
set_atpg -capture 0
run_atpg -auto

report_faults   -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-iddq_faults_${atpg_mode}.tmax
report_patterns -summary    > ../reports/dft/CORTEXM0INTEGRATIONIMP-iddq_patterns_${atpg_mode}.tmax
report_patterns -all -type  > ../reports/dft/CORTEXM0INTEGRATIONIMP-iddq_pattern_type_${atpg_mode}.tmax

# Report switching activity on patterns
if { ${rm_low_power_atpg} } {
    report_power -percentage 
}

write_patterns ../data/CORTEXM0INTEGRATIONIMP-iddq_${atpg_mode}.bin.gz \
    -replace -format binary -compress gzip

# Write out IEEE 1450 compliant patterns (STIL)
# For compression based patterns only, serial/parallel format needs to be explicitly defined
if { $atpg_mode == "ScanComp" } {
  write_patterns ../data/CORTEXM0INTEGRATIONIMP-iddq_serial_${atpg_mode}.stil \
      -replace -format stil -serial
} else {
  write_patterns ../data/CORTEXM0INTEGRATIONIMP-iddq_${atpg_mode}.stil \
      -replace -format stil
}

# Optionally write out WGL patterns
# write_patterns ../data/CORTEXM0INTEGRATIONIMP-iddq_${atpg_mode}.wgl.gz \
#     -replace -format wgl -compress gzip

write_fault ../data/CORTEXM0INTEGRATIONIMP-iddq_all_${atpg_mode}.dat -all -replace

# ------------------------------------------------------------------------------
#  Quit TMAX
# ------------------------------------------------------------------------------

quit 
