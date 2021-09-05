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

//
// printf retargetting functions
//

#include <stdio.h>
#include <rt_misc.h>
#include <stdint.h>
#include "cm0ikmcu.h"
#include "IKtests.h"

#if defined ( __CC_ARM   )
#if (__ARMCC_VERSION < 400000)
#else
// Insist on keeping widthprec, to avoid X propagation by benign code in C-lib
#pragma import _printf_widthprec
#endif
#endif


// Routine to write a char - specific to Cortex-M0 Integration Kit
void cm0ikmcu_char_write(int ch)
{
	GPIO0->DATA[PRINT_CHAR].BYTE[PRINT_BYTE] = ch; // Write whole char to 2nd byte
	GPIO0->DATA[PRINT_STROBE].BYTE[PRINT_BYTE] = PRINT_STROBE; // Write strobe
	GPIO0->DATA[PRINT_STROBE].BYTE[PRINT_BYTE] = 0; // Clear Strobe
	return;
}


//
// C library retargetting
//

struct __FILE { int handle; /* Add whatever you need here */ };
FILE __stdout;


void _ttywrch(int ch)
{
  cm0ikmcu_char_write(ch);
  return;
}

int fputc(int ch, FILE *f)
{
  cm0ikmcu_char_write(ch);
  return 0;
}

int ferror(FILE *f) {
  return EOF;
}
