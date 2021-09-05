//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2009 ARM Limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM Limited.
//
//      SVN Information
//
//      Checked In          : $Date: 2009-03-20 14:07:51 +0000 (Fri, 20 Mar 2009) $
//
//      Revision            : $Revision: 104778 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_rst_sync (input  wire RSTINn,     // Active LOW reset
                     input  wire RSTREQ,     // Active HIGH synchronous reset request
                     input  wire CLK,        // Clock
                     input  wire SE,         // Scan Enable (for DFT)
                     input  wire RSTBYPASS,  // Reset synchroniser bypass (for DFT)
                     output wire RSTOUTn);   // Synchronised reset output
  
  // This module is instantiated where a reset synchroniser is required.
  // The purpose of this module is to produce a reset which is asynchronously
  // asserted and synchronously deasserted when an asynchronous reset input 
  // is asserted. It will produce a synchronously asserted and deasserted reset
  // in response to a synchronous reset request.
  
  // ------------------------------------------------------------
  // NOTE: THIS MODULE IS NOT INTENDED FOR USE IN SYNTHESIS
  // IT IS STRONGLY RECOMMENDED THAT AN EQUIVALENT MODULE
  // DIRECTLY INSTANTIATING CELLS FROM YOUR LIBRARY THAT MEET
  // THE REQUIREMENTS DETAILED BELOW IS USED INSTEAD
  // ------------------------------------------------------------
  
  // Requirements
  // -------------
  
  // 1 - The final D-type in the synchroniser must be guaranteed to
  // change cleanly (i.e. never glitch) whilst reset is held
  // inactive

  // Assumptions
  // -------------

  // 1 - RSTREQ is a non-glitching input synchronous to CLK
  
  // ------------------------------------------------------------
  // Reference model for reset synchroniser
  // ------------------------------------------------------------

  wire comb_rst_n = RSTBYPASS ? RSTINn : (RSTINn & ~RSTREQ);
  
  reg  rst_sync0_n, rst_sync1_n, rst_sync2_n;

  always @(posedge CLK or negedge comb_rst_n)
    if (~comb_rst_n) begin
      rst_sync0_n <= 1'b0;
      rst_sync1_n <= 1'b0;
      rst_sync2_n <= 1'b0;
    end else begin
      rst_sync0_n <= 1'b1;
      rst_sync1_n <= rst_sync0_n;
      rst_sync2_n <= rst_sync1_n;
    end
  
  assign RSTOUTn = RSTBYPASS ? RSTINn : rst_sync2_n;
  
endmodule

// ---------------------------------------------------------------
// EOF
// ---------------------------------------------------------------
