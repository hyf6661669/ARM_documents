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
# File Name     : cortexm0imp_export.tcl  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Export script for IC Compiler RM
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

date
sh hostname
set rm_task  export

# -----------------------------------------------------------------------------------
# Setup the Configuration
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/core_config.tcl
source -echo -verbose ../scripts/cortexm0imp_config.tcl

# -----------------------------------------------------------------------------------
# Setup the Target Technology
# -----------------------------------------------------------------------------------

source -echo -verbose ../scripts/cortexm0imp_tech.tcl

#------------------------------------------------------------------------------------
# Define link libraries
#------------------------------------------------------------------------------------

# Set up the link_path - lists all the db's that contain cells in the netlist
set link_path [list *]
foreach {min_lib typ_lib max_lib} $rm_mintypmax_libs {
  set link_path [concat ${link_path} ${max_lib} ]
}

set target_library ${rm_target_library}

set search_path    ${rm_search_path}

# -----------------------------------------------------------------------------------
# Read the Final Design In
# -----------------------------------------------------------------------------------

set mw_reference_library ${rm_mw_reflib}

open_mw_lib CORTEXM0IMP
open_mw_cel CORTEXM0IMP

# -----------------------------------------------------------------------------------
# Run LVS
# -----------------------------------------------------------------------------------

verify_lvs -error_cell CORTEXM0IMP_lvs.err -max_error 200

# -----------------------------------------------------------------------------------
# Run DRC
# -----------------------------------------------------------------------------------

verify_drc -error_cell CORTEXM0IMP_drc.err

# -----------------------------------------------------------------------------------
# Close MW Library
# -----------------------------------------------------------------------------------

close_mw_lib

# -----------------------------------------------------------------------------------
# Create a macro abstraction (FRAM)
# -----------------------------------------------------------------------------------

create_macro_fram -library_name CORTEXM0IMP \
                  -cell_name CORTEXM0IMP \
                  -treat_all_blockage_as_thin_wire

# -----------------------------------------------------------------------------------
# Stream Out GDSII
# -----------------------------------------------------------------------------------

set_write_stream_options -map_layer ${rm_layer_map} \
                         -child_depth 99 \
                         -contact_prefix "_" \
                         -keep_data_type \
                         -output_pin {text geometry}

write_stream -lib_name CORTEXM0IMP \
             -format gds \
             -cells CORTEXM0IMP \
             "../data/CORTEXM0IMP.gdsii"

# -----------------------------------------------------------------------------------
# Close Cell and Library, Exit
# -----------------------------------------------------------------------------------

date
exit
