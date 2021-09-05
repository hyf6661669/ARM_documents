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
//      Checked In          : $Date: 2008-12-08 12:21:19 +0000 (Mon, 08 Dec 2008) $
//
//      Revision            : $Revision: 96209 $
//
//      Release Information : Cortex-M0-AT510-r0p0-01rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//      Power-On-Reset Generator
//-----------------------------------------------------------------------------
//
// This block generates Power-On-Reset
//-----------------------------------------------------------------------------
`include "cm0ik_defs.v"

module cm0ik_poreset
  (output reg  PORESETn);  // Power-On-Reset
  
  initial
    begin
      PORESETn  = 1'b1;    
      #1
      PORESETn  = 1'b0;    // Asserted 3 cycles  
      #`ARM_CM0IK_POR_LENGTH
      PORESETn  = 1'b1;    // De-asserted
    end

endmodule
