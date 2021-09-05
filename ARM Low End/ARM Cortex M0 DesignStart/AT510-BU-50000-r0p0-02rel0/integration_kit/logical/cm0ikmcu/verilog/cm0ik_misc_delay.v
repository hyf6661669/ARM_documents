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
//     Signal delay block used in Miscellaneous logic block
//-----------------------------------------------------------------------------
//
// This block is used to facilitate testing in the Cortex-M0 Integration Kit
// o    Delays input signal i by 4 fclk ticks before returning as output o
//-----------------------------------------------------------------------------
module cm0ik_misc_delay
  (input  wire  fclk,
   input  wire  hresetn,
   input  wire  i,
   output wire  o);

  reg [3:0] d;

  always@(posedge fclk or negedge hresetn)
    if(~hresetn)
      d <= {4{1'b0}};
    else
      d <= {d[2:0], i};

  assign    o = d[3];
  
endmodule
