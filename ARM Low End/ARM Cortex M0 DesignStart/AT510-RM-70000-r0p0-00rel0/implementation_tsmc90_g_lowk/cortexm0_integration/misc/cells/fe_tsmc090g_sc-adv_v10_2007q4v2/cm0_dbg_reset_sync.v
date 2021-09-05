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
//      Checked In          : $Date: 2009-03-20 23:32:15 +0530 (Fri, 20 Mar 2009) $
//
//      Revision            : $Revision: 104849 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dbg_reset_sync #(parameter PRESENT = 1)
                           (input  wire RSTIN,
                            input  wire CLK,
			    input  wire SE,
			    input  wire RSTBYPASS,
                            output wire RSTOUT);
  
  // This module is instantiated where a reset synchroniser is required.
  // The purpose of this module is to produce a reset which is asynchronously
  // asserted and synchronously deasserted from a reset that is both asserted
  // and deasserted asynchronously. Note that it is assumed here that
  // the resets in question are active LOW

  
  // Requirements
  // -------------
  
  // 1 - The final D-type in the synchroniser must be guaranteed to
  // change cleanly (i.e. never glitch) whilst reset is held
  // inactive

  // --------------------------------------------------------------------------
  // In this example for the RM, 3 SDFFR flops are used to implement
  // the reset synchroniser, with a 2 input mux to allow the reset to be
  // bypassed. An X6 Mux is chosen in order to better drive a high fanout reset 
  // tree. The synthesis tool should be configured so that these gates arent
  // resynthesised into alternative gates, though resizing is allowed.
  // --------------------------------------------------------------------------
  
  wire  rst_sync0, rst_sync1, rst_sync2, RSTOUTi;

  wire cfg_present = (PRESENT != 0);

   SDFFRX1AD HANDINST_rst_sync0 (.CK(CLK),
				 .RN(RSTIN),
				 .D(1'b1),
				 .SI(),
				 .SE(),
				 .Q(rst_sync0),
				 .QN());
   
   SDFFRX1AD HANDINST_rst_sync1 (.CK(CLK),
				 .RN(RSTIN),
				 .D(rst_sync0),
				 .SI(),
				 .SE(),
				 .Q(rst_sync1),
				 .QN());

   SDFFRX4AD HANDINST_rst_sync2 (.CK(CLK),
				 .RN(RSTIN),
				 .D(rst_sync1),
				 .SI(),
				 .SE(),
				 .Q(rst_sync2),
				 .QN());

  MX2X2AD HANDINST_RSTOUTi (.S0(RSTBYPASS),
			    .A (rst_sync2),
			    .B (RSTIN),
			    .Y (RSTOUTi));
   
  
  assign RSTOUT = cfg_present ? RSTOUTi : RSTIN;

endmodule

// ---------------------------------------------------------------
// EOF
// ---------------------------------------------------------------
