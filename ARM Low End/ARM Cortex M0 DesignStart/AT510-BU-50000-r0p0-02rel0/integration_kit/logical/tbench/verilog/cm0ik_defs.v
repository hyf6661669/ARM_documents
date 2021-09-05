//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2008-2009 ARM Limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM Limited.
//
//      SVN Information
//
//      Checked In          : $Date: 2008-12-08 12:21:19 +0000 (Mon, 08 Dec 2008) $
//
//      Revision            : $Revision: 96209 $
//
//      Release Information : Cortex-M0-AT510-r0p0-01rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//      Cortex-M0 Integration Kit Definitions file
//-----------------------------------------------------------------------------

// Implementation level pin configuration
//
// STCALIB value for 50Mhz SCLK: ((50MHz x 10ms)/3 - 1) = 166666 (with skew) = 0x1028B0A
`define  ARM_CM0IK_STCALIB 26'h1028B0A
// Interrupt Latency - 13 cycles
`define  ARM_CM0IK_IRQLATENCY 8'hD



// Testbench Defines
//
// Primary clock cycle (in ns) 50 MHz
`define  ARM_CM0IK_CLK_PERIOD 20.0 
// Power-On-Reset assertion factor - 3 cycles
`define  ARM_CM0IK_POR_CYCLES 3
// Simulation Runaway Time Out factor - 1000000 cycles
`define  ARM_CM0IK_TIMEOUT_CYCLES 1000000 
// Power-On-Reset assertion time
`define  ARM_CM0IK_POR_LENGTH  (`ARM_CM0IK_POR_CYCLES*`ARM_CM0IK_CLK_PERIOD)  
// Timeout
`define  ARM_CM0IK_SIM_TIMEOUT (`ARM_CM0IK_TIMEOUT_CYCLES*`ARM_CM0IK_CLK_PERIOD)
