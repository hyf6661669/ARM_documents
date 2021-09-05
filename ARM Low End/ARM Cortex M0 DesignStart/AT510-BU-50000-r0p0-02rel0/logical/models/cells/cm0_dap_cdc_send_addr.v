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
//      Checked In          : $Date: 2009-03-10 12:13:37 +0000 (Tue, 10 Mar 2009) $
//
//      Revision            : $Revision: 103430 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_cdc_send_addr
         #(parameter   PRESENT = 1)
          (input  wire         REGCLK,       // Register Clock
           input  wire         RARREGRESETn, // Reset (if RAR enabled)
           input  wire         REGEN,        // Register Load Enable
           input  wire [3:0]   REGDI,        // Data Input
           input  wire         SE,           // Scan Enable for DFT
           output wire [3:0]   REGDO);       // Data Output
  
  // --------------------------------------------------------------------------
  // NOTE: THIS MODULE IS NOT INTENDED FOR USE IN SYNTHESIS
  // IT IS STRONGLY RECOMMENDED THAT AN EQUIVALENT MODULE
  // DIRECTLY INSTANTIATING CELLS FROM YOUR LIBRARY THAT MEET
  // THE REQUIREMENTS DETAILED BELOW IS USED INSTEAD
  // --------------------------------------------------------------------------
  
  // --------------------------------------------------------------------------
  // This module is instantiated where 4-bit CDC-safe send (launch) register
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
  // Signal Declarations
  // --------------------------------------------------------------------------
  // Internal signals
  wire   [3:0]     iREGDI;  // Input to Register
  reg    [3:0]     iREGDO;  // Output of Register
  
  //----------------------------------------------------------------------------
  // Register removal
  //----------------------------------------------------------------------------
  assign REGDO    = (PRESENT != 0)  ? iREGDO    : {4{1'b0}};
  assign iREGDI   = (PRESENT != 0)  ? REGDI     : {4{1'b0}};
  
  //----------------------------------------------------------------------------
  // Beginning of main code
  //----------------------------------------------------------------------------

  //Register
  always @ (posedge REGCLK or negedge RARREGRESETn)
    if (!RARREGRESETn)
      iREGDO <= {4{1'b0}};
    else if (REGEN)
      iREGDO <= iREGDI;

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
