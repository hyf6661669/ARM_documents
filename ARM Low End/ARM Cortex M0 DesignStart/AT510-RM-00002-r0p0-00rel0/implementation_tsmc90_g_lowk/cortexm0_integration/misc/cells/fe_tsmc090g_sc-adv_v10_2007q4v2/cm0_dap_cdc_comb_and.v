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

module cm0_dap_cdc_comb_and
         #(parameter   PRESENT = 1)
          (input  wire DATAIN,   // Data to be Masked
           input  wire MASKn,    // Mask Enable
           output wire DATAOUT); // Masked Data Output

   wire  	  iDATAOUT; // Output of AND gate
    
  // --------------------------------------------------------------------------
  // This module is instantiated where an AND gate mask is required on a CDC
  // interface. In this case, it is necesssary to ensure that the output of
  // the mask does not glitch when the mask input is low.
  //
  // The implementation of this module must ensure that this requirement is
  // met.
  // --------------------------------------------------------------------------

  // --------------------------------------------------------------------------
  // In this example, the above behaviour is ensured by using an AND2 gate
  // To mask the data signal. The synthesis tool should be configured so that
  // these gates arent resynthesised into alternative gates, though resizing 
  // is allowed.
  // --------------------------------------------------------------------------
   
  //----------------------------------------------------------------------------
  // Beginning of main code
  //----------------------------------------------------------------------------

  // AND Gate Mask
  assign DATAOUT = (PRESENT != 0) ? iDATAOUT
                              : 1'b0; //DATAOUT disconnected when not present

   AND2X2AD HANDINST_Mask (.A(DATAIN),
			   .B(MASKn),
			   .Y(iDATAOUT));

endmodule
