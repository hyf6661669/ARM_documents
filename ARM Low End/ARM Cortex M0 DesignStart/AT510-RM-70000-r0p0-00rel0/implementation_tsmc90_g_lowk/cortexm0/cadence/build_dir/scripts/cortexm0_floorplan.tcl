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
# File Name      :cortexm0_floorplan.tcl
# RM Release     :RTL_VERSION
# Purpose        :encounter design import and floorplan script
#
# RM version     :7.1.2
# 
################################################################################

Puts "BEGIN FLOORPLAN  : [exec date]"
source ../scripts/cortexm0_config.tcl

# Skip floorplan if previously run
set floorplan [file exists ../data/cortexm0_floorplan.enc]

if {$floorplan == 0} {

#-----------------------------------------------------------------------
# Load the verilog and libraries
#-----------------------------------------------------------------------

source ../scripts/cortexm0_fe.conf
commitConfig

#-----------------------------------------------------------------------
# Set TimingMode
#-----------------------------------------------------------------------

setCteReport

#-----------------------------------------------------------------------
# Create list of register for path groups before setting up MMMC
#-----------------------------------------------------------------------

# remove rise and fall reg lists if they exist form a previous run
if [file exists ../data/cortexm0_rise_reg_list.tcl ] {
    exec rm  ../data/cortexm0_rise_reg_list.tcl 
} 
if [file exists ../data/cortexm0_fall_reg_list.tcl ] {
    exec rm  ../data/cortexm0_fall_reg_list.tcl 
} 

# open for write rise and fall reg list files
set rm_fall_reg_file [ open ../data/cortexm0_fall_reg_list.tcl w+ ]
set rm_rise_reg_file [ open ../data/cortexm0_rise_reg_list.tcl w+ ]

# add the list header to the rise and fall reg list files
puts $rm_fall_reg_file "set rm_fall_reg_cell_list \""
puts $rm_rise_reg_file "set rm_rise_reg_cell_list \""

# put the actual registers into the lists
foreach clk $rm_clock_ports {
    foreach_in_collection reg [all_registers -fall_clock $clk] {
        puts $rm_fall_reg_file [get_object_name ${reg}]
    }
    foreach_in_collection reg [all_registers -rise_clock $clk] {
	puts $rm_rise_reg_file [get_object_name ${reg}]
    }
}

# add the list footer to the rise and fall reg list files
puts $rm_fall_reg_file "\""
puts $rm_rise_reg_file "\""

# close the files
close $rm_fall_reg_file
close $rm_rise_reg_file

#-----------------------------------------------------------------------
# Load the floorplan
#-----------------------------------------------------------------------

#it there is an fe floorplan of the correct name, load it 
#(and save a def for future use)
#otherwise if there is a floorplan def of the correct name load it
#otherwise run masterplan.
if [file exists "$rm_fp_floorplan_path"] { 
    loadFPlan $rm_fp_floorplan_path
    defOut -floorplan $rm_def_floorplan_path
} elseif [file exists "$rm_def_floorplan_path"] {
    defIn $rm_def_floorplan_path 
} else {
    planDesign
}

#-----------------------------------------------------------------------
# Setup mmmc rc corner and captable scale factors
#-----------------------------------------------------------------------

foreach rc_corner $rm_rc_corners {
    create_rc_corner -name ${rc_corner}_rc_corner -cap_table $rm_captables($rc_corner) -res_factor $rm_trial_route_res_factor \
                 -default_cap_factor $rm_pre_metal_fill_default_cap_factor -detailed_cap_factor $rm_pre_metal_fill_detailed_cap_factor 
}

#-----------------------------------------------------------------------
# load the cpf if this is a low power run, otherwise setup MMMC with basic two corner singgle mode 
#-----------------------------------------------------------------------
if {$rm_low_power_flow==1} {

    #-----------------------------------------------------------------------
    # set soce flag so cpf can load extra soce only setup (synthesis is not multi-mode or trilib)
    #-----------------------------------------------------------------------
    set env(rm_tool) soce

    # W/A for CCR455126
    #set dcgForceTrilibECSMTranslation 1
    # W/A for CCR460519
    #set xngSIMSMVFix 1
    #allow the tri-lib flow and read cdb's from the conf file
    set soceAllowTrilibFlow 1
    set useCdbFileInfoFromConfFile 1

    #load the power intent file
    loadCPF ../scripts/cortexm0_power_intent.cpf
    commitCPF -verbose


    #-----------------------------------------------------------------------
    # Add the rc corners to the delay corners associated with the analysis views
    #-----------------------------------------------------------------------
    foreach rc_corner $rm_rc_corners {
       foreach functional_mode $rm_functional_modes {
          update_delay_corner \
    	     -name [get_analysis_view ${rc_corner}_${functional_mode}_view -delay_corner] \
	     -rc_corner ${rc_corner}_rc_corner
       }
    }

} else {

    #-----------------------------------------------------------------------
    # Setup mmmc library sets
    # If we are to skip SI analysis we do not read the Celtic cdB libraries
    #-----------------------------------------------------------------------

   if {[info exists rm_skip_si_fixing] && [expr $rm_skip_si_fixing == 1]} {
        create_library_set -name worst_case_library_set -timing $rm_tech_cell_lib_wc
        create_library_set -name best_case_library_set  -timing $rm_tech_cell_lib_bc
        create_library_set -name typical_case_library_set  -timing $rm_tech_cell_lib_tc
    } else {
        create_library_set -name worst_case_library_set -timing $rm_tech_cell_lib_wc -si $rm_cdb_slow_cell_list
        create_library_set -name best_case_library_set  -timing $rm_tech_cell_lib_bc -si $rm_cdb_fast_cell_list
        create_library_set -name typical_case_library_set  -timing $rm_tech_cell_lib_tc -si $rm_cdb_typ_cell_list
    }

    #-----------------------------------------------------------------------
    # setup mmmc delay corners
    #-----------------------------------------------------------------------

    create_delay_corner -name worst_case_delay_corner -library_set worst_case_library_set \
    			-opcond_library $rm_tech_cell_lib_name_wc -opcond $rm_wc_op_cond -rc_corner worst_case_rc_corner 
    create_delay_corner -name best_case_delay_corner  -library_set best_case_library_set  \
    			-opcond_library $rm_tech_cell_lib_name_bc -opcond $rm_bc_op_cond -rc_corner best_case_rc_corner 
    create_delay_corner -name typical_case_delay_corner  -library_set typical_case_library_set  \
    			-opcond_library $rm_tech_cell_lib_name_tc -opcond $rm_tc_op_cond -rc_corner typical_case_rc_corner 

    #-----------------------------------------------------------------------
    # setup mmmc constraint modes
    #-----------------------------------------------------------------------

    if [file exists "../scripts/cortexm0_fe_only_constraints.sdc"] { 
    	create_constraint_mode -name worst_case_default_mode -sdc_files {../scripts/cortexm0_constraints_default_mode.sdc ../scripts/cortexm0_fe_only_constraints.sdc}
    	create_constraint_mode -name best_case_default_mode  -sdc_files {../scripts/cortexm0_constraints_default_mode.sdc ../scripts/cortexm0_fe_only_constraints.sdc}
    	create_constraint_mode -name typical_case_default_mode  -sdc_files {../scripts/cortexm0_constraints_default_mode.sdc ../scripts/cortexm0_fe_only_constraints.sdc}
    } else {
    	create_constraint_mode -name worst_case_default_mode -sdc_files {../scripts/cortexm0_constraints_default_mode.sdc}
    	create_constraint_mode -name best_case_default_mode  -sdc_files {../scripts/cortexm0_constraints_default_mode.sdc} 
    	create_constraint_mode -name typical_case_default_mode  -sdc_files {../scripts/cortexm0_constraints_default_mode.sdc} 
    }
     
    #-----------------------------------------------------------------------
    # create and set mmmc analysis view
    #-----------------------------------------------------------------------

    create_analysis_view -name worst_case_default_view -constraint_mode worst_case_default_mode -delay_corner worst_case_delay_corner 
    create_analysis_view -name best_case_default_view  -constraint_mode best_case_default_mode  -delay_corner best_case_delay_corner 
    create_analysis_view -name typical_case_default_view  -constraint_mode typical_case_default_mode  -delay_corner typical_case_delay_corner 
}

#-----------------------------------------------------------------------
# set mmmc analysis view
#-----------------------------------------------------------------------

#create list of analysis views to be used in implementation (may not include typical extraction)
set rm_analysis_view_names ""
foreach rc_corner $rm_implementation_rc_corners {
     foreach functional_mode $rm_functional_modes {
     	 lappend rm_analysis_view_names "${rc_corner}_${functional_mode}_view"
     }
}

set_analysis_view -setup $rm_analysis_view_names -hold $rm_analysis_view_names

#-----------------------------------------------------------------------
# Connect the Power and Ground Pins if not done via cpf
#-----------------------------------------------------------------------
if {$rm_low_power_flow == 0} {

    foreach pinname $rm_power_pin_list {
    	globalNetConnect $rm_pwr_net_name -type pgpin -pin $pinname  -all
    }
    foreach pinname $rm_ground_pin_list {
    	globalNetConnect $rm_gnd_net_name -type pgpin -pin $pinname  -all
    }
}
#-----------------------------------------------------------------------
# Create the power grid
#-----------------------------------------------------------------------

#get the floorplan box's (IO and Core) from the db in dbunits
set rm_db_floorplan [dbHeadFPlan]
set rm_fplan_core_box [dbFPlanCoreBox $rm_db_floorplan]
set rm_fplan_Io_box [dbFPlanIoBox $rm_db_floorplan]

#swap the boxes from db units to microns
set rm_fplan_core_box_micron [list [dbDBUToMicrons [lindex $rm_fplan_core_box 0]] [dbDBUToMicrons [lindex $rm_fplan_core_box 1]] [dbDBUToMicrons [lindex $rm_fplan_core_box 2]] [dbDBUToMicrons [lindex $rm_fplan_core_box 3]]] 
set rm_fplan_Io_box_micron   [list [dbDBUToMicrons [lindex $rm_fplan_Io_box 0]] [dbDBUToMicrons [lindex $rm_fplan_Io_box 1]] [dbDBUToMicrons [lindex $rm_fplan_Io_box 2]] [dbDBUToMicrons [lindex $rm_fplan_Io_box 3]]]

sroute \
  -noBlockPins \
  -noPadRings \
  -verbose \
  -noPadPins \
  -noStripes \
  -layerChangeBotLayer 1 \
  -straightConnections { straightWithDrcClean } \
  -layerChangeTopLayer 1 \
  -nets { VSS VDD } \
  -msgRate 10

# Add MET4 vertical stripe
addStripe\
  -area $rm_fplan_core_box_micron\
  -start_from left \
  -xleft_offset 6.0 \
  -block_ring_top_layer_limit M4\
  -max_same_layer_jog_length 0.84\
  -padcore_ring_bottom_layer_limit M4\
  -set_to_set_distance 12.0\
  -stacked_via_top_layer M4\
  -padcore_ring_top_layer_limit M4\
  -spacing 5.36\
  -merge_stripes_value 0.40\
  -create_pins 0\
  -layer M4\
  -block_ring_bottom_layer_limit M1\
  -width 0.64\
  -nets " $rm_pwr_net_name $rm_gnd_net_name "\
  -stacked_via_bottom_layer M1

# Add MET5 horizontal stripe

addStripe\
  -area $rm_fplan_core_box_micron\
  -start_from bottom \
  -ybottom_offset 3.0 \
  -block_ring_top_layer_limit M5\
  -max_same_layer_jog_length 0.84\
  -padcore_ring_bottom_layer_limit M5\
  -set_to_set_distance 6.0\
  -stacked_via_top_layer M5\
  -padcore_ring_top_layer_limit M5\
  -spacing 2.0\
  -merge_stripes_value 0.48\
  -direction horizontal\
  -layer M5\
  -block_ring_bottom_layer_limit M3\
  -width 1.0\
  -nets " $rm_pwr_net_name $rm_gnd_net_name "\
  -stacked_via_bottom_layer M3

# Add MET6 vertical stripe
addStripe\
  -area $rm_fplan_Io_box_micron\
  -block_ring_top_layer_limit M6\
  -max_same_layer_jog_length 0.84\
  -padcore_ring_bottom_layer_limit M6\
  -set_to_set_distance 12.0\
  -stacked_via_top_layer M6\
  -padcore_ring_top_layer_limit M6\
  -spacing 4.72\
  -merge_stripes_value 0.48\
  -layer M6\
  -block_ring_bottom_layer_limit M4\
  -width 1.280\
  -nets " $rm_pwr_net_name $rm_gnd_net_name "\
  -stacked_via_bottom_layer M4

# Add MET7 horizontal stripe
addStripe\
  -area $rm_fplan_Io_box_micron\
  -block_ring_top_layer_limit M7\
  -max_same_layer_jog_length 0.84\
  -padcore_ring_bottom_layer_limit M6\
  -set_to_set_distance 12.0\
  -stacked_via_top_layer M7\
  -padcore_ring_top_layer_limit M6\
  -spacing 1.8\
  -merge_stripes_value 0.48\
  -direction horizontal\
  -layer M7\
  -block_ring_bottom_layer_limit M6\
  -width 4.1\
  -nets " $rm_pwr_net_name $rm_gnd_net_name "\
  -stacked_via_bottom_layer M6

#-----------------------------------------------------------------------
# Verify the power grid
#-----------------------------------------------------------------------

verifyGeometry -report  ../reports/preroute/cortexm0_verifyPowerGridGeometry.rpt

#-----------------------------------------------------------------------
# insert well ties, either per domain or globally.
#-----------------------------------------------------------------------

if {$rm_low_power_flow==1} {
    foreach domain $rm_power_domains {
       addWellTap -powerdomain $domain -cell ${rm_well_tie_cell} -cellInterval ${rm_well_tie_interval} -checkerBoard
    }
} else {
    addWellTap -cell ${rm_well_tie_cell} -cellInterval ${rm_well_tie_interval} -checkerBoard
}

#-----------------------------------------------------------------------
# Set Scan Chains
#-----------------------------------------------------------------------

defin -scanchain ../data/cortexm0_scan_chains.def

#-----------------------------------------------------------------------
# Copy Clock Tree Specification File into place or Generate if it does not exist 
#-----------------------------------------------------------------------
 
if [file exists "../scripts/cortexm0_cts.ctstch"] { 
    exec cp ../scripts/cortexm0_cts.ctstch ../data/ 
} else {
    #set ctsmodes to improve generated cts tech file
    setCTSMode -topPreferredLayer $rm_top_routing_layer 
    setCTSMode -bottomPreferredLayer [expr $rm_top_routing_layer - 1] 
    setCTSMode -preferredExtraSpace 1 
    setCTSMode -leafTopPreferredLayer $rm_top_routing_layer 
    setCTSMode -leafBottomPreferredLayer [expr $rm_top_routing_layer - 1] 
    setCTSMode -leafPreferredExtraSpace 0 
    setCTSMode -optAddBuffer true 
    setCTSMode -opt true
    setCTSMode -routeClkNet true 
    setCTSMode -moveGate true

    #create the clock tree spec
    createClockTreeSpec -output ../data/cortexm0_cts.ctstch \
		    -bufferList $rm_clock_cell_list \
		    -ignoreDontUse
    # Add driving buffer to the specification of all the clocks 
    exec perl -p -i -e "s/^Period/AddDriverCell  $rm_clock_driving_cell\nPeriod/" ../data/cortexm0_cts.ctstch
    #uncomment some of the more advanced settings
    exec perl -p -i -e "s/\#RouteClkNet/RouteClkNet/" ../data/cortexm0_cts.ctstch
    exec perl -p -i -e "s/\#PostOpt/PostOpt/" ../data/cortexm0_cts.ctstch
    exec perl -p -i -e "s/\#OptAddBuffer/OptAddBuffer/" ../data/cortexm0_cts.ctstch
}
specifyClockTree -clkfile ../data/cortexm0_cts.ctstch

#-----------------------------------------------------------------------
# Add buffers onto boundary nets (except clocks) and Fix their placement
#-----------------------------------------------------------------------

attachIOBuffer -baseName IOBUF_ -in $rm_boundary_net_buffer -out $rm_boundary_net_buffer -excNetFile ../scripts/cortexm0_excl.txt -markFixed

#-----------------------------------------------------------------------
# verify low power domain
#-----------------------------------------------------------------------

if {$rm_low_power_flow==1} {
   verifyPowerDomain -xNetPD   ../reports/preroute/cortexm0_verify_power_domain_x_nets_floorplan.rpt
   verifyPowerDomain -isoNetPD ../reports/preroute/cortexm0_verify_power_domain_iso_nets_floorplan.rpt

   reportIsolation -outfile ../reports/preroute/cortexm0_iso_cell_prePlace.rpt
   reportShifter   -outfile ../reports/preroute/cortexm0_iem_shifter_prePlace.lrpt
}

#-----------------------------------------------------------------------
# Save Design
#-----------------------------------------------------------------------

saveDesign ../data/cortexm0_floorplan.enc
Puts "END FLOORPLAN : [exec date]"

} else {

puts "=====> SKIPPING FLOORPLAN since data/cortexm0_floorplan.enc exists <====="

}


exit
