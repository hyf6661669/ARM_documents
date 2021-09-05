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
# File Name      :makefile
# RM Release     :RTL_VERSION
# Purpose        :makefile to run the flow using make
#
# RM version     :1.20
# 
################################################################################

root =$(PWD)
log =$(root)/logs
scripts =$(root)/scripts

synthesis: 
	cd work; \
	rc -64 -f $(scripts)/cortexm0_synthesis.tcl \
	-logfile $(log)/cortexm0_synthesis.log

floor_plan:
	cd work; \
	encounter -64 -nowin -init $(scripts)/cortexm0_floorplan.tcl  \
	-log $(log)/cortexm0_floorplan.log
	
placement:
	cd work; \
	encounter -64 -nowin -init $(scripts)/cortexm0_placement.tcl  \
	-log $(log)/cortexm0_placement.log

cts:
	cd work; \
	encounter -64 -nowin -init   $(scripts)/cortexm0_cts.tcl  \
	-log $(log)/cortexm0_cts.log

route:
	cd work; \
	encounter -64 -nowin   -init $(scripts)/cortexm0_route.tcl  \
	-log $(log)/cortexm0_route.log

si_fixing:
	cd work; \
	encounter -64 -nowin   -init $(scripts)/cortexm0_si_fixing.tcl  \
	-log $(log)/cortexm0_si_fixing.log

extraction:
	cd work; \
	qrc  -64   -cmd $(scripts)/cortexm0_qrc.tcl ../data/cortexm0_si_fixing.def

signoffwc:
	cd work; \
	ets -64 -init $(scripts)/cortexm0_signoff_wc.tcl -nowin \
	-log $(log)/cortexm0_signoff_wc.log
	
signoffbc:
	cd work; \
	ets -64 -init $(scripts)/cortexm0_signoff_bc.tcl -nowin \
	-log $(log)/cortexm0_signoff_bc.log

signofftyp:
	cd work; \
	ets -64 -init $(scripts)/cortexm0_signoff_typ.tcl -nowin \
	-log $(log)/cortexm0_signoff_typ.log
 
vstorm:
	cd work; \
	encounter  -64 -nowin -init ../scripts/cortexm0_vstorm_analysis.tcl \
	-log  ../logs/cortexm0_vstorm_analysis.log; \
	vstorm2 -64 -cmd ./cortexm0_vs_static.cmd; \
	cp powermeter.summary.log ../logs/cortexm0_powermeter_static.summary.log; \
 	cp vstorm2.log ../logs/cortexm0_vstorm2_static.log

generate:
	cd work; \
	encounter -64 -nowin -init ../scripts/cortexm0_generate_timing.tcl \
	-log $(log)/cortexm0_generate_timing.log ;\
	../scripts/cortexm0_run_ampkg.csh

validate:
	cd work; \
	encounter -64 -init ../scripts/cortexm0_validate_timing.tcl \
	-log $(log)/cortexm0_validate_timing.log

lec:
	- cd work; \
	lec  -64 -xl -nogui  -dofile ../data/cortexm0_rtl_vs_netlist.do

atpg:
	cd work; \
	et -64 -source ../scripts/cortexm0_atpg_config_update.tcl; \
	chmod a+x ../scripts/cortexm0_atpg.sh ;\
	et -64 -e ../scripts/cortexm0_atpg.sh ../scripts/cortexm0_atpg.config ;\
	mv testresults/logs $(log)/ATPG_logs

implementation: floor_plan placement cts route si_fixing

full: synthesis floor_plan placement cts route si_fixing extraction signoffwc signoffbc signofftyp lec vstorm generate validate atpg

delete:
	@echo "Deleting  data/* reports/* logs/* work/*........"
	@/bin/rm -rf logs/*
	@/bin/rm -rf reports/*/*
	@/bin/rm -rf data/*
	@/bin/rm -rf work/*
	@/bin/rm -rf work/.*
