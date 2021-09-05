#!/bin/csh -f
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
# File Name      :cortexm0_run_ampkg.csh
# RM Release     :RTL_VERSION
# Purpose        :Runs ampkg to generate the functional timing model of the core
#
# RM version     :7.1.2
# 
################################################################################
################################################################################
#  Script:  cortexm0_run_ampkg.csh
#  
################################################################################

switch ("`uname -sr`")
  case "SunOS*"
    setenv NC_OS "SunOS5"
    set amp_os = "sun4v"
    breaksw
  case "Linux*"
    setenv NC_OS "Linux"
    set amp_os = "lnx86"
    breaksw
  case "HP-UX*"
    setenv NC_OS "HPUX"
    set amp_os = "hppa"
    breaksw
  default
    echo "Unsupported OS: `uname -sr`"
    exit 1
endsw

source ../scripts/cortexm0_setup_ampkg.csh

set module_name = $rm_top_module
set netlist_name = "../data/cortexm0_si_fixing.v"
set model_name  = cortexm0

if (-e $netlist_name) then
  echo ""
  echo "The packaged model will be given the name $model_name."
  echo ""
else
  echo ""
  echo "File $netlist_name not found."
  echo ""
  exit
endif

\rm -fr  $NC_OS/lib $NC_OS/tbench
mkdir -p $NC_OS/lib $NC_OS/tbench

# create technology library
foreach filename ( $rm_tech_cell_lib_ver )
   echo "Running ncvlog to load $filename into the techlib."
  ncvlog  -work techlib -append_log -logfile ../logs/ncvlog.log $filename
end

# compile netlist
echo "Now compiling netlist with ncvlog"
ncvlog  -work ncsimlib -append_log -logfile ../logs/ncvlog.log $netlist_name

# SDF file generated from post route SI fix STA run
set original_sdf_file = "../data/cortexm0_cworst.sdf"
set model_sdf_file = $netlist_name:t
set model_sdf_file = $model_sdf_file:r.model.sdf

# compile SDF if it exists
if (-e $original_sdf_file) then
  set ctl_file_ext = "sdf.ctl"
  \cp -f $original_sdf_file ../data/$model_sdf_file

  # convert SDF delay values to zero, set CLK-to-Q of sequential cells to arbitrary delay (0.01)
  perl -p -i -e "s/\(\s*[0-9\+\-\.]*\s*:\s*[0-9\+\-\.]*\s*:\s*[0-9\+\-\.]*\s*\)/(0:0:0)/g"    ../data/$model_sdf_file
  perl -p -i -e "1 while s/(\bIOPATH\b.*\s(CL?K|G)N?\s+QN?\b.*)\(0:0:0\)/\1(0.01:0.01:0.01)/" ../data/$model_sdf_file

   echo "running ncsdfc"
  ncsdfc  -logfile ../logs/ncsdfc.log -output ../data/$module_name.sdf.X ../data/$model_sdf_file
else
  set ctl_file_ext = "ctl"
  echo ""
  echo "File $original_sdf_file not found, model will be generated without annotation."
  echo ""
endif


# create model package
\rm -fr cadence aminstall README.html
mkdir -p cadence/$model_name/$model_name/shells

echo "copying shell verilog"
cp -p ../data/cortexm0_shell.v cadence/$model_name/$model_name/shells

echo "running ampkg"
exec ampkg  -control ./ampkg_control.$ctl_file_ext \
          -output ../data/$model_name.$amp_os \
          -logfile ../logs/ampkg.log \
          ncsimlib.$module_name -overlay
echo "finished"
