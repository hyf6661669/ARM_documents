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
// Cortex-M0 Integration Kit Debug Test
//
////////////////////////////////////////////////////////////////////////////////
//
// If DBG is present, this test checks:
//
// DAP Access
//
//   - The test uses the debug driver to read and write to memory using
//     Word, Halfword and Byte accesses.
//
//
// LOCKUP
//
//   - The test enters the architected lock-up state by accessing faulting
//     memory from within the HardFault handler. The debug driver checks
//     that lockup has been entered and checks that the LOCKUP pin has been
//     driven by reading the CM0IKMCU internal GPIO.
// 
//
// EDBGREQ
//
//   - The test checks that asserting the EDBGREQ pin (using the CM0IKMCU
//     internal GPIO) will casue the core to enter halting debug. Debug is enabled
//     using the debug driver.
//
//
// HALTED
//
//   - The test checks that the HALTED output is driven when the core is
//     in halting debug. The debug driver performs this check by reading 
//     the CM0IKMCU internal GPIO while the core is halted.
//
//
// DBGRESTART / DEBUGRESTARTED
//
//   - The test checks that driving the DBGRESTART input causes the DBGRESTARTED
//     output to change state. The debug driver performs this check by writing 
//     to the CM0IKMCU internal GPIO while the core is halted.
//     The test then checks that de-asserting DBGRESTART causes the core to
//     leave halting debug.  The debug driver performs this check by reading
//     the core DHCSR register.
//
//

#include "cm0ikmcu.h"
#include "IKtests.h"
#include <stdio.h>


//
// Global Variables to track test progress
//

uint32_t Errors = 0;
volatile uint32_t ExpectHardFault = 0;
uint32_t HardFaultTaken = 0;

typedef void (* FuncPtr)(void);

int main (void)
{
  // Call CMSIS System Initialisation
  SystemInit();	

  // Call IK Specific Initialisation
  IKInit();

  //
  // This test requires DBG to be present.
  // If EXPECTED_DBG indicates that DBG is not present, this test will
  // PASS to allow a clean test run.
  // If EXPECTED_DBG is incorrectly set, the config_check test will fail.
  //

  // Banner
  MSG(("Cortex-M0 - Debug Test\n"));
  
  if(EXPECTED_DBG == 1)
    {
      //
      // Initialise Debug Driver to correct protocol
      //
      if(EXPECTED_JTAGnSW)
	{
	  CallDebugDriver(FnSetModeJTAG);
	}
      else
	{
	  CallDebugDriver(FnSetModeSW);
	}
      
      //
      // Set up memory locations pointed to by FaultFunction
      // to contain code that will cause a fault
      //

      // Faulting memory is immediately above the DEBUGDRIVER region,
      // so we can generate a fault with a simple:
      // LDR R0, [pc+8] // 0x4808
      // BX LR // 0x4770

      //
      // Set up a faulting version and a non faulting version.
      // The debugger will copy the non-faulting version over the
      // faulting version to enable the MCU to return to the function
      // without incurring further faults.
      //

      // Little Endian Encodings:
      // FAULTLOAD 0x4808
      // NONFAULT 0x000
      // RETURN 0x4770

      if(EXPECTED_BE)
	{
	  // Non Faulting
	  DEBUGDRIVERDATA[2] = 0x00007047;
	  // Faulting
	  DEBUGDRIVERDATA[3] = 0x08487047;
	}
      else
	{
	  // Non Faulting
	  DEBUGDRIVERDATA[2] = 0x47700000;
	  // Faulting
	  DEBUGDRIVERDATA[3] = 0x47704808;
	}


      //
      // DAP Access
      //
      // Check Word, Halfword and Byte accesses to memory
      // via the DAP, using the debug driver.
      //
      MSG(("DAP Access:\n"));

      if( CallDebugDriver(FnDAPAccess) == TEST_PASS )
	{
	  // Check returned value from debug driver
	     
	  MSG(("\tWORD: "));

	  if( (DEBUGDRIVERDATA[1]) & 0x1 )
	    {
	      MSG(("PASS\n"));
	    }
	  else
	    {
	      Errors++;
	      MSG(("FAIL\n"));
	    }
	  
	  MSG(("\tHALFWORD: "));
	  
	  if( (DEBUGDRIVERDATA[1]) & 0x2 )
	    {
	      MSG(("PASS\n"));
	    }
	  else
	    {
	      Errors++;
	      MSG(("FAIL\n"));
	    }
	  
	  
	  MSG(("\tBYTE: "));
	  
	  if( (DEBUGDRIVERDATA[1]) & 0x4 )
	    {
	      MSG(("PASS\n"));
	    }
	  else
	    {
	      Errors++;
	      MSG(("FAIL\n"));
	    }
	  
	}
      else
	{
	  Errors++;
	  MSG(("FAIL\n"));
	}
      
      // Clear data value
      DEBUGDRIVERDATA[1] = 0;



      //
      // LOCKUP
      //
      // Create LOCKUP scenario by accessing faulting memory within the HardFault Handler
      // We enter the HardFault Handler by accessing faulting memory
      // The debugger will check for lockup before allowing execution to resume.
      //

      MSG(("LOCKUP: "));
      
      ExpectHardFault = 1;
      
      // Start Debug Driver function that will get us out of Lockup
      StartDebugDriver(FnConnectCheckUnlockup);

      while(HardFaultTaken == 0)
	{
	  ((FuncPtr) (1 + (uint32_t)(&(DEBUGDRIVERDATA[3]))) ) ();
	}

      // Get here if we took HardFault -> LOCKUP -> Debugger returned us
      

      if( (CheckDebugDriver() == TEST_PASS) && HardFaultTaken)
	{
	  MSG(("PASS\n"));
	}
      else
	{
	  Errors++;
	  MSG(("FAIL\n"));
	}
      


      //
      // EDBGREQ, HALTED, DBGRESTART, DBGRESTARTED
      //
      //
      // EDBGREQ is tested by asserting the line and checking that the core halts.
      //
      // HALTED should be asserted by the core when halted.
      //
      // DBGRESTART will be asserted by the debugger, and DBGRESTARTED polled to
      // check that the resquest was observed.
      // 
      // DBGRESTART will be deasserted by the debugger, and the core should leave halt.
      MSG(("EDBGREQ - HALTED, DBGRESTART - DBGRESTARTED: "));

      // Enable Halting Debug
      CallDebugDriver(FnEnableHaltingDebug);
      
      // Check that GPIO inputs are not stuck in asserted states
      // read halted - should be low
      // read restart - should be high

      if(GPIO1->DATA[GPIO_HALTED].BYTE[POWER_BYTE])
	{
	  Errors++;
	  MSG(("GPIO claims that core is halted - FAIL\n"));
	}
      else if(GPIO1->DATA[GPIO_DBGRESTARTED].BYTE[INTDBG_BYTE] == 0)
	{
	  Errors++;
	  MSG(("GPIO claims that DBGRESTARTED is deasserted - FAIL\n"));
	}
      else
	{
	  // Start Debug Driver function that will unhalt us
	  StartDebugDriver(FnConnectCheckHaltDbgrestart);
	  
	  // Assert EDBGREQ
	  GPIO1->DATA[GPIO_EDBGRQ].BYTE[INTDBG_BYTE] = GPIO_EDBGRQ;

	  if( CheckDebugDriver() == TEST_PASS )
	    {
	      // Check returned value from debug driver
	     
	      MSG(("\n\tEDBGREQ: "));

	      if( (DEBUGDRIVERDATA[1]) & 0x1 )
		{
		  MSG(("PASS\n"));
		}
	      else
		{
		  Errors++;
		  MSG(("FAIL\n"));
		}

	      MSG(("\tHALTED: "));

	      if( (DEBUGDRIVERDATA[1]) & 0x2 )
		{
		  MSG(("PASS\n"));
		}
	      else
		{
		  Errors++;
		  MSG(("FAIL\n"));
		}
	      

	      MSG(("\tDEBUGRESTART: "));

	      if( (DEBUGDRIVERDATA[1]) & 0x4 )
		{
		  MSG(("PASS\n"));
		}
	      else
		{
		  Errors++;
		  MSG(("FAIL\n"));
		}
	      
	      MSG(("\tDEBUGRESTARTED: "));

	      if( (DEBUGDRIVERDATA[1]) & 0x8 )
		{
		  MSG(("PASS\n"));
		}
	      else
		{
		  Errors++;
		  MSG(("FAIL\n"));
		}
	    }
	  else
	    {
	      Errors++;
	      MSG(("FAIL\n"));
	    }
	}
    }
  else
    {
      MSG(("EXPECTED_DBG = 0, Skipping test\n"));
    }

  return Errors;
}


//
// Handlers
//

void HardFault_Handler()
{
  //
  // The HardFault Handler is used for testing LOCKUP in this test
  //
  if(ExpectHardFault == 1)
    {
      // Tell main() that we took the HardFault
      HardFaultTaken = 1;
      
      // Access AHB Default Slave to take core into LOCKUP
      ((FuncPtr) (1 + (uint32_t)(&(DEBUGDRIVERDATA[3])))) ();
    }
  else
    {
      // Not expecting a fault
      MSG(("Unexpected HardFault - FAIL\n"));
    }
}
