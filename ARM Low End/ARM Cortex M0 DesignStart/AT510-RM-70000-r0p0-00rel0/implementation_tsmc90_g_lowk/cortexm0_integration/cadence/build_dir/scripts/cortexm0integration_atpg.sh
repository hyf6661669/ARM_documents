#!/bin/sh
# set -x
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
# File Name      :cortexm0integration_atpg.sh
# RM Release     :RTL_VERSION
# Purpose        :script to generate atpg script
#
# RM version     :7.1.2
# 
################################################################################
#  Last Update:
#      06/13/06 - DGS - add -i to build_model when blackboxoutputs=Z
#                       check CONTINUE_WITH_SEVERE if scan chains appear to be broken
#      06/26/06 - DGS - updated reset test to include dynamic reset test
#      07/10/06 - DGS - add compression test mode support
#      07/24/06 - DGS - added EXECUTE=no and updated sorting to use default (.05)
#      07/28/06 - DGS - added reset_lineholds
#      08/02/06 - DGS - new KWs for vlogparser, optimize (u2), new checks
#      08/03/06 - DGS - number prepare steps uniquely, stop on TNP-011, TWC-002, TWC-060
myecho ()
{
  l=$1
  echo "$l"
  if [ -n "${LOGFILE}" ] ; then
    echo "$l" >> $LOGFILE
  fi
}
SCRIPTVERSION=2                  # Updated whenever adding new setup file inputs
line="*******************************************************************************"
LOGFILE=/tmp/true_time.$$
saveLOGFILE=$LOGFILE
myecho "$line"
myecho "                Encounter True-Time Use Model Script Starting "
myecho "                           Last Update: 08/02/06 "
myecho "$line"

filename=$1
if [ -f "${filename}" ] ; then
  myecho "Processing Use Model Script Setup File: $filename"
else
  myecho "Use Model Script Setup File: $filename not found."
  myecho " The setup file contains a list of keywords and values to drive the script."
  myecho " Please specify a valid setup file name."
  myecho " Usage: ./true_time your_setup_file_name"
  exit
fi

. $filename
if [ \( -n "${LOGFILE}" \) -a \( "$LOGFILE" != "$saveLOGFILE" \) ] ; then
  cat /tmp/true_time.$$ > $LOGFILE
fi

if [ \( -n "${WRITEWGL}" \) ] ; then
  z=1
else
  myecho "ERROR - It appears as though the setup file was not executed completely, "
  myecho "        because no value was specified for the WRITEWGL keyword.         "
  myecho "        The keywords should be coded as bourne shell or bash shell keywords."
  myecho "        There should be no spaces between the keyword and the value.  All "
  myecho "        environment variable keywords should be coded as $KEYWORD=\"value\"."
  myecho "        Exiting.                                                            "
  exit
fi
# 07/19/06 - DGS
# These keywords are being set here instead of in the setup file because I don't think
# I want customers messing with them if they don't need to.  If it turns out they need to
# set them, we'll reconsider adding them back into the use setup file. Right now, the results
# from TSV will determine whether to set them or not...
CONTENTION=                           # soft, hard, none, allx (report this level)
                                      #  (default is soft, if no TSV-093/TSV-193,
                                      #   otherwise, set to hard)
                                      #  (optional)
CHOPPERS=                             # safe, risky (simulate invalid choppers)
                                      # safe => simulate X.
                                      # (default is safe if no TSV messages,
                                      #  otherwise, risky)
                                      #  (optional)
KEEPERS=                              # safe, risky (simulate invalid keepers)
                                      # safe => simulate X.
                                      # (default is safe if no TSV messages,
                                      #  otherwise, risky)
                                      #  (optional)
#---------------------------------------------------------------------------------
# Set up Encounter Test environment in new shell
#---------------------------------------------------------------------------------

if [ ! \( -n "${EXECUTE}" \) ] ; then
  EXECUTE="yes"
fi
if [ $EXECUTE = "yes" ] ; then
  whichresult=`which build_model 2>/dev/null`
  if [ -f "${whichresult}" ] ; then
    et -s > /dev/null
    tbver
  else
    myecho "Encounter Test does not appear to be in your PATH.  "
    myecho "Please make sure Encounter Test is in your PATH and try again."
    exit
  fi
fi

if [ $SETUPVERSION -gt $SCRIPTVERSION ] ; then
  myecho "Setup File version number is newer than the Use Model Script version number."
  myecho "  There may be some incompatibilities that may cause the script to fail. "
  myecho "  Please update your setup file to the latest version."
  myecho "  Continuing..."
elif [ $SETUPVERSION -lt $SCRIPTVERSION ] ; then
  myecho "Setup File version number is older than the Use Model Script version number."
  myecho "  There may be some incompatibilities that may cause the script to fail. "
  myecho "  Please update your Use Model Script to the latest version."
  myecho "  Continuing..."
fi

#---------------------------------------------------------------------------------
# Export Environment Variables
#---------------------------------------------------------------------------------
export WORKDIR DESIGNSOURCE TECHLIB ASSIGNFILE ATPGTYPE WRITEVERILOG WRITESTIL WRITEWGL
export SEQPATH SEQDEF SDFPATH SDFNAME TEMPLATESOURCE CLOCKCONSTRAINTS CLOCKCONSTRAINTS2 CLOCKCONSTRAINTS3
export RESTART REMOVE_OLD_LOGFILES NOFAULTS TDRPATH MODEDEFPATH EFFORT COMPACTION EXECUTE
export SORTPATTERNS CELLFAULTS INDUSTRYCOMPATIBLE STATICSEQUENCES DYNAMICSEQUENCES CONTENTION
export CHOPPERS KEEPERS CREATEBLACKBOXES BLACKBOXOUTPUTS DYNAMICCOVERAGE ALLOWLASTSHIFTLAUNCH
export DELAYTESTTHRUMEMORIES MAXCPUTIME SETUPVERSION TOPCELL SCRIPTFILE EXITBEFORE CONTINUE_WITH_SEVERE LINEHOLD
export LOGFILE
export MAXPATTERNSTATIC MAXPATTERNDYNAMIC

# Determine whether testmode or compression needs to be determined from the other...
if [ -n "${TESTMODE}" ] ; then
  if [ -n "${COMPRESSION}" ] ; then
    if [ -n "${COMPRESSIONTESTMODE}" ] ; then
      z=1  # do nothing
    else
      if [ $COMPRESSION = "opmisrplus" ] ; then
        COMPRESSIONTESTMODE="OPMISRPLUS_TIMED"
      elif [ $COMPRESSION = "opmisrplus_topoff" ] ; then
        COMPRESSIONTESTMODE="OPMISRPLUS_TIMED"
      elif [ $COMPRESSION = "xor" ] ; then
        COMPRESSIONTESTMODE="COMPRESSION_TIMED"
      elif [ $COMPRESSION = "xor_topoff" ] ; then
        COMPRESSIONTESTMODE="COMPRESSION_TIMED"
      else
        COMPRESSIONTESTMODE=""
        COMPRESSION="none"
      fi
    fi
  else
    if [ -n "${COMPRESSIONTESTMODE}" ] ; then
      if [ $COMPRESSIONTESTMODE = "OPMISRPLUS_TIMED" ] ; then
        COMPRESSION="opmisrplus"
      elif [ $COMPRESSIONTESTMODE = "COMPRESSION_TIMED" ] ; then
        COMPRESSION="xor"
      else
        myecho "ERROR - COMPRESSIONTESTMODE=$COMPRESSIONTESTMODE and"
        myecho "        COMPRESSION keyword is not xor or opmisrplus.  Exiting."
        exit
      fi
    else
      myecho "ERROR - COMPRESSIONTESTMODE=$COMPRESSIONTESTMODE but "
      myecho "        COMPRESSION keyword is not set.  Exiting."
      exit
    fi
  fi
else
  if [ -n "${COMPRESSION}" ] ; then
    if [ -n "${COMPRESSIONTESTMODE}" ] ; then
      TESTMODE="FULLSCAN_TIMED"
    else
      TESTMODE="FULLSCAN_TIMED"
      if [ $COMPRESSION = "opmisrplus" ] ; then
        COMPRESSIONTESTMODE="OPMISRPLUS_TIMED"
      elif [ $COMPRESSION = "opmisrplus_topoff" ] ; then
        COMPRESSIONTESTMODE="OPMISRPLUS_TIMED"
      elif [ $COMPRESSION = "xor" ] ; then
        COMPRESSIONTESTMODE="COMPRESSION_TIMED"
      elif [ $COMPRESSION = "xor_topoff" ] ; then
        COMPRESSIONTESTMODE="COMPRESSION_TIMED"
      else
        COMPRESSIONTESTMODE=""
        COMPRESSION="none"
      fi
    fi
  else
    if [ -n "${COMPRESSIONTESTMODE}" ] ; then
      if [ $COMPRESSIONTESTMODE = "OPMISRPLUS_TIMED" ] ; then
        COMPRESSION="opmisrplus"
      elif [ $COMPRESSIONTESTMODE = "COMPRESSION_TIMED" ] ; then
        COMPRESSION="xor"
      else
        COMPRESSION="none"
      fi
    else
      COMPRESSION="none"
    fi
    TESTMODE="FULLSCAN_TIMED"
  fi
fi
# export TESTMODE COMPRESSION COMPRESSIONTESTMODE COMPRESSIONASSIGNEFILE COMPRESSIONSEQDEF

# line="==============================================================================="

#---------------------------------------------------------------------------------
#                         runcmd - invokes a command
#---------------------------------------------------------------------------------
runcmd ()
{
    if [ $EXECUTE = "yes" ] ; then
      $1
      rc=$?
    else
      rc=0
    fi
    export rc

    if [ -n "${SCRIPTFILE}" ] ; then
      echo $1 >> $SCRIPTFILE
    fi
}

#---------------------------------------------------------------------------------
#                         banner - prints application start banner
#---------------------------------------------------------------------------------
banner ()
{
#   myecho " "
#   myecho $line
    if [ $EXECUTE = "yes" ] ; then
      myecho "Running $1 "
    fi
    if [ -n "${SCRIPTFILE}" ] ; then
      echo " " >> $SCRIPTFILE
      echo "echo \"Running $1 \"" >> $SCRIPTFILE
    fi
}
#---------------------------------------------------------------------------------
#                         checkLogTSV - checks TSV log to look for conditions
#                                     that might require special options for ATPG
#---------------------------------------------------------------------------------
checkLogTSV ()
{

  if [ $EXECUTE = "yes" ] ; then
    lf=$1

    egrep "TSV-369|TSV-370|TSV-381" $lf | grep "^INFO"
    TSV_error=`grep "^WARNING (TSV-384)" $lf | tail -1 | awk -F " " '{print $1}' 2>/dev/null`

    if [ -n "${TSV_error}" ] ; then
      myecho "$TSV_error messages indicate scan chains are broken. "
      if [ $CONTINUE_WITH_SEVERE = "yes" ] ; then
        myecho "Setup file specifies CONTINUE_WITH_SEVERE=yes."
        myecho "Continuing. Please review details in log file:"
        myecho "  $lf "
        myecho "$line"
      else
        myecho "Exiting. Please review details in log file:"
        myecho "  $lf "
        myecho "$line"
        exit
      fi
    fi

    # Check for contention issues and set contentionreport appropriately.
    #
    TSV_error=`egrep "TSV-093|TSV-193" $lf | grep "^WARNING" | tail -1 | awk -F " " '{print $1}' 2>/dev/null`
    if [ -n "${TSV_error}" ] ; then
      myecho "$TSV_error messages indicate possible contention (soft or hard).   "
      myecho "ATPG will continue using contentionreport=hard to ignore potential "
      myecho "soft contention due to black box outputs or other X-sources.       "
      myecho "If this is not desired, set contentionreport=soft in ATPG.         "
      myecho "Please review details in log file:                                 "
      myecho "  $lf "
      myecho "$line"
      if [ -n "${CONTENTION}" ] ; then
        # do nothing
        z=1
      else
        CONTENTION=hard
        MULTICLOCK=yes
        export CONTENTION MULTICLOCK
      fi
    fi

    # Check for clock chopper issues and simulate choppers risky if necessary.
    #
    TSV_error=`egrep "TSV-021|TSV-025|TSV-029|TSV-037|TSV-038|TSV-039|TSV-044|TSV-045|TSV-046" $lf \
    | grep "^WARNING" | tail -1 | awk -F " " '{print $1}' 2>/dev/null`
    if [ -n "${TSV_error}" ] ; then
      myecho "$TSV_error messages indicate possible invalid clock shapers (choppers)."
      myecho "ATPG will continue using choppers=risky to simulate them for highest   "
      myecho "coverage.  If this is not desired, set choppers=safe in ATPG           "
      myecho "Please review details in log file:                                     "
      myecho "  $lf "
      myecho "$line"
      if [ -n "${CHOPPERS}" ] ; then
        # do nothing
        z=1
      else
        CHOPPERS=risky
        export CHOPPERS
      fi
    fi

    # Check for keeper issues and simulate keepers risky if necessary.
    #
    TSV_error=`egrep "TSV-034|TSV-035" $lf \
    | grep "^WARNING" | tail -1 | awk -F " " '{print $1}' 2>/dev/null`
    if [ -n "${TSV_error}" ] ; then
      myecho "$TSV_error messages indicate possible invalid keeper devices."
      myecho "ATPG will continue using keepers=risky to simulate them for highest   "
      myecho "coverage.  If this is not desired, set keepers=safe in ATPG           "
      myecho "Please review details in log file:                                     "
      myecho "  $lf "
      myecho "$line"
      if [ -n "${KEEPERS}" ] ; then
        # do nothing
        z=1
      else
        KEEPERS=risky
        export KEEPERS
      fi
    fi

    # Check for infinitex issues and set infinitex=none if necessary.
    #
    TSV_error=`egrep "TSV-059|TSV-310|TSV-008" $lf \
    | grep "^WARNING" | tail -1 | awk -F " " '{print $1}' 2>/dev/null`
    if [ -n "${TSV_error}" ] ; then
      myecho "$TSV_error messages indicate design guideline violations.              "
      myecho "ATPG will continue using infinitex=none to simulate for highest        "
      myecho "coverage.  If this is not desired, set infinitex appropriately in ATPG "
      myecho "Please review details in log file:                                     "
      myecho "  $lf "
      myecho "$line"
      if [ -n "${INFINITEX}" ] ; then
        # do nothing
        z=1
      else
        INIFINITEX=none
        export INFINITEX
      fi
    fi
  fi
}
#---------------------------------------------------------------------------------
#                         checkRc - checks return code from each step
#---------------------------------------------------------------------------------
checkRc ()
{
  if [ $EXECUTE = "yes" ] ; then
    rc=$1
    lf=$2
   if [ $rc -ge 2 ] ; then
     # msgSummary2 has been updated to allow printing the summary only (no detail)
     # print the msg_summary if the new version is installed. Otherwise don't print
     # a msg_summary.
     whichMsgSummary2=`which msgSummary2 2>/dev/null`
     newMsgSummary2=`grep TWC_msgdetail $whichMsgSummary2`
     if [ -n "${newMsgSummary2}" ]; then
       TWC_msgdetail="no"
       TWC_msglevel="W"
       export TWC_msgdetail TWC_msglevel
       savepwd=$PWD
       if [ -d $WORKDIR/testresults/logs ] ; then
         cd $WORKDIR/testresults/logs
         cat $lf | msgSummary2
         unset TWC_msgdetail
         cd $savepwd
       fi
     fi
   fi

    m=`grep TNP-011 $logdir/$lf`
    if [ -n "$m" ] ; then
      myecho "ERROR - The following message was issued that is considered fatal"
      myecho "        for the use model script."
      myecho "$m"
      myecho "Please check the TDR used to build the testmode. to make sure that "
      myecho "it is compatible with the frequency of the tests being generated. "
      rc=5
    fi

    m=`grep TWC-002 $logdir/$lf`
    if [ -n "$m" ] ; then
      myecho "ERROR - The following message was issued that is considered fatal"
      myecho "        for the use model script."
      myecho "$m"
      myecho "Please check the file system space available. "
      rc=5
    fi
    m=`grep TFW-060 $logdir/$lf`
    if [ -n "$m" ] ; then
      myecho "ERROR - The following message was issued that is considered fatal"
      myecho "        for the use model script."
      myecho "$m"
      myecho "Please check the file system space available. "
      rc=5
    fi

    if [ $rc -lt 2 ] ; then
  #   myecho "Completed Successfully.  Continuing.  Details are in log file:                            "
  #   myecho "  $logdir/$lf "
  #   myecho "$line"
      myecho "Completed Successfully.  Continuing."
      myecho " "
      myecho "$line"
    elif [ $rc -lt 4 ] ; then
      myecho "Warnings occurred.  Continuing.  Please review details in log file:"
      myecho "  $logdir/$lf "
      myecho " "
      myecho "$line"
    elif [ $rc -eq 4 ] ; then
      if [ $CONTINUE_WITH_SEVERE = "yes" ] ; then
        myecho "Severe Warnings occurred.  Setup file specifies CONTINUE_WITH_SEVERE=yes."
        myecho "  Continuing. Please review details in log file:"
        myecho "  $logdir/$lf "
        myecho " "
        myecho "$line"
      else
        myecho "Severe warnings occurred.  Exiting.  Please review details in log file:   "
        myecho "  $logdir/$lf "
        myecho " "
        myecho "$line"
        exit
      fi
    else
      myecho "Errors occurred.  Exiting.  Please review details in log file:   "
      myecho "  $logdir/$lf "
      myecho " "
      myecho "$line"
      exit
    fi
  fi
}

#---------------------------------------------------------------------------------
#                         report_test_coverage - reports test coverage :-)
#---------------------------------------------------------------------------------
report_test_coverage ()
{
  if [ $EXECUTE = "yes" ] ; then
    type=$1

    tm=$2
    exp=$3
    tm_exp="${tm}_${exp}"

    if [ $rc -lt 5 ] ; then
     if [ -n "${exp}" ] ; then
       report_fault_statistics $O testmode=$tm experiment=$exp colsredundant=yes globalscope=no rowsdynamic=total
       stcov=`grep "Total Static" $logdir/log_report_fault_statistics_$tm_exp | tail -1 | awk -F" " '{print $7 }'`
       if [ $type = "dynamic" ] ; then
         tcov=`grep "Total Dynamic" $logdir/log_report_fault_statistics_$tm_exp | tail -1 | awk -F" " '{print $7 }'`
       else
         tcov=$stcov
       fi
       report_vector_statistics $O testmode=$tm experiment=$exp logfile=$logdir/log_report_vector_statistics_$tm_exp
       tpatt=`grep "Test Sequences..." $logdir/log_report_vector_statistics_$tm_exp | tail -1 | awk -F" " '{print $3}'`
#      tpatt=`expr $tpatt - 1`
       tpatt=`expr $tpatt`
       myecho "$line"
       if [ $type = "dynamic" ] ; then
         myecho "Total Static Coverage: $stcov%; Total Dynamic Coverage: $tcov%; Experiment Patterns $tpatt;"
       else
         myecho "Total Static Coverage: $stcov%; Experiment Patterns $tpatt;"
       fi
       myecho "$line"
     else
       report_fault_statistics $O testmode=$tm colsredundant=yes globalscope=no rowsdynamic=total
       stcov=`grep "Total Static" $logdir/log_report_fault_statistics_$tm | tail -1 | awk -F" " '{print $7 }'`
       if [ $type = "dynamic" ] ; then
         tcov=`grep "Total Dynamic" $logdir/log_report_fault_statistics_$tm | tail -1 | awk -F" " '{print $7 }'`
       else
         tcov=$stcov
       fi
       report_vector_statistics $O testmode=$tm logfile=$logdir/log_report_vector_statistics_$tm
       tpatt=`grep "Test Sequences..." $logdir/log_report_vector_statistics_$tm | tail -1 | awk -F" " '{print $3}'`
#      tpatt=`expr $tpatt - 1`
       tpatt=`expr $tpatt`
       if [ $COMPRESSION != "none" ] ; then
         if [ $COMPRESSIONTESTMODE != $TESTMODE ] ; then
          if [ -f $logdir/log_report_vector_statistics_$COMPRESSIONTESTMODE ] ; then
           tpatt2=`grep "Test Sequences..." $logdir/log_report_vector_statistics_$COMPRESSIONTESTMODE | tail -1 | awk -F" " '{print $3}'`
#          tpatt=`expr $tpatt2 + $tpatt - 1`
           tpatt=`expr $tpatt2 + $tpatt`
          fi
         else
          if [ -f $logdir/log_report_vector_statistics_$saveTESTMODE ] ; then
           tpatt2=`grep "Test Sequences..." $logdir/log_report_vector_statistics_$saveTESTMODE | tail -1 | awk -F" " '{print $3}'`
#          tpatt=`expr $tpatt2 + $tpatt - 1`
           tpatt=`expr $tpatt2 + $tpatt`
          fi
         fi
       fi
       myecho "$line"
       if [ $type = "dynamic" ] ; then
         myecho "Total Static Coverage: $stcov%; Total Dynamic Coverage: $tcov%; Total Patterns $tpatt;"
       else
         myecho "Total Static Coverage: $stcov%; Total Patterns $tpatt;"
       fi
       myecho "$line"
     fi
    fi
  fi
    export tcov stcov tpatt
}
#---------------------------------------------------------------------------------
#    Prepare circuit for test generation runs
#---------------------------------------------------------------------------------

logdir=$WORKDIR/testresults/logs           # shorthand for summarizing logs
O=" nostdout=yes "
cleanmode="yes"                            # if restarting ATPG, need to clean out test mode
                                           # results.  Otherwise, don't clean out
MULTICLOCK=""


if [ $EXITBEFORE = "build_model" ] ; then
  myecho "Setup file indicates exit before $EXITBEFORE.  Exiting.";
  exit
fi

if [ $RESTART = "build_model" ] ; then
  if [ -n "${SCRIPTFILE}" ] ; then
    touch $SCRIPTFILE
    if [ -f "${SCRIPTFILE}" ] ; then
      myecho "Saving Encounter Test commands to script file: ";
      myecho " $SCRIPTFILE";
      if [ $EXECUTE = "no" ] ; then
        myecho "Setup file indicates EXECUTE=no.  Commands will not be executed.";
      fi
      echo "#!/bin/sh" > $SCRIPTFILE
      echo "# Encounter Test Use Model Script Generated Commands" >> $SCRIPTFILE
      echo "# Setup file: $filename " >> $SCRIPTFILE
      echo "# Date: `date`" >> $SCRIPTFILE
      echo " " >> $SCRIPTFILE
      echo "WORKDIR=$WORKDIR" >> $SCRIPTFILE
      echo "export WORKDIR" >> $SCRIPTFILE
      chmod +x $SCRIPTFILE
    else
      myecho "Could not create script file $SCRIPTFILE.";
      myecho " To run without a script file, set \$SCRIPTFILE to \"\" in the setup file: ";
      myecho " $filename.  Exiting."
      exit
    fi
  else
    if [ $EXECUTE = "no" ] ; then
      myecho "Setup file indicates EXECUTE=no, but no SCRIPTFILE has been specified to";
      myecho "save commands for execution at a later time.  Either specify EXECUTE=yes";
      myecho "to run the script or specify a SCRIPTFILE to save the commands in a file.";
      myecho "Exiting.";
      exit
    fi
  fi

  if [ \( $EXECUTE = "yes" \) -a \( $REMOVE_OLD_LOGFILES = "yes" \) ] ; then
    if [ -d $logdir ] ; then
      savepwd=$PWD
      cd $logdir
      rm log_*
      cd $savepwd
    fi
  fi

  if [ $ATPGTYPE != "static" ] ; then
    tt=yes
  fi

  extraparms=""
  if [ -n "${NOFAULTS}" ]; then
    extraparms="editfile=$NOFAULTS "
  fi
  if [ "${BLACKBOXOUTPUTS}" = "z" ] ; then
    extraparms="$extraparms -i "
  fi
  if [ -n "${VLOGPARSER}" ]; then
    extraparms="vlogparser=$VLOGPARSER "
  fi
  if [ -n "${OPTIMIZE}" ]; then
    extraparms="optimize=$OPTIMIZE "
  fi

  myecho "Using WORKDIR=$WORKDIR"
  savetestmode=$TESTMODE
  unset TESTMODE
  banner "build_model"
  runcmd "build_model $O source=$DESIGNSOURCE techlib=$TECHLIB \
              truetime=$tt industrycompatible=$INDUSTRYCOMPATIBLE \
              TEIperiod=_dOt_ cell=$TOPCELL \
              $extraparms allowincomplete=$CREATEBLACKBOXES blackboxoutputs=$BLACKBOXOUTPUTS"
  checkRc $rc "log_build_model"
  RESTART="build_testmode"
  TESTMODE=$savetestmode
  # export TESTMODE
else
  myecho "Setup file indicates restart at $RESTART."
fi


if [ $EXITBEFORE = "build_testmode" ] ; then
  myecho "Setup file indicates exit before $EXITBEFORE.  Exiting."
  exit
fi
if [ $RESTART = "build_testmode" ] ; then

  extraparms=""
  if [ -n "${SEQPATH}" ]; then
    extraparms="seqpath=$SEQPATH "
  fi
  if [ -n "${SEQPATH}" ]; then
    extraparms="seqdef=$SEQDEF "
  fi
  if [ -n "${TDRPATH}" ]; then
    extraparms="tdrpath=$TDRPATH "
  fi
  if [ -n "${ASSIGNFILE}" ]; then
    extraparms="assignfile=$ASSIGNFILE "
  fi
  if [ -n "${MODEDEF}" ]; then
    extraparms="modedef=$MODEDEF "
  fi
  if [ -n "${MODEDEFPATH}" ]; then
    extraparms="modedefpath=$MODEDEFPATH "
  fi
  banner "build_testmode $TESTMODE"
  runcmd "build_testmode $O testmode=$TESTMODE $extraparms"
  checkRc $rc "log_build_testmode_$TESTMODE"

  banner "verify_test_structures $TESTMODE - scanchain tests"
  lf=$logdir/log_verify_test_structures_scanchain_$TESTMODE
  if [ -f $lf ] ; then
    rm $lf
  fi
  runcmd "verify_test_structures $O testmode=$TESTMODE testregsusage=yes testdefaults=no logfile=$lf"
  checkLogTSV $lf
  checkRc $rc "log_verify_test_structures_scanchain_$TESTMODE"

  banner "verify_test_structures $TESTMODE - remaining checks"
  runcmd "verify_test_structures $O testmode=$TESTMODE"
  lf=$logdir/log_verify_test_structures_$TESTMODE
  checkLogTSV "$lf"
  checkRc $rc "log_verify_test_structures_$TESTMODE"

  if [ $COMPRESSION != "none" ] ; then
    banner "build_testmode $COMPRESSIONTESTMODE"
    runcmd "build_testmode $O testmode=$COMPRESSIONTESTMODE seqpath=$SEQPATH seqdef=$COMPRESSIONSEQDEF tdrpath=$TDRPATH assignfile=$COMPRESSIONASSIGNFILE"
    checkRc $rc "log_build_testmode_$COMPRESSIONTESTMODE"

    banner "verify_test_structures $COMPRESSIONTESTMODE - scanchain tests"
    lf=$logdir/log_verify_test_structures_scanchain_$COMPRESSIONTESTMODE
    runcmd "verify_test_structures $O testmode=$COMPRESSIONTESTMODE testregsusage=yes testdefaults=no logfile=$lf"
    checkLogTSV $lf
    checkRc $rc "log_verify_test_structures_scanchain_$COMPRESSIONTESTMODE"

    banner "verify_test_structures $COMPRESSIONTESTMODE - remaining checks"
    runcmd "verify_test_structures $O testmode=$COMPRESSIONTESTMODE"
    lf=$logdir/log_verify_test_structures_$COMPRESSIONTESTMODE
    checkLogTSV "$lf"
    checkRc $rc "log_verify_test_structures_$COMPRESSIONTESTMODE"
  fi

  # These are set after TSV - because TSV might muck with the settings.
  tg=" globalterm=none measurelatch=normal"
  if [ -n "${CONTENTION}" ]; then
    tg=$tg" contentionreport=$CONTENTION"
  fi
  if [ -n "${CHOPPERS}" ]; then
    tg=$tg" choppers=$CHOPPERS"
  fi
  if [ -n "${KEEPERS}" ]; then
    tg=$tg" keepers=$KEEPERS"
  fi
  if [ -n "${INFINITEX}" ]; then
    tg=$tg" infinitex=$INFINTEX"
  fi
  if [ \( -n "${EARLYMODE}" \) -a \( $ATPGTYPE != "static" \) ]; then
    tg=$tg" earlymode=$EARLYMODE"
  fi
  if [ \( -n "${LATEMODE}" \) -a \( $ATPGTYPE != "static" \) ]; then
    tg=$tg" latemode=$LATEMODE"
  fi

  if [ $INDUSTRYCOMPATIBLE = "yes" ] ; then
    apf=no
    ii=yes
  fi

  saveTESTMODE=$TESTMODE
  unset TESTMODE
  banner "build_faultmodel"
  runcmd "build_faultmodel $O includeignore=$ii cellfaults=$CELLFAULTS autopatternfaults=$apf"
  if [ \( $EXECUTE = "yes" \) -a \( $rc -lt 5 \) ] ; then
    totsf=`grep "Total Static" $logdir/log_build_faultmodel | tail -1 | awk -F " " '{print $3}' 2>/dev/null`
    totdf=`grep "Total Dynamic" $logdir/log_build_faultmodel | tail -1 | awk -F " " '{print $3}' 2>/dev/null`
    myecho "Total Static  Faults: $totsf"
    myecho "Total Dynamic Faults: $totdf"
    if [ \( $totdf = 0 \) -a \( $ATPGTYPE != "static" \) ] ; then
      myecho "ERROR - ATPGTYPE was specified as $ATPGTYPE, but testmode $TESTMODE does not include"
      myecho "        dynamic faults.  Please specify a testmode such as FULLSCAN_TIMED that "
      myecho "        does include dynamic faults. Exiting.\n"
      exit
    fi
  fi
  checkRc $rc "log_build_faultmodel"
  TESTMODE=$saveTESTMODE
  # export TESTMODE
  cleanmode="no"      # don't need to remove test mode contents if restarting in ATPG
  if [ $ATPGTYPE != "static" ] ; then
    RESTART="read_sdc"
  else
    RESTART="atpg"
  fi
fi


if [ "static" != "$ATPGTYPE" ] ; then
  if [ $ALLOWLASTSHIFTLAUNCH = "yes" ] ; then
    funcrelease="dynfuncrelease=no allowedpitransitions=5 dynseqfilter=clkpiclk "
  fi
  if [ $DYNAMICCOVERAGE = "fullchip" ] ; then
    seqfilter="dynseqfilter=any dynpomeasure=yes allowedpitransitions=9999 "
  fi
  if [ $DYNAMICCOVERAGE = "alldomains" ] ; then
    seqfilter="dynseqfilter=any dynpomeasure=yes allowedpitransitions=9999 "
  fi
    #---------------------------------------------------------------------------------
    # reset clock lineholds
    #---------------------------------------------------------------------------------
    # If the command can be found, use it.  Otherwise, skip it
    #  It is a perl script that the user may not have installed.
    #---------------------------------------------------------------------------------
    whichresult=`which create_reset_lineholds 2>/dev/null`
    if [ -f "${whichresult}" ] ; then
      exp=reset
      banner "create_reset_lineholds $TESTMODE"
      runcmd "create_reset_lineholds $O workdir=$WORKDIR testmode=$TESTMODE"
      if [ -f "$WORKDIR/testresults/reset_lineholds.$TESTMODE" ] ; then
       if [ -f "$LINEHOLD" ] ; then
        myecho "Combining User Lineholds with Reset Test Lineholds"
        cat $LINEHOLD $WORKDIR/testresults/reset_lineholds.$TESTMODE > $WORKDIR/testresults/lineholds.$TESTMODE
        LINEHOLD=$WORKDIR/testresults/lineholds.$TESTMODE
       else
         LINEHOLD=$WORKDIR/testresults/reset_lineholds.$TESTMODE
       fi
      fi
    fi

  #---------------------------------------------------------------------------------
  # read_sdc
  #---------------------------------------------------------------------------------


  if [ $EXITBEFORE = "read_sdc" ] ; then
    myecho "Setup file indicates exit before $EXITBEFORE.  Exiting.";
    exit
  fi
  if [ "${RESTART}" = "read_sdc" ] ; then
    if [ -n "${SDCNAME}" ]; then
      if [ -n "${SDCPATH}" ]; then

        banner "read_sdc $TESTMODE $SDCNAME"
        if [ $COMPRESSION = "none" ] ; then
          runcmd "read_sdc $O testmode=$TESTMODE sdcpath=$SDCPATH sdc=$SDCNAME"
          checkRc $rc "log_read_sdc_$TESTMODE"
        else
#         runcmd "read_sdc $O testmode=$TESTMODE,$COMPRESSIONTESTMODE sdcpath=$SDCPATH sdcname=$SDCNAME"
#         checkRc $rc "log_read_sdc_$TESTMODE..."
          runcmd "read_sdc $O testmode=$TESTMODE sdcpath=$SDCPATH sdcname=$SDCNAME"
          checkRc $rc "log_read_sdc_$TESTMODE..."
        fi
        timed=yes
      else
        myecho "ERROR - SDCNAME specified, but no SDCPATH.  For fixed-time,";
        myecho "         at-speed for faster than at-speed, specify both SDCPATH";
        myecho "         and SDCNAME.  Exiting.";
        exit         # Exit Encounter Test shell
      fi
    else
      if [ -n "${SDCPATH}" ]; then
        myecho "ERROR - SDCPATH specified, but no SDCNAME.  For fixed-time,";
        myecho "         at-speed for faster than at-speed, specify both SDCPATH";
        myecho "         and SDCNAME.  Exiting.";
        exit         # Exit Encounter Test shell
      fi
    fi

  #---------------------------------------------------------------------------------
  # read_sdf
  #---------------------------------------------------------------------------------
    if [ -n "${SDFNAME}" ]; then
      if [ -n "${SDFPATH}" ]; then
        if [ -n "${TEMPLATESOURCE}" ]; then
          banner "read_celldelay_template $TESTMODE"
          runcmd "read_celldelay_template $O templatesource=$TEMPLATESOURCE"
          checkRc $rc "log_read_celldelay_template_$TESTMODE"
        fi

        banner "read_sdf $TESTMODE $SDFNAME"
        delaymodel=$TESTMODE
        if [ $COMPRESSION = "none" ] ; then
          runcmd "read_sdf $O delaymodel=$TESTMODE testmode=$TESTMODE sdfpath=$SDFPATH sdfname=$SDFNAME linehold=$LINEHOLD"
          checkRc $rc "log_read_sdf_$TESTMODE"
        else
#         runcmd "read_sdf $O delaymodel=$TESTMODE testmode=$TESTMODE,$COMPRESSIONTESTMODE sdfpath=$SDFPATH sdfname=$SDFNAME linehold=$LINEHOLD"
#         checkRc $rc "log_read_sdf_$TESTMODE..."
          runcmd "read_sdf $O delaymodel=$TESTMODE testmode=$TESTMODE sdfpath=$SDFPATH sdfname=$SDFNAME linehold=$LINEHOLD"
          checkRc $rc "log_read_sdf_$TESTMODE"
        fi
        timed=yes
      else
        myecho "ERROR - SDFNAME specified, but no SDFPATH.  For at-speed ";
        myecho "         or faster than at-speed, specify both SDFNAME and";
        myecho "         SDFPATH.  For fixed-time, specify neither. Exiting.";
        exit         # Exit Encounter Test shell
      fi
    else
      if [ -n "${SDFPATH}" ]; then
        myecho "ERROR - SDFPATH specified, but no SDFNAME.  For at-speed ";
        myecho "         or faster than at-speed, specify both SDFNAME and";
        myecho "         SDFPATH.  For fixed-time, specify neither. Exiting.";
        exit         # Exit Encounter Test shell
      else
        # fixed time - nothing to do.
        delaymodel=
        timed=no
      fi
    fi
    RESTART="atpg"
  fi # if restart=read_sdc


  if [ $EXITBEFORE = "atpg" ] ; then
    myecho "Setup file indicates exit before $EXITBEFORE.  Exiting.";
    exit
  fi
  if [ $RESTART = "atpg" ] ; then

    #---------------------------------------------------------------------------------
    # remove previously committed tests, if any exist
    #---------------------------------------------------------------------------------
    if [ $cleanmode = "yes" ] ; then
      lf=$logdir/log_verify_test_structures_scanchain_$TESTMODE
      checkLogTSV $lf
      lf=$logdir/log_verify_test_structures_$TESTMODE
      checkLogTSV $lf
      # These are set after TSV - because TSV might muck with the settings.
      tg=" globalterm=none measurelatch=normal"
      if [ -n "${CONTENTION}" ]; then
        tg=$tg" contentionreport=$CONTENTION"
      fi
      if [ -n "${CHOPPERS}" ]; then
        tg=$tg" choppers=$CHOPPERS"
      fi
      if [ -n "${KEEPERS}" ]; then
        tg=$tg" keepers=$KEEPERS"
      fi
      if [ -n "${INFINITEX}" ]; then
        tg=$tg" infinitex=$INFINTEX"
      fi
      if [ \( -n "${EARLYMODE}" \) -a \( $ATPGTYPE != "static" \) ]; then
        tg=$tg" earlymode=$EARLYMODE"
      fi
      if [ \( -n "${LATEMODE}" \) -a \( $ATPGTYPE != "static" \) ]; then
        tg=$tg" latemode=$LATEMODE"
      fi
      banner "delete_committed_tests $TESTMODE"
      runcmd "delete_committed_tests $O testmode=$TESTMODE"
      checkRc $rc "log_delete_committed_tests_$TESTMODE"
    fi

    #---------------------------------------------------------------------------------
    # use previously specified delay model if one was created
    #---------------------------------------------------------------------------------
    if [ -n "${SDFNAME}" ] ; then
      if [ -n "${SDFPATH}" ] ; then
        delaymodel=$TESTMODE
      fi
    fi

    #---------------------------------------------------------------------------------
    # scan chain test
    #---------------------------------------------------------------------------------
    exp=scan
    banner "create_scanchain_delay_tests $TESTMODE $exp"
    runcmd "create_scanchain_delay_tests $O testmode=$TESTMODE experiment=$exp $tg" \
     | grep "Simulation #"
    report_test_coverage dynamic $TESTMODE $exp
    tm_exp=$TESTMODE"_$exp"
    checkRc $rc "log_create_scanchain_delay_tests_$tm_exp"
    banner "commit_tests $TESTMODE $exp"
    runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
    report_test_coverage dynamic $TESTMODE
    checkRc $rc "log_commit_tests_$tm_exp"

    #---------------------------------------------------------------------------------
    # scan chain test
    #---------------------------------------------------------------------------------
    if [ $COMPRESSION != "none" ] ; then
      exp=scan
      banner "create_scanchain_delay_tests $COMPRESSIONTESTMODE $exp"
      runcmd "create_scanchain_delay_tests $O testmode=$COMPRESSIONTESTMODE experiment=$exp $tg" \
       | grep "Simulation #"
      tm_exp=$COMPRESSIONTESTMODE"_$exp"
      report_test_coverage dynamic $COMPRESSIONTESTMODE $exp
      checkRc $rc "log_create_scanchain_delay_tests_$tm_exp"
      banner "commit_tests $COMPRESSIONTESTMODE $exp - to save scan chain test patterns"
      runcmd "commit_tests $O testmode=$COMPRESSIONTESTMODE inexperiment=$exp"
      report_test_coverage dynamic $COMPRESSIONTESTMODE
      checkRc $rc "log_commit_tests_$tm_exp"
      savetestmode=$TESTMODE
      TESTMODE=$COMPRESSIONTESTMODE
    else
      savetestmode=$TESTMODE
    fi

    #---------------------------------------------------------------------------------
    # reset clock test
    #---------------------------------------------------------------------------------
    # If the command can be found, use it.  Otherwise, skip it
    #  It is a perl script that the user may not have installed.
    #---------------------------------------------------------------------------------
    whichresult=`which create_reset_delay_tests 2>/dev/null`
    if [ -f "${whichresult}" ] ; then
      exp=reset
      banner "create_reset_delay_tests $TESTMODE $exp"
      runcmd "create_reset_delay_tests $O workdir=$WORKDIR testmode=$TESTMODE experiment=$exp contentionreport=$CONTENTION"
      tm_exp=$TESTMODE"_$exp"
      if [ \( -f "$WORKDIR/tbdata/TBDbin.$TESTMODE.$exp" \) -o \( $EXECUTE = "no" \) ] ; then
        report_test_coverage dynamic $TESTMODE $exp
        checkRc $rc "log_create_reset_delay_tests_$tm_exp"
        banner "commit_tests $TESTMODE $exp"
        runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
        report_test_coverage dynamic $TESTMODE ""
        checkRc $rc "log_commit_tests_$tm_exp"

        if [ -f "$WORKDIR/testresults/reset_lineholds.$TESTMODE" ] ; then
         if [ -f "$LINEHOLD" ] ; then
          myecho "Combining User Lineholds with Reset Test Lineholds"
          cat $LINEHOLD $WORKDIR/testresults/reset_lineholds.$TESTMODE > $WORKDIR/testresults/lineholds.$TESTMODE
          LINEHOLD=$WORKDIR/testresults/lineholds.$TESTMODE
         else
          LINEHOLD=$WORKDIR/testresults/reset_lineholds.$TESTMODE
         fi
        fi
      fi
    fi

    if [ -n "${LINEHOLD}" ]; then
      tg=$tg" linehold=$LINEHOLD"
    fi
    #---------------------------------------------------------------------------------
    # prepare_logic_delay
    #---------------------------------------------------------------------------------
    banner "prepare_logic_delay $TESTMODE"
    runcmd "prepare_logic_delay $O testmode=$TESTMODE clockconstraints=$CLOCKCONSTRAINTS \
      delaymodel=$delaymodel \
      $seqfilter $funcrelease \
      checktestdelays=internal maxbestsequences=$MAXSEQ"
#
# Note - uncomment this when prepare supports these keywords.  It should, but doesn't.
#     testsequence=$DYNAMICSEQUENCES
    checkRc $rc "log_prepare_logic_delay_$TESTMODE"


    #---------------------------------------------------------------------------------
    # create_logic_timed_delay_tests
    #---------------------------------------------------------------------------------
    exp=logic
    banner "create_logic_timed_delay_tests $TESTMODE $exp"
    runcmd "create_logic_timed_delay_tests $O testmode=$TESTMODE delaymodel=$delaymodel \
      clockconstraints=$CLOCKCONSTRAINTS useprep=yes \
      testsequence=$DYNAMICSEQUENCES experiment=$exp \
      $seqfilter $funcrelease maxcputime=$MAXCPUTIME \
      latchsimulation=pessimistic \
      $tg multiclockcompaction=$MULTICLOCK" \
     | grep "Simulation #"
    tm_exp=$TESTMODE"_$exp"
    report_test_coverage dynamic $TESTMODE $exp
    checkRc $rc "log_create_logic_timed_delay_tests_$tm_exp"

    if [ $DELAYTESTTHRUMEMORIES = "yes" ] ; then
     if [ -n $CLOCKCONSTRAINTS2 ] ; then # don't do this at fastest speed
      banner "create_logic_timed_delay_tests - through memories $TESTMODE $exp"
      runcmd "create_logic_timed_delay_tests $O testmode=$TESTMODE delaymodel=$delaymodel \
      clockconstraints=$CLOCKCONSTRAINTS2 useprep=yes \
        testsequence=$DYNAMICSEQUENCES experiment=$exp \
        $seqfilter $funcrelease maxcputime=$MAXCPUTIME \
        dynonly2clocks=no allowedjustifytimeframes=7 \
        latchsimulation=pessimistic \
        append=yes $tg multiclockcompaction=$MULTICLOCK" \
      | grep "Simulation #"
      tm_exp=$TESTMODE"_$exp"
      report_test_coverage dynamic $TESTMODE $exp
      checkRc $rc "log_create_logic_timed_delay_tests_$tm_exp"
     fi
    fi

    if [ $SORTPATTERNS = "yes" ]; then
      exp=sorted_logic
      banner "compact_vectors $TESTMODE $exp - to reduce patterns to nearest 0.05% coverage"
      runcmd "compact_vectors $O testmode=$TESTMODE inexperiment=logic experiment=$exp \
        resimulate=yes reorder=coverage \
        $tg"
      tm_exp=$TESTMODE"_$exp"
      tm_inexp_exp=$TESTMODE"_logic_$exp"
      report_test_coverage dynamic $TESTMODE $exp
      checkRc $rc "log_compact_vectors_$tm_inexp_exp"
      banner "commit_tests $TESTMODE $exp - to save sorted tests"
      runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
      report_test_coverage dynamic $TESTMODE ""
      tm_exp=$TESTMODE"_logic_$exp"
      checkRc $rc "log_commit_tests_$tm_exp"
    else
      exp=logic
      banner "commit_tests $TESTMODE $exp - to save timed tests"
      runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
      report_test_coverage dynamic $TESTMODE ""
      tm_exp=$TESTMODE"_$exp"
      checkRc $rc "log_commit_tests_$tm_exp"
    fi

  #---------------------------------------------------------------------------------
  #      faster than at-speed
  #---------------------------------------------------------------------------------
    if [ -n "${CLOCKCONSTRAINTS2}" ]; then
      banner "prepare_logic_delay $TESTMODE - to analyze 2nd set of clock domains"
      runcmd "prepare_logic_delay $O testmode=$TESTMODE clockconstraints=$CLOCKCONSTRAINTS2
        delaymodel=$delaymodel \
        $seqfilter $funcrelease \
        maxbestsequences=$MAXSEQ"
        # add this in when prepare_logic_delay supports test_sequence.
        # testsequence=$DYNAMICSEQUENCES
      checkRc $rc "log_prepare_logic_delay_$TESTMODE"
      exp=logic2
      banner "create_logic_timed_delay_tests $TESTMODE $exp - for 2nd set of clock domains"
      runcmd "create_logic_timed_delay_tests $O testmode=$TESTMODE delaymodel=$delaymodel \
      clockconstraints=$CLOCKCONSTRAINTS2 useprep=yes \
        testsequence=$DYNAMICSEQUENCES experiment=$exp \
        $seqfilter $funcrelease maxcputime=$MAXCPUTIME \
        latchsimulation=pessimistic \
        $tg multiclockcompaction=$MULTICLOCK" \
      | grep "Simulation #"
      tm_exp=$TESTMODE"_$exp"
      report_test_coverage dynamic $TESTMODE $exp
      checkRc $rc "log_create_logic_timed_delay_tests_$tm_exp"

      if [ $SORTPATTERNS = "yes" ]; then
        exp=sorted_logic2
        banner "compact_vectors $TESTMODE $exp - to sort 2nd set of patterns within 0.05% coverage"
        runcmd "compact_vectors $O testmode=$TESTMODE inexperiment=logic2 experiment=$exp \
        resimulate=yes reorder=coverage \
          $tg"
        tm_inexp_exp=$TESTMODE"_logic2_$exp"
        tm_exp=$TESTMODE"_$exp"
        report_test_coverage dynamic $TESTMODE $exp
        checkRc $rc  "log_compact_vectors_$tm_inexp_exp"
        banner "commit_tests $TESTMODE $exp - to save 2nd set of sorted patterns"
        tm_exp=$TESTMODE"_$exp"
        runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
        report_test_coverage dynamic $TESTMODE ""
        checkRc $rc "log_commit_tests_$tm_exp"
      else
        exp=logic2
        banner "commit_tests $TESTMODE $exp - to save 2nd set of patterns"
        runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
        report_test_coverage dynamic $TESTMODE ""
        tm_exp=$TESTMODE"_$exp"
        checkRc $rc "log_commit_tests_$tm_exp"
      fi
    fi

    if [ -n "${CLOCKCONSTRAINTS3}" ]; then
      banner "prepare_logic_delay $TESTMODE - to analyze 3rd set of clock domains"
      runcmd "prepare_logic_delay $O testmode=$TESTMODE clockconstraints=$CLOCKCONSTRAINTS3
        delaymodel=$delaymodel
        $seqfilter $funcrelease \
        maxbestsequences=$MAXSEQ"
      # uncomment when prepare supports test sequence
      # testsequence=$DYNAMICSEQUENCES \
      checkRc $rc "log_prepare_logic_delay_$TESTMODE"
      exp=logic3
      banner "create_logic_timed_delay_tests $TESTMODE $EXP - for 3rd set of clock domains"
      runcmd "create_logic_timed_delay_tests $O testmode=$TESTMODE delaymodel=$delaymodel \
      clockconstraints=$CLOCKCONSTRAINTS3 useprep=yes \
        testsequence=$DYNAMICSEQUENCES experiment=$exp \
        $seqfilter $funcrelease maxcputime=$MAXCPUTIME \
        latchsimulation=pessimistic \
        $tg multiclockcompaction=$MULTICLOCK" \
      | grep "Simulation #"
      tm_exp=$TESTMODE"_$exp"
      report_test_coverage dynamic $TESTMODE $exp
      checkRc $rc "log_create_logic_timed_delay_tests_$tm_exp"

      if [ $DELAYTESTTHRUMEMORIES = "yes" ] ; then
        banner "create_logic_timed_delay_tests - through memories $TESTMODE $exp"
        runcmd "create_logic_timed_delay_tests $O testmode=$TESTMODE delaymodel=$delaymodel \
      clockconstraints=$CLOCKCONSTRAINTS3 useprep=yes \
          testsequence=$DYNAMICSEQUENCES experiment=$exp \
          $seqfilter $funcrelease maxcputime=$MAXCPUTIME\
          dynonly2clocks=no allowedjustifytimeframes=7 \
          append=yes \
          latchsimulation=pessimistic \
          $tg multiclockcompaction=$MULTICLOCK" \
        | grep "Simulation #"
        tm_exp=$TESTMODE"_$exp"
        report_test_coverage dynamic $TESTMODE $exp
        checkRc $rc "log_create_logic_timed_delay_tests_$tm_exp"
      fi

      if [ $SORTPATTERNS = "yes" ]; then
        exp=sorted_logic3
        banner "compact_vectors $TESTMODE $exp - to sort 3rd set of patterns within 0.05% coverage "
        runcmd "compact_vectors $O testmode=$TESTMODE inexperiment=logic3 experiment=$exp \
        resimulate=yes reorder=coverage \
          $tg"
        tm_inexp_exp=$TESTMODE"_logic3_$exp"
        tm_exp=$TESTMODE"_$exp"
        report_test_coverage dynamic $TESTMODE $exp
        checkRc $rc "log_compact_vectors_$tm_inexp_exp"
        banner "commit_tests $TESTMODE $exp - to save 3rd set of patterns"
        runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
        report_test_coverage dynamic $TESTMODE ""
        tm_exp=$TESTMODE"_$exp"
        checkRc $rc "log_commit_tests_$tm_exp"
      else
        exp=logic3
        banner "commit_tests $TESTMODE $exp to save 3rd set of patterns"
        runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
        report_test_coverage dynamic $TESTMODE ""
        tm_exp=$TESTMODE"_$exp"
        checkRc $rc "log_commit_tests_$tm_exp"
      fi
    fi

  #---------------------------------------------------------------------------------
  #      top off compression patterns with fullscan patterns
  #---------------------------------------------------------------------------------
    if [ \( $COMPRESSION = "xor_topoff" \) -o \( $COMPRESSION = "opmisrplus_topoff" \) ] ; then
      #---------------------------------------------------------------------------------
      # prepare_logic_delay
      #---------------------------------------------------------------------------------
      banner "prepare_logic_delay $savetestmode"
      if [ -n $CLOCKCONSTRAINTS3 ] ; then # use slowest speed available
        runcmd "prepare_logic_delay $O testmode=$savetestmode clockconstraints=$CLOCKCONSTRAINTS3 \
          delaymodel=$delaymodel \
          $seqfilter $funcrelease \
          checktestdelays=internal maxbestsequences=$MAXSEQ"
      elif [ -n $CLOCKCONSTRAINTS2 ] ; then
        runcmd "prepare_logic_delay $O testmode=$savetestmode clockconstraints=$CLOCKCONSTRAINTS2 \
          delaymodel=$delaymodel \
          $seqfilter $funcrelease \
          checktestdelays=internal maxbestsequences=$MAXSEQ"
      else
        runcmd "prepare_logic_delay $O testmode=$savetestmode clockconstraints=$CLOCKCONSTRAINTS \
          delaymodel=$delaymodel \
          $seqfilter $funcrelease \
          checktestdelays=internal maxbestsequences=$MAXSEQ"
      fi
      checkRc $rc "log_prepare_logic_delay_$savetestmode"

      #---------------------------------------------------------------------------------
      # create_logic_timed_delay_tests
      #---------------------------------------------------------------------------------
      exp=logic
      banner "create_logic_timed_delay_tests $savetestmode $exp"
      runcmd "create_logic_timed_delay_tests $O testmode=$savetestmode delaymodel=$delaymodel \
      clockconstraints=$CLOCKCONSTRAINTS useprep=yes \
        testsequence=$DYNAMICSEQUENCES experiment=$exp \
        $seqfilter $funcrelease maxcputime=$MAXCPUTIME \
        latchsimulation=pessimistic \
        $tg multiclockcompaction=$MULTICLOCK" \
       | grep "Simulation #"
      tm_exp=$savetestmode"_$exp"
      report_test_coverage dynamic $TESTMODE $exp
      checkRc $rc "log_create_logic_timed_delay_tests_$tm_exp"

      if [ $DELAYTESTTHRUMEMORIES = "yes" ] ; then
        banner "create_logic_timed_delay_tests - through memories $savetestmode $exp"
        runcmd "create_logic_timed_delay_tests $O testmode=$savetestmode delaymodel=$delaymodel \
      clockconstraints=$CLOCKCONSTRAINTS useprep=yes \
          testsequence=$DYNAMICSEQUENCES experiment=$exp \
          $seqfilter $funcrelease maxcputime=$MAXCPUTIME \
          dynonly2clocks=no allowedjustifytimeframes=7 \
          latchsimulation=pessimistic \
          append=yes $tg multiclockcompaction=$MULTICLOCK" \
        | grep "Simulation #"
        tm_exp=$savetestmode"_$exp"
        report_test_coverage dynamic $savetestmode $exp
        checkRc $rc "log_create_logic_timed_delay_tests_$tm_exp"
      fi

      if [ $SORTPATTERNS = "yes" ]; then
        exp=sorted_logic
        banner "compact_vectors $savetestmode $exp - to reduce patterns to nearest 0.05% coverage"
        runcmd "compact_vectors $O testmode=$savetestmode inexperiment=logic experiment=$exp \
        resimulate=yes reorder=coverage \
          $tg"
        tm_exp=$savetestmode"_$exp"
        tm_inexp_exp=$savetestmode"_logic_$exp"
        report_test_coverage dynamic $savetestmode $exp
        checkRc $rc "log_compact_vectors_$tm_inexp_exp"
        banner "commit_tests $savetestmode $exp - to save sorted tests"
        runcmd "commit_tests $O testmode=$savetestmode inexperiment=$exp"
        report_test_coverage dynamic $savetestmode ""
        tm_exp=$TESTMODE"_logic_$exp"
        checkRc $rc "log_commit_tests_$tm_exp"
      else
        exp=logic
        banner "commit_tests $savetestmode $exp - to save timed tests"
        runcmd "commit_tests $O testmode=$savetestmode inexperiment=$exp"
        report_test_coverage dynamic $savetestmode ""
        tm_exp=$savetestmode"_$exp"
        checkRc $rc "log_commit_tests_$tm_exp"
      fi
    fi

  #---------------------------------------------------------------------------------
  #      static top off vectors
  #---------------------------------------------------------------------------------
    if [ $ATPGTYPE = "dynamic_topoff" ] ; then
      exp=topoff
      banner "create_logic_tests $TESTMODE $exp - static top off"
      runcmd "create_logic_tests $O testmode=$TESTMODE experiment=$exp \
         effort=$EFFORT compactioneffort=$COMPACTION \
         testsequence=$STATICSEQUENCES maxcputime=$MAXCPUTIME \
         latchsimulation=pessimistic \
         $tg multiclockcompaction=$MULTICLOCK" \
      | grep "Simulation #"
      tm_exp=$TESTMODE"_$exp"
      report_test_coverage dynamic $TESTMODE $exp
      checkRc $rc "log_create_logic_tests_$tm_exp"

      if [ $SORTPATTERNS = "yes" ]; then
        exp=sorted_topoff
        banner "compact_vectors $TESTMODE $exp - static top off sorted to within 0.05% coverage"
        runcmd "compact_vectors $O testmode=$TESTMODE inexperiment=topoff experiment=$exp \
        resimulate=yes reorder=coverage \
          $tg"
        tm_inexp_exp=$TESTMODE"_topoff_$exp"
        tm_exp=$TESTMODE"_$exp"
        report_test_coverage dynamic $TESTMODE $exp
        checkRc $rc "log_compact_vectors_$tm_inexp_exp"
        banner "commit_tests $TESTMODE $exp - to save sorted static top off patterns"
        runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
        report_test_coverage dynamic $TESTMODE ""
        tm_exp=$TESTMODE"_$exp"
        checkRc $rc "log_commit_tests_$tm_exp"
      else
        exp=topoff
        banner "commit_tests $TESTMODE $exp - to save static top off patterns"
        runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
        report_test_coverage dynamic $TESTMODE ""
        tm_exp=$TESTMODE"_$exp"
        checkRc $rc "log_commit_tests_$tm_exp"
      fi     # if sort topoff or not

      if [ \( $COMPRESSION = "xor_topoff" \) -o \( $COMPRESSION = "opmisrplus_topoff" \) ] ; then
        exp=topoff
        banner "create_logic_tests $savetestmode $exp - static top off"
        runcmd "create_logic_tests $O testmode=$savetestmode experiment=$exp \
           effort=$EFFORT compactioneffort=$COMPACTION \
           testsequence=$STATICSEQUENCES maxcputime=$MAXCPUTIME \
           latchsimulation=pessimistic \
           $tg multiclockcompaction=$MULTICLOCK" \
        | grep "Simulation #"
        tm_exp=$savetestmode"_$exp"
        report_test_coverage dynamic $savetestmode $exp
        checkRc $rc "log_create_logic_tests_$tm_exp"

        if [ $SORTPATTERNS = "yes" ]; then
          exp=sorted_topoff
          banner "compact_vectors $savetestmode $exp - static top off sorted to within 0.05% coverage"
          runcmd "compact_vectors $O testmode=$savetestmode inexperiment=topoff experiment=$exp \
        resimulate=yes reorder=coverage \
            $tg"
          tm_inexp_exp=$savetestmode"_topoff_$exp"
          tm_exp=$savetestmode"_$exp"
          report_test_coverage dynamic $savetestmode $exp
          checkRc $rc "log_compact_vectors_$tm_inexp_exp"
          banner "commit_tests $savetestmode $exp - to save sorted static top off patterns"
          runcmd "commit_tests $O testmode=$savetestmode inexperiment=$exp"
          report_test_coverage dynamic $savetestmode ""
          tm_exp=$savetestmode"_$exp"
          checkRc $rc "log_commit_tests_$tm_exp"
        else
          exp=topoff
          banner "commit_tests $savetestmode $exp - to save static top off patterns"
          runcmd "commit_tests $O testmode=$savetestmode inexperiment=$exp"
          report_test_coverage dynamic $savetestmode ""
          tm_exp=$savetestmode"_$exp"
          checkRc $rc "log_commit_tests_$tm_exp"
        fi     # if sort topoff or not
      fi # if compression top off
    fi       # if static topoff
    RESTART="write_vectors"
  fi       # if atpg restart level

#---------------------------------------------------------------------------------
# static test generation
#---------------------------------------------------------------------------------
else       # else static ATPG

  if [ $EXITBEFORE = "atpg" ] ; then
    myecho "Setup file indicates exit before $EXITBEFORE.  Exiting.";
    exit
  fi
  if [ $RESTART = "atpg" ] ; then

    #---------------------------------------------------------------------------------
    # remove any previously committed tests
    #---------------------------------------------------------------------------------
    if [ $cleanmode = "yes" ] ; then
      lf=$logdir/log_verify_test_structures_scanchain_$TESTMODE
      checkLogTSV $lf
      lf=$logdir/log_verify_test_structures_$TESTMODE
      checkLogTSV $lf
      if [ $COMPRESSION != "none" ] ; then
        lf=$logdir/log_verify_test_structures_scanchain_$COMPRESSIONTESTMODE
        checkLogTSV $lf
        lf=$logdir/log_verify_test_structures_$COMPRESSIONTESTMODE
        checkLogTSV $lf
        banner "delete_committed_tests $COMPRESSIONTESTMODE"
        runcmd "delete_committed_tests $O testmode=$COMPRESSIONTESTMODE"
        checkRc $rc "log_delete_committed_tests_$COMPRESSIONTESTMODE"
      fi
      # These are set after TSV - because TSV might muck with the settings.
      tg=" globalterm=none measurelatch=normal contentionreport=$CONTENTION choppers=$CHOPPERS keepers=$KEEPERS infinitex=$INFINITEX "
      banner "delete_committed_tests $TESTMODE"
      runcmd "delete_committed_tests $O testmode=$TESTMODE"
      checkRc $rc "log_delete_committed_tests_$TESTMODE"
    fi

    #---------------------------------------------------------------------------------
    # scan chain test (fullscan mode)
    #---------------------------------------------------------------------------------
    exp=scan
    banner "create_scanchain_tests $TESTMODE $exp"
    runcmd "create_scanchain_tests $O testmode=$TESTMODE experiment=$exp $tg" \
     | grep "Simulation #"
    tm_exp=$TESTMODE"_$exp"
    report_test_coverage static $TESTMODE $exp
    checkRc $rc "log_create_scanchain_tests_$tm_exp"
    banner "commit_tests $TESTMODE $exp - to save scan chain test patterns"
    runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
    report_test_coverage static $TESTMODE
    checkRc $rc "log_commit_tests_$tm_exp"

    #---------------------------------------------------------------------------------
    # scan chain test
    #---------------------------------------------------------------------------------
    if [ $COMPRESSION != "none" ] ; then
      exp=scan
      banner "create_scanchain_tests $COMPRESSIONTESTMODE $exp"
      runcmd "create_scanchain_tests $O testmode=$COMPRESSIONTESTMODE experiment=$exp $tg" \
       | grep "Simulation #"
      tm_exp=$COMPRESSIONTESTMODE"_$exp"
      report_test_coverage static $COMPRESSIONTESTMODE $exp
      checkRc $rc "log_create_scanchain_tests_$tm_exp"
      banner "commit_tests $COMPRESSIONTESTMODE $exp - to save scan chain test patterns"
      runcmd "commit_tests $O testmode=$COMPRESSIONTESTMODE inexperiment=$exp"
      report_test_coverage static $COMPRESSIONTESTMODE
      checkRc $rc "log_commit_tests_$tm_exp"
      savetestmode=$TESTMODE
      TESTMODE=$COMPRESSIONTESTMODE
    else
      savetestmode=$TESTMODE
    fi

    # Here, TESTMODE represents the fullscan mode (if no compression) or the compression
    # testmode (if compression).

    #---------------------------------------------------------------------------------
    # reset clock test
    #---------------------------------------------------------------------------------
    whichresult=`which create_reset_tests 2>/dev/null`
    if [ -f "${whichresult}" ] ; then
      exp=reset
      banner "create_reset_tests $TESTMODE $exp - to test faults on reset clocks"
      runcmd "create_reset_tests $O workdir=$WORKDIR testmode=$TESTMODE experiment=$exp contentionreport=$CONTENTION"
      tm_exp=$TESTMODE"_$exp"
      if [ \( -f "$WORKDIR/tbdata/TBDbin.$TESTMODE.$exp" \) -o \( $EXECUTE = "no" \) ] ; then
        report_test_coverage static $TESTMODE $exp
        checkRc $rc "log_create_reset_tests_$tm_exp"
        banner "commit_tests $TESTMODE $exp - to save reset clock test patterns"
        runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
        report_test_coverage static $TESTMODE ""
        checkRc $rc "log_commit_tests_$tm_exp"

        if [ -f "$WORKDIR/testresults/reset_lineholds.$TESTMODE" ] ; then
         if [ -f "$LINEHOLD" ] ; then
          myecho "Combining User Lineholds with Reset Test Lineholds"
          cat $LINEHOLD $WORKDIR/testresults/reset_lineholds.$TESTMODE > $WORKDIR/testresults/lineholds.$exp
          LINEHOLD=$WORKDIR/testresults/lineholds.$exp
         else
          LINEHOLD=$WORKDIR/testresults/reset_lineholds.$TESTMODE
         fi
        fi
      fi
    fi

    tg="$tg linehold=$LINEHOLD"

    #---------------------------------------------------------------------------------
    # create_logic_tests
    #---------------------------------------------------------------------------------
    exp=logic
    banner "create_logic_tests $TESTMODE $exp"
    runcmd "create_logic_tests $O testmode=$TESTMODE experiment=logic \
       effort=$EFFORT compactioneffort=$COMPACTION \
       testsequence=$STATICSEQUENCES maxcputime=$MAXCPUTIME \
       latchsimulation=pessimistic \
       $tg multiclockcompaction=$MULTICLOCK" \
    | grep "Simulation #"
    tm_exp=$TESTMODE"_$exp"
    report_test_coverage static $TESTMODE $exp
    checkRc $rc "log_create_logic_tests_$tm_exp"

    if [ $SORTPATTERNS = "yes" ]; then
      exp=sorted_logic
      banner "compact_vectors $TESTMODE $exp - to sort within 0.05% coverage"
      runcmd "compact_vectors $O testmode=$TESTMODE inexperiment=logic experiment=$exp \
        resimulate=yes reorder=coverage \
        $tg"
      tm_exp=$TESTMODE"_$exp"
      tm_inexp_exp=$TESTMODE"_logic_$exp"
      report_test_coverage static $TESTMODE $exp
      checkRc $rc "log_compact_vectors_$tm_inexp_exp"
      banner "commit_tests $exp - to save sorted logic patterns"
      runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
      report_test_coverage static $TESTMODE ""
      tm_exp=$TESTMODE"_$exp"
      checkRc $rc "log_commit_tests_$tm_exp"
    else
      exp=logic
      banner "commit_tests $exp - to save logic patterns"
      tm_exp=$TESTMODE"_$exp"
      runcmd "commit_tests $O testmode=$TESTMODE inexperiment=$exp"
      report_test_coverage static $TESTMODE ""
      checkRc $rc "log_commit_tests_$tm_exp"
    fi

    if [ \( $COMPRESSION = "xor_topoff" \) -o \( $COMPRESSION = "opmisrplus_topoff" \) ] ; then
      #---------------------------------------------------------------------------------
      # create_logic_tests
      #---------------------------------------------------------------------------------
      exp=logic
      banner "create_logic_tests $savetestmode $exp"
      runcmd "create_logic_tests $O TESTMODE=$savetestmode experiment=logic \
         effort=$EFFORT compactioneffort=$COMPACTION \
         testsequence=$STATICSEQUENCES maxcputime=$MAXCPUTIME \
         latchsimulation=pessimistic \
         $tg multiclockcompaction=$MULTICLOCK" \
      | grep "Simulation #"
      tm_exp=$savetestmode"_$exp"
      report_test_coverage static $savetestmode $exp
      checkRc $rc "log_create_logic_tests_$tm_exp"

      if [ $SORTPATTERNS = "yes" ]; then
        exp=sorted_logic
        banner "compact_vectors $savetestmode $exp - to sort within 0.05% coverage"
        runcmd "compact_vectors $O testmode=$savetestmode inexperiment=logic experiment=$exp \
        resimulate=yes reorder=coverage \
          $tg"
        tm_exp=$savetestmode"_$exp"
        tm_inexp_exp=$savetestmode"_logic_$exp"
        report_test_coverage static $savetestmode $exp
        checkRc $rc "log_compact_vectors_$tm_inexp_exp"
        banner "commit_tests $exp - to save sorted logic patterns"
        runcmd "commit_tests $O testmode=$savetestmode inexperiment=$exp"
        report_test_coverage static $savtestmode ""
        tm_exp=$savetestmode"_$exp"
        checkRc $rc "log_commit_tests_$tm_exp"
      else
        exp=logic
        banner "commit_tests $exp - to save logic patterns"
        tm_exp=$savetestmode"_$exp"
        runcmd "commit_tests $O testmode=$savetestmode inexperiment=$exp"
        report_test_coverage static $savetestmode ""
        checkRc $rc "log_commit_tests_$tm_exp"
      fi
    fi
    RESTART="write_vectors"
  fi

fi


#---------------------------------------------------------------------------------
# writing vectors
#---------------------------------------------------------------------------------

if [ $EXITBEFORE = "write_vectors" ] ; then
  myecho "Setup file indicates exit before $EXITBEFORE.  Exiting.";
  exit
fi
if [ $RESTART = "write_vectors" ] ; then
  if [ $WRITEVERILOG = "yes" ]; then
      lf=log_write_vectors_verilog_$TESTMODE
      if [ -f $lf ] ; then
        rm $lf
      fi
      banner "write_vectors Verilog Parallel format"
      runcmd "write_vectors $O testmode=$TESTMODE language=verilog scanformat=parallel logfile=$logdir/$lf"
      if [ \( $EXECUTE = "yes" \) -a \( $rc -lt 5 \) ] ; then
        grep "TVE-003" $logdir/$lf | grep "^INFO"
      fi
      checkRc $rc "$lf"
  fi

  if [ $WRITESTIL = "yes" ]; then
      lf=log_write_vectors_stil_$TESTMODE
      if [ -f $lf ] ; then
        rm $lf
      fi
      banner "write_vectors STIL"
      runcmd "write_vectors $O testmode=$TESTMODE language=stil logfile=$logdir/$lf"
      if [ \( $EXECUTE = "yes" \) -a \( $rc -lt 5 \) ] ; then
        grep "TVE-003" $logdir/$lf | grep "^INFO"
      fi
      checkRc $rc "$lf"
  fi

  if [ $WRITEWGL = "yes" ]; then
      lf=log_write_vectors_wgl_$TESTMODE
      if [ -f $lf ] ; then
        rm $lf
      fi
      banner "write_vectors WGL"
      runcmd "write_vectors $O testmode=$TESTMODE language=wgl logfile=$logdir/$lf"
      if [ \( $EXECUTE = "yes" \) -a \( $rc -lt 5 \) ] ; then
        grep "TVE-003" $logdir/$lf | grep "^INFO"
      fi
      checkRc $rc "$lf"
  fi
  if [ $COMPRESSION != "none" ] ; then
    saveTESTMODE=$TESTMODE
    if [ $WRITEVERILOG = "yes" ]; then
        lf=log_write_vectors_verilog_$savetestmode
        if [ -f $lf ] ; then
          rm $lf
        fi
        banner "write_vectors Verilog"
        runcmd "write_vectors $O testmode=$savetestmode language=verilog logfile=$logdir/$lf"
        if [ \( $EXECUTE = "yes" \) -a \( $rc -lt 5 \) ] ; then
          grep "TVE-003" $logdir/$lf | grep "^INFO"
        fi
        checkRc $rc "$lf"
    fi

    if [ $WRITESTIL = "yes" ]; then
        lf=log_write_vectors_stil_$savetestmode
        if [ -f $lf ] ; then
          rm $lf
        fi
        banner "write_vectors STIL"
        runcmd "write_vectors $O testmode=$savetestmode language=stil logfile=$logdir/$lf"
        if [ \( $EXECUTE = "yes" \) -a \( $rc -lt 5 \) ] ; then
          grep "TVE-003" $logdir/$lf | grep "^INFO"
        fi
        checkRc $rc "$lf"
    fi

    if [ $WRITEWGL = "yes" ]; then
        lf=log_write_vectors_wgl_$savetestmode
        if [ -f $lf ] ; then
          rm $lf
        fi
        banner "write_vectors WGL"
        runcmd "write_vectors $O testmode=$savetestmode language=wgl logfile=$logdir/$lf"
        if [ \( $EXECUTE = "yes" \) -a \( $rc -lt 5 \) ] ; then
          grep "TVE-003" $logdir/$lf | grep "^INFO"
        fi
        checkRc $rc "$lf"
    fi
  fi
fi

    if [ -n "${SCRIPTFILE}" ] ; then
      chmod a+x $SCRIPTFILE
    fi
#---------------------------------------------------------------------------------
# Exit Encounter Test shell environment
#---------------------------------------------------------------------------------
myecho "$line"
myecho "                Encounter True-Time Use Model Script Complete "
myecho "$line"
exit
