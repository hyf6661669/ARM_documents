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
// Cortex-M0 Integration Kit ROM Table Test
//
////////////////////////////////////////////////////////////////////////////////
//
// This test checks that is it possible to locate the Cortex-M0 architected
// ROM table by following the CoreSight Component pointer from the DAP.
// The ID values found in any intermediate ROM tables are displayed.
//
// If the EXPECTED_BASEADDR value points directly to the Cortex-M0 ROM table,
// the test completes.
//
// If DBG is not included, this test skips.


#include "cm0ikmcu.h"
#include "IKtests.h"
#include <stdio.h>



// Prototypes
void DecodeCoreSightComponent (uint32_t component_addr);


// Globals

uint32_t FoundCore = 0;
uint32_t Errors = 0;


int main (void)
{

  
  // Call CMSIS System Initialisation
  SystemInit();	

  // Call IK Specific Initialisation
  IKInit();

  // Banner
  MSG(("Cortex-M0 - ROM Table Test\n"));

  
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


      // Turn on the DAP
      if(CallDebugDriver(FnDAPPowerUp) != TEST_PASS)
	{
	  MSG(("Failed to power up the DAP\n"));
	  Errors++;
	}
      else
	{
	  // Find BASE
	  CallDebugDriver(FnGetBASE);
	  MSG(("DAP BASE: 0x%08x\n", DEBUGDRIVERDATA[1]));

	  // Start decoding
	  DecodeCoreSightComponent(DEBUGDRIVERDATA[1]);
	}

      // Turn off DAP
      CallDebugDriver(FnDAPPowerDown);


      //
      // Report results
      //
      if(FoundCore != 1)
	{
	  Errors++;
	}

      MSG(("\n\n"));

      if(FoundCore == 0)
	{
	  MSG(("Error - Did not find Cortex-M0 core.\n"));
	}
      else if(FoundCore == 1)
	{
	  MSG(("Found Cortex-M0.\n"));
	}
      else
	{
	  MSG(("Error - Found more than one path to Cortex-M0 core.\n"));
	}
      
      if(Errors)
	{
	  MSG(("Error - %d errors caught.\n", Errors));
	}
    }
  else
    {
      MSG(("Core does not include DBG, skipping test.\n"));
    }

  return Errors;
}


void DecodeCoreSightComponent (uint32_t component_addr)
{

  //
  // Enter with absolute address of component - specifically, address of final 4KB block
  // Retain "format" and "present" bits [1:0]
  //

  uint32_t cid; // CoreSight Component ID
  uint32_t base_addr = component_addr & 0xFFFFF000;
  uint32_t entry;
  uint32_t i;

  uint32_t jepid;
  uint32_t jepcont;
  uint32_t partnum;
  uint32_t revision;
  uint32_t revand;
  uint32_t custmod;


  MSG(("0x%08x - ", base_addr));

  switch(component_addr & 0x3)
    {
    case 0x0:
      MSG(("Non Zero Entry not present, not in 32bit format\n"));
      Errors++;
      break;
      
    case 0x1:
      MSG(("Entry makes as present but not in 32 bit format\n"));
      Errors++;
      break;

    case 0x2:
      MSG(("Component marked as not present\n"));
      break;

    case 0x3:
      MSG(("Component present\n"));

      if(base_addr == 0xE00FF000)
      	{
	  FoundCore++;
      	  MSG(("Found Cortex-M0 ROM Table.\n\n"));
	}

      
      //
      // Get CoreSight Component ID
      //
      
      DEBUGDRIVERDATA[0] = base_addr;
      CallDebugDriver(FnGetCID);
      cid = DEBUGDRIVERDATA[1];

      // Display as raw byte values
      
      MSG(("CID0: 0x%02x  CID1: 0x%02x  CID2: 0x%02x  CID3: 0x%02x",
	   (cid & 0xFF),
	   ((cid >> 8) & 0xFF),
	   ((cid >> 16) & 0xFF),
	   ((cid >> 24) & 0xFF)));
      

      switch(cid)
	{
	case 0xB105100D:
	  MSG((" - ROM Table\n"));
	  break;
	  
	case 0xB105E00D:
	  MSG((" - ARM Core Memory Component\n"));
	  break;
	  
	default:
	  MSG(("\n"));
	}


      //
      // Get CoreSight Peripheral ID
      //
      CallDebugDriver(FnGetPID);
      
      MSG(("PID0: 0x%02x  PID1: 0x%02x  PID2: 0x%02x  PID3: 0x%02x\n",
	   (DEBUGDRIVERDATA[1] & 0xFF),
	   ((DEBUGDRIVERDATA[1] >> 8) & 0xFF),
	   ((DEBUGDRIVERDATA[1] >> 16) & 0xFF),
	   ((DEBUGDRIVERDATA[1] >> 24) & 0xFF)));
      
      MSG(("PID4: 0x%02x  PID5: 0x%02x  PID6: 0x%02x  PID7: 0x%02x\n\n",
	   (DEBUGDRIVERDATA[2] & 0xFF),
	   ((DEBUGDRIVERDATA[2] >> 8) & 0xFF),
	   ((DEBUGDRIVERDATA[2] >> 16) & 0xFF),
	   ((DEBUGDRIVERDATA[2] >> 24) & 0xFF)));
      

      // Display decoded version

      jepid = (DEBUGDRIVERDATA[1] >> 12) & 0x7F;
      jepcont = DEBUGDRIVERDATA[2] & 0xF;
      partnum = DEBUGDRIVERDATA[1] & 0xFFF;
      revision = (DEBUGDRIVERDATA[1] >> 20) & 0xF;
      revand = (DEBUGDRIVERDATA[1] >> 28) & 0xF;
      custmod = (DEBUGDRIVERDATA[1] >> 24) & 0xF;
	  

      MSG((" JEP106 ID         [6:0] = 0x%02x\n", jepid));
      MSG((" JEP106 continuation     = 0x%x\n", jepcont));
      MSG((" part number      [11:0] = 0x%03x\n", partnum));
      MSG((" revision          [3:0] = 0x%x\n", revision));
      MSG((" revand            [3:0] = 0x%x\n", revand));
      MSG((" customer modified [3:0] = 0x%x\n", custmod));

	  
      // If this is an expected ARM Cortex-M0 part, display decoding
      
      if((jepid == 0x3B) && (jepcont == 4))
	{
	  // ARM JEP ID
	  MSG(("\nARM - "));
	  
	  switch(partnum)
	    {
	    case 0x00A:
	      MSG(("v6M Data Watchpoint and Trace (DWT)\n"));
	      break;
	      
	    case 0x00B:
	      MSG(("v6M Breakpoint Unit (BPU)\n"));
	      break;
	      
	    case 0x008:
	      MSG(("v6M System Control Space (SCS)\n"));
	      break;
	      
	    case 0x471:
	      MSG(("Cortex-M0\n"));
	      break;
	      
	    default:
	      MSG(("Unknown Component\n"));
	    }
	}
      MSG(("\n\n"));



      // cid word is <CID3><CID2><CID1><CID0>

      if(cid == 0xB105100D)
	{
	  // ROM Table
	  // Iterate over ROM Table entries, until we reach the end of table marker
	  
	  entry = 1; // Non zero initialisation value for loop

	  for(i = 0; entry > 0 ; i+=4)
	    {
	      // Get ROM Table Entry
	      DEBUGDRIVERDATA[0] = base_addr + i;
	      CallDebugDriver(FnGetMemValue);
	      entry = DEBUGDRIVERDATA[1];
	      
	      MSG(("  ROM Table Entry @ 0x%08x : ", (base_addr + i)));
	      
	      if(entry != 0)
		{
		  DecodeCoreSightComponent(base_addr + entry);
		}
	      else
		{
		  MSG(("0x00000000 - End of Table\n"));
		}
	    }
	}
    }
}




