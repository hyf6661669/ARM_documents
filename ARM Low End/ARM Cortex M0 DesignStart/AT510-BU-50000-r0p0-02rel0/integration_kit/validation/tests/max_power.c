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
 *      Checked In          : $Date: 2009-05-06 17:56:53 +0100 (Wed, 06 May 2009) $
 *
 *      Revision            : $Revision: 107729 $
 *
 *      Release Information : Cortex-M0-AT510-r0p0-01rel0
 *-----------------------------------------------------------------------------
 */

////////////////////////////////////////////////////////////////////////////////
//
// Cortex-M0 Integration Kit Max Power Test
//
////////////////////////////////////////////////////////////////////////////////

#include "cm0ikmcu.h"
#include "IKtests.h"
#include <stdio.h>


__asm int max_power(void)
{
  THUMB;
  
  PUSH {r4-r7,lr};
  MOVS r0,#0;
  MVNS r1,r0;
  MOVS r2,r0;
  MOVS r3,r1;
  MOVS r5,r1;
  MOVS r7,r1;

  SEV; // signal start of max power

  MULS r1,r0,r1; // 1 0
  MULS r0,r3,r0; // 0 1
  MULS r5,r0,r5; // 1 0
  MULS r0,r7,r0; // 0 1
    
  SEV; // signal end of max power
  
  POP {r4-r7,pc};
}

int main (void)
{
  // Call CMSIS System Initialisation
  SystemInit();	

  // Call IK Specific Initialisation
  IKInit();

  // Banner
  MSG(("Cortex-M0 - Max Power Test\n"));

  // max_power() performs a number of
  // multiply operations with extreme
  // inputs; the final result of which
  // should be zero
  
  if(max_power()) {
    MSG(("Multiplier result incorrect\n"));
    return TEST_FAIL;
  }

  return TEST_PASS;
}
