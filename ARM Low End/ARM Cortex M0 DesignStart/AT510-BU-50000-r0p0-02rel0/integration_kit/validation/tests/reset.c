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
// Cortex-M0 Integration Kit Reset Test
//
////////////////////////////////////////////////////////////////////////////////
//
// This test checks:
//
// AHB Fault response from Default Slave
//
//   - The processor attempts an access to a region of memory which is mapped
//     to the AHB default slave.
//
//
// SYSRESETREQ pin connectivity
//
//   - The SYSRESETREQ pin is asserted and the test checks that a reset ocurrs.
//
//  

#include "cm0ikmcu.h"
#include "IKtests.h"
#include <stdio.h>


//
// Global Variables to track test progress
//

uint32_t Errors = 0;
uint32_t ExpectHardFault = 0;


int main (void)
{
  // Call CMSIS System Initialisation
  SystemInit();	

  // Call IK Specific Initialisation
  IKInit();

  if(CallDebugDriver(FnQueryFirstCall) == TEST_PASS)
    {
      //
      // This is the first time this code has been executed 
      //
      ExpectHardFault = 1;

      // Banner
      MSG(("Cortex-M0 - Reset Test\n"));

      //
      // Check that accessing a faulting region causes a Hard Fault
      //
      // At the same time, check that the core can successfully
      // request a reset (to get us out of Hard Fault)
      MSG(("AHB Fault Response: "));

      // Access default slave to cause AHB error response
      *AHBDEFAULTSLAVE = 0;

      // Should not get here
      MSG(("FAIL\n"));
      Errors++;
    }
  else
    {
      // Second time - Must have seen the hard fault and the reset
      MSG(("PASS\n"));
    }
  return Errors;
}


//
// Handlers
//

void HardFault_Handler()
{
  if(ExpectHardFault == 1)
    {
      // Seen AHB Default Slave Fault response
      MSG(("PASS\n"));

      // Now test SystemResetRequest
      MSG(("SYSRESETREQ: "));

      NVIC_SystemReset();
    }
  else
    {
      // Error
      MSG(("Unexpected HardFault - FAIL\n"));

      // There's no way to return to main from here,
      // so branch to self and wait for timeout
      while(1);
    }
}

