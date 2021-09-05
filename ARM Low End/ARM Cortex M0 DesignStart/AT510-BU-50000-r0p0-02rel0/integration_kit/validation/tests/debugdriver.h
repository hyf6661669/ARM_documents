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
// Cortex-M0 Integration Kit debug driver header file
//
////////////////////////////////////////////////////////////////////////////////

#include "IKConfig.h" // Get expected values for CM0IKMCU system


#define TEST_PASS 0
#define TEST_FAIL 1


////////////////////////////////////////////////////////////////////////////////
//
// GPIO Pin Assignments
//
////////////////////////////////////////////////////////////////////////////////

//
// Debug Driver Hardware Interface to the IK
// 
// Debug Driver --------------------------------------- CM0IKMCU
// 
// GPIO[31] 7 >----------------------------------------> Running
// GPIO[30] 6 >----------------------------------------> Error
// GPIO[29] 5 <----------------------------------------< Function Strobe
// GPIO[28] 4 <----------------------------------------< \
// GPIO[27] 3 <----------------------------------------<  \
// GPIO[26] 2 <----------------------------------------<   > Function Select
// GPIO[25] 1 <----------------------------------------<  / 
// GPIO[24] 0 <----------------------------------------< /
// 
// 

#define DD_IO_BYTE 3

#define DD_IO_RUNNING (1 << 7)
#define DD_IO_ERROR (1 << 6)
#define DD_IO_STROBE (1 << 5)
#define DD_IO_FUNCSEL (0x1f)


//
// JTAG / SerialWire Connectivity
//
// Debug Driver --------------------------------------- CM0IKMCU
//
//
// GPIO[22]  6 >----------------------+  
//                                  |\|
// GPIO[21]  5 >--------------------| >--------+-------<> SWDIOTMS
//                                  |/         |
// GPIO[20]  4 <-------------------------------+
// GPIO[19]  3 <----------------------------------------< TDO
// GPIO[18]  2 >----------------------------------------> TDI
// GPIO[17]  1 >----------------------------------------> SWCLKTCK
// GPIO[16]  0 >----------------------------------------> nTRST
//
//

#define DD_DBG_BYTE 2

#define DD_DBG_TMSEN (1 << 6)
#define DD_DBG_TMS (1 << 5)
#define DD_DBG_TMSIN (1 << 4)
#define DD_DBG_TDO (1 << 3)
#define DD_DBG_TDI (1 << 2)
#define DD_DBG_SWCLKTCK (1 << 1)
#define DD_DBG_nTRST (1 << 0)


//
// Character device for printf and miscellaneous signals
//
//
// GPIO[15] 7 >----------------------------------------> Character Strobe
// GPIO[14] 6 >----------------------------------------> \
// GPIO[13] 5 >---------------------------------------->  \ 
// GPIO[12] 4 >---------------------------------------->   \ Character
// GPIO[11] 3 >---------------------------------------->    >  Value
// GPIO[10] 2 >---------------------------------------->   /
// GPIO[ 9] 1 >---------------------------------------->  / 
// GPIO[ 8] 0 >----------------------------------------> /
//
//


#define DD_PRINT_BYTE 1

#define DD_PRINT_STROBE (1 << 7)
#define DD_PRINT_CHAR 0x7F


////////////////////////////////////////////////////////////////////////////////
//
// Print macro to allow conditional printing of messages
//
// Invoke like printf, but use double braces: DBG_MSG(("format %x", var));
//

#ifdef DEBUGDRIVER_PRINTF
#define DBG_MSG(arg) { printf arg ; }
#else
#define DBG_MSG(arg) { (void) 0; }
#endif

