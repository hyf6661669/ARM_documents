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

module cm0_rst_send_set
          (input  wire RSTn,       // Reset
           input  wire CLK,        // Clock
           input  wire RSTREQIN,   // Input reset request
           output wire RSTREQOUT); // Output reset request

  // This module is instantiated where a glitch-free send (launch) register is
  // required i.e. where the output of the register is used to drive an 
  // asynchronous reset signal

  // --------------------------------------------------------------------------
  // NOTE: THIS MODULE IS NOT INTENDED FOR USE IN SYNTHESIS
  // IT IS STRONGLY RECOMMENDED THAT AN EQUIVALENT MODULE
  // DIRECTLY INSTANTIATING CELLS FROM YOUR LIBRARY THAT MEET
  // THE REQUIREMENTS DETAILED BELOW IS USED INSTEAD
  // --------------------------------------------------------------------------
  
  // Requirements
  // -------------
  
  // 1 - The D-type in the synchroniser must be guaranteed to
  // not to glitch while RSTREQIN is LOW.
  
  //----------------------------------------------------------------------------
  // Reference model for a send D-type
  //----------------------------------------------------------------------------

  reg iRSTREQOUT;
  
  //Register
  always @ (posedge CLK or negedge RSTn)
    if (~RSTn)
      iRSTREQOUT <= 1'b1;
    else
      iRSTREQOUT <= RSTREQIN;

  assign RSTREQOUT = iRSTREQOUT;

endmodule
