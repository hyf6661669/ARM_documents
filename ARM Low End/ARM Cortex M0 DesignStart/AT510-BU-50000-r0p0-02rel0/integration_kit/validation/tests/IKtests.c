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
// Cortex-M0 Integration Kit IKtests C file
//
// Provides functions to allow IK tests to access the Debug Driver block
//
////////////////////////////////////////////////////////////////////////////////

#include "cm0ikmcu.h"
#include "IKtests.h"

void IKInit()
{
  //
  // Set up GPIOs in the way the IKTests expect
  //
  uint32_t i;

  //
  // CM0IKMCU External GPIO - Used for Test Status, Comms with Debug Driver
  //
  GPIO0->DATA[0].WORD = 0;
  GPIO0->IE.WORD = 0;
  GPIO0->DIR.BYTE[IO_BYTE] = ( IO_STROBE | IO_FUNCSEL );
  GPIO0->DIR.BYTE[PRINT_BYTE] = ( PRINT_STROBE | PRINT_CHAR );
  GPIO0->DIR.BYTE[MISC_BYTE] = ( MISC_PASS | MISC_COMPLETE );


  //
  // CM0IKMCU Internal GPIOs - Used for Integration Testing Only
  //
  GPIO1->DATA[0].WORD = 0;
  GPIO1->IE.WORD = 0;
  GPIO1->DIR.WORD = 0;
  
  GPIO2->DATA[0].WORD = 0;
  GPIO2->IE.WORD = 0;
  GPIO2->DIR.WORD = 0;


  //
  // Zero memory region used to communicate with debug driver
  // (4 words above Stack Top)
  //
  for(i=0; i<4 ; i++)
    {
      DEBUGDRIVERDATA[i] = 0;
    }

}


void StartDebugDriver(uint32_t Function)
{
  //
  // Start a function running on the Debug Driver
  //

  // Write function onto function select pins
  GPIO0->DATA[IO_FUNCSEL].BYTE[IO_BYTE] = Function;

  // Strobe 
  GPIO0->DATA[IO_STROBE].BYTE[IO_BYTE] = IO_STROBE;

  // Wait to see Running asserted
  while(GPIO0->DATA[IO_RUNNING].BYTE[IO_BYTE] == 0);
  
  // Clear strobe
  GPIO0->DATA[IO_STROBE].BYTE[IO_BYTE] = 0;
}


uint32_t CheckDebugDriver()
{
  //
  // Blocking check that a Debug Driver function completed 
  // Return pass/fail accordingly
  //
  
  // Wait to see Running deasserted
  while(GPIO0->DATA[IO_RUNNING].BYTE[IO_BYTE]);

  // Return status
  if(GPIO0->DATA[IO_ERROR].BYTE[IO_BYTE]==0)
    {
      return TEST_PASS;
    }
  else
    {
      return TEST_FAIL;
    }
}

	  
uint32_t CallDebugDriver(uint32_t Function)
{
  //
  // Blocking call to execute a debug driver function
  //

  StartDebugDriver(Function);
  return CheckDebugDriver();
}

