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
// Cortex-M0 Integration Kit Speed Indicative Test
//
////////////////////////////////////////////////////////////////////////////////

#include "cm0ikmcu.h"
#include "IKtests.h"
#include <stdio.h>

// prevent optimisation
volatile unsigned int type;

#define N0 0x8000000U
#define N1 0x0000001U
#define N2 0xFFFFFFFU
#define N3 0x0000000U
#define N4 0xaaaaaaaU
#define N5 0x5555555U

volatile unsigned int v0 = N0;
volatile unsigned int v1 = N1;
volatile unsigned int v2 = N2;
volatile unsigned int v3 = N3;
volatile unsigned int v4 = N4;
volatile unsigned int v5 = N5;

// following macros produce a multiplication with a zero
// (false) or non-zero (true) result which the compiler is
// unable to optimise out at compile time; CHECK_MUL_F and
// CHECK_MUL_T take four inputs, ax, bx, ay and by, where
// ax == ay and bx == by, but where ax and bx are compile-
// time known constants and where ay and by are compile-
// time unknowns.

// CHECK_MUL_F(a,b,a,b) is always zero
// CHECK_MUL_T(a,b,a,b) is never zero

#define CHECK_MUL_F(ax,bx,ay,by) ((ax*bx)?!(ay*by):(ay*by))
#define CHECK_MUL_T(ax,bx,ay,by) ((ax*bx)?(ay*by):!(ay*by))

int main (void)
{
  unsigned int a0 = v0;
  unsigned int a1 = v1;
  unsigned int a2 = v2;
  unsigned int a3 = v3;
  unsigned int a4 = v4;
  unsigned int a5 = v5;
  
  // Call CMSIS System Initialisation
  SystemInit();	

  // Call IK Specific Initialisation
  IKInit();

  // Banner
  MSG(("Cortex-M0 - Speed Indicative Test\n"));

  // Critical paths in Cortex-M0 are the multiplier,
  // flag forwarding from the multiplier, and
  // instruction address
  
  if(CHECK_MUL_F(N0,N1,a0,a1)) goto f_fail0;
  if(CHECK_MUL_T(N1,N2,a1,a2)) goto f_pass0;
  goto f_fail1;
 f_pass0:
  if(CHECK_MUL_F(N2,N3,a2,a3)) goto f_fail0;
  if(CHECK_MUL_T(N3,N4,a3,a4)) goto f_pass1;
  goto f_fail1;
 f_pass1:
  if(CHECK_MUL_F(N0,N3,a0,a3)) goto f_fail0;
  if(CHECK_MUL_T(N5,N4,a5,a4)) goto f_pass2;
  goto f_fail1;
 f_pass2:
  if(CHECK_MUL_F(N1,N3,a1,a3)) goto f_fail0;
  if(CHECK_MUL_T(N0,N5,a0,a5)) goto f_pass3;
  goto f_fail1;
 f_pass3:

  return TEST_PASS;

 f_fail0:
  type = 0;
  return TEST_FAIL;

 f_fail1:
  type = 1;
  return TEST_FAIL;
  
}
