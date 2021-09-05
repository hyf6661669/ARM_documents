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
//     Clock Generator
//-----------------------------------------------------------------------------
//
// This block generates FCLK and STCLK
// STCLK has 1/3 of FCLK frequency and has 50% duty cycle
//-----------------------------------------------------------------------------

module cm0ik_clk_gen
  (input  wire  CLK,       // primary clock 
   input  wire  RESETn,    // reset
   output wire  FCLK,      // free-running clock  
   output wire  STCLK);    // systick clock  
   
  reg [1:0] count;
  reg [1:0] nxt_count;
  reg div1, div2;

//-----------------------------------------------------------------------------
// FCLK generation
//-----------------------------------------------------------------------------

  assign FCLK = CLK;
  
//-----------------------------------------------------------------------------
// STCLK generation: CLK divided by 3
//-----------------------------------------------------------------------------

  always @ (count)
  begin
    case (count)
    2'b00   : nxt_count = 2'b01;
    2'b01   : nxt_count = 2'b10;
    2'b10,2'b11 : nxt_count = 2'b00;
    default: nxt_count = {2{1'bx}};
    endcase
  end
  
  always @ (posedge CLK or negedge RESETn)
    if (~RESETn)
        count <= {2{1'b0}};
    else
        count <= nxt_count;

  always @ (posedge CLK or negedge RESETn) 
    if (~RESETn)
        div1 <= 1'b0;
    else if (count == 2'b00)
        div1 <= ~div1;

  // div2 triggered on negative edge of CLK
  always @ (negedge CLK or negedge RESETn)
    if (~RESETn)
        div2 <= 1'b0;
    else if (count == 2'b10)
        div2 <= ~div2;

  assign STCLK = div1 ^ div2;
  
endmodule
