#-----------------------------------------------------------------------------
# The confidential and proprietary information contained in this file may
# only be used by a person authorised under and to the extent permitted
# by a subsisting licensing agreement from ARM Limited.
#
#            (C) COPYRIGHT 2009 ARM Limited.
#                ALL RIGHTS RESERVED
#
# This entire notice must be reproduced on all copies of this file
# and copies of this file may only be made by a person if such person is
# permitted to do so under the terms of a subsisting license agreement
# from ARM Limited.
#
#      SVN Information
#
#      Checked In          : $Date: 2008-12-31 10:59:44 +0000 (Wed, 31 Dec 2008) $
#
#      Revision            : $Revision: 97564 $
#
#      Release Information : Cortex-M0-AT510-r0p0-01rel0
#-----------------------------------------------------------------------------
#
# Cortex-M0 Integration Kit Makefile
#
#
# Edit IKConfig.h to match your chosen processor implementation options
#
# Also set COMPILE_BE here if you configure the processor as BIGENDIAN
COMPILE_BE	= 0


#-----------------------------------------------------------------------------
# End of User Modifiable Code
#-----------------------------------------------------------------------------

# Remove any current implicit rules
.IMPLICIT	=

# Define CPU target
#  - Use Cortex-M1 until tools provide named support for Cortex-M0
#  - Compiling for Cortex-M1 will produce code compatible with Cortex-M0
CPUTARGET	=	--cpu=Cortex-M1

# Configure tool names
CC		=	armcc
AS		=	armasm
LD		=	armlink
FROMELF		=	fromelf
INCPATH         =       ./CMSIS/Core/CM0

# Compiler flags
ifeq ($(COMPILE_BE),1)
	BE_FLAG = --bi
else
	BE_FLAG =
endif

#
# CM0IKMCU compiler options
#
CCFLAGS		=	$(CPUTARGET) -I $(INCPATH) -c --data_reorder \
			--diag_suppress=2874 \
                        $(BE_FLAG)
ASFLAGS		=	$(CPUTARGET) --keep
LDFLAGS		=	--map \
			--ro-base=0x0 --rw-base=0x20000000 \
			--first='boot.o(vectors)' --datacompressor=off \
			--info=inline

# Dependencies
IKDEPS_MAIN     =	CMSIS/Core/CM0/core_cm0.h CMSIS/Core/CM0/core_cm0.c cm0ikmcu.h IKtests.h IKtests.c IKConfig.h Makefile
IKDEPS		=	$(IKDEPS_MAIN) debugdriver
IKOBJS		=	boot.o system_cm0ikmcu.o retarget_cm0ikmcu.o IKtests.o



#
# Debug Driver compiler options
#
DDCCFLAGS	=	$(CPUTARGET) -I $(INCPATH) -c --data_reorder \
			--diag_suppress=2874 \
			$(BE_FLAG)
DDLDFLAGS	=	--map \
			--ro-base=0x0 --rw-base=0x20000000 \
			--first='boot_debugdriver.o(vectors)' --datacompressor=off \
			--info=inline

DDDEPS		= 	CMSIS/Core/CM0/core_cm0.h CMSIS/Core/CM0/core_cm0.c cm0ikdebugdriver.h Makefile debugdriver.h IKConfig.h
DDOBJS		= 	boot_debugdriver.o system_cm0ikdebugdriver.o retarget_cm0ikdebugdriver.o


#
# Dhrystone specific compiler options
#

# Must use MSC_CLOCK unless we have another timer for dhrystone
CCFLAGS		+=	-D MSC_CLOCK -D ITERATIONS=5

# Disable printing from Dhrystone if user set CM0IKMCU_PRINTF to 0
ifeq ($(CM0IKMCU_PRINTF),0)
	CCFLAGS 	+= 	-D NOMSG
endif

# Performance options
CCFLAGS		+=	-O2 -Otime -Ono_autoinline -Ono_inline



################################################################################
#
# Rule deck
#
all:		dhry hellow max_power speed_indicative debugdriver interrupt config_check sleep reset debug romtable



################################################################################
#
# Targets common to all IK Tests
#

# Boot file - vectors
boot.o:		boot.c $(IKDEPS_MAIN)
		$(CC) $(CCFLAGS) -o $@ $<


# Retarget file - enable printf to use IK character device
retarget_cm0ikmcu.o:	retarget_cm0ikmcu.c $(IKDEPS_MAIN)
			$(CC) $(CCFLAGS) -o $@ $<


# CMSIS System Initialisation
system_cm0ikmcu.o:	system_cm0ikmcu.c $(IKDEPS_MAIN)
			$(CC) $(CCFLAGS) -o $@ $<


# IKtests - Functions used by IK tests to access the Debug Driver block
IKtests.o:	IKtests.c $(IKDEPS_MAIN)
		$(CC) $(CCFLAGS) -o $@ $<


################################################################################
#
# DEBUG DRIVER
#

# Boot file - vectors
boot_debugdriver.o:	boot_debugdriver.c $(DDDEPS_MAIN)
			$(CC) $(DDCCFLAGS) -o $@ $<

# Retarget file - enable printf to use IK character device
retarget_cm0ikdebugdriver.o:	retarget_cm0ikdebugdriver.c $(DDDEPS)
				$(CC) $(DDCCFLAGS) -o $@ $<

# CMSIS System Initialisation
system_cm0ikdebugdriver.o:	system_cm0ikdebugdriver.c $(DDDEPS)
				$(CC) $(DDCCFLAGS) -o $@ $<

# Debug Driver Block Functionality
debugdriver:		debugdriver.bin
			@echo

debugdriver.o:		debugdriver.c $(DDDEPS)
			$(CC) $(DDCCFLAGS) -o $@ $<

debugdriver.elf:	debugdriver.o $(DDOBJS)
			$(LD) $(DDLDFLAGS) -o $@ debugdriver.o $(DDOBJS)

debugdriver.bin:	debugdriver.elf
			$(FROMELF) --bin -o $@ $<


################################################################################
#
# Dhrystone Test
#

dhry:		dhry.bin
		@echo

dhry.bin:	dhry.elf
		$(FROMELF) --bin -o $@ $<

dhry.elf:	dhry_1.o dhry_2.o $(IKOBJS)
		$(LD) $(LDFLAGS) -o $@ dhry_1.o dhry_2.o $(IKOBJS)

dhry_1.o:	dhry_1.c dhry.h $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<

dhry_2.o:	dhry_2.c dhry.h $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<


################################################################################
#
# Hello World / CPUID check
#

hellow:		hellow.bin
		@echo

hellow.o:	hellow.c $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<

hellow.elf:	hellow.o $(IKOBJS)
		$(LD) $(LDFLAGS) -o $@ hellow.o $(IKOBJS)

hellow.bin:	hellow.elf
		$(FROMELF) --bin -o $@ $<


################################################################################
#
# config_check test
#

config_check:	config_check.bin
		@echo

config_check.o:	config_check.c $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<

config_check.elf:	config_check.o $(IKOBJS)
		$(LD) $(LDFLAGS) -o $@ config_check.o $(IKOBJS)

config_check.bin:	config_check.elf
		$(FROMELF) --bin -o $@ $<


################################################################################
#
# interrupt test
#

interrupt:	interrupt.bin
		@echo

interrupt.o:	interrupt.c $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<

interrupt.elf:	interrupt.o $(IKOBJS)
		$(LD) $(LDFLAGS) -o $@ interrupt.o $(IKOBJS)

interrupt.bin:	interrupt.elf
		$(FROMELF) --bin -o $@ $<


################################################################################
#
# sleep test
#

sleep:		sleep.bin
		@echo

sleep.o:	sleep.c $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<

sleep.elf:	sleep.o $(IKOBJS)
		$(LD) $(LDFLAGS) -o $@ sleep.o $(IKOBJS)

sleep.bin:	sleep.elf
		$(FROMELF) --bin -o $@ $<


################################################################################
#
# reset test
#

reset:		reset.bin
		@echo

reset.o:	reset.c $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<

reset.elf:	reset.o $(IKOBJS)
		$(LD) $(LDFLAGS) -o $@ reset.o $(IKOBJS)

reset.bin:	reset.elf
		$(FROMELF) --bin -o $@ $<


################################################################################
#
# debug test
#

debug:		debug.bin
		@echo

debug.o:	debug.c $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<

debug.elf:	debug.o $(IKOBJS)
		$(LD) $(LDFLAGS) -o $@ debug.o $(IKOBJS)

debug.bin:	debug.elf
		$(FROMELF) --bin -o $@ $<


################################################################################
#
# romtable test
#

romtable:	romtable.bin
		@echo

romtable.o:	romtable.c $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<

romtable.elf:	romtable.o $(IKOBJS)
		$(LD) $(LDFLAGS) -o $@ romtable.o $(IKOBJS)

romtable.bin:	romtable.elf
		$(FROMELF) --bin -o $@ $<


################################################################################
#
# Max power test
#

max_power:	max_power.bin
		@echo

max_power.o:	max_power.c $(IKDEPS)
		$(CC) $(CCFLAGS) -o $@ $<

max_power.elf:	max_power.o $(IKOBJS)
		$(LD) $(LDFLAGS) -o $@ max_power.o $(IKOBJS)

max_power.bin:	max_power.elf
		$(FROMELF) --bin -o $@ $<


################################################################################
#
# Speed indicative
#

speed_indicative:	speed_indicative.bin
			@echo

speed_indicative.o:	speed_indicative.c $(IKDEPS)
			$(CC) $(CCFLAGS) -o $@ $<

speed_indicative.elf:	speed_indicative.o $(IKOBJS)
			$(LD) $(LDFLAGS) -o $@ speed_indicative.o $(IKOBJS)

speed_indicative.bin:	speed_indicative.elf
			$(FROMELF) --bin -o $@ $<

################################################################################
#
# Clean - remove all .o, .elf, .bin
#

clean:
		rm -f *.bin *.elf *.o

# EOF
