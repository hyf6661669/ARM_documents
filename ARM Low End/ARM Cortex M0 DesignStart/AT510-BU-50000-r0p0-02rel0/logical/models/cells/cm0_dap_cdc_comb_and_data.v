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
//      Checked In          : $Date: 2009-03-10 10:41:18 +0000 (Tue, 10 Mar 2009) $
//
//      Revision            : $Revision: 103410 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_cdc_comb_and_data
         #(parameter   PRESENT = 1)
          (input  wire [31:0] DATAIN,   // Data to be Masked
           input  wire        MASKn,    // Mask Enable
           output wire [31:0] DATAOUT); // Masked Data Output
  
  // --------------------------------------------------------------------------
  // NOTE: THIS MODULE IS NOT INTENDED FOR USE IN SYNTHESIS
  // IT IS STRONGLY RECOMMENDED THAT AN EQUIVALENT MODULE
  // DIRECTLY INSTANTIATING CELLS FROM YOUR LIBRARY THAT MEET
  // THE REQUIREMENTS DETAILED BELOW IS USED INSTEAD
  // --------------------------------------------------------------------------
  
  // --------------------------------------------------------------------------
  // This module is instantiated where a 32-bit AND mask is required on a CDC
  // interface. In this case, it is necesssary to ensure that the output of
  // the mask does not glitch when the mask input is low.
  //
  // The implementation of this module must ensure that this requirement is
  // met.
  // --------------------------------------------------------------------------

  //----------------------------------------------------------------------------
  // Beginning of main code
  //----------------------------------------------------------------------------

  // AND Gate Mask
  assign DATAOUT = (PRESENT != 0) ? DATAIN & {32{MASKn}} 
                                  : {32{1'b0}}; // inputs unused if not PRESENT

endmodule
