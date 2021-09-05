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
//      Checked In          : $Date: 2009-03-12 17:21:22 +0530 (Thu, 12 Mar 2009) $
//
//      Revision            : $Revision: 103764 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_acg #(parameter CBAW = 0,
                   parameter ACG  = 1)
                  (input  wire CLKIN,
                   input  wire ENABLE,
                   input  wire SE,
                   output wire CLKOUT );

   // ------------------------------------------------------------
   // NOTE: THIS FILE PROVIDES AN EXAMPLE LIBRARY SPECIFIC ICG
   //       CELL INSTANTIATION. SIGNALS USED ARE AS FOLLOWS:
   //
   //          CLKIN  - CLOCK INPUT
   //          ENABLE - ACTIVE HIGH CLOCK ENABLE INPUT
   //          SE     - ENABLE BYPASS FOR SCAN TEST PURPOSES
   //          CLKOUT - CLOCK OUTPUT OF CLOCK GATE CELL
   //
   // ------------------------------------------------------------

   // ------------------------------------------------------------
   // Library specific clock gate cell instantiation
   // ------------------------------------------------------------ 

   TLATNTSCAX8AD ICGCell (.ECK  (CLKOUT),
                            .E  (ENABLE),
                            .SE (SE),
                            .CK (CLKIN));

endmodule

// ---------------------------------------------------------------
// EOF
// ---------------------------------------------------------------
