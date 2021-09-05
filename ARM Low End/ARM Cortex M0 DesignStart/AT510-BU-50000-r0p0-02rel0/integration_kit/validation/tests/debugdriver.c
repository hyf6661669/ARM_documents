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
// CortexM0 Integration Kit Debug Driver Block Code
//
////////////////////////////////////////////////////////////////////////////////
//
// This code always runs on the Cortex-M0 core within the debug driver
// module in the Integration Kit testbench.
// 
// The debug driver uses the same verilog components (ROM, RAM, GPIO) and
// memory map as the CM0IKMCU. However, the debug driver uses a separate
// CMSIS device header file (cm0ikdebugdriver.h) to allow the MCU system
// to be modified by the end user without affecting the debug driver.
//
// This code provides access to various test routines that can use
// either a SerialWire or JTAG interface to connect to the
// CM0IKMCU. Some functions, such as QueryFirstCall(), do not use the
// Debug interface to the CM0IKMCU at all.
//
// The functions available to the CM0IKMCU are enumerated in IKtests.h
// by the variable "Function". These correspond to actual functions
// within this file beneath the comment "Functions Available to IK
// Core".
//
// Communication between the CM0IKMCU and the Debug Driver takes place
// in two ways:
//
// [1]
//
// Function Calling, Function completion and Error status use a simple
// handshake using GPIO0. Refer to the main() function in this file,
// and the functions CallDebugDriver(), StartDebugDriver() and
// CheckDebugDriver() in IKtests.c for details.
// 
//
// [2]
//
// Some tests and functions need to pass more complex data between the
// CM0IKMCU and the debug driver. For these cases, an area of memory
// in the CM0IKMCU SRAM is predefined as an area for passing values
// between the debug driver and CM0IKMCU.
//
// The region used is the last 4 words of the CM0IKMCU SRAM.
// It is assumed that the CM0IKMCU initial stack pointer is set 4 words
// below the top of RAM. The debugdriver reads the CM0IKMCU vector table
// to determine its SP, and therefore the location of these four words.
//
// The debug driver accesses this region using
// CM0IKMCU.stacktop and suitable offsets. CM0IKMCU accesses this
// region using the array DEBUGDRIVERDATA, defined in IKtests.h
//
// Refer to test debug.c and function ConnectCheckHaltDbgrestart() for
// an example of how this memory region can be used.
//
//

#include "cm0ikdebugdriver.h" // CMSIS Support for the DebugDriver
#include "debugdriver.h"      // Local header file defining GPIO allocation etc
#include <stdio.h>            // Access to printf

#include "IKtests.h" // Get Pin allocations for CM0IKMCU GPIOs

////////////////////////////////////////////////////////////////////////////////
//
// Macro definitions to generate SerialWire packet headers at compilation time
//

// Header Bits

#define AP 1
#define DP 0

#define READ 1
#define WRITE 0

// DP Register Addresses

#define DPIDR 0
#define ABORT 0
#define CTRLSTAT 0x4
#define DLCR 0x4
#define RESEND 0x8
#define SELECT 0x8
#define RDBUFF 0xc

// AP Register Addresses

#define CSW  0x00
#define TAR  0x04
#define DRW  0x0c
#define BD0  0x10
#define BD1  0x14
#define BD2  0x18
#define BD3  0x1c
#define CFG  0xf4
#define BASE 0xf8
#define IDR  0xfc


#define SW_HEADER_PARITY(APnDP,RnW,Address) ( (APnDP & 0x1) ^ (RnW & 0x1) ^ ((Address & 0x4) >> 2) ^ ((Address & 0x8) >> 3) )

// Start, APnDP, RnW, A[3:2], Parity, Stop, Park
#define SW_HEADER(APnDP,RnW,Address) (1 | ((APnDP & 0x1) << 1) | ((RnW & 0x1) << 2) | ((Address & 0xC) << 1) | SW_HEADER_PARITY(APnDP,RnW,Address) << 5 | 0 << 6 | 1 << 7)

// SW responses

#define SW_DP_ACK_OK 1
#define SW_DP_ACK_WAIT 2
#define SW_DP_ACK_FAULT 4

////////////////////////////////////////////////////////////////////////////////
//
// JTAG Definitions
//
#define JTAG_ABORT 0x8
#define JTAG_DPACC 0xa
#define JTAG_APACC 0xb
#define JTAG_IDCODE 0xe
#define JTAG_BYPASS 0xf

#define JTAG_SCAN(Address,RnW) (((Address & 0xC) >> 1) | RnW)

#define JTAG_DP_ACK_OKFAULT 2
#define JTAG_DP_ACK_WAIT 4 


////////////////////////////////////////////////////////////////////////////////
//
// ARMv6M Debug register definitions
//

// DHCSR

#define DHCSR 0xE000EDF0

#define DBGKEY 0xA05F0000
#define S_LOCKUP   (1UL << 19)
#define S_SLEEP    (1UL << 18)
#define S_HALT     (1UL << 17)
#define S_REGRDY   (1UL << 16)
#define C_MASKINTS (1UL << 3)
#define C_STEP     (1UL << 2)
#define C_HALT     (1UL << 1)
#define C_DEBUGEN  (1UL << 0)


// DCRSR

#define DCRSR 0xE000EDF4

#define REGWnR (1UL << 16)
#define R0  0x00
#define R1  0x01
#define R2  0x02
#define R3  0x03
#define R4  0x04
#define R5  0x05
#define R6  0x06
#define R7  0x07
#define R8  0x08
#define R9  0x09
#define R10 0x0A
#define R11 0x0B
#define R12 0x0C
#define SP  0x0D
#define LR  0x0E
#define DebugReturnAddress 0x0F
#define xPSR 0x10
#define MSP  0x11
#define PSP  0x12 
#define CONTROL 0x14


// DCRDR

#define DCRDR 0xE000EDF8



////////////////////////////////////////////////////////////////////////////////
//
// CM0IKMCU GPIO Access
//
// Some functions in the debug driver need to access peripherals in the 
// CM0IKMCU memory map. If the components or memory map of CM0IKMCU is modified,
// the following definition may also need to be updated.
//

#define MCU_GPIO1(mask,byte) (uint32_t)(0x40000800 | (mask << 2) | byte) 





////////////////////////////////////////////////////////////////////////////////
//
// Function Prototypes
//

// SerialWire

uint32_t SWConnect(void);
uint32_t SWHeader(uint8_t);
uint32_t SWDataRead(void);
void     SWDataWrite(uint32_t);
void     SerialWireClockOut (uint32_t, uint32_t);
uint32_t SerialWireClockIn (uint32_t);


// JTAG

void     JTAGTransition(uint32_t, uint8_t);
uint64_t JTAGShift(uint64_t, uint8_t);
uint64_t JTAGScanIDCODE(void);
void     JTAGScanIR(uint32_t);
uint64_t JTAGScanDR(uint64_t);


// Wire Protocol Agnostic functions

void InitCommRegion(void);
uint32_t SwapEndian(uint32_t);
uint32_t ReadMem(uint32_t);
uint32_t ReadMemH(uint32_t);
uint32_t ReadMemB(uint32_t);
void WriteMem(uint32_t, uint32_t);
void WriteMemH(uint32_t, uint32_t);
void WriteMemB(uint32_t, uint32_t);
void JtagAPnDP(uint32_t);
void DPWriteBANKSEL(uint32_t);
void DPWriteCTRLSTAT(uint32_t);
uint32_t DPReadCTRLSTAT(void);
void APWriteCSW(uint32_t);
void APWriteTAR(uint32_t);
uint32_t APReadDRW(void);
void APWriteDRW(uint32_t);
uint32_t DPReadRDBUFF(void);
uint32_t DPReadIDR(void);
uint32_t APReadIDR(void);
uint32_t APReadBASE(void);
void DPClearSTICKYERR(void);
uint32_t DDCheck(char *, uint32_t, uint32_t);


// Prototypes for IK exposed functions

uint32_t CheckOK(void);
uint32_t Delay(void);
uint32_t SetModeJTAG(void);
uint32_t SetModeSW(void);
uint32_t CheckTAPID(void);
uint32_t CheckDPIDR(void);
uint32_t DAPPowerUp(void);
uint32_t DAPPowerDown(void);
uint32_t CheckAPIDR(void);
uint32_t CheckBASE(void);
uint32_t CheckCPUID(void);
uint32_t CheckROMTable(void);
uint32_t CheckNumBKPT(void);
uint32_t CheckNumWPT(void);
uint32_t CheckROMPID3(void);
uint32_t CheckSCSPID3(void);
uint32_t CheckDWTPID3(void);
uint32_t CheckBPUPID3(void);
uint32_t GetMemValue(void);
uint32_t ConnectWakeUnhalt(void);
uint32_t QueryFirstCall(void);
uint32_t ConnectCheckUnlockup(void);
uint32_t EnableHaltingDebug(void);
uint32_t ConnectCheckHaltDbgrestart(void);
uint32_t DAPAccess(void);
uint32_t GetBASE(void);
uint32_t GetCID(void);
uint32_t GetPID(void);
uint32_t EmptyFunction(void);



//
// Func points to the functions that will be used by the IK
//
uint32_t (*Func[]) (void) = { CheckOK,
			      Delay,
			      SetModeJTAG,
			      SetModeSW,
			      CheckTAPID,
			      CheckDPIDR,
			      DAPPowerUp,
			      DAPPowerDown,
			      CheckAPIDR,
			      CheckBASE,
			      CheckCPUID,
			      CheckROMTable,
			      CheckNumBKPT,
			      CheckNumWPT,
			      CheckROMPID3,
			      CheckSCSPID3,
			      CheckDWTPID3,
			      CheckBPUPID3,
			      GetMemValue,
			      ConnectWakeUnhalt,
			      QueryFirstCall,
			      ConnectCheckUnlockup,
			      EnableHaltingDebug,
			      ConnectCheckHaltDbgrestart,
			      DAPAccess,
			      GetBASE,
			      GetCID,
			      GetPID,
			      EmptyFunction,
};



////////////////////////////////////////////////////////////////////////////////
//
// Global Variables
//

uint32_t FirstCallCount = 0; 

// Track information about the target (CM0IKMCU)

struct {
  uint32_t stacktop;
} CM0IKMCU;


// Track state of debug

struct {
  uint32_t jtagnsw;
  uint32_t jtagapndp;
  uint32_t on;
  uint32_t banksel;
  uint32_t csw;
  uint32_t error;
} DAPSTATUS;


////////////////////////////////////////////////////////////////////////////////
//
// Main code
//

int main (void)
{

  uint32_t SelectedFunction;

  //
  // Initialise the GPIO
  //
  GPIO0->DATA[0].WORD = 0;
  GPIO0->IE.WORD = 0;
  GPIO0->DIR.BYTE[DD_IO_BYTE] = ( DD_IO_RUNNING | DD_IO_ERROR );
  GPIO0->DIR.BYTE[DD_DBG_BYTE] = ( DD_DBG_TMSEN | DD_DBG_TMS | DD_DBG_TDI | DD_DBG_SWCLKTCK | DD_DBG_nTRST );
  GPIO0->DIR.BYTE[DD_PRINT_BYTE] = ( DD_PRINT_STROBE | DD_PRINT_CHAR );
  GPIO0->DIR.BYTE[0] = 0;


  // Raise nTRST to bring JTAG DAP out of reset
  GPIO0->DATA[DD_DBG_nTRST].BYTE[DD_DBG_BYTE] = DD_DBG_nTRST;

  // Initialise DAPSTATUS struct
  DAPSTATUS.jtagnsw = 0;     // Serial Wire
  DAPSTATUS.jtagapndp = 2;   // Invalid value
  DAPSTATUS.on =0;           // DAP powered off
  DAPSTATUS.banksel = 0xff;  // Invalid banksel value
  DAPSTATUS.csw = 0;         // we haven't set up CSW
  DAPSTATUS.error = 0;       // No errors


  // Initialise CM0IKMCU information to invalid values
  CM0IKMCU.stacktop = 0; 


  //
  // Sit in loop waiting to service requests from the IK cpu core
  //
  while(1)
    {
      if(GPIO0->DATA[DD_IO_STROBE].BYTE[DD_IO_BYTE])
	{
	  // Clear any error flag
	  GPIO0->DATA[DD_IO_ERROR].BYTE[DD_IO_BYTE] = 0;
	  
	  // Work out which routine to execute
	  SelectedFunction = GPIO0->DATA[DD_IO_FUNCSEL].BYTE[DD_IO_BYTE];
	  
	  // Indicate that we are running
	  GPIO0->DATA[DD_IO_RUNNING].BYTE[DD_IO_BYTE] = DD_IO_RUNNING;

	  // Wait for deassertion of strobe
	  while(GPIO0->DATA[DD_IO_STROBE].BYTE[DD_IO_BYTE]);
	  
	  // Run it
	  if( (*Func[SelectedFunction])() != 0 )
	    {
	      // Flag an error
	      GPIO0->DATA[DD_IO_ERROR].BYTE[DD_IO_BYTE] = DD_IO_ERROR;
	    };

	  // Indicate that we are finished
	  GPIO0->DATA[DD_IO_RUNNING].BYTE[DD_IO_BYTE] = 0;
	}
    }
}


////////////////////////////////////////////////////////////////////////////////
//
// Functions Available to IK Core
//
////////////////////////////////////////////////////////////////////////////////

uint32_t CheckOK()
{
  // Just perform the handshake, allow the CM0IKMCU to check the debug driver is present.
  DBG_MSG(("CheckOK()\n"));
  return TEST_PASS;
}


uint32_t Delay()
{
  // Fixed Delay function
  uint32_t count;
  DBG_MSG(("Delay()\n"));
  for(count = 1000; count > 0; count--);
  return TEST_PASS;
}


uint32_t SetModeJTAG()
{
  // Switch to JTAG mode
  DBG_MSG(("SetModeJTAG()\n"));
  if(DAPSTATUS.on)
    {
      return TEST_FAIL;
    }
  else
    {
      // Update struct
      DAPSTATUS.jtagnsw = 1;

      // JTAG - We'll always be driving TMS
      GPIO0->DATA[DD_DBG_TMSEN].BYTE[DD_DBG_BYTE] = DD_DBG_TMSEN;
      
      // Ensure we are in TLR by clocking in 5 TMS high cycles
      JTAGTransition(0xff, 5);
      
      // Get into RTI as our default initial state
      JTAGTransition(0, 1);
      
      return TEST_PASS;
    }
}


uint32_t SetModeSW()
{
  // Switch to SerialWire mode
  DBG_MSG(("SetModeSW()\n"));
  if(DAPSTATUS.on)
   {
     return TEST_FAIL;
   }
  else
    {
      // Initialise
      DAPSTATUS.jtagnsw = 0;
      SWConnect();
      return TEST_PASS;
    }
}


uint32_t CheckTAPID()
{
  DBG_MSG(("CheckTAPID()\n"));
  if(DAPSTATUS.jtagnsw == 1)
    {
      return DDCheck("TAPID",
		     (JTAGScanIDCODE() & 0xFFFFFFFFUL),
		     CORTEXM0DAP_JTAG_TAPID);
    }
  return TEST_FAIL;
}



uint32_t CheckDPIDR() 
{ 
  uint32_t data;
  DBG_MSG(("CheckDPIDR()\n"));

  data = DPReadIDR();

  if(DAPSTATUS.jtagnsw)
    {
      return DDCheck("JTAG DPIDR",
		     data,
		     CORTEXM0DAP_JTAG_DPIDR);
    }
  else
    {
      return DDCheck("SW DPIDR",
		     data,
		     CORTEXM0DAP_SW_DPIDR);
    }
}


uint32_t DAPPowerUp()
{
  DBG_MSG(("DAPPowerUp()\n"));
  if(DAPSTATUS.on == 0)
    {
      DPWriteCTRLSTAT( 0x50000000 );
      if( (DPReadCTRLSTAT() & 0xF0000000UL) == 0xF0000000UL )
      	{
	  DAPSTATUS.on=1;
	  return TEST_PASS;
	}
    }
  return TEST_FAIL;
}


uint32_t DAPPowerDown()
{
  DBG_MSG(("DAPPowerDown()\n"));
  if(DAPSTATUS.on == 1)
    {
      DPWriteCTRLSTAT( 0x0 );
        if( (DPReadCTRLSTAT() & 0xF0000000UL) == 0 )
      	{
	  DAPSTATUS.on=0;
	  // Also clear other DAPSTATUS variables!
	  DAPSTATUS.jtagapndp = 2;   // Invalid value
	  DAPSTATUS.banksel = 0xff;  // Invalid banksel value
	  DAPSTATUS.csw = 0;         // we haven't set up CSW
	  DAPSTATUS.error = 0;       // No errors
	  return TEST_PASS;
	}
    }
  return TEST_FAIL;
}

uint32_t CheckAPIDR()
{
  DBG_MSG(("CheckAPIDR()\n"));
  if(DAPSTATUS.on)
    {
      return DDCheck("AP IDR",
		     APReadIDR(),
		     CORTEXM0DAP_AP_IDR);
    }
  return TEST_FAIL;
}

uint32_t CheckBASE()
{
  DBG_MSG(("CheckBASE()\n"));
  if(DAPSTATUS.on)
    {
      return DDCheck("AP BASE",
		     APReadBASE(),
		     EXPECTED_BASEADDR);
    }
  return TEST_FAIL;
}


//
// Beyond here, everything is memory mapped
//

uint32_t CheckCPUID()
{
  uint32_t value;
  DBG_MSG(("CheckCPUID()\n"));
  value = ReadMem(0xE000ED00);

  return DDCheck("CPUID",
		 value,
		 CORTEXM0_CPUID);
}


uint32_t CheckROMTable()
{
  // Check ROM table is visible at architected location

  uint32_t value;
  DBG_MSG(("CheckROMTable()\n"));
  value = ReadMem(0xE00FF000);

  return DDCheck("ROM Table SCS",
		 value,
		 0xFFF0F003);
}


uint32_t CheckNumBKPT()
{
  //
  // Extract NUM_CODE from BP_CTRL
  //

  uint32_t value;
  DBG_MSG(("CheckNumBKPT()\n"));
  value = ReadMem(0xE0002000);
  value = (value >> 4) & 0xF;

  return DDCheck("Num BKPT",
		 value,
		 EXPECTED_BKPT);
}


uint32_t CheckNumWPT()
{
  //
  // Extract NUMCOMP from DWT_CTRL
  //

  uint32_t value;
  DBG_MSG(("CheckNumWPT()\n"));
  value = ReadMem(0xE0001000);
  value = (value >> 28) & 0xF;

  return DDCheck("Num WPT",
		 value,
		 EXPECTED_WPT);
}


uint32_t CheckROMPID3()
{
  //
  // Extract CoreSight PID3 from ROM Table
  //

  uint32_t value;
  DBG_MSG(("CheckROMPID3()\n"));
  value = ReadMem(0xE00FFFEC);
  value &= 0xFF;

  return DDCheck("  ROM PID3",
		 value,
		 CORTEXM0_ROM_PID3);
}


uint32_t CheckSCSPID3()
{
  //
  // Extract CoreSight PID3 from SCS Region
  //

  uint32_t value;
  DBG_MSG(("CheckSCSPID3()\n"));
  value = ReadMem(0xE000EFEC);
  value &= 0xFF;

  return DDCheck("  SCS PID3",
		 value,
		 CORTEXM0_SCS_PID3);
}


uint32_t CheckDWTPID3()
{
  //
  // Extract CoreSight PID3 from DWT
  //

  uint32_t value;
  DBG_MSG(("CheckDWTPID3()\n"));
  value = ReadMem(0xE0001FEC);
  value &= 0xFF;

  return DDCheck("  WPT PID3",
		 value,
		 CORTEXM0_DWT_PID3);
}


uint32_t CheckBPUPID3()
{
  //
  // Extract CoreSight PID3 from BPU Table
  //

  uint32_t value;
  DBG_MSG(("CheckBPUPID3()\n"));
  value = ReadMem(0xE0002FEC);
  value &= 0xFF;

  return DDCheck("  BPU PID3",
		 value,
		 CORTEXM0_BPU_PID3);
}


uint32_t GetMemValue()
{
  //
  // Read address and return value to MCU
  //

  uint32_t address;
  uint32_t value;

  DBG_MSG(("GetMemValue()\n"));

  // Will use mem region
  InitCommRegion();

  // The address value to read will be stored in CM0IKMCU_STACKTOP
  address = ReadMem(CM0IKMCU.stacktop);
  address = SwapEndian(address);
  DBG_MSG(("address: %x\n", CM0IKMCU.stacktop));

  // Now get the value
  value = ReadMem(address);
  value = SwapEndian(value);
  DBG_MSG(("read: %x\n", value));

  // Write the value back to mem
  WriteMem( (CM0IKMCU.stacktop + 4) , value); 

  return TEST_FAIL;
}


uint32_t ConnectWakeUnhalt()
{
  //
  // Used to wake core up when sleeping
  //

  uint32_t data;

  // Connect - Done by SetMode*
  DBG_MSG(("ConnectWakeUnhalt()\n"));

  // Power up Dap
  DAPPowerUp();

  // Check S_SLEEP
  data=ReadMem(DHCSR);
  
  if(data & S_SLEEP)
    {
      DBG_MSG(("Seen S_SLEEP\n"));

      // Core is sleeping, so set halting debug enable
      WriteMem(DHCSR, (DBGKEY | C_HALT | C_DEBUGEN) );
      DBG_MSG(("Written C_HALT\n"));

      // Wait for core to be halted
      while((ReadMem(DHCSR) & S_HALT) == 0);
      DBG_MSG(("Seen S_HALT\n"));

      // Write flag into DATA[1] to allow CM0IKMCU code to escape its loop
      InitCommRegion();
      WriteMem( (CM0IKMCU.stacktop + 4) , 1);
      DBG_MSG(("Written flag\n"));

      // Clear Halt and debug enables
      WriteMem(DHCSR, DBGKEY);
      DBG_MSG(("Cleared halt\n"));

      // Power down DAP
      DAPPowerDown();
       
      return TEST_PASS;
    }

  DBG_MSG(("Core not sleeping\n"));
  return TEST_FAIL;
}


uint32_t EnableHaltingDebug()
{

  // Set C_DEBUGEN bit
  DBG_MSG(("EnableHaltingDebug()\n"));
 
  // Power up Dap
  DAPPowerUp();

  // Set Debug enable
  WriteMem(DHCSR, (DBGKEY | C_DEBUGEN) );
  DBG_MSG(("Written C_DEBUGEN\n"));
  
  return TEST_PASS;
}


uint32_t ConnectCheckHaltDbgrestart()
{
  //
  // Used to unhalt after an EDBGRQ entry,
  // unhalt using dbgrestart/restarted
  //
  
  uint32_t retval = 0;

  DBG_MSG(("ConnectCheckHaltDbgrestart()\n"));

  // Power up Dap
  //  DAPPowerUp();

  // check S_HALT bit

  if(ReadMem(DHCSR) & S_HALT)
    {
      DBG_MSG(("Seen S_HALT\n"));
      
      // EDBGREQ caused the core to halt
      retval |= 0x1;

      // Now clear EDBGREQ to prevent the core re-entering debug
      //      WriteMemB( ((uint32_t)(&(GPIO1->DATA[GPIO_EDBGRQ].BYTE[INTDBG_BYTE]))), 0);
      WriteMemB( MCU_GPIO1(GPIO_EDBGRQ,INTDBG_BYTE), 0 );


      // Check CPU HALTED output is asserted
      // Read MCU's GPIO1
      //      if( ReadMemB( (uint32_t)(&(GPIO1->DATA[GPIO_HALTED].BYTE[POWER_BYTE]))) )
      if( ReadMemB( MCU_GPIO1(GPIO_HALTED,POWER_BYTE) ) )
	{
	  DBG_MSG(("Seen HALTED output line asserted from core\n"));
	  retval |= 0x2;
	}
      else
	{
	  DBG_MSG(("Error - did not see HALTED output from core\n"));
	}
      
      // Set Debugrestart
      // Write to MCU's GPIO1
      //      WriteMemB( ((uint32_t)(&(GPIO1->DATA[GPIO_DBGRESTART].BYTE[INTDBG_BYTE]))), GPIO_DBGRESTART );
      WriteMemB( MCU_GPIO1(GPIO_DBGRESTART,INTDBG_BYTE), GPIO_DBGRESTART );

      // Expect to see Debugrestarted low from core
      //      if( ReadMemB( ((uint32_t)(&(GPIO1->DATA[GPIO_DBGRESTARTED].BYTE[INTDBG_BYTE])))) )
      if( ReadMemB( MCU_GPIO1(GPIO_DBGRESTARTED,INTDBG_BYTE) ) )
	{
	  DBG_MSG(("Error - Did not see DBGRESTARTED low from core\n"));
	}
      else
	{
	  DBG_MSG(("Seen DBGRESTARTED low from core\n"));
	  retval |= 0x4;
	}


      // Clear Debugrestart - should cause core to un-halt
      //      WriteMemB( ((uint32_t)(&(GPIO1->DATA[GPIO_DBGRESTART].BYTE[INTDBG_BYTE]))), 0 );
      WriteMemB( MCU_GPIO1(GPIO_DBGRESTART,INTDBG_BYTE), 0 );

      
      // Check core un-halts
      if((ReadMem(DHCSR) & S_HALT) == 0)
	{
	  DBG_MSG(("Seen core leave HALT\n"));
	  retval |= 0x8;
	}
      else
	{
	  DBG_MSG(("Error - Core did not leave HALT\n"));
	}

      // Write retval into MCU memory
      retval = SwapEndian(retval);
      InitCommRegion();
      WriteMem( (CM0IKMCU.stacktop + 4) , retval);
      DBG_MSG(("Written retval: %x\n", retval));
      
      // Power down DAP
      DAPPowerDown();

    return TEST_PASS;
    }
  
  DBG_MSG(("Core not halted\n"));
  return TEST_FAIL;
}


uint32_t ConnectCheckUnlockup()
{
  uint32_t value;

  DBG_MSG(("ConnectCheckUnlockup()\n"));

  // Power up dap
  DAPPowerUp();

  // Check for S_LOCKUP
  if(ReadMem(DHCSR) & S_LOCKUP)
    {
      DBG_MSG(("Seen S_LOCKUP\n"));
      
      // Halt the core
      WriteMem(DHCSR, (DBGKEY | C_HALT | C_DEBUGEN) );
      DBG_MSG(("Written C_HALT\n"));

      // Wait for core to be halted
      while((ReadMem(DHCSR) & S_HALT) == 0);
      DBG_MSG(("Seen S_HALT\n"));

      
      // Replace faulting code sequence with a non-faulting
      // sequence at the same address, to allow the core to 
      // exit HardFault and continue the main() code.

      InitCommRegion();

      // Get non-faulting value
      value = ReadMem( (CM0IKMCU.stacktop + 8) );

      // Write to execution location
      WriteMem( (CM0IKMCU.stacktop + 0xC), value); 

      // Write address of the (now non-faulting) function
      // as the DebugReturnAddress

      WriteMem(DCRDR, (CM0IKMCU.stacktop + 0xC));
      WriteMem(DCRSR, (REGWnR | DebugReturnAddress));
      while( (ReadMem(DHCSR) & S_REGRDY) == 0 );
      DBG_MSG(("Wrote return address\n"));
      
      // Unhalt
      WriteMem(DHCSR, DBGKEY);
      DBG_MSG(("Cleared C_HALT\n"));

      // power down dap  
      DAPPowerDown();
      return TEST_PASS;
    }
  DBG_MSG(("Core not in lockup\n"));
  return TEST_FAIL; 
}


uint32_t QueryFirstCall()
{
  DBG_MSG(("QueryFirstCall()\n"));

  FirstCallCount++;

  if(FirstCallCount == 1)
    {
      return TEST_PASS;
    }
  return TEST_FAIL;
}


uint32_t DAPAccess()
{
  //
  // Perform WORD, HALFWORD, and BYTE accesses
  //
  
  uint32_t retval = 0;

  DBG_MSG(("DAPAccess()\n"));
  
  // Power up dap
  DAPPowerUp();

  InitCommRegion();

  // Zero a WORD
  WriteMem(CM0IKMCU.stacktop, 0);

  // Check WORD reads as zero
  if(ReadMem(CM0IKMCU.stacktop) == 0)
    {
      retval |= 0x1;
      DBG_MSG(("Word was clear\n"));
    }

  // Write a HALFWORD
  WriteMemH((CM0IKMCU.stacktop + 2), 0x3456);
  
  // Read a WORD, check for expected value  
  if(ReadMem(CM0IKMCU.stacktop) == 0x34560000)
    {
      retval |= 0x2;
      DBG_MSG(("Read back correct value\n"));
    }
  else
    {
      DBG_MSG(("Incorrect value - FAIL\n"));
    }

  // Write a BYTE
  WriteMemB((CM0IKMCU.stacktop + 1), 0x12);

  // Read a WORD, check for expected value  
  if(ReadMem(CM0IKMCU.stacktop) == 0x34561200)
    {
      retval |= 0x4;
      DBG_MSG(("Read back correct value\n"));
    }
  else
    {
      DBG_MSG(("Incorrect value - FAIL\n"));
    }

  
  // Write return value
  retval = SwapEndian(retval);
  WriteMem( (CM0IKMCU.stacktop + 4) , retval);
  DBG_MSG(("Written retval: %x\n", retval));

  // power down dap  
  DAPPowerDown();
  return TEST_PASS;
}


uint32_t GetBASE()
{
  //
  // Use the Comm Region to return the AP BASE value
  //

  uint32_t base;

  DBG_MSG(("GetBASE()\n"));
  
  if(DAPSTATUS.on)
    {
      base = APReadBASE();
      base = SwapEndian(base);
      InitCommRegion();
      WriteMem( (CM0IKMCU.stacktop + 4) , base); 
      return TEST_PASS;;
    }
  return TEST_FAIL;
}


uint32_t GetCID()
{
  //
  // Use the Comm Region to return the CoreSight CID value
  //
  // Pack the four byte values CID0-CID3 into one word
  //

  uint32_t component_base;
  uint32_t cid;


  DBG_MSG(("GetCID()\n"));

  if(DAPSTATUS.on)
    {
      InitCommRegion();
      component_base = ReadMem(CM0IKMCU.stacktop);
      component_base = SwapEndian(component_base);

      // CID0
      cid = ReadMem(component_base + 0xFF0);

      // CID1
      cid |= (ReadMem(component_base + 0xFF4) << 8);
 
      // CID2
      cid |= (ReadMem(component_base + 0xFF8) << 16);

      // CID3
      cid |= (ReadMem(component_base + 0xFFC) << 24);
      
      cid = SwapEndian(cid);

      WriteMem( (CM0IKMCU.stacktop + 4) , cid); 
      return TEST_PASS;
    }

  return TEST_FAIL;
}


uint32_t GetPID()
{
  //
  // Use the Comm Region to return the CoreSight PID value
  //
  // Pack the four byte values PID0-PID3 into one word
  // Pack the four byte values PID4-PID7 into one word
  //

  uint32_t component_base;
  uint32_t pid_lo;
  uint32_t pid_hi;

  DBG_MSG(("GetPID()\n"));

  if(DAPSTATUS.on)
    {
      InitCommRegion();
      component_base = ReadMem(CM0IKMCU.stacktop);
      component_base = SwapEndian(component_base);

      // PID0
      pid_lo = ReadMem(component_base + 0xFE0);

      // PID1
      pid_lo |= (ReadMem(component_base + 0xFE4) << 8);
 
      // PID2
      pid_lo |= (ReadMem(component_base + 0xFE8) << 16);

      // PID3
      pid_lo |= (ReadMem(component_base + 0xFEC) << 24);
      
      // PID4
      pid_hi = ReadMem(component_base + 0xFD0);

      // PID5
      pid_hi |= (ReadMem(component_base + 0xFD4) << 8);
 
      // PID6
      pid_hi |= (ReadMem(component_base + 0xFD8) << 16);

      // PID7
      pid_hi |= (ReadMem(component_base + 0xFDC) << 24);
      

      pid_lo = SwapEndian(pid_lo);
      pid_hi = SwapEndian(pid_hi);

      WriteMem( (CM0IKMCU.stacktop + 4) , pid_lo); 
      WriteMem( (CM0IKMCU.stacktop + 8) , pid_hi); 

      return TEST_PASS;
    }

  return TEST_FAIL;
}


uint32_t EmptyFunction()
{
  DBG_MSG(("EmptyFunction()\n"));

  return TEST_FAIL;
}


////////////////////////////////////////////////////////////////////////////////
//
// Internal Functions - Wire Protocol agnostic
//
////////////////////////////////////////////////////////////////////////////////

void InitCommRegion()
{
  //
  // Get value for CM0IKMCU.stacktop by reading CM0IKMCU vector table
  //
  DBG_MSG(("InitCommRegion()\n"));
  

  if(CM0IKMCU.stacktop == 0)
    {
      CM0IKMCU.stacktop = ReadMem(0);
      CM0IKMCU.stacktop = SwapEndian(CM0IKMCU.stacktop);
    }
}


uint32_t SwapEndian(uint32_t data)
{
  //
  // Swap endianness of data values if CPUs are BigEndian, since
  // the DAP routines are inherently LE
  //
  // Assume that the debug driver and the CM0IKMCU have the SAME
  // endianness.

  //  if(EXPECTED_BE)
  if( SCB->AIRCR & (1<<15) )
    {
      // We are BE, so swap data endianness

      //      return ((data>>24) | 
      //	      ((data<<8) & 0x00FF0000) |
      //	      ((data>>8) & 0x0000FF00) |
      //	      (data<<24));
      return __REV(data);
    }
  else
    {
      return data;
    }
}

  
uint32_t ReadMem(uint32_t address)
{
  //
  // return the WORD value found at address
  //

  uint32_t value;

  // Ensure CSW is set up
  APWriteCSW(0x2);

  // Write TAR
  APWriteTAR(address);

  // Read DRW
  APReadDRW();

  // Read RdBuff
  value = DPReadRDBUFF();
  
  DBG_MSG(("ReadMem(%x), returned: %x\n", address,value));
  
  return value;
}


uint32_t ReadMemH(uint32_t address)
{
  //
  // return the HALFWORD value found at address
  //

  uint32_t value;

  // Ensure CSW is set up
  APWriteCSW(0x1);

  // Write TAR
  APWriteTAR(address);

  // Read DRW
  APReadDRW();

  // Read RdBuff
  value = DPReadRDBUFF();

  DBG_MSG(("ReadMemH(%x), returned: %x\n", address,value));
  
  return value;
}


uint32_t ReadMemB(uint32_t address)
{
  //
  // return the BYTE value found at address
  //

  uint32_t value;

  // Ensure CSW is set up
  APWriteCSW(0x0);

  // Write TAR
  APWriteTAR(address);

  // Read DRW
  APReadDRW();

  // Read RdBuff
  value = DPReadRDBUFF();

  DBG_MSG(("ReadMemB(%x), returned: %x\n", address,value));
  
  return value;
}


void WriteMem(uint32_t address, uint32_t data)
{
  //
  // Write WORD value back to target memory
  // 

  DBG_MSG(("WriteMem(%x, %x)\n",address, data));

  // Ensure CSW is set up
  APWriteCSW(0x2);

  // Write TAR
  APWriteTAR(address);

  // Write DRW
  APWriteDRW(data);

  // Read RdBuff to flush the write
  DPReadRDBUFF();
}


void WriteMemH(uint32_t address, uint32_t data)
{
  //
  // Write HALFWORD value back to target memory
  // 

  uint32_t ldata;

  ldata = data | (data << 16);

  DBG_MSG(("WriteMemH(%x, %x)\n",address, ldata));

  // Ensure CSW is set up
  APWriteCSW(0x1);

  // Write TAR
  APWriteTAR(address);

  // Write DRW
  APWriteDRW(ldata);

  // Read RdBuff to flush the write
  DPReadRDBUFF();
}


void WriteMemB(uint32_t address, uint32_t data)
{
  //
  // Write BYTE value back to target memory
  // 

  uint32_t ldata;

  ldata = data | (data << 8);
  ldata = ldata | (ldata << 16);

  DBG_MSG(("WriteMemB(%x, %x)\n",address, ldata));

  // Ensure CSW is set up
  APWriteCSW(0x0);

  // Write TAR
  APWriteTAR(address);

  // Write DRW
  APWriteDRW(ldata);

  // Read RdBuff to flush the write
  DPReadRDBUFF();
}


void JtagAPnDP(uint32_t apndp)
{
  //
  // JTAG switch scanchains
  //
  if(DAPSTATUS.jtagapndp != apndp)
    {
      if(apndp)
	{
	  // AP
	  JTAGScanIR(JTAG_APACC);
	}
      else
	{
	  // DP
	  JTAGScanIR(JTAG_DPACC);
	}
      DAPSTATUS.jtagapndp = apndp;
    }
}


void DPWriteBANKSEL(uint32_t banksel)
{
  //
  // Set DP register BANKSEL
  //

  if(DAPSTATUS.banksel != banksel)
    {
      if(DAPSTATUS.jtagnsw)
	{
	  JtagAPnDP(0);
	  JTAGScanDR( (banksel << 7) | JTAG_SCAN(SELECT,WRITE) );
	}
      else
	{
	  SWHeader( SW_HEADER(DP, WRITE, SELECT) );
	  SWDataWrite( banksel << 4 );
	}
      DAPSTATUS.banksel = banksel;
    }
}


void DPWriteCTRLSTAT(uint32_t ctrlstat)
{
  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(0);
      JTAGScanDR( (((uint64_t) ctrlstat) << 3) |  JTAG_SCAN(CTRLSTAT,WRITE)  );
    }
  else
    {
      SWHeader( SW_HEADER(DP, WRITE, CTRLSTAT) );
      SWDataWrite( ctrlstat );
    }
}


uint32_t DPReadCTRLSTAT()
{
  uint32_t data;
  
  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(0);
      JTAGScanDR( JTAG_SCAN(CTRLSTAT,READ) );
      data = DPReadRDBUFF();
    }
  else
    {
      SWHeader( SW_HEADER(DP, READ, CTRLSTAT) );
      data = SWDataRead();
    }
  return data;
}


void APWriteCSW(uint32_t csw)
{
  // Set up CSW - word, non incrementing access
  if(DAPSTATUS.csw != csw)
    {
      // CSW is in bank 0
      DPWriteBANKSEL(0);

      if(DAPSTATUS.jtagnsw)
	{
	  JtagAPnDP(1);
	  JTAGScanDR( (((uint64_t) csw) << 3) |  JTAG_SCAN(CSW,WRITE) );
	}
      else
	{
	  SWHeader( SW_HEADER(AP, WRITE, CSW) );
	  SWDataWrite( csw );
	}
      DAPSTATUS.csw = csw;
    }
}


void APWriteTAR(uint32_t address)
{
  // TAR is in bank 0
  DPWriteBANKSEL(0);
  
  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(1);
      JTAGScanDR( (((uint64_t) address) << 3) |  JTAG_SCAN(TAR,WRITE) );
    }
  else
    {
      SWHeader( SW_HEADER(AP, WRITE, TAR) );
      SWDataWrite( address );
    }
}


uint32_t APReadDRW()
{
  uint32_t data;
  // DRW is in bank 0
  DPWriteBANKSEL(0);
  
  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(1);
      data = (JTAGScanDR(JTAG_SCAN(DRW,READ)) >> 3);
    }
  else
    {
      SWHeader( SW_HEADER(AP, READ, DRW) );
      data =  SWDataRead();
    }
  return data;
}


void APWriteDRW(uint32_t data)
{
  // DRW is in bank 0
  DPWriteBANKSEL(0);
  
  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(1);
      JTAGScanDR( (((uint64_t) data) << 3) | JTAG_SCAN(DRW,WRITE) );
    }
  else
    {
      SWHeader( SW_HEADER(AP, WRITE, DRW) );
      SWDataWrite(data);
    }
}


uint32_t DPReadRDBUFF()
{
  uint32_t data;

  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(0);
      data = ( JTAGScanDR(JTAG_SCAN(RDBUFF,READ)) >> 3);
    }
  else
    {
      SWHeader( SW_HEADER(DP, READ, RDBUFF) );	
      data = SWDataRead();	
    }
  return data;
}


uint32_t DPReadIDR()
{ 
  uint32_t data;
  
  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(0);
      JTAGScanDR(JTAG_SCAN(DPIDR,READ));
      data = DPReadRDBUFF();
    }
  else
    {
      SWHeader( SW_HEADER(DP, READ, DPIDR) );	
      data = SWDataRead();	
    }
  return data;
}


uint32_t APReadIDR()
{
  uint32_t data;
  
  // IDR is in bank F
  DPWriteBANKSEL(0xF);
  
  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(1);
      JTAGScanDR(JTAG_SCAN(IDR,READ));
      data = DPReadRDBUFF();
    }
  else
    {
      SWHeader( SW_HEADER(AP, READ, IDR) );
      SWDataRead();
      data = DPReadRDBUFF();
    }
  return data; 
}


uint32_t APReadBASE()
{
  uint32_t data;
  
  // BASE is in bank F
  DPWriteBANKSEL(0xF);
  
  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(1);
      JTAGScanDR(JTAG_SCAN(BASE,READ));
      data = DPReadRDBUFF();
    }
  else
    {
      SWHeader( SW_HEADER(AP, READ, BASE) );
      SWDataRead();
      data =DPReadRDBUFF();
    }
  return data; 
}


void DPClearSTICKYERR()
{
  //
  // Clear STICKYERR bit
  //

  if(DAPSTATUS.jtagnsw)
    {
      JtagAPnDP(0);
      JTAGScanDR( (((uint64_t) 1UL << 5) << 3) |  JTAG_SCAN(CTRLSTAT,WRITE)  );
    }
  else
    {
      SWHeader( SW_HEADER(DP, WRITE, ABORT) );
      SWDataWrite( 1UL << 5 );
    }
}


//
// Checking Routines
//

uint32_t DDCheck(char *name, uint32_t actual, uint32_t expected)
{
  if(actual == expected)
    {
      return TEST_PASS;
    }
  else
    {
      DBG_MSG(("DDCheck() %s returned %x, expected %x\n", name, actual, expected));
      // If the DAP is connected, write actual value to memory
      if(DAPSTATUS.on)
	{
	  // Writing into MCU Memory, so take account of endianness
	  actual = SwapEndian(actual);
	  InitCommRegion();
	  WriteMem( (CM0IKMCU.stacktop + 4) , actual); 
	}
      return TEST_FAIL;
    }
}


////////////////////////////////////////////////////////////////////////////////
//
// JTAG Routines
//
////////////////////////////////////////////////////////////////////////////////

uint64_t JTAGScanIDCODE()
{
  // Read the TAP ID code

  uint64_t tmp;
  
  JTAGScanIR(JTAG_IDCODE);

  // RTI->SDR
  // 001
  JTAGTransition(0x1, 3);

  // Shift
  tmp = JTAGShift(0, 32);
  
  // E1DR->RTI
  // 01
  JTAGTransition(0x1, 2);
  
  return tmp;
}
  

void JTAGScanIR(uint32_t instruction)
{
  //
  // Scan in the passed Instruction
  //

  // RTI->SIR
  // 0011 
  JTAGTransition(0x3, 4);
  
  // Shift Instruction
  JTAGShift(instruction, 4);
  
  // E1IR->RTI
  // 01
  JTAGTransition(0x1, 2);
}


uint64_t JTAGScanDR(uint64_t data)
{
  //
  // Scan in/out values for the APACC/DPACC/ABORT Scan Chains
  //

  uint64_t tmp;

  // RTI->SDR
  // 001
  JTAGTransition(0x1, 3);

  // Shift
  tmp = JTAGShift(data, 35);
  
  // E1DR->RTI
  // 01
  JTAGTransition(0x1, 2);
  
  return tmp;
}


void JTAGTransition(uint32_t tms, uint8_t numbits)
{
  //
  // JTAGTransition causes us to ENTER a new TAP state
  //
  
  uint8_t i;	
   
  for(i = numbits; i > 0; i--)
    {
      //  GPIO0->DATA[DD_SWCLKTCK].BYTE[DD_DBG_BYTE] = DD_SWCLKTCK;	
      
      // Drive TMS
      if(tms & 0x1)
	{
	  GPIO0->DATA[DD_DBG_TMS].BYTE[DD_DBG_BYTE] = DD_DBG_TMS;
	}
      else
	{
    	  GPIO0->DATA[DD_DBG_TMS].BYTE[DD_DBG_BYTE] = 0;
	}
      tms = (tms >> 1);

      // Pulse clock pin
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = DD_DBG_SWCLKTCK;	
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = 0;
    }
}


uint64_t JTAGShift(uint64_t data, uint8_t numbits)
{
  //
  // JTAGShift handles shifts into and out of the the SR
  //

  // Most of the shift state has TMS Low, however the final cycle
  // which exits from the Shift to Exit1 also clocks out the final bit

  // When we enter this funtion, JTAGTransition has already created the negedge,
  // so here we want to drive the output and sample the input.

  // On the final cycle, we'll drive TMS high to escape the SHIFT state
  
  
  uint8_t i;
  uint64_t captured_data = 0;
  
  // Shifts require TMS == 0
  GPIO0->DATA[DD_DBG_TMS].BYTE[DD_DBG_BYTE] = 0;	 
  
  for(i = numbits; i > 0; i--)
    {
      // Posedge of clock enters the state
      //    GPIO0->DATA[DD_SWCLKTCK].BYTE[DD_DBG_BYTE] = DD_SWCLKTCK;

    // Drive signals to the DAP on negedge of clock
    // Also sample signals from the DAP after negedge of clock
      
      // Drive output
      if(data & 0x1)
	{
	  // Set
	  GPIO0->DATA[DD_DBG_TDI].BYTE[DD_DBG_BYTE] = DD_DBG_TDI;
	}
      else
	{
	  // Clear
	  GPIO0->DATA[DD_DBG_TDI].BYTE[DD_DBG_BYTE] = 0;
	}
      data = (data >> 1);


      // Capture Input
      captured_data = captured_data >> 1;

      if(GPIO0->DATA[DD_DBG_TDO].BYTE[DD_DBG_BYTE])
	{
	  // Set
	   captured_data |= (0x1ull << 63);
	}


      // Final cycle - drive TMS high to escape to Exit1
      if(i == 1)
	{
	  GPIO0->DATA[DD_DBG_TMS].BYTE[DD_DBG_BYTE] = DD_DBG_TMS;	
	}

      
      // Pulse clock pin
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = DD_DBG_SWCLKTCK;	
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = 0;
      
    }

  // fix up alignment of captured data before returning it
  captured_data = captured_data >> (64-numbits);

  return captured_data;

}



////////////////////////////////////////////////////////////////////////////////
//
// SerialWire routines
//
////////////////////////////////////////////////////////////////////////////////

uint32_t SWConnect()
{

  uint8_t count;

  uint32_t tmp;
  
  // Attempt a SerialWire connection sequence
  // Clock out 50 1s, then attempt ID code read

  // Ensure Clock is low
  GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = 0;
  
  // Set SWDO and SWDOEN
  GPIO0->DATA[(DD_DBG_TMS | DD_DBG_TMSEN)].BYTE[DD_DBG_BYTE] = (DD_DBG_TMS | DD_DBG_TMSEN);
  
  for(count = 50; count > 0; count--)
    {
      // Pulse clock pin
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = DD_DBG_SWCLKTCK;	
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = 0;	
    }

  // Insert some idle cycles
  GPIO0->DATA[DD_DBG_TMS].BYTE[DD_DBG_BYTE] = 0;
  
  for(count = 8; count > 0; count--)
    {
      // Pulse clock pin	
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = DD_DBG_SWCLKTCK;	
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = 0;		
    }    

  
  // Attempt an ID code read
  SWHeader( SW_HEADER(DP,READ,DPIDR) );
  tmp = SWDataRead();

 return tmp;
}


void SWDataWrite(uint32_t data)
{
  //
  // Enter from SW header+Ack, we are not currently driving the line 
  //

  uint32_t mask;
  uint32_t parity;

  // Send one turnaround cycle
  
  // Pulse clock pin
  GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = DD_DBG_SWCLKTCK;
  GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = 0;

  // Clock data out
  SerialWireClockOut(data,32);
  
  // Calculate data parity
  for(parity=0, mask=0x1; mask != 0; mask = mask << 1)
    {
      parity += (data & mask) ? 1 : 0;
    }

  // Clock parity out
  SerialWireClockOut(parity,1);

}


uint32_t SWDataRead(void)
{
  // Reads do not need to flip the line at all.
  // Clock out 32 data bits, + parity, + turnaround

  uint32_t rdata;

  // Clock in 32 bits of read data
  rdata = SerialWireClockIn(32);

  // Clock in (and ignore!) parity bit and turnround bit
  SerialWireClockIn(2);
  
  DBG_MSG(("SWDataRead() returned %x\n", rdata));

  return rdata;
  
}


uint32_t SWHeader(uint8_t header)
{
  // Clock out the (precalculated) SW header
  //
  // Always clock out 8 bits.
  // Drive ALL bits, including park (DE 618567)
  //

  uint32_t ack;

  // Clock out the header
  SerialWireClockOut(header, 8);

  // Clock in the first turnround bit and 3 ack bits
  ack = SerialWireClockIn(4);
  
  // LSB adjust Ack value and lose turnround bit
  ack = (ack >> (32 - 3)) & 0x7;
  
  return ack;
}


void SerialWireClockOut (uint32_t data, uint32_t numbits)
{
  // Ensure we are going to drive the line
  GPIO0->DATA[DD_DBG_TMSEN].BYTE[DD_DBG_BYTE] = DD_DBG_TMSEN;
  
  for(; numbits > 0; numbits--)
    {
      if(data & 0x1)
	{
	  // Bit set
	  GPIO0->DATA[DD_DBG_TMS].BYTE[DD_DBG_BYTE] = DD_DBG_TMS;	
	}
      else
	{
	  // Bit clear
	  GPIO0->DATA[DD_DBG_TMS].BYTE[DD_DBG_BYTE] = 0;	
	} 
   
      // Pulse clock pin
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = DD_DBG_SWCLKTCK;	
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = 0;

      data = (data >> 1);
    }
}


uint32_t SerialWireClockIn (uint32_t numbits)
{
  uint32_t data = 0;
  
  // Don't drive the line while clocking data in
  GPIO0->DATA[DD_DBG_TMSEN].BYTE[DD_DBG_BYTE] = 0;

  for(; numbits > 0; numbits--)
    {
      data = (data >> 1);

      if(GPIO0->DATA[DD_DBG_TMSIN].BYTE[DD_DBG_BYTE])
	{
	  data |= (0x1UL << 31);
	}
   
      // Pulse clock pin
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = DD_DBG_SWCLKTCK;	
      GPIO0->DATA[DD_DBG_SWCLKTCK].BYTE[DD_DBG_BYTE] = 0;
    }

  return data;  
}

