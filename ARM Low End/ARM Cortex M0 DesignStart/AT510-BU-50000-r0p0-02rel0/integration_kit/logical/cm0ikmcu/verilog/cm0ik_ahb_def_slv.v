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
//      AHB Default Slave
//-----------------------------------------------------------------------------
//
// This block when accessed always responds with a two-cycle AHB error response
//-----------------------------------------------------------------------------

module cm0ik_ahb_def_slv
  (input wire           HCLK,         // System clock
   input wire           HRESETn,      // System reset
   input wire           HSEL,         // AHB slave selected
   input wire  [1:0]    HTRANS,       // AHB transfer type
   input wire           HREADY,       // AHB ready input
   output wire [31:0]   HRDATA,       // AHB read data
   output reg           HRESP,        // AHB slave response
   output reg           HREADYOUT);   // AHB slave ready output

//-----------------------------------------------------------------------------
// Constant declarations
//-----------------------------------------------------------------------------

`define ARM_CM0IK_RSP_OKAY  1'b0
`define ARM_CM0IK_RSP_ERROR 1'b1

//-----------------------------------------------------------------------------
// Main body of code
//-----------------------------------------------------------------------------

  wire trans_valid = HSEL & HTRANS[1] & HREADY;

  wire nxt_hreadyout = ~trans_valid | ~HREADYOUT;
  
  // HREADYOUT generation
  always @ (posedge HCLK or negedge HRESETn)
    begin
      if (!HRESETn)
        HREADYOUT <= 1'b1;
      else
        HREADYOUT <= nxt_hreadyout;
    end

  wire nxt_hresp = trans_valid ? `ARM_CM0IK_RSP_ERROR : `ARM_CM0IK_RSP_OKAY;

  // HRESP generation
  always @ (posedge HCLK or negedge HRESETn)
    begin
      if (!HRESETn)
        HRESP <= `ARM_CM0IK_RSP_OKAY;
      else if (HREADYOUT)
        HRESP <= nxt_hresp;
    end

  // Read data always zero
  assign HRDATA = 32'h00000000;

// Undefine local constants
`undef ARM_CM0IK_RSP_OKAY
`undef ARM_CM0IK_RSP_ERROR

endmodule
