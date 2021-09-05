/*
 *-----------------------------------------------------------------------------
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
// Cortex-M0 Integration Kit Config Check Test
//
////////////////////////////////////////////////////////////////////////////////
//
// This test checks:
//
// Processor Configuration Parameters:
// -----------------------------------
// 
// BE
//
//  - Big Endian is checked by reading the architected bit AIRCR.ENDIANESS.
//    Additional checks are performed by making memory access of different sizes.
//
//
// BKPT
//
//   - The number of Breakpoints is checked by reading NUM_CODE using the debug driver.
//
//
// DBG
//
//   - Presence of DBG is checked by attempting to access the DAP and read the
//     Cortex-M0 ROM table using the debug driver.
//
//
// JTAGnSW
//
//   - The value of JTAGnSW is checked by attempting JTAG or SerialWire connections 
//     to the DAP using the debug driver.
//
//
// NUMIRQ
//
//   - The number of implemented external interrupts is checked by pending all interrupts
//     and reading back the number of pend bits set in the NVIC.
//
//
// SYST
//
//   - The presence of the SysTick timer is checked by attempting to access the SysTick registers.
//     If SysTick is present, the value of STCALIB is also checked.
//
//
// SMUL
//
//   - The presence of the Small Multiplier is checked by attempting to interrupt 
//     a multiply operation using the CM0IKMCU internal GPIO.
//
//
// WPT
//   - The number of Watchpoint comparators is checked by reading NUMCOMP using the debug driver.
//
//
// Processor Tie-Off values:
// -------------------------
//
// BASE
//
//   - DAP BASE value is checked by reading the BASE register using the debug driver.
//
// 
// ECOREVNUM
//
//   - ECOREVNUM is checked by verifying all ID values affected by ECOREVNUM:
//     - Using the debug driver:
//       - TAPID (if using JTAG DAP)
//       - DP IDR
//       - AP IDR
//       - ROM Table PID3
//       - SCS PID3
//       - DWT PID3
//       - BPU PID3
//     - Directly from the processor:
//       - CPUID
//
//
// STCALIB
//
//   - The value of STCALIB is checked if SYST is present, by reading the SysTick registers.
//     If an external reference clock is provided, the test checks that this clock is running.
//
//
// 
// The following CANNOT be checked:
// --------------------------------
//
// IRQLATENCY[7:0]
//


#include "cm0ikmcu.h"
#include "IKtests.h"
#include <stdio.h>


// EXPECTED_STCALIB
//
// EXPECTED_STCALIB is the value on the STCALIB bus [25:0]
// In the SysTick CALIB register however, the bit positions are not the same
//
#define SYST_STCALIB(value) ( ((value & (0x3 << 24)) << 6) | (value & ((1 << 24) -1)) )


// Prototypes

void Check(char *name, uint32_t actual, uint32_t expected);
void CheckHex(char *name, uint32_t actual, uint32_t expected);


// Globals

uint32_t Errors = 0;
volatile uint32_t IntTaken = 0;


int main (void)
{
  uint32_t Actual_JTAG=0;
  uint32_t Actual_SW=0;

  uint32_t a;
  uint32_t value;
  uint32_t count = 0;

  union
  {
    volatile uint32_t WORD;
    volatile uint16_t HALF[2];
    volatile uint8_t BYTE[4];
  } BE_Test;

  
  // Call CMSIS System Initialisation
  SystemInit();	

  // Call IK Specific Initialisation
  IKInit();

  // Banner
  MSG(("Cortex-M0 - Config Check Test\n"));


  //
  // DBG
  //
  // Determine DBG by trying to read the ROM Table.
  // This is only possible via the DAP, so need to 
  // first check if the DAP is accessible.
  //

  if(EXPECTED_DBG == 1)
    {
      //
      // JTAGnSW 
      //
      // Determine JTAGnSW by attempting DAP transfer
      //
      if(EXPECTED_JTAGnSW == 0)
	{
	  //
	  // SerialWire
	  //
	  
	  if(CallDebugDriver(FnSetModeSW) != TEST_PASS)
	    {
	      Errors++;
	      MSG(("JTAGnSW: Failed to set Debug Driver to SW mode\t-\tFAIL\n"));
	    }
	  else
	    {
	      if(CallDebugDriver(FnCheckDPIDR) != TEST_PASS)
		{
		  // Failed to switch to SW
		  Errors++;
		  MSG(("JTAGnSW: No or incorrect response from DAP\t-\tFAIL\n"));
		}
	      else
		{
		  Check("JTAGnSW", 0, EXPECTED_JTAGnSW);
		  Actual_SW = 1;
		}
	    }
	}
      else
	{
	  //
	  // JTAG
	  //
	  if(CallDebugDriver(FnSetModeJTAG) != TEST_PASS)
	    {
	      Errors++;
	      MSG(("JTAGnSW: Failed to set Debug Driver to JTAG mode\t-\tFAIL\n"));
	    }
	  else
	    {
	      if(CallDebugDriver(FnCheckDPIDR) != TEST_PASS)
		{
		  // Failed to switch to JTAG
		  Errors++;
		  MSG(("JTAGnSW: No or incorrect response from DAP\t-\tFAIL\n"));
		}
	      else
		{
		  Check("JTAGnSW", 1, EXPECTED_JTAGnSW);
		  Actual_JTAG = 1;
		}
	    }
	}

      
      if(Actual_JTAG || Actual_SW)
	{
	  // Check the rest of Debug
	  // At this point, Actual_ tells us which DAP responded, if indeed it did respond


	  // Turn on the DAP
	  if(CallDebugDriver(FnDAPPowerUp) != TEST_PASS)
	    {
	      MSG(("Failed to power up the DAP\n"));
	      Check("DBG", 0, EXPECTED_DBG);
	    }
	  else
	    {
	      // DBG
	      //
	      // Ensure we can read the ROM Table
	      if(CallDebugDriver(FnCheckROMTable) != TEST_PASS)
		{
		  // Couldn't read the ROM table, there really is no debug...
		
		  MSG(("Failed tryng to read ROM table\n"));
		  Check("DBG", 0, EXPECTED_DBG);
		}
	      else
		{
		  // We have debug
		  Check("DBG", 1, EXPECTED_DBG);
		  
		  
		  // BKPT
		  //
		  Check("BKPT",
			(CallDebugDriver(FnCheckNumBKPT) ? (DEBUGDRIVERDATA[1]) : EXPECTED_BKPT),
			EXPECTED_BKPT);

		  
		  // WPT
		  //
		  Check("WPT",
			(CallDebugDriver(FnCheckNumWPT) ? (DEBUGDRIVERDATA[1]) : EXPECTED_WPT),
			EXPECTED_WPT);
		  
		  
		  // BASE
		  //
		  CheckHex("BASEADDR", 
			   (CallDebugDriver(FnCheckBASE) ? (DEBUGDRIVERDATA[1]) : EXPECTED_BASEADDR),
			   EXPECTED_BASEADDR);
	      

		  // ECOREVNUM
		  //
		  // CORTEXM0DAP
		  //
		  // [27:24] DP IDR (top 4 bits)
		  // [23:20] AP IDR (top 4 bits)
		  //
		  // CORTEXM0
		  //
		  // [19:16] ROM PID3 (bottom 4 bits)
		  // [15:12] SCS PID3 (bottom 4 bits)
		  // [11: 8] DWT PID3 (bottom 4 bits)
		  // [ 7: 4] BPU PID3 (bottom 4 bits)
		  //
		  // Readable by the CPU itself...
		  // [ 3: 0] CPUID (bottom 4 bits)

		  MSG(("ECOREVNUM[27: 4]: Checking IDs...\n"));
		  
		  if(Actual_JTAG)
		    {
		      // Check TAPID
		      CheckHex("  [27:24] DAP_JTAG_TAPID",
			       (CallDebugDriver(FnCheckTAPID) ? (DEBUGDRIVERDATA[1]) : CORTEXM0DAP_JTAG_TAPID),
			       CORTEXM0DAP_JTAG_TAPID);
		    }
		  
		  
		  // DPIDR - already done as part of connection
		  //
		  if(Actual_JTAG)
		    {
		      CheckHex("  [27:24] DAP_JTAG_DPIDR", CORTEXM0DAP_JTAG_DPIDR, CORTEXM0DAP_JTAG_DPIDR);
		    }
		  else
		    {
		      CheckHex("  [27:24] DAP_SW_DPIDR", CORTEXM0DAP_SW_DPIDR, CORTEXM0DAP_SW_DPIDR);
		    }
		  
		  
		  // APIDR
		  //
		  CheckHex("  [23:20] DAP_AP_IDR",
			   (CallDebugDriver(FnCheckAPIDR) ? (DEBUGDRIVERDATA[1]) : CORTEXM0DAP_AP_IDR),
			   CORTEXM0DAP_AP_IDR);


		  // ROM table PID3
		  CheckHex("  [19:16] ROM Table PID3",
			   (CallDebugDriver(FnCheckROMPID3) ? (DEBUGDRIVERDATA[1]) : CORTEXM0_ROM_PID3),
			   CORTEXM0_ROM_PID3);


		  // SCS PID3
		  CheckHex("  [15:12] SCS PID3",
			   (CallDebugDriver(FnCheckSCSPID3) ? (DEBUGDRIVERDATA[1]) : CORTEXM0_SCS_PID3),
			   CORTEXM0_SCS_PID3);


		  // DWT PID3
		  //
		  // Only if DWT is present
		  if(EXPECTED_WPT)
		    {
		      CheckHex("  [11: 8] DWT PID3",
			       (CallDebugDriver(FnCheckDWTPID3) ? (DEBUGDRIVERDATA[1]) : CORTEXM0_DWT_PID3),
			       CORTEXM0_DWT_PID3); 
		    }


		  // BPU PID3
		  //
		  // Only if BPU is present
		  if(EXPECTED_BKPT)
		    {
		      CheckHex("  [ 7: 4] BPU PID3",
			       (CallDebugDriver(FnCheckBPUPID3) ? (DEBUGDRIVERDATA[1]) : CORTEXM0_BPU_PID3),
			       CORTEXM0_BPU_PID3); 
		    }

		  // CPUID
		  //
		  // Do this check outside of Debug


		  // Turn DAP off
		  CallDebugDriver(FnDAPPowerDown);
		}
	    }
	}
      else
	{
	  // Failed to Communicate with a DAP (No DAP present?)
	  Check("DBG", 0, EXPECTED_DBG);
	}
    }
  else
    {
      // Not expecting DBG, neither DAP should respond

      CallDebugDriver(FnSetModeJTAG);
      if(CallDebugDriver(FnCheckDPIDR) == 0)
	{
	  Actual_JTAG = 1;
	}
      else
	{
	  CallDebugDriver(FnSetModeSW);
	  if(CallDebugDriver(FnCheckDPIDR) == 0)
	    {
	      Actual_SW = 1;
	    }
	}

      if(Actual_JTAG || Actual_SW)
	{
	  MSG(("A DAP responded, but DBG was not expected\n"));
	}
      Check("DBG", (Actual_JTAG || Actual_SW), EXPECTED_DBG);
    }



  // ECOREVNUM - remaining ID
  //
  //
  CheckHex("ECOREVNUM[ 3: 0] CPUID",
	   SCB->CPUID,
	   CORTEXM0_CPUID);


  //
  // NUMIRQ
  //
  // Determine NUMIRQ by pending all interrupts then reading back
  // the pend register contents. Only configured interrupts will
  // show as pending.
  //

  // NUMIRQ should only be one of the pre-defined values
  switch(EXPECTED_NUMIRQ)
    {
    case 1:
    case 2:
    case 4:
    case 8:
    case 16:
    case 24:
    case 32:
  
      // Ensure interrupts are disabled
      NVIC->ICER[0] = 0xFFFFFFFFUL;

      // Pend all interrupts
      NVIC->ISPR[0] = 0xFFFFFFFFUL;

      // Read pend status
      value = NVIC->ISPR[0];

      // Count ones
      count = 0;
      while(value)
	{
	  count++;
	  value = value >> 1;
	}

      Check("NUMIRQ", count, EXPECTED_NUMIRQ);

      // Clear all pending interrupts
      NVIC->ICPR[0] = 0xFFFFFFFFUL;
      break;

    default:
      Errors++;
      MSG(("NUMIRQ: Expected value %d is not valid\t-\tFAIL\n", EXPECTED_NUMIRQ));
      break;
    }


  //
  // BE
  //
  // Determine BE configuration by reading architected endianness bit
  // Additionally, perform some simple memory access checks of different sizes
  //

  Check("BE",
	((SCB->AIRCR >> NVIC_AIRCR_ENDIANESS) & 0x1 ),
	EXPECTED_BE);

  
  // Memory access size checks

  BE_Test.WORD = 0xFFFFFFFF;
  BE_Test.BYTE[3] = 0x12;
  BE_Test.HALF[0] = 0x5678;

  if(EXPECTED_BE == 0)
    {
      // Little Endian
      CheckHex("  MemAccess (LE)",
	       BE_Test.WORD,
	       0x12FF5678);
    }
  else
    {
      // Big Endian
      CheckHex("  MemAccess (BE)",
	       BE_Test.WORD,
	       0x5678FF12);

    }
  
  
  //
  // SYST
  //
  // Determine SYST presence by writing and reading back from the LOAD register.
  // If SYST is not present, it will not return the value written.
  //

  SysTick->LOAD = 0xFFFF;
  count = (SysTick->LOAD) ? 1 : 0;

  Check("SYST", count, EXPECTED_SYST);

  if(count)
    {
      //
      // STCALIB
      //
      // Check the core returns the expected value of STCALIB,

      // The format of the SysTick->CALIB is not the same
      // as the value on the wire
      CheckHex("STCALIB", SysTick->CALIB, SYST_STCALIB(EXPECTED_STCALIB));


      //
      // If there is an external clock, check it is connected
      //
      if(((SysTick->CALIB) & (1U << 31) ) == 0 )
	{
	  MSG(("  Waiting for STCLK tick... "));

	  // Set reload to zero (no reload)
	  SysTick->LOAD = 1;

	  // Clear current value by writing to it
	  SysTick->VAL = 1;

	  // Read COUNTFLAG (to clear it)
	  count = SysTick->CTRL & (1 << 16);
	  
	  // Configure SysTick:
	  //   External Clock Source
	  //   No Interrupt
	  SysTick->CTRL = 0;

	  // Enable SysTick
	  SysTick->CTRL |= 1;

	  // Poll CountFlag - will be high w
	  while(((SysTick->CTRL) & (1 << 16)) == 0);

	  // The only way to get here is to see the count decrement
	  // This test will time out otherwise
	  MSG(("PASS\n"));

	  // Disable SysTick
	  SysTick->CTRL = 0;
	}
    }


  //
  // SMUL
  //
  // Determined SMUL by scheduling an interrupt a few cylces away
  // before starting a multiply.
  // Immediately after the multiply, disable interrupts.
  //
  // If the interrupt was taken, the multiply took a long time (i.e. SMUL == 1)
  //
  // Check the validity of the method by running the same exercise
  // over some other 1-cycle instruction.
  //
  // NB could do this testing with the SysTick instead, however, that is
  // not always available so we won't rely on its presence for this test.
  

  // Ensure LoopOut is low, poll until low is seen on LoopIn
  GPIO1->DATA[GPIO_LOOPOUT].BYTE[INTDBG_BYTE] = 0;
  while(GPIO1->DATA[GPIO_LOOPIN].BYTE[INTDBG_BYTE]);
  
  // Enable GPIO interrupt on input change for LoopIn
  GPIO1->IE.BYTE[INTDBG_BYTE] = GPIO_LOOPIN;
  
  // Ensure no irq pending, then enable the irq
  NVIC_ClearPendingIRQ(GPIO_IRQn);
  NVIC_EnableIRQ(GPIO_IRQn);
  __enable_irq();
  

  // Create Interrupt (in a few cycles, due to the delay between loopout and loopin)
  GPIO1->DATA[GPIO_LOOPOUT].BYTE[INTDBG_BYTE] = GPIO_LOOPOUT;
  
  // 1 cycle delay...
  __NOP();

  
  // Disable interrupts
  __disable_irq();


  if(IntTaken)
    {
      // IRQ taken more quickly than expected - FAIL
      Errors++;
      MSG(("SMUL: Test mechanism FAIL - unable to check SMUL value.\n"));
    }
  else
    {
      // IRQ hadn't been taken - we will be able to check SMUL using
      // this method

      // Wait for IRQ to be pended
      while(NVIC_GetPendingIRQ(GPIO_IRQn) == 0);

      // Clear the Pend Status and IntTaken
      NVIC_ClearPendingIRQ(GPIO_IRQn);
      IntTaken = 0;

      // Re-enable interrupts
      __enable_irq();

      // Initialise an operand for the multiply
      // By reading the SysTick CALIB value, ensure the compiler cannot
      // optimise the actual value or the multiply.
      a = SysTick->CALIB;
            
      // Create Interrupt
      GPIO1->DATA[GPIO_LOOPOUT].BYTE[INTDBG_BYTE] = 0;

      // Perform a Multiply
      value = a * 1234;

      // Disable interrupts
      __disable_irq();

      if(IntTaken)
	{
	  // Int Taken - Small Multiplier Present
	  Check("SMUL", 1, EXPECTED_SMUL);
	}
      else
	{
	  // Int not taken - Small Multipler Absent
	  Check("SMUL", 0, EXPECTED_SMUL);
	}


      // Load the multiplied value into the SysTick
      // to prevent the compiler discarding the value
      SysTick->LOAD = value;

    }


  // Disable Interrupt, clear pending status
  __disable_irq();
  NVIC_DisableIRQ(GPIO_IRQn);
  NVIC_ClearPendingIRQ(GPIO_IRQn);
  GPIO1->IE.BYTE[INTDBG_BYTE] = GPIO_LOOPIN;


  return Errors;
}


//
// Checking Routines
//

void Check(char *name, uint32_t actual, uint32_t expected)
{
  if(actual == expected)
    {
      MSG(("%s: %d\t-\tPASS\n",
	   name,
	   actual));
    }
  else
    {
      MSG(("%s: %d\t(Expected %d)\t-\tFAIL\n",
	   name,
	   actual,
	   expected));
      Errors++;
    }
}


void CheckHex(char *name, uint32_t actual, uint32_t expected)
{
  if(actual == expected)
    {
      MSG(("%s: 0x%x\t-\tPASS\n",
	   name,
	   actual));
    }
  else
    {
      MSG(("%s: 0x%x\t(Expected 0x%x)\t-\tFAIL\n",
	   name,
	   actual,
	   expected));
      Errors++;
    }
}


void GPIO_IRQHandler()
{
  // Disable interrupt 
  NVIC_DisableIRQ(GPIO_IRQn);

  // Signal to main code that the INT was taken
  IntTaken = 1;
}
