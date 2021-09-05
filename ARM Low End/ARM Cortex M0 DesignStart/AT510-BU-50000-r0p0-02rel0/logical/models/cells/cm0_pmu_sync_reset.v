//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2008-2009 ARM Limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM Limited.
//
//      SVN Information
//
//      Checked In          : $Date: 2009-03-24 13:02:25 +0000 (Tue, 24 Mar 2009) $
//
//      Revision            : $Revision: 105044 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_pmu_sync_reset
          (input  wire SYNCRSTn,   // Synchronising Reset
           input  wire SYNCCLK,    // Synchronising Clock
           input  wire SYNCDI,     // Synchronising Data In
           output wire SYNCDO);    // Synchronising Data Out

  // --------------------------------------------------------------------------
  // NOTE: THIS MODULE IS NOT INTENDED FOR USE IN SYNTHESIS
  // IT IS STRONGLY RECOMMENDED THAT AN EQUIVALENT MODULE
  // DIRECTLY INSTANTIATING CELLS FROM YOUR LIBRARY THAT MEET
  // THE REQUIREMENTS DETAILED BELOW IS USED INSTEAD
  // --------------------------------------------------------------------------
  
  // --------------------------------------------------------------------------
  // This module is instantiated where a CDC-safe synchroniser is required,
  // i.e. where the input is from a different clock domain. The signal is
  // sampled using a series of two registers to minimise the chance of
  // metastability being introduced if the input changes around the time it
  // is sampled.
  //
  // The implementation of this module must ensure that this requirement is
  // met.
  // --------------------------------------------------------------------------

  // --------------------------------------------------------------------------
  // Signal Declarations
  // --------------------------------------------------------------------------

  reg           SyncQ;      // 1st synchroniser DFF
  reg           SyncQQ;     // 2nd synchroniser DFF
  
  //----------------------------------------------------------------------------
  // Beginning of main code
  //----------------------------------------------------------------------------

  // synchroniser
  always @ (posedge SYNCCLK or negedge SYNCRSTn)
    if (!SYNCRSTn)
      begin 
       SyncQQ <= 1'b0;
       SyncQ  <= 1'b0;
      end
    else
      begin
        SyncQQ <= SyncQ;
        SyncQ  <= SYNCDI;
      end 

  assign SYNCDO = SyncQQ;

`ifdef ARM_ASSERT_ON
  `include "std_ovl_defines.h"

  // Input X not allowed - halt propogation at synchroniser level.
  assert_never_unknown #(`OVL_FATAL,1,`OVL_ASSERT,"Input X not allowed - halt propogation at synchroniser level.")
  u_pmu_sync_xprop
    (
     .clk       (SYNCCLK),
     .reset_n   (SYNCRSTn),
     .qualifier (1'b1),
     .test_expr (SYNCDI));

`endif //  `ifdef ARM_ASSERT_ON

  
endmodule
