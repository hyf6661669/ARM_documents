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
// Cortex-M0 Integration Kit Sleep Test
//
////////////////////////////////////////////////////////////////////////////////
//
// This test checks:
//
// SLEEPING
//
//   - The test checks that the SLEEPING output is asserted when the core enters
//     sleep mode, by using the CM0IKMCU internal GPIO to cause a wake-up interrupt
//     when the SLEEPING signal is asserted.
//
//
// SLEEPDEEP
//
//   - The test checks that the SLEEPDEP output is asserted when the core enters
//     sleep mode, by using the CM0IKMCU internal GPIO to cause a wake-up interrupt
//     when the SLEEPDEEP signal is asserted.
//
//
// Debugger Wakeup
//
//   - If DBG is present, the test checks that the core can be woken from SLEEPDEEP
//     by a debugger. The test uses the debug driver to check that SLEEP was entered
//     before waking the core using the DHCSR register.
//
//


#include "cm0ikmcu.h"
#include "IKtests.h"
#include <stdio.h>

//
// Global Variables to track test progress
//

volatile uint32_t Errors = 0;
volatile uint32_t IntTaken = 0;


int main (void)
{
  // Call CMSIS System Initialisation
  SystemInit();	

  // Call IK Specific Initialisation
  IKInit();

  // Banner
  MSG(("Cortex-M0 - Sleep Test\n"));


  //
  // Ensure Interrupts are enabled
  //
  __enable_irq();

  
  //
  // WFI SLEEP
  //
  MSG(("WFI SLEEP, INT wakeup:"));

  
  // Ensure we SLEEP - SLEEPDEEP should be clear
  // SCR[2] = SLEEPDEEP
  SCB->SCR &= ~(1UL << 2);

  // Wakeup when we see Core SLEEPING output asserted
  GPIO1->IE.BYTE[POWER_BYTE] = GPIO_SLEEPING;

  // Ensure Interrupt is not pending
  NVIC_ClearPendingIRQ(GPIO_IRQn);

  // Enable Interupts
  NVIC_EnableIRQ(GPIO_IRQn);

  // Wait For Interrupt loop
  while(IntTaken == 0)
    {
      __WFI();
    }

  // Disable Interrupt and Interrupt Source
  NVIC_DisableIRQ(GPIO_IRQn);
  GPIO1->IE.BYTE[POWER_BYTE] = 0;
  IntTaken = 0;

  MSG(("\tPASS\n"));


  //
  // WFI SLEEPDEEP
  //

  MSG(("WFI SLEEPDEEP, INT wakeup:"));


  // Ensure we SLEEPDEEP - SLEEPDEEP should be set
  // SCR[2] = SLEEPDEEP
  SCB->SCR |= (1UL << 2);

  // Wakeup when we see Core SLEEPING output asserted
  GPIO1->IE.BYTE[POWER_BYTE] = GPIO_SLEEPDEEP;

  // Ensure Interrupt is not pending
  NVIC_ClearPendingIRQ(GPIO_IRQn);

  // Enable Interupts
  NVIC_EnableIRQ(GPIO_IRQn);

  // Wait For Interrupt loop
  while(IntTaken == 0)
    {
      __WFI();
    }

  // Disable Interrupt and Interrupt Source
  NVIC_DisableIRQ(GPIO_IRQn);
  GPIO1->IE.BYTE[POWER_BYTE] = 0;
  IntTaken = 0;



  MSG(("\tPASS\n"));

  if(EXPECTED_DBG)
    {
      //
      // Ensure Debug_Driver uses the correct protocol
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
      // WFI SLEEPDEEP, Debugger Wakeup
      //
      MSG(("WFI SLEEPDEEP, Debugger Wakeup:"));

      // Ensure we SLEEPDEEP - SLEEPDEEP should be set
      // SCR[2] = SLEEPDEEP
      SCB->SCR |= (1UL << 2);
      
      // Wakeup will be due to the debugger
      StartDebugDriver(FnConnectWakeUnhalt);
      
      // Wait For Interrupt loop
      while(DEBUGDRIVERDATA[1] == 0)
	{
	  __WFI();
	}

      if(CheckDebugDriver() == TEST_PASS)
	{
	  MSG(("\tPASS\n"));
	}
      else
	{
	  Errors++;
	  MSG(("FAIL\n"));
	}
      
    }

  return Errors;
}


//
// Handlers
//

void GPIO_IRQHandler()
{
  // Signal to main code that the INT was taken
  IntTaken = 1;
}
