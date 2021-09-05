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
#
# File Name      :cortexm0_update_clock_insertion.tcl
#
# Purpose       : Script is run from within Encounter after CTS to update SDC constraints
#                 with Clock Insertion values. Adds set_clock_latency,
#                 reads in additional postCTS constraints 
#                 in case they exist, and generates propagated.sdc constraints
#                 Optionally can skew clocks to minimise overall IO timing violation, but this is limited
#                 in that it is done globally rather than per clock. This equates to usefully skewing the core
#                 Also Optionally models an external balancing of all clocks to the clock with the longest 
#                 insertion delay
#                                
#
# RM Release     :RTL_VERSION
# RM version     :1.10
#
#######################################################################################

proc update_clock_insertion mode {
    global env
    source ../scripts/cortexm0_config.tcl
    if [string match $mode post_cts_skew] {
        set timeReport "../reports/preroute/cortexm0_postCtsOptQuick.summary"
        set latency_file_base_name "cortexm0_post_cts_skew_latency"
        set margin_multiplier [expr 1 - $rm_post_cts_clock_latency_margin]
	set skew_mode "skew"
    } elseif [string match $mode post_route_skew] {
        set timeReport "../reports/postroute/cortexm0_postRouteOptQuick.summary"
        set latency_file_base_name "cortexm0_post_route_skew_latency"
	set skew_mode "skew"
        set margin_multiplier "1.00"
    } elseif [string match $mode post_cts_min_max] {
        set latency_file_base_name "cortexm0_post_cts_latency"
	set skew_mode "min_max"
        set margin_multiplier [expr 1 - $rm_post_cts_clock_latency_margin]
    } else {
        set latency_file_base_name "cortexm0_post_route_latency"
        set skew_mode "min_max"
        set margin_multiplier "1.00"
   }
    #------------------------------------------------------------------
    # Open Macromodel file for reading
    #------------------------------------------------------------------
    set additionalPowerConstr "../data/cortexm0_power_analysis_constraints.sdc"
    set assignTxt "../data/cortexm0_assign"

    #---------------------------------------------------------------
    # Allow translation between ns and ps...
    #---------------------------------------------------------------
    set libTimeUnits [string tolower "ns"]

    #------------------------------------------------------------------
    # Open output file for writing
    #------------------------------------------------------------------
    array set insertion_arr {}

    set rm_analysis_views ""
    foreach rc_corner $rm_rc_corners {
        foreach functional_mode $rm_functional_modes {
      	    lappend rm_analysis_views "${rc_corner}_${functional_mode}"
        }
    }
    foreach view $rm_analysis_views {
        set macro_model_file ../data/cortexm0_${view}.ctsmodel
        set maxIns 0
        set maxInsClock 0

        if [file exists $macro_model_file] {
            set macroModelFile [ open $macro_model_file r ]
            while { ![ eof $macroModelFile ] } {
     	        set line [ gets $macroModelFile ]

     	        #-----------------------------------------------------------
     	        # Determine clockName, maxRiseTime and minRiseTime from
     	        # block macro-models
     	        #-----------------------------------------------------------
                foreach clk $rm_clock_ports {
                    set pattern "${rm_top_module}/${clk}"

                    if { [ regexp -- {MacroModel port *([0-9a-zA-Z._/]+) *([0-9._/]+)([nps]+) *([0-9._/]+)[nps]+} $line str_match port maxRise macroUnit minRise] } {	    

      	 	        if [string match ${pattern} ${port}] {													    
     	            	    set macroUnitConvert [string tolower $macroUnit]				    								
	     
      	 	    	    #-------------------------------------------------------			    								
      	 	    	    # Convert insertion to the same units as library/ SDC				    								
      	 	    	    #-------------------------------------------------------			    								
      	 	    	    set mult 1									    								
      	 	    	    if [regexp {ns} ${libTimeUnits}] {						    								
      	 		        if [string match "ns" ${macroUnitConvert}] {				    								
      	 		            set mult 1								    								
      	 		        } else {									    								
      	 		            set mult 1000								    								
      	 		        }										    								
      	 	    	    } elseif [regexp {ps} ${libTimeUnits}] {					    								
      	 		        if [string match "ps" ${macroUnitConvert}] {				    								
      	 			    set mult 1								    								
      	 		        } else {									    								
      	 			    set mult 0.001  							    								
      	 		        }										    								
      	 	    	    }										    								
 	            	    #-----------------------------------------------				    								
	            	    # Calculate the insertion delay for all clocks  				    								
                    	    #-----------------------------------------------				    								
                    	    set insertion [ expr ((($maxRise*1.0) + ($minRise*1.0)) / (2 * $mult))]    								
                    	    set insertion_arr($view,$clk)    $insertion
	            	    #-----------------------------------------------				    								
                    	    # check if this is the largest insertion in this view					    								
                    	    #-----------------------------------------------
			    if {$insertion > $maxIns} {
			        set maxIns $insertion
			        set maxInsClock $clk
			    }		    								
                        }
                    }
	        }
            }
        }
        close $macroModelFile
	#we will use the first view to calculate any skew or external balancing, if this is the first view record the view name and max ins clock
	if ![info exists first_view_max_ins] { 
	    set first_view_max_ins_clk $maxInsClock
	    set first_view $view
	} 
    }

    #-----------------------------------------------												   
    # running in skew mode? read a timing summary file and calculate a skew to apply.
    # somewhat limited since it calculates and overall skew based on timing of every clock domian and applies to every clock.												   
    #-----------------------------------------------												   
    if [string match $skew_mode skew] {
        set timingReportFile [ open $timeReport r ]
        set rm_core_external_useful_skew 0
	set input 0
	set output 0
	#----------------------------------------------- 											       
        # read timing summary file and pick out key pathgroup slacks												       
	# this section opens the timing report file and then picks out the column headers and Worst negative slacks for each pathgroup.
	# the pathgroups can be in any order and 1-13 pathgroups are supported.
        #-----------------------------------------------
        array set col {}
        array set valcol {}
	set rm_path_group_count  {} 
        while { ![ eof $timingReportFile ] } {
     	    set line [ gets $timingReportFile ]
            if { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) col(4) col(5) col(6) col(7) col(8) col(9) col(10) col(11) col(12) col(13) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2) valcol(3) valcol(4) valcol(5) valcol(6) valcol(7) valcol(8) valcol(9) valcol(10) valcol(11) valcol(12) valcol(13) ] } {	    
	        set rm_path_group_count  {1 2 3 4 5 6 7 8 9 10 11 12 13} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) col(4) col(5) col(6) col(7) col(8) col(9) col(10) col(11) col(12) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2) valcol(3) valcol(4) valcol(5) valcol(6) valcol(7) valcol(8) valcol(9) valcol(10) valcol(11) valcol(12) ] } {	    
	        set rm_path_group_count  {1 2 3 4 5 6 7 8 9 10 11 12} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) col(4) col(5) col(6) col(7) col(8) col(9) col(10) col(11) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) } $line wns all valcol(1) valcol(2) valcol(3) valcol(4) valcol(5) valcol(6) valcol(7) valcol(8) valcol(9) valcol(10) valcol(11) ] } { 	 
	        set rm_path_group_count  {1 2 3 4 5 6 7 8 9 10 11} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) col(4) col(5) col(6) col(7) col(8) col(9) col(10) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2) valcol(3) valcol(4) valcol(5) valcol(6) valcol(7) valcol(8) valcol(9) valcol(10) ] } {	      
	        set rm_path_group_count  {1 2 3 4 5 6 7 8 9 10} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) col(4) col(5) col(6) col(7) col(8) col(9) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2) valcol(3) valcol(4) valcol(5) valcol(6) valcol(7) valcol(8) valcol(9) ] } {	   
	        set rm_path_group_count  {1 2 3 4 5 6 7 8 9} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns col(1) col(2) col(3) col(4) col(5) col(6) col(7) col(8) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns valcol(1) valcol(2) valcol(3) valcol(4) valcol(5) valcol(6) valcol(7) valcol(8) ] } {	    
	        set rm_path_group_count {1 2 3 4 5 6 7 8} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) col(4) col(5) col(6) col(7) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2) valcol(3) valcol(4) valcol(5) valcol(6) valcol(7) ] } { 	 
	        set rm_path_group_count  {1 2 3 4 5 6 7} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) col(4) col(5) col(6) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2) valcol(3) valcol(4) valcol(5) valcol(6) ] } { 	   
	        set rm_path_group_count  {1 2 3 4 5 6} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) col(4) col(5) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2) valcol(3) valcol(4) valcol(5) ] } {	     
	        set rm_path_group_count  {1 2 3 4 5} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) col(4) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2) valcol(3) valcol(4) ] } {	 
	        set rm_path_group_count  {1 2 3 4} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) col(3) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2) valcol(3)] } {	     
	        set rm_path_group_count  {1 2 3} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) col(2) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1) valcol(2)] } {  	 
	        set rm_path_group_count  {1 2} 
            } elseif { [ regexp -- {Setup mode *\| *([0-9a-z]+) *\| *([0-9a-z]+)} $line wns all col(1) ] } { 
	    } elseif { [ regexp -- {WNS \(ns\)\:\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+) *\| *([0-9.\-N/A]+)} $line wns all valcol(1)] } {		 
	        set rm_path_group_count  {1} 
            }
        }
	#----------------------------------------------- 											       
	# initialise the WNS for the key pathgroups to 10 in case they do not exist
	#----------------------------------------------- 											       
	set in2regr 10
	set in2clkg 10
	set in2regf 10
 	set regr2out 10
 	set regf2out 10
	#----------------------------------------------- 											       
	# look in the arrays pulled from the timing summary report for the wns of the key pathgroups.
	#----------------------------------------------- 											       
	foreach i $rm_path_group_count {
	   if [string match $col(${i}) in2regr] { set in2regr $valcol(${i}) }
	   if [string match $col(${i}) in2clkg] { set in2clkg $valcol(${i}) }
	   if [string match $col(${i}) in2regf] { set in2regf $valcol(${i}) }
	   if [string match $col(${i}) regr2out] { set regr2out $valcol(${i}) }
	   if [string match $col(${i}) regf2out] { set regf2out $valcol(${i}) }
	}
	#----------------------------------------------- 											       
        # calculate critical input and output slacks, accounting for half cycles												       
        #-----------------------------------------------
        if [string match $in2regr N/A] {
	} else {
	    set input $in2regr
	}
        if [string match $in2clkg N/A] {
	} elseif {$in2clkg<$input} {
	    set input $in2clkg
	}
	if [string match $in2regf N/A] {
	} elseif {[expr $in2regf * 2]<$input} {
	    set input [expr $in2regf * 2]
	}

        if [string match $regr2out N/A] {
	} else {
	    set output $regr2out
	}
	if [string match $regf2out N/A] {
	} elseif {[expr $regf2out * 2]<$output} {
	    set output [expr $regf2out * 2]
	}
	#----------------------------------------------- 											       
        # calculate actual skew												       
        #-----------------------------------------------
        set rm_core_external_useful_skew [expr ($output - $input) / 2] 

    }         
    foreach view $rm_analysis_views {
        set latencyWriteFile ../data/${latency_file_base_name}_${view}.sdc
        if [file exists $latencyWriteFile ] {
            exec rm  $latencyWriteFile 
        } 
        set latencyFile [ open $latencyWriteFile w+ ]
        foreach clk $rm_clock_ports {
	    #we will use the first clock in the list to calculate any scaling factors
	    if ![info exists first_clk] { 
	        set first_clk $clk
	    } 
            set insertion $insertion_arr($view,$clk)
            set vinsertion $insertion_arr($view,$clk)
	    if [string match $skew_mode skew] {
	        #-----------------------------------------------												   
                # apply skew to clocks, scaling assuming skew is calculated for first view in list											   
                #-----------------------------------------------
	        set vinsertion [expr $insertion - ($rm_core_external_useful_skew * $insertion_arr($view,$first_clk)/ $insertion_arr($first_view,$first_clk))]
            }
	    #-----------------------------------------------											       
            # when modelling external clock balancing, output clock latencies  										       
            #-----------------------------------------------
	    if {$rm_balance_clocks_externally == 1} {
	        set max_clock_ins_scaled [expr ($insertion_arr($first_view,$first_view_max_ins_clk) * $insertion_arr($view,$first_clk)/ $insertion_arr($first_view,$first_clk))]
                puts $latencyFile   "set_clock_latency -late [expr $max_clock_ins_scaled - $insertion] -source \[get_clocks {$clk}\]"; 						     
                puts $latencyFile   "set_clock_latency -early [expr $max_clock_ins_scaled - $insertion + ( $insertion * ($margin_multiplier - 1.00))] -source \[get_clocks {$clk}\]"; 						     
                # Virtual clocks insertion delay equal to main clock plus tree delay internal to design
                set  vinsertion [expr $vinsertion +  $max_clock_ins_scaled - $insertion]
	    } else {
                puts $latencyFile   "set_clock_latency -late 0.00 -source \[get_clocks {$clk}\]"; 						     
                puts $latencyFile   "set_clock_latency -early [expr $insertion * ($margin_multiplier - 1.00)] -source \[get_clocks {$clk}\]"; 						     
	    }
        
	    #-----------------------------------------------					        					      
            # output virtual clock latencies							        		      
            #-----------------------------------------------
            puts $latencyFile	"set_clock_latency -late $vinsertion -source \[get_clocks {V$clk}\]"; 					       
            puts $latencyFile	"set_clock_latency -early [expr $vinsertion * $margin_multiplier] -source \[get_clocks {V$clk}\]"; 					       
        }
        close $latencyFile;
    }
	
    
    #-----------------------------------------------------------
    # pull in the rc assign file to generate the case analysis constraints
    # for use in static power analysis to switch off scan enable, resets and any other test mode.
    #-----------------------------------------------------------
    if [file exists $assignTxt] {
        if [file exists $additionalPowerConstr ] {
            exec rm  $additionalPowerConstr 
        } 
        set powersdcfile [ open $additionalPowerConstr w+ ]
        set assignTxtFile [ open $assignTxt r ]
        while { ![ eof $assignTxtFile ] } {
     	    set line [ gets $assignTxtFile ]
     #-----------------------------------------------------------
     # look for SC and SE
     #-----------------------------------------------------------
            if { [ regexp -- {assign pin\=([0-9a-zA-Z._/]+)\s*test_function\=\s\+SC} $line assignpin pin_name testfunction] } {	    
                puts $powersdcfile "set_case_analysis 1 \[get_ports $pin_name\]";
            } elseif { [ regexp -- {assign pin\=([0-9a-zA-Z._/]+)\s*test_function\=\s\-SC} $line assignpin pin_name testfunction] } {	    
                puts $powersdcfile "set_case_analysis 0 \[get_ports $pin_name\]";
            } elseif { [ regexp -- {assign pin\=([0-9a-zA-Z._/]+)\s*test_function\=\s\+SE} $line assignpin pin_name testfunction] } {	    
                puts $powersdcfile "set_case_analysis 0 \[get_ports $pin_name\]";
            } elseif { [ regexp -- {assign pin\=([0-9a-zA-Z._/]+)\s*test_function\=\s\-SE} $line assignpin pin_name testfunction] } {	    
               puts $powersdcfile "set_case_analysis 1 \[get_ports $pin_name\]";
            }
        }
        close $powersdcfile;
        close $assignTxtFile;
    }
	
}

