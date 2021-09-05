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
//      Checked In          : $Date: 2009-03-12 17:21:22 +0530 (Thu, 12 Mar 2009) $
//
//      Revision            : $Revision: 103764 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_cdc_send_data
         #(parameter   PRESENT = 1)
          (input  wire         REGCLK,       // Register Clock
           input  wire         RARREGRESETn, // Reset (if RAR enabled)
           input  wire         REGEN,        // Register Load Enable
           input  wire [31:0]  REGDI,        // Data Input
           input  wire         SE,           // Scan Enable for DFT
           output wire [31:0]  REGDO);       // Data Output
    
  // --------------------------------------------------------------------------
  // This module is instantiated where 32-bit CDC-safe send (launch) register
  // is required, i.e. where the output of the register is used in a different
  // clock domain to the register. In this case, it is necesssary to ensure 
  // that the output of the register does not glitch when the register enable
  // signal, REGEN, is low.
  //
  // RARREGRESETn is only asserted in the "Reset All Registers" configuration.
  // In the non-RAR configuration this input may be left unconnected and
  // registers without an asynchronous reset instantiated instead.
  //
  // The implementation of this module must ensure that this requirement is
  // met.
  // -------------------------------------------------------------------------- 

  // --------------------------------------------------------------------------
  // In this example, the above behaviour is ensured by using a clock gating
  // cell (TLATNTSCA) to gate the clock to the launch register(s) (SDFFR) when
  // REGEN is low. The synthesis tool should be configured so that these gates 
  // arent resynthesised into alternative gates, though resizing is allowed.
  // --------------------------------------------------------------------------
   
  // --------------------------------------------------------------------------
  // Signal Declarations
  // --------------------------------------------------------------------------
  // Internal signals

  wire   [31:0]    iREGDI;   // Input to Register
  wire   [31:0]    iREGDO;   // Output of Register
  wire 	           ENREGCLK; // Gated Register clock

  
  //----------------------------------------------------------------------------
  // Register removal
  //----------------------------------------------------------------------------
  assign REGDO    = (PRESENT != 0)  ? iREGDO    : {32{1'b0}};
  assign iREGDI   = (PRESENT != 0)  ? REGDI     : {32{1'b0}};
  
  //----------------------------------------------------------------------------
  // Beginning of main code
  //----------------------------------------------------------------------------
  //Clock gate
   TLATNTSCAX16AD HANDINST_ICG (.ECK(ENREGCLK),
				.E  (REGEN),
				.SE (SE),
				.CK (REGCLK));

  //Register
   SDFFRX2AD   HANDINST_iREGDO[31:0] (.CK(ENREGCLK),
				      .RN(RARREGRESETn),
				      .D(iREGDI),
				      .SI(),
				      .SE(),
				      .Q(iREGDO),
				      .QN());


  `ifdef ARM_ASSERT_ON
    `include "std_ovl_defines.h"

    assert_never_unknown
      #(`OVL_FATAL, 1, `OVL_ASSUME, "CDC Register Enable must never be X")
      u_x_check_cdc_reg_en
      (
        .clk        (REGCLK),
        .reset_n    (RARREGRESETn),
        .qualifier  (1'b1),
        .test_expr  (REGEN)
      );

  `endif

endmodule
