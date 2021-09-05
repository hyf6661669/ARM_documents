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
// Cortex-M0 Integration Kit Interrupt Test
//
////////////////////////////////////////////////////////////////////////////////
//
// This test checks:
//
// NMI pin connectivity
//
//   - Non Maskable Interrupt is generated using the CM0IKMCU internal GPIO
//
//
// IRQ[31:0] External Interrupt pin Connectivity
// 
//   - Interrupt inputs are driven using the CM0IKMCU internal GPIO
//
// 
// TXEV pin connectivity
//
//   - TXEV output is driven usng __SEV(), and checked using CM0IKMCU internal GPIO
//
//
// RXEV pin connectiviy
//
//   - RXEV input is driven using the CM0IKMCU internal GPIO to bring the processor
//     out of WFE.
//
//

#include "cm0ikmcu.h"
#include "IKtests.h"
#include <stdio.h>


//
// Prototypes
//

void CheckIntTaken(void);


//
// Global Variables to track test progress
//

volatile uint32_t IntTaken = 0;
volatile uint32_t Errors = 0;



int main (void)
{
  uint32_t count;
  uint32_t value;
  uint32_t numirq;

  // Call CMSIS System Initialisation
  SystemInit();	

  // Call IK Specific Initialisation
  IKInit();

  // Banner
  MSG(("Cortex-M0 - Interrupt Test\n"));


  // Set SLEEPDEEP to allow WIC handshakes to occur when executing
  // WFI() or WFE() in systems that include the WIC
  SCB->SCR |= (1UL << 2);


  // Ensure interrupts are disabled
  NVIC->ICER[0] = 0xFFFFFFFFUL;


  //
  // Check number of implemented interrupts
  //

  // Pend all interrupts
  NVIC->ISPR[0] = 0xFFFFFFFFUL;

  // Read pend status
  value = NVIC->ISPR[0];

  // Count ones
  numirq = 0;
  while(value)
    {
      numirq++;
      value = value >> 1;
    }

  // Clear pended interrupts
  NVIC->ICPR[0] = 0xFFFFFFFFUL;
  
  if(numirq != EXPECTED_NUMIRQ)
    {
      MSG(("Found %d interrupts, expected %d\n", numirq, EXPECTED_NUMIRQ));
      return TEST_FAIL;
    }


  //
  // For each implemented interrupt, assert the int and take the interrupt
  //

  //
  // NMI is present on ALL implementations
  //
  // NMI is driven by one of the internal GPIO outputs.
  //
  MSG(("NMI:\t"));

  // Clear IntTaken flag
  IntTaken = 0;

  // Assert NMI by driving pin on the internal GPIO
  GPIO1->DATA[GPIO_NMI].BYTE[INTDBG_BYTE] = GPIO_NMI;

  // Check for interrupt
  __WFI();
  CheckIntTaken();
  

  //
  // Interrupts 
  //

  // Ensure CPU interrupts are enabled (PRIMASK clear)
  __enable_irq();


  // 
  // INT 0 is present on ALL implementations
  //
  // INT0 is asserted by the GPIO interrupt on pin change feature
  // Use loopback connection on internal GPIO to create the stimulus
  //

  MSG(("INT 0:\t"));

  // Ensure Loopback output pin is low
  GPIO1->DATA[GPIO_LOOPOUT].BYTE[INTDBG_BYTE] = 0;

  // Enable GPIO interrupt on change feature
  GPIO1->IE.BYTE[INTDBG_BYTE] = GPIO_LOOPIN;

  // Enable interrupt 
  NVIC_EnableIRQ(GPIO_IRQn);

  // Clear IntTaken flag
  IntTaken = 0;

  // Generate the interrupt
  GPIO1->DATA[GPIO_LOOPOUT].BYTE[INTDBG_BYTE] = GPIO_LOOPOUT;

  // Check for interrupt
  __WFI();
  CheckIntTaken();


  // Disable GPIO interrupt on change feature and deassert the GPIO output
  GPIO1->IE.BYTE[INTDBG_BYTE] = 0;
  GPIO1->DATA[GPIO_LOOPOUT].BYTE[INTDBG_BYTE] = 0;

  // Disable Interrupt
  NVIC_DisableIRQ(GPIO_IRQn);


  //
  // INT 1 - INT 31 will be available on some implementations
  //

   for(count=1; count < numirq; count++)
    {
      // For each configured external Interrupt
      MSG(("INT %d:\t", count));
      
      // Ensure IRQ is not already Pended
      NVIC_ClearPendingIRQ((IRQn_Type)count);

      // Enable interrupt 
      NVIC_EnableIRQ((IRQn_Type)count);
      
      // Clear IntTaken flag
      IntTaken = 0;

      // Use GPIO to create INT pulse
      GPIO2->DATA[0xFF].BYTE[(count>>3)] = (1 << (count%8));
      GPIO2->DATA[0].WORD = 0;

      // Check for interrupt
      __WFI();
      CheckIntTaken();
      
      // Disable Interrupt
      NVIC_DisableIRQ((IRQn_Type)count);

      // Ensure Interrupt is no longer Pended
      NVIC_ClearPendingIRQ((IRQn_Type)count);
    }

  // Clear pended interrupts
  NVIC->ICPR[0] = 0xFFFFFFFFUL;


  //
  // Events
  //

  // CPU TXEV output
  //
  // Detect TXEV using internal GPIO int-on-change feature
  //

  MSG(("TXEV Connectivity:\t"));

  // Enable GPIO interrupt on change feature
  GPIO1->IE.BYTE[EVENT_BYTE] = GPIO_TXEV;

  // Clear any pending interrupt
  NVIC_ClearPendingIRQ(GPIO_IRQn);
  
  // Enable interrupt 
  NVIC_EnableIRQ(GPIO_IRQn);

  // Clear IntTaken flag
  IntTaken = 0;
  
  // Send Event (SEV) should generate an interrupt via IK signal loopback
  __SEV();
  
  
  // Check for interrupt
  __WFI();
  CheckIntTaken();

  
  // Disable GPIO interrupt on change feature
  GPIO1->IE.BYTE[EVENT_BYTE] = 0;

  // Disable Interrupt
  NVIC_DisableIRQ(GPIO_IRQn);



  //
  // CPU RXEV input
  // 
  // Raise RXEV input to CPU by asserting GPIO output.
  // GPIO Ouptut --> Delay --> Core RXEV
  //
  // The RXEV pulse should wake the core up from sleep.
  //

  MSG(("RXEV Connectivity (i):\t"));


  // Ensure output starts off clear
  //
  // Because of the delays in the loopback, the safe way to do this
  // is to set the output, observe the set, then clear it and observe
  // the clear.

  GPIO1->DATA[GPIO_RXEV].BYTE[EVENT_BYTE] = GPIO_RXEV;
  while(GPIO1->DATA[GPIO_delayed_RXEV].BYTE[EVENT_BYTE] == 0);

  GPIO1->DATA[GPIO_RXEV].BYTE[EVENT_BYTE] = 0;
  while(GPIO1->DATA[GPIO_delayed_RXEV].BYTE[EVENT_BYTE]);


  // Ensure that the WFE being tested really can cause the core to sleep
  // by executing a SEV followed by a WFE that will consume the event
  // without sleeping.
  __SEV();
  __WFE(); // Clear event from RXEV and SEV and then begin test
  

  // Assert output
  GPIO1->DATA[GPIO_RXEV].BYTE[EVENT_BYTE] = GPIO_RXEV;

  // Wait For Event - the CPU should sleep
  __WFE();

  // We get here when the core wakes up
  MSG(("PASS\n"));



  //
  // RXEV - Additional check for the case where RXEV is accidentally tied high
  //
  // Check to see that WFE which should sleep really does, by only waking using
  // an interrupt (i.e. don't drive RXEV itself)
  //

  MSG(("RXEV Connectivity (ii):\t"));

  // RXEV is still asserted from last test.
  // De-assert the GPIO line that should drive RXEV,
  // poll until we see the bit low via GPIO input
  GPIO1->DATA[GPIO_RXEV].BYTE[EVENT_BYTE] = 0;
  while(GPIO1->DATA[GPIO_delayed_RXEV].BYTE[EVENT_BYTE]);

  // Ensure that the WFE being tested really can cause the core to sleep
  // by executing a SEV followed by a WFE that will consume the event
  // without sleeping.
  __SEV();
  __WFE();


  // Allow interrupt to happen:
  //   Clear IntTaken flag
  //   Set up interrupt on change
  //   Clear any pending interrupt
  //   Enable the interrupt
  IntTaken = 0;
  GPIO1->IE.BYTE[INTDBG_BYTE] = GPIO_LOOPIN;
  NVIC_ClearPendingIRQ(GPIO_IRQn);
  NVIC_EnableIRQ(GPIO_IRQn);


  // Generate interrupt
  GPIO1->DATA[GPIO_LOOPOUT].BYTE[INTDBG_BYTE] = GPIO_LOOPOUT;

  // Wait For Event - the CPU should sleep
  __WFE();

  // We get here when the core wakes up:
  // Disable interrupts using PRIMASK to avoid taking 
  // the interrupt after RXEV wakes us up.
  __disable_irq();


  if(IntTaken)
    {
      // The interrupt was taken, therefore the core slept, RXEV is not stuck high.
      MSG(("PASS\n"));
    }
  else
    {
      // Interrupt not taken - we did not sleep.
      MSG(("FAIL\n"));
      Errors++;
    }

  return Errors;
}


//
// Handlers
//

void NMI_Handler()
{
  // Clear the source of the NMI  
  GPIO1->DATA[GPIO_NMI].BYTE[INTDBG_BYTE] = 0;

  // Signal to main code that the NMI was taken
  IntTaken = 1;
}


void GPIO_IRQHandler()
{
  // Disable interrupt 
  NVIC_DisableIRQ(GPIO_IRQn);

  // Signal to main code that the INT was taken
  IntTaken = 1;
}


void Default_IRQHandler()
{
  // Clear internal interupt sources by clearing GPIO2 output
  GPIO2->DATA[0].WORD = 0;

  // Signal to main code that the INT was taken
  IntTaken = 1;
}


void CheckIntTaken()
{
  // Build in a small delay to allow the int to propagate
  // through the delay block in the Misc Logic Block

  if(IntTaken)
    {
      MSG(("PASS\n"));
    }
  else
    {
      MSG(("FAIL\n"));
      Errors++;
    }
  IntTaken = 0;
}
