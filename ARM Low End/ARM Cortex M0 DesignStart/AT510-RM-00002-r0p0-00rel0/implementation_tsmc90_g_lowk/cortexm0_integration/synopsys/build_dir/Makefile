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
# File Name     : GNU Makefile  
# RM Release    : RM 2008.09 ICC,  v1.0
#
# Purpose       : Encapsulates the ARM-Synopsys Reference Methodology.
#
#
# Date          : Mar. 17 2009
#
#####################################################################################

RUNDIR  =       $(PWD)
LOGS    =       $(RUNDIR)/logs
SCRIPTS =       $(RUNDIR)/scripts
DATE    =       "`date '+%m_%d_%H_%M'`"

#####################################
#              FRONT                #
#####################################
compile:
	cd work; time dc_shell-xg-t -topographical_mode -64bit -f $(SCRIPTS)/cortexm0integrationimp_compile.tcl | tee $(LOGS)/compile.log
	@/bin/rm -f combo* tlu_*

design_planning:
	cd work; time icc_shell -64bit -f $(SCRIPTS)/cortexm0integrationimp_design_planning.tcl | tee $(LOGS)/design_planning.log

#####################################
#             BACK                  #
#####################################
place_opt:
	cd work; time icc_shell -64bit -f $(SCRIPTS)/cortexm0integrationimp_place_opt.tcl | tee $(LOGS)/place_opt.log

clock_opt:
	cd work; time icc_shell -64bit -f $(SCRIPTS)/cortexm0integrationimp_clock_opt.tcl | tee $(LOGS)/clock_opt.log

route_opt:
	cd work; time icc_shell -64bit -f $(SCRIPTS)/cortexm0integrationimp_route_opt.tcl | tee $(LOGS)/route_opt.log

extract:
	cd work; time StarXtract -clean $(SCRIPTS)/cortexm0integrationimp_star_wc.scm  2>&1 | tee $(LOGS)/extract_cworst.log
	mv work/CORTEXM0INTEGRATIONIMP.star_sum work/CORTEXM0INTEGRATIONIMP.star_wc_sum

	cd work; time StarXtract -cleanX $(SCRIPTS)/cortexm0integrationimp_star_bc.scm  2>&1 | tee $(LOGS)/extract_cbest.log
	mv work/CORTEXM0INTEGRATIONIMP.star_sum work/CORTEXM0INTEGRATIONIMP.star_bc_sum

	cd work; time StarXtract -cleanX $(SCRIPTS)/cortexm0integrationimp_star_wrc.scm  2>&1 | tee $(LOGS)/extract_rcworst.log
	mv work/CORTEXM0INTEGRATIONIMP.star_sum work/CORTEXM0INTEGRATIONIMP.star_wrc_sum

	cd work; time StarXtract -cleanX $(SCRIPTS)/cortexm0integrationimp_star_brc.scm  2>&1 | tee $(LOGS)/extract_rcbest.log
	mv work/CORTEXM0INTEGRATIONIMP.star_sum work/CORTEXM0INTEGRATIONIMP.star_brc_sum

	cd work; time StarXtract -cleanX $(SCRIPTS)/cortexm0integrationimp_star_typ.scm  2>&1 | tee $(LOGS)/extract_typical.log
	mv work/CORTEXM0INTEGRATIONIMP.star_sum work/CORTEXM0INTEGRATIONIMP.star_typ_sum ; rm -rf work/star

export:
	cd work; time icc_shell -64bit -f $(SCRIPTS)/cortexm0integrationimp_export.tcl | tee $(LOGS)/export.log

#####################################
#             ANALYZE               #
#####################################
rail:
	cd work; time PrimeRail -tcl -log $(LOGS)/rail.log -file $(SCRIPTS)/cortexm0integrationimp_rail.tcl -nullDisplay 

ptpx:
	cd work; time pt_shell -f $(SCRIPTS)/cortexm0integrationimp_ptpx.tcl | tee $(LOGS)/ptpx.log

pt:
	cd work; time pt_shell -f $(SCRIPTS)/cortexm0integrationimp_sta.tcl | tee $(LOGS)/sta.log

pt_testmode:
	cd work; time pt_shell -f $(SCRIPTS)/cortexm0integrationimp_testmode_sta.tcl | tee $(LOGS)/testmode_sta.log

dmsa:
	cd work; time pt_shell -multi -f $(SCRIPTS)/cortexm0integrationimp_dmsa.tcl | tee $(LOGS)/dmsa.log

fm:
	cd work; time fm_shell -f $(SCRIPTS)/cortexm0integrationimp_fm.tcl | tee $(LOGS)/fm.log

tmax:
	cd work; time tmax -64 -tcl -shell $(SCRIPTS)/cortexm0integrationimp_tmax.tcl | tee $(LOGS)/tmax.log

etm:
	cd work; time pt_shell -f $(SCRIPTS)/cortexm0integrationimp_etm.tcl | tee $(LOGS)/etm.log
	cd work; time pt_shell -f $(SCRIPTS)/cortexm0integrationimp_qual.tcl | tee $(LOGS)/qual.log

#####################################
#             BUILDS                #
#####################################
front:   compile design_planning
back:    place_opt clock_opt route_opt extract export
impl:    compile design_planning place_opt clock_opt route_opt extract export
analyze: fm pt pt_testmode ptpx dmsa tmax
build:   front back analyze etm rail

#####################################
#         CREATE DIRECTORIES        #
#####################################
dirs:
	mkdir -p work/
	mkdir -p elab/
	mkdir -p logs/
	mkdir -p data/
	mkdir -p reports/compile/
	mkdir -p reports/layout/
	mkdir -p reports/dft/
	mkdir -p reports/lec/
	mkdir -p reports/sta/
	mkdir -p reports/dmsa/
	mkdir -p reports/power
	mkdir -p models/functional/
	mkdir -p models/physical/
	mkdir -p models/test/
	mkdir -p models/timing/

clean:
	@echo "Cleaning Implementation Directory ....."
	@/bin/rm -rf work/*
	@/bin/rm -rf work/.[a-zA-Z]*
	@/bin/rm -rf elab/*
	@/bin/rm -rf data/*
	@/bin/rm -rf reports/*/*
	@/bin/rm -rf models/*/*
	@/bin/rm -rf $(LOGS)/* designware_generator

#################################################
#        INTERACTIVE TOOL STARTUP TARGETS       #
#################################################
DC:
	mkdir -p logs/inter
	cd work; time dc_shell-xg-t -topographical_mode | tee ../logs/inter/dc-t_interact.log.$(DATE)

ICC:
	mkdir -p logs/inter
	cd work; time icc_shell -64bit -gui | tee ../logs/inter/icc_interact.log.$(DATE)

PT:
	mkdir -p logs/inter
	cd work; time pt_shell | tee ../logs/inter/pt_interact.log.$(DATE)
