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
//      Checked In          : $Date: 2009-03-09 20:29:36 +0000 (Mon, 09 Mar 2009) $
//
//      Revision            : $Revision: 103368 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 CORE CLOCK GATE INTERCONNECT LEVEL
//-----------------------------------------------------------------------------

module cm0_top_clk
  #(parameter CBAW     =  0,
    parameter ACG      =  1)

   (input  wire hclk,           // gated AHB clock input

    output wire rclk0,          // r0-r4 gated clock output
    output wire rclk1,          // r5-r14 gated clock output
    output wire pclk,           // PPB space gated clock output

    input  wire SE,             // clock gate bypass for test

    input  wire ctl_rclk0_en_i, // r0-r4 clock enable term
    input  wire ctl_rclk1_en_i, // r5-r14 clock enable term
    input  wire msl_pclk_en_i); // PPB space clock enable term

   // ------------------------------------------------------------
   // Note:
   // ------------------------------------------------------------
   // the architectural clock gating implemented in Cortex-M0
   // is not necessary for correct functionality; all registers
   // which gated clocks arrive at have separate enable terms
   // to ensure correct operation - it is therefore permissible
   // for each of the clock gate modules below to simply
   // assign CLKOUT from CLKIN irrespective of the ENABLE and
   // SE terms
   // ------------------------------------------------------------

   // ------------------------------------------------------------
   // Lower half register file clock gate cell insantiation
   // ------------------------------------------------------------

   cm0_acg
     #(.CBAW(CBAW), .ACG(ACG))
       u_rclk0
         (.CLKIN                  (hclk),
          .ENABLE                 (ctl_rclk0_en_i),
          .SE                     (SE),
          .CLKOUT                 (rclk0));

   // ------------------------------------------------------------
   // Upper half register file clock gate cell insantiation
   // ------------------------------------------------------------

   cm0_acg
     #(.CBAW(CBAW), .ACG(ACG))
       u_rclk1
         (.CLKIN                  (hclk),
          .ENABLE                 (ctl_rclk1_en_i),
          .SE                     (SE),
          .CLKOUT                 (rclk1));

   // ------------------------------------------------------------
   // Private peripheral space register write clock gate cell
   // ------------------------------------------------------------

   cm0_acg
     #(.CBAW(CBAW), .ACG(ACG))
       u_pclk
         (.CLKIN                  (hclk),
          .ENABLE                 (msl_pclk_en_i),
          .SE                     (SE),
          .CLKOUT                 (pclk));

   // ------------------------------------------------------------

endmodule // cm0_top_clk

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
