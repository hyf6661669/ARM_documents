#!/bin/tcsh -f 

set root=`dirname $0:r`
set CWD=`pwd`
set plat=`uname`
    

cd $root
# fine absolute path of the root 
set root=`pwd`

# display the licence agreement
more LICENCE.txt

# decrypt the model source - must run in $root
if  ($#argv > 0)  then
   ./decrypter/decrypter_${plat}.exe < $1
   set OK=$status
else 
   ./decrypter/decrypter_${plat}.exe
   set OK=$status 
endif

if ($OK != 0) then
    exit $OK
endif

# set model type : DSM, uA_RTM, ...
set model_type=DSM

# unpack the model source

#------------------------------
# Select installation directory
#------------------------------

echo ""
echo "The unpacked model structure will be"
echo ""
echo "<ARM_IP_install_area>/"
echo " |"
echo " |--> simulation_models/"
echo "          |"

if($model_type == "DSM" ) then 
   set model_base=SWIFT

   echo "          |--> DSM/"
   echo "          |     |"
   echo "          |     |--> synopsys_vcs_verilog_Linux-64/"
   echo "          |             |"
   echo "          |             |--> CORTEXM0_unlicensed_r0p0-00rel0/"
   echo "          |                       CORTEXM0/"
   echo "          |                       testing/"
   echo "          |                       docs/"
   echo "          |                       README "
   echo "          |                       setup.csh"
   echo "          |                       setup.sh"
   echo "          |                       ..."
   echo "          |"
   if ($model_base == "SWIFT" || $model_base == "OMI" ) then
      echo "          |--> LMC_HOME/ (recommended location for SWIFT models)"
   endif
   echo "          |"
   echo "          |--> ModelManager/"
   echo "          |        MMAPI_5.1.0/"
   echo "          |               Linux-64/"
   echo "          |                     MM/"
   echo "          |                       synopsys_vcs_verilog/"
   echo "          |                       <lib files>"
   echo "          |"
   echo "          |--> flexlm/  (for licensed model only)"
   echo "                      v10.8.0.7/"
   echo "                           SunOS/"
   echo "                              <lm* files>"
   echo "                           HP-UX/"
   echo "                              <lm* files>"
   echo "                           Linux/"
   echo "                              <lm* files>"

endif


echo "==================================="
echo " Please enter <ARM_IP_install_area>" 
echo "==================================="
echo "[$CWD]"
set unpack_dir=$<

if ($unpack_dir  != "") then
   mkdir -p $unpack_dir
   set OK=$status
else
   set OK=0
   set unpack_dir=$CWD
endif

   
if ($OK == 0) then 
   # unpack the model source
   cd $unpack_dir
   echo "Unpacking this model into '$unpack_dir'..."
   gtar zxf $root/ModelPackage.tar.gz
   set OK=$status
   rm -rf $root/ModelPackage.tar.gz
else
   exit $OK
endif


if ($OK != 0) then
    echo "Model installation failed"
    exit $OK
else 
    echo "Unpacked successfully"

endif

# DSM specific installation 
if ($model_type == "DSM" ) then

   set model_base=SWIFT
   
   if ($model_base != "SWIFT" &&  $model_base != "OMI" ) then
       echo "=========================================================="
       echo "Please follow the README in "
       echo "   $unpack_dir/simulation_models/DSM/synopsys_vcs_verilog_Linux-64/CORTEXM0_unlicensed_r0p0-00rel0"
       echo "to test the model setup."
       echo "=========================================================="  
       exit $OK
   endif
   
   # install the SWIFT model
   echo "====================================================================="
   echo "We recommend you install all your SWIFT models in a central"
   echo "location. This is because if you want to use two or more different "
   echo "SWIFT models together in a simulation, then they all need to "
   echo "be installed into the same LMC_HOME."
   echo " "
   echo " Please enter SWIFT install area" 
   echo "====================================================================="
   echo "[$unpack_dir/simulation_models/LMC_HOME]"
   set install_dir=$<

   if ($install_dir  == "") then
       set install_dir=$unpack_dir/simulation_models/LMC_HOME
   endif 
   
   mkdir -p $install_dir
   if ($status != 0) then
       echo "SWIFT model not installed"
       echo "\tCannot create $install_dir "
       echo ""
       echo "=========================================================="
       echo "Please follow the README in "
       echo "   $unpack_dir/simulation_models/DSM/synopsys_vcs_verilog_Linux-64/CORTEXM0_unlicensed_r0p0-00rel0"
       echo "to install the SWIFT model."
       echo "=========================================================="  
       exit
   endif    
   
   echo "install SWIFT model into $install_dir..."
   
   
   setenv CORTEXM0_HOME $unpack_dir/simulation_models/DSM/synopsys_vcs_verilog_Linux-64/CORTEXM0_unlicensed_r0p0-00rel0
   $CORTEXM0_HOME/CORTEXM0.Linux-64/install_swift.csh $install_dir
   
   echo "=========================================================="
   echo "Please follow the README in "
   echo "   $unpack_dir/simulation_models/DSM/synopsys_vcs_verilog_Linux-64/CORTEXM0_unlicensed_r0p0-00rel0"
   echo "to test the model setup."
   
     
   if ( $install_dir != $unpack_dir/simulation_models/LMC_HOME ) then
       echo " "
       echo "Since you didn't install the model in default area, you must"
       echo "modify the "
       echo "   $unpack_dir/simulation_models/DSM/synopsys_vcs_verilog_Linux-64/CORTEXM0_unlicensed_r0p0-00rel0/setup.(c)sh "
       echo "to set LMC_HOME or BOOT_DIR correctly. "
   endif    
   echo "=========================================================="  

endif # if (model_type == DSM)

exit $OK
