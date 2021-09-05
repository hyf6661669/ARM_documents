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
//      Checked In          : $Date: 2009-03-12 11:51:22 +0000 (Thu, 12 Mar 2009) $
//
//      Revision            : $Revision: 103764 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_cdc_capt_sync
         #(parameter PRESENT = 1)
          (input  wire SYNCRSTn,   // Synchronising Reset
           input  wire SYNCCLK,    // Synchronising Clock
           input  wire SYNCDI,     // Synchronising Data In
           input  wire SE,         // Scan Enable for DFT
           output wire SYNCDO);    // Synchronising Data Out

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
  // In this example for the RM, 2 back to back SDFFR flops are used to implement
  // the synchroniser. The synthesis tool should be configured so that these gates 
  // arent resynthesised into alternative gates, though resizing is allowed.
  // --------------------------------------------------------------------------
   
  // --------------------------------------------------------------------------
  // Signal Declarations
  // --------------------------------------------------------------------------

  wire          SyncQ;      // 1st synchroniser DFF output
  wire          iSYNCDI;
  wire          iSYNCDO;
  
  //----------------------------------------------------------------------------
  // Sync removal
  //----------------------------------------------------------------------------
  assign SYNCDO  = (PRESENT != 0) ? iSYNCDO : 1'b0;
  assign iSYNCDI = (PRESENT != 0) ?  SYNCDI : 1'b0;
  //----------------------------------------------------------------------------
  // Beginning of main code
  //----------------------------------------------------------------------------

  // synchroniser
   SDFFRX2AD HANDINST_SyncQ (.CK(SYNCCLK),
			     .RN(SYNCRSTn),
			     .D(iSYNCDI),
			     .SI(),
			     .SE(),
			     .Q(SyncQ),
			     .QN());
   
   SDFFRX2AD HANDINST_SyncQQ(.CK(SYNCCLK),
			     .RN(SYNCRSTn),
			     .D(SyncQ),
			     .SI(),
			     .SE(),
			     .Q(iSYNCDO),
			     .QN());

`ifdef ARM_ASSERT_ON
  `include "std_ovl_defines.h"

  // Glitching Input - valid waveform, but undesirable in handshake design.
  assert_never #(2,0,
    "Glitching Input - valid waveform, but undesirable in handshake design.")
    cm0_sync_glitch
      (
       .clk       ( SYNCCLK),
       .reset_n   ( SYNCRSTn),
       .test_expr ( (SyncQ!=SYNCDI)&&(SyncQ!=SyncQQ)));

  // Input X not allowed - halt propogation at synchroniser level.
  assert_never_unknown #(0,1,0,"Input X not allowed - halt propogation at synchroniser level.")
  cm0_sync_xprop
    (
     .clk       (SYNCCLK),
     .reset_n   (SYNCRSTn),
     .qualifier (1'b1),
     .test_expr (SYNCDI));

`endif //  `ifdef ARM_ASSERT_ON

  
endmodule
