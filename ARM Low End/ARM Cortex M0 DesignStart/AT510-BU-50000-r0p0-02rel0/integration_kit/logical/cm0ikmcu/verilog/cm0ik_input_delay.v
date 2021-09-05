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
//      Checked In          : $Date: 2009-01-27 14:57:02 +0000 (Tue, 27 Jan 2009) $
//
//      Revision            : $Revision: 99568 $
//
//      Release Information : Cortex-M0-AT510-r0p0-01rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//      Signal Delay block
//-----------------------------------------------------------------------------
//
// This block is used to delay input signals to a netlist
//-----------------------------------------------------------------------------

module cm0ik_input_delay
  #(parameter                   DELAY       = 0,
    parameter                   BUSWIDTH    = 1)
   (input wire  [BUSWIDTH-1:0]  datain,
    output wire [BUSWIDTH-1:0]  dataout);

    assign #DELAY dataout  = datain;

endmodule // cm0ik_input_delay
