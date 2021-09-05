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
# File Name     : cortexm0imp_design_planning.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
# 
# Purpose       : Setup script for ICC-DP
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

set rm_task     floorplan
sh hostname
date

gui_set_current_task -name {All}

# -----------------------------------------------------------------------------------
# Setup the Configuration
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/core_config.tcl
source -echo -verbose ../scripts/cortexm0imp_config.tcl

# -----------------------------------------------------------------------------------
# Setup the Target Technology
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0imp_tech.tcl

# -----------------------------------------------------------------------------------
# Define link libraries; add Designware to path
# -----------------------------------------------------------------------------------

# Set up the link_path - lists all the db's that contain cells in the netlist
set link_path [list *]
foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
  set link_path [concat ${link_path} ${max_lib} ]
}

set synthetic_library dw_foundation.sldb

set link_path [concat ${link_path} ${synthetic_library} ]

# Standard cells in the target library(s) will appear in the synth'd netlist
set target_library ${rm_target_library}

# The search path contains all the directory paths to the library files in the link-path
set search_path    ${rm_search_path}

# -----------------------------------------------------------------------------------
# Copy & Read the Design from the Compile Step
# -----------------------------------------------------------------------------------

set mw_reference_library ${rm_mw_reflib}

open_mw_lib CORTEXM0IMP

read_ddc ../data/CORTEXM0IMP-compile.ddc
link
check_library

save_mw_cel -as 2_floorplan

# -----------------------------------------------------------------------------------
# Ensure TLU+ files are loaded in library
# -----------------------------------------------------------------------------------

set_tlu_plus_files -max_tluplus  ${rm_max_tluplus_file} \
                   -min_tluplus  ${rm_min_tluplus_file} \
                   -tech2itf_map ${rm_tf2itf_map_file} 

# -----------------------------------------------
# Read floorplan file and initialize
# -----------------------------------------------
# Floorplan files contain die area, voltage domains and blockage information

# -----------------------------------------------------------------------------------
# Connect PG first before loading floorplan file or initialize_floorplan
# -----------------------------------------------------------------------------------

derive_pg_connection -power_net VDD -ground_net VSS

# -----------------------------------------------
# Read pin files
# -----------------------------------------------

# Pin files contain a list of *all* pins on the core. When test wrapping is enabled
# more pins are present on the core
#  Pins are described by
#  0) size,
#  1) metal layer
#  2) side
#[ 3) order (in a clockwise direction) ]

if { [file exists ../floorplan/cortexm0imp_pins.tdf] } {
  read_io_constraints ../floorplan/cortexm0imp_pins.tdf
  puts "Loaded TDF pin constraints"
} else {
  puts "TDF pin constraint file not found!"
}

# -----------------------------------------------
# Create floorplan
# -----------------------------------------------

# Floorplanning files are unnecessary for cores without memories. ICC creates a
# floorplan based on the desired rm_aspect_ratio and rm_utilization variables.
initialize_floorplan  -control_type aspect_ratio \
                      -core_aspect_ratio ${rm_aspect_ratio} \
                      -core_utilization  ${rm_core_utilization} \
                      -left_io2core      ${rm_core_offset} \
                      -bottom_io2core    ${rm_core_offset} \
                      -right_io2core     ${rm_core_offset} \
                      -top_io2core       ${rm_core_offset} \
                      -pin_snap \
                      -start_first_row
puts "Floorplan created"

# -----------------------------------------------------------------------------------
# Quick placement and pin optimization
# -----------------------------------------------------------------------------------

# The .tdf file supplied specifies pin sides but not order or offset. After 
# quick placement pins can be optimized for best physical location along
# their specified edges.

create_fp_placement -no_hierarchy_gravity

set_hierarchy_color -cycle_color

# force pins to use only metals 2 & 3
set_fp_pin_constraints -no_stacking signal_pins_only \
                       -keep_buses_together on \
                       -use_tdf_constraints on \
                       -allowed_layers  { M2 M3 } \
                       -block_level

place_fp_pins -block_level

# -----------------------------------------------------------------------------------
#  Power Network Synthesis
# -----------------------------------------------------------------------------------
# PNS is dependent upon a number of factors like:
# - are there macros in the design
# - do macros have rings or other internal grid
# - what is the highest layer in macro
# - what is the maximum allowable power layer
# As such the following is core and floorplan replay file specific.

set current_layer ""

# -----------------------------------------------------------------------------------
# Remove any existing constraints
set_fp_rail_constraints -remove_all_layers

# Ensure straps are extended to the core boundary
set_fp_rail_constraints -skip_ring \
                        -extend_strap boundary

# Ensure straps do not block 
set_fp_rail_constraints -set_global \
                        -optimize_tracks \
                        -no_stack_via

# metal6
set current_layer M[expr (${rm_max_layer} - 0 ) ]
set_fp_rail_constraints -add_layer \
                        -layer ${current_layer} \
                        -direction vertical \
                        -max_pitch 30 \
                        -min_pitch 30 \
                        -max_width 10 \
                        -min_width 10 \
                        -offset 12 \
                        -spacing interleaving

# metal5
set current_layer M[expr (${rm_max_layer} - 1 ) ]
set_fp_rail_constraints -add_layer \
                        -layer ${current_layer} \
                        -direction horizontal \
                        -max_pitch 50 \
                        -min_pitch 50 \
                        -max_width 8 \
                        -min_width 8 \
                        -offset 12 \
                        -spacing interleaving

# metal4 
set current_layer M[expr (${rm_max_layer} - 2 ) ]
set_fp_rail_constraints -add_layer \
                        -layer ${current_layer} \
                        -direction vertical \
                        -max_pitch 50 \
                        -min_pitch 50 \
                        -max_width 4 \
                        -min_width 4 \
                        -spacing interleaving

# Synthesize the network
synthesize_fp_rail -power_budget 400 \
                   -voltage_supply 1.0 \
                   -nets [list ${mw_power_net} ${mw_ground_net} ] \
                   -synthesize_power_plan \
                   -target_voltage_drop 20 \
                   -create_virtual_rail M1 \
                   -use_strap_ends_as_pads \
                   -output_directory ../data/pns_VDD_VSS

# Create the straps in the design
commit_fp_rail

# -----------------------------------------------------------------------------------
# Set Min/Max Routing Layers
# -----------------------------------------------------------------------------------

set_ignored_layers -max_routing_layer M${rm_max_layer}

remove_pnet_options

set_pnet_options -partial {M1 M2} \
                 -see_object {all_types}
report_pnet_options

# -----------------------------------------------------------------------------------
# Set PG connections
# -----------------------------------------------------------------------------------

derive_pg_connection -power_net VDD -ground_net VSS

# -----------------------------------------------------------------------------------
# Preroute Standard Cells
# -----------------------------------------------------------------------------------
# Limit the highest metal connection to metal 4 to avoid via-stacking rule violation.

set_preroute_drc_strategy -min_layer M1 \
                          -max_layer M4

# Make rail connections between standard cells and power mesh
preroute_standard_cells -extend_for_multiple_connections \
                        -extension_gap 200  \
                        -skip_macro_pins  \
                        -skip_pad_pins  \
                        -fill_empty_rows \
                        -do_not_route_over_macros  \
                        -port_filter_mode off  \
                        -cell_master_filter_mode off  \
                        -cell_instance_filter_mode off  \
                        -voltage_area_filter_mode off

# Reset layer limit to maximum routing layer
set_preroute_drc_strategy -min_layer M1 \
                          -max_layer M${rm_max_layer}

# -----------------------------------------------------------------------------------
# Insert tap cells as an array
# -----------------------------------------------------------------------------------

add_tap_cell_array -master_cell_name ${rm_tap_cell} \
    -pattern stagger_every_other_row \
    -boundary_row_double_density true \
    -right_boundary_extra_tap must_insert \
    -distance ${rm_tap_cell_distance} \
    -offset [expr -${rm_tap_cell_distance}/2]

# -----------------------------------------------------------------------------------
# QOR & design reports
# -----------------------------------------------------------------------------------

report_design -physical > ../reports/layout/CORTEXM0IMP-dp.summary

# -----------------------------------------------------------------------------------
# Floorplan replay scripts
# -----------------------------------------------------------------------------------
# Dump replay files that can be used if floorplan gets modified.

write_floorplan -placement { hard_macro } \
                -no_bound \
                -no_plan_group \
                -no_route_guide \
                ../reports/layout/CORTEXM0IMP-dp_dump.floorplan

write_route -file_name ../reports/layout/CORTEXM0IMP-dp_dump.power_route

write_io_constraints -cel [get_object_name [current_mw_cel]] \
                     -constraint_type side_order \
                     -io_only \
                     ../reports/layout/CORTEXM0IMP-dp_dump.tdf

write_physical_constraints -port_side \
                           -output ../reports/layout/CORTEXM0IMP-dp_dump.physcons

# -----------------------------------------------------------------------------------
# Save design and exit
# -----------------------------------------------------------------------------------

set save_mw_cel_lib_setup true
save_mw_cel -overwrite -as 2_floorplan

date
exit
