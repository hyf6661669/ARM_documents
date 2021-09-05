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
//      Checked In          : $Date: 2009-03-13 16:43:00 +0530 (Fri, 13 Mar 2009) $
//
//      Revision            : $Revision: 103975 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_sw_cdc_capt_reset
         #(parameter   PRESENT = 1)
          (input  wire REGCLK,     // Register Clock
           input  wire REGRESETn,  // Reset
           input  wire REGEN,      // Register Load Enable
           input  wire REGDI,      // Data Input
           input  wire SE,         // Scan Enable for DFT
           output wire REGDO);     // Data Output

  // --------------------------------------------------------------------------
  // This module is instantiated where a CDC-safe capture register is required.
  // The input must only be sampled at clock edges when the synchronous
  // enable, REGEN is high. At all other clock edges when REGEN is low, the
  // output of the register must not be affected even if the input is unstable or
  // changing.
  //
  // The reset state of this register must be 1 for correct operation.
  //
  // The implementation of this module must ensure that this requirement is
  // met.
  // --------------------------------------------------------------------------

  // --------------------------------------------------------------------------
  // In this example, the above behaviour is ensured by using a clock gating
  // cell (TLATNTSCA) to gate the clock to the capture register(s) (SDFFS) when
  // REGEN is low. The synthesis tool should be configured so that
  // these gates arent resynthesised into alternative gates, though resizing 
  // is allowed.
  // --------------------------------------------------------------------------
   
  // --------------------------------------------------------------------------
  // Signal Declarations
  // --------------------------------------------------------------------------
  // Internal signals
  wire    iREGDI;   // Input to Register
  wire    iREGDO;   // Output of Register
  wire 	  ENREGCLK; // Gated Register clock
  
  //----------------------------------------------------------------------------
  // Register removal
  //----------------------------------------------------------------------------
  assign REGDO    = (PRESENT != 0)  ? iREGDO    : 1'b0;
  assign iREGDI   = (PRESENT != 0)  ? REGDI     : 1'b0;
  
  //----------------------------------------------------------------------------
  // Beginning of main code
  //----------------------------------------------------------------------------

  //Clock gate
   TLATNTSCAX2AD HANDINST_ICG (.ECK(ENREGCLK),
                               .E  (REGEN),
                               .SE (SE),
                               .CK (REGCLK));

  //Register
   SDFFSX2AD   HANDINST_iREGDO (.CK(ENREGCLK),
				.SN(REGRESETn),
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
        .reset_n    (REGRESETn),
        .qualifier  (1'b1),
        .test_expr  (REGEN)
      );

  `endif

endmodule
