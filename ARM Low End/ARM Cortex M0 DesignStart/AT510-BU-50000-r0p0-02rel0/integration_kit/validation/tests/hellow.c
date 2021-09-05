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
// Cortex-M0 Integration Kit Hello World / CPUID check
//
////////////////////////////////////////////////////////////////////////////////
//
// This test checks:
//
// Processor CPU ID Value
//
//

#include "cm0ikmcu.h"
#include "IKtests.h"
#include <stdio.h>

int main (void)
{
  // Call CMSIS System Initialisation
  SystemInit();	

  // Call IK Specific Initialisation
  IKInit();

  // Hello world!
  MSG(("Cortex-M0 - Hello World\n"));

  // Display CPUID
  MSG(("CPUID is: %08x\n", SCB->CPUID));

  if( ((SCB->CPUID >> 4) & 0xffff)  == 0xCC20 )
    {
      MSG(("This is an r%dp%d Cortex-M0\n", 
	   (SCB->CPUID >> 20) & 0xf, 
	   SCB->CPUID & 0xf ));
    }


  if(SCB->CPUID == CORTEXM0_CPUID)
    {
      	return TEST_PASS;
    }

  return TEST_FAIL;
}
