/*-----------------------------------------------------------------------------
 * The confidential and proprietary information contained in this file may
 * only be used by a person authorised under and to the extent permitted
 * by a subsisting licensing agreement from ARM Limited.
 *
 *            (C) COPYRIGHT 2009 ARM Limited.
 *                ALL RIGHTS RESERVED
 *
 * This entire notice must be reproduced on all copies of this file
 * and copies of this file may only be made by a person if such person is
 * permitted to do so under the terms of a subsisting license agreement
 * from ARM Limited.
 *
 *      SVN Information
 *
 *      Checked In          : $Date: 2008-12-31 10:59:44 +0000 (Wed, 31 Dec 2008) $
 *
 *      Revision            : $Revision: 97564 $
 *
 *      Release Information : Cortex-M0-AT510-r0p0-01rel0
 *-----------------------------------------------------------------------------
 */

////////////////////////////////////////////////////////////////////////////////
//
// Cortex-M0 Integration Kit Configuration File
//
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//
//  Processor configuration options.
//  These must match the expected hardware configuration of the processor.
//
//  - EXPECTED_BE        : Expected Endianness (0,1)
//  - EXPECTED_BKPT      : Expected number of Breakpoint Comparators (0,1,2,3,4)
//  - EXPECTED_DBG       : Expected Debug config (0,1)
//  - EXPECTED_JTAGnSW   : Expected CORTEXM0-DAP Protocol (0,1)
//  - EXPECTED_NUMIRQ    : Expected number of interrupts (1,2,4,8,16,24,32)
//  - EXPECTED_SYST      : Expected SysTick extension (0,1)
//  - EXPECTED_SMUL      : Expected multiplier config (0,1)
//  - EXPECTED_WPT       : Expected number of Watchpoint Comparators (0,1,2)

// RealView MDK GUI Support
// <<< Use Configuration Wizard in Context Menu >>>
// <h> Processor configuration options
// <o> EXPECTED_BE: Expected Endianness <0=> Little Endian <1=> Big Endian
#define EXPECTED_BE             0


// <o> EXPECTED_BKPT: Expected number of Breakpoint Comparators <0-4>
#define EXPECTED_BKPT           4


// <o> EXPECTED_DBG: Expected Debug config <0=> Absent <1=> Present
#define EXPECTED_DBG            1


// <o> EXPECTED_JTAGnSW: Expected CORTEXM0-DAP Protocol <0=> Serial Wire <1=> JTAG
#define EXPECTED_JTAGnSW        0


// <o> EXPECTED_NUMIRQ: Expected number of interrupts <1=> 1 <2=> 2 <4=> 4 <8=> 8 <16=> 16 <24=> 24 <32=> 32
#define EXPECTED_NUMIRQ         32


// <o> EXPECTED_SYST: Expected SysTick extension <0=> Absent <1=> Present
#define EXPECTED_SYST           1


// <o> EXPECTED_SMUL: Expected Small Multiplier config <0=> Absent (Fast Multiplier) <1=> Present (Small Multiplier)
#define EXPECTED_SMUL           0


// <o> EXPECTED_WPT: Expected number of Watchpoint Comparators <0-2>
#define EXPECTED_WPT            2

// </h>

// Processor port Tie-Offs. 
//
// - EXPECTED_STCALIB	: Expected value of STCALIB[25:0] at CORTEXM0INTEGRATION or CORTEXM0
// - EXPECTED_BASEADDR	: Expected value of BASEADDR[31:0] at CORTEXM0DAP
//

// <h> Processor port Tie-Offs
// <o> EXPECTED_STCALIB: Expected value of STCALIB[25:0] at CORTEXM0INTEGRATION or CORTEXM0 <0x0-0x3FFFFFF>
#define EXPECTED_STCALIB	0x1028B0A

// <o> EXPECTED_BASEADDR: Expected value of BASEADDR[31:0] at CORTEXM0DAP <0x0-0xFFFFFFFF>
#define EXPECTED_BASEADDR	0xE00FF003

// </h>
// <<< end of configuration section >>>



////////////////////////////////////////////////////////////////////////////////
//
// Integration Kit Test Configuration
//

//
// Define whether the IK tests and the DebugDriver code should display messages
// using the chracter output device in the testbench.
//
#define CM0IKMCU_PRINTF
//#define DEBUGDRIVER_PRINTF



////////////////////////////////////////////////////////////////////////////////
//
// ID values - DO NOT MODIFY
//
#define CORTEXM0DAP_JTAG_TAPID  0x0BA01477
#define CORTEXM0DAP_JTAG_DPIDR  0x0BB11477
#define CORTEXM0DAP_SW_DPIDR    0x0BB11477
#define CORTEXM0DAP_AP_IDR      0x04770021
#define CORTEXM0_ROM_PID3       0x00
#define CORTEXM0_SCS_PID3       0x00
#define CORTEXM0_DWT_PID3       0x00
#define CORTEXM0_BPU_PID3       0x00
#define CORTEXM0_CPUID          0x410cc200


////////////////////////////////////////////////////////////////////////////////
