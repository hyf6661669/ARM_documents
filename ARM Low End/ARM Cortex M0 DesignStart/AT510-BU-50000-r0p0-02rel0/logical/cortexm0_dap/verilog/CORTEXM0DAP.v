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
//      Checked In          : $Date: 2009-03-19 14:11:42 +0000 (Thu, 19 Mar 2009) $
//
//      Revision            : $Revision: 104573 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module CORTEXM0DAP
  ( //DP Signals
    SWCLKTCK, DPRESETn, nTRST,
    TDI, TDO, nTDOEN, SWDITMS, SWDO, SWDOEN,
    CDBGPWRUPREQ, CDBGPWRUPACK,
    //AP Signals
    DCLK, APRESETn, DEVICEEN,
    SLVADDR, SLVWDATA, SLVTRANS, SLVWRITE, SLVRDATA, SLVREADY, SLVRESP,
    SLVSIZE, BASEADDR,
    //Configuration Pins
    ECOREVNUM,
    // DFT
    SE
  );

// ----------------------------------------------------------------------------
// Configurablility
// ----------------------------------------------------------------------------
  parameter JTAGnSW = 0;    //1 -> JTAG, 0 -> SW
  parameter DBG = 1;        //1 -> DAP Present, 0 -> DAP Not Present
  parameter RAR = 0;        //1 -> Resets on all Registers, 0 -> Non-RAR

// ----------------------------------------------------------------------------
// Port Definitions
// ----------------------------------------------------------------------------
  //DP I/O
  input         SWCLKTCK;     // SW/JTAG clock
  input         DPRESETn;     // Negative sense power-on reset for DP
  input         nTRST;        // JTAG test logic reset signal
  input         TDI;          // JTAG data in
  output        TDO;          // JTAG data out
  output        nTDOEN;       // JTAG TDO Output Enable
  input         SWDITMS;      // SW data in/JTAG TMS
  output        SWDO;         // SW data out
  output        SWDOEN;       // SW data out enable
  output        CDBGPWRUPREQ; // System Power Up & Reset Request/Acknowledge
  input         CDBGPWRUPACK; //            "                   "

  //AP I/O
  input         DCLK;         // AP clock
  input         APRESETn;     // Negative sense power-on reset for AP
  input         DEVICEEN;     // Debug enabled by system
  output [31:0] SLVADDR;      // Bus address
  output [31:0] SLVWDATA;     // Bus write data
  output  [1:0] SLVTRANS;     // Bus transfer valid
  output        SLVWRITE;     // Bus write/not read
  output  [1:0] SLVSIZE;      // Bus Access Size
  input  [31:0] SLVRDATA;     // Bus read data
  input         SLVREADY;     // Bus Ready from bus
  input         SLVRESP;      // Bus Response from bus
  input  [31:0] BASEADDR;     // AP ROM Table Base Value (to be tied externally)

  //Configuration IO
  input   [7:0] ECOREVNUM;    // Top 4 bits = DP Revision, Bottom 4 = AP Revision

  // DFT
  input         SE;           // Scan enable for DFT
  
// ----------------------------------------------------------------------------
// Signal declarations
// ----------------------------------------------------------------------------

  // - Internal Signals
  wire   [37:0] cm0_dap_dp_to_ap;      //DP Outputs
  wire   [33:0] cm0_dap_ap_to_dp;      //AP Outputs

  //Split Configuration Bus
  wire    [3:0] dp_ecorevnum = ECOREVNUM[7:4];
  wire    [3:0] ap_ecorevnum = ECOREVNUM[3:0];

//------------------------------------------------------------------------------
// DP PMU REQ/ACK Signals
//------------------------------------------------------------------------------
  //CSYSPWRUP is not required, so the REQ is looped back to the ACK, but only
  //when debug is present. When this is not the case, the output is ignored
  //and the input tied to 0 as elsewhere.

//------------------------------------------------------------------------------
// Instantiate DP & AP
//------------------------------------------------------------------------------
  //Instantiate DP
  cm0_dap_dp
    #(.DBG        (DBG),
      .JTAGnSW    (JTAGnSW),
      .RAR        (RAR))
    u_dp (
      //Top Level IO
      .swclktck               (SWCLKTCK),
      .dpreset_n              (DPRESETn),
      .n_trst                 (nTRST),
      .tdo                    (TDO),
      .n_tdoen                (nTDOEN),
      .tdi                    (TDI),
      .swditms                (SWDITMS),
      .swdo                   (SWDO),
      .swdoen                 (SWDOEN),
      .cdbgpwrupreq           (CDBGPWRUPREQ),
      .cdbgpwrupack           (CDBGPWRUPACK),
      .csyspwrupreq           (),     //Looped internally to csyspwrupack
      .csyspwrupack_i         (1'b0), //No internal connection pin tied to 0
      .cdbgrstreq             (),     //Ignored as feature not implemented
      .cdbgrstack_i           (1'b0), //Tied to 0 as feature not implemented
      //Internal IO
      .cm0_dap_ap_to_dp       (cm0_dap_ap_to_dp),
      .cm0_dap_dp_to_ap       (cm0_dap_dp_to_ap),
      //Configuration
      .ecorevnum              (dp_ecorevnum),
      // Scan Enable for DFT
      .SE                     (SE)
    );

  //Instantiate AP
  cm0_dap_ap
    #(.PRESENT    (DBG),
      .RAR        (RAR))
    u_ap (
      //Top Level IO
      .dclk                   (DCLK),
      .apreset_n              (APRESETn),
      .deviceen               (DEVICEEN),
      .slvrdata               (SLVRDATA),
      .slvwdata               (SLVWDATA),
      .slvaddr                (SLVADDR),
      .slvtrans               (SLVTRANS),
      .slvwrite               (SLVWRITE),
      .slvready               (SLVREADY),
      .slvresp                (SLVRESP),
      .slvsize                (SLVSIZE),
      .ap_base_reg            (BASEADDR),
      //Internal IO
      .cm0_dap_dp_to_ap       (cm0_dap_dp_to_ap),
      .cm0_dap_ap_to_dp       (cm0_dap_ap_to_dp),
      //Configuration
      .ecorevnum              (ap_ecorevnum),
      // Scan Enable for DFT
      .SE                     (SE)
  );

// ----------------------------------------------------------------------------
// Assertions
// ----------------------------------------------------------------------------
`ifdef ARM_ASSERT_ON
 `include "std_ovl_defines.h"

 `ifdef CM0_INVARIANTS_ON
   `include "cm0_dap_invariants.v"


 `endif

  // The AP base register value is driven from pins, and should be tied to the
  // correct value at the integration level, so it should never be X. This
  // assert firing indicates a problem at integration level.
  assert_never_unknown
    #(`OVL_FATAL, 32, `OVL_ASSUME, "AP ROM Table Base Register pins must be driven.")
    u_assume_xcheck_ap_base_reg
    (
      .clk        (DCLK),
      .reset_n    (APRESETn),
      .qualifier  (1'b1),
      .test_expr  (BASEADDR)
    );

  // The ECOREVNUM pins are directly connected to the DPIDR and APIDR revision
  // fields, and should never be X. The default configuration should be to tie
  // them low.
  assert_never_unknown
    #(`OVL_FATAL, 8, `OVL_ASSUME, "ID Register Revision Fields (ECOREVNUM pins) must be driven.")
    u_assume_xcheck_ecorevnum
    (
      .clk        (SWCLKTCK),
      .reset_n    (DPRESETn),
      .qualifier  (1'b1),
      .test_expr  (ECOREVNUM)
    );

  assert_always
    #(`OVL_FATAL, `OVL_ASSUME, "BASEADDR is assumed to be valid")
    u_assume_baseaddr_valid
    (
      .clk        (DCLK),
      .reset_n    (APRESETn),
      .test_expr  (BASEADDR[11:1] == 11'b00000000001)
    );

  // CDC Assertions
  // The CDC is split into two blocks, one in the AP and one in the DP, the
  // asserts for them therefore need to be in the top level
  // - Two checks are used, one in each clock domain. This is because enables
  // are allowed to glitch wrt their own clock.
  // - Output Enables
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT,
      "AP and DP Output Enables Should never be asserted together")
      u_never_simul_out_enables_apdom
      ( .clk        (DCLK),
        .reset_n    (APRESETn),
        .test_expr  ((u_dp.u_cm0_dap_dp_cdc.dp_out_en |
                      u_dp.u_cm0_dap_dp_cdc.dp_err_out_en) &
                     u_ap.u_cm0_dap_ap_cdc.ap_out_en));

  assert_never
    #(`OVL_FATAL, `OVL_ASSERT,
      "AP and DP Output Enables Should never be asserted together")
      u_never_simul_out_enables_dpdom
      ( .clk        (SWCLKTCK),
        .reset_n    (DPRESETn),
        .test_expr  ((u_dp.u_cm0_dap_dp_cdc.dp_out_en |
                      u_dp.u_cm0_dap_dp_cdc.dp_err_out_en) &
                     u_ap.u_cm0_dap_ap_cdc.ap_out_en));


  // - Write Enables
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT, 
     "AP and DP Write Enables Should never be asserted together")
     u_never_simul_write_enables_apdom
     (  .clk        (DCLK),
        .reset_n    (APRESETn),
        .test_expr  (u_dp.u_cm0_dap_dp_cdc.dp_wr_en &
                     u_ap.u_cm0_dap_ap_cdc.ap_wr_en));

  assert_never
    #(`OVL_FATAL, `OVL_ASSERT, 
     "AP and DP Write Enables Should never be asserted together")
     u_never_simul_write_enables_dpdom
     (  .clk        (SWCLKTCK),
        .reset_n    (DPRESETn),
        .test_expr  (u_dp.u_cm0_dap_dp_cdc.dp_wr_en &
                     u_ap.u_cm0_dap_ap_cdc.ap_wr_en));

  //2 Phase Handshake Protocol Checking
  // - Check at least 2 cycles between DP initiating a transaction and seeing
  // that AP has completed (this is minimum delay through synchroniser). Also
  // check that a DP does not deassert its request before seeing the
  // transaction has completed.
  assert_handshake
    #(`OVL_FATAL,
      2,    //2 Cycles between DP starting tx and seeing it complete
      0,    //No upper bound on time between starting tx and it completing
      1,    //DP must hold its request high until it sees the acknowledge
      0, 0, //Deassert Count, Max Ack Length not checked
      `OVL_ASSERT,
      "DP/AP Handshaking violated")
    u_dp_ap_handshake_check
    ( .clk          (SWCLKTCK),
      .reset_n      (DPRESETn),
      .req          (u_dp.u_cm0_dap_dp_cdc.dp_req_dp),
      .ack          (u_dp.u_cm0_dap_dp_cdc.ap_ack_dp) );
  // - Perform the same check in the AP domain, with req and ack inverted
  // (the AP's Ack is essentially a Req to the DP for another transaction)
  assert_handshake
    #(`OVL_FATAL,
      2,
      0,    //No upper bound on time between starting tx and it completing
      1,
      0, 0, //Deassert Count, Max Ack Length not checked
      `OVL_ASSERT,
      "AP/DP Handshaking violated")
    u_ap_dp_handshake_check
    ( .clk          (DCLK),
      .reset_n      (APRESETn),
      .req          (~u_dp.u_cm0_dap_dp_cdc.ap_ack_ap),
      .ack          (u_ap.u_cm0_dap_ap_cdc.dp_req_ap) );

  // - Check that control is only ever given and not taken
  // - In the AP this means that ACK is only ever changed to be the same as REQ,
  // never changed so that it is different
  assert_always_on_edge
    #(`OVL_FATAL, 3,  //3 = Any edge
      `OVL_ASSERT, "AP Can only grant control, not request it")
    u_ap_handshake_control
      ( .clk              (DCLK),
        .reset_n          (APRESETn),
        .sampling_event   (u_dp.u_cm0_dap_dp_cdc.ap_ack_ap),
        .test_expr        (u_dp.u_cm0_dap_dp_cdc.ap_ack_ap ==
                           u_ap.u_cm0_dap_ap_cdc.dp_req_ap) );

  // - In the DP this means that ACK is only ever changed to be the opposite to
  // REQ, never changed so that it is the same
  assert_always_on_edge
    #(`OVL_FATAL, 3,  //3 = Any edge
      `OVL_ASSERT, "DP Can only grant control, not request it")
    u_dp_handshake_control
      ( .clk              (SWCLKTCK),
        .reset_n          (DPRESETn),
        .sampling_event   (u_dp.u_cm0_dap_dp_cdc.dp_req_dp),
        .test_expr        (u_dp.u_cm0_dap_dp_cdc.dp_req_dp !=
                           u_dp.u_cm0_dap_dp_cdc.ap_ack_dp) );

  // - Check that AP control outputs to the shared resource are never asserted
  // when the AP does not have control
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT,
      "AP Signals to shared block can not be asserted when AP not in control")
    u_ap_shared_control_violation
      ( .clk              (DCLK),
        .reset_n          (APRESETn),
        .test_expr        ( (u_dp.u_cm0_dap_dp_cdc.ap_ack_ap ==
                             u_ap.u_cm0_dap_ap_cdc.dp_req_ap) &
                            (u_ap.u_cm0_dap_ap_cdc.ap_out_en |
                             u_ap.u_cm0_dap_ap_cdc.ap_wr_en) ) );

  // - Check that DP control outputs to the shared resource are never asserted
  // when the DP does not have control
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT,
      "DP Signals to shared block can not be asserted when DP not in control")
    u_dp_shared_control_violation
      ( .clk              (SWCLKTCK),
        .reset_n          (DPRESETn),
        .test_expr        ( (u_dp.u_cm0_dap_dp_cdc.dp_req_dp !=
                             u_dp.u_cm0_dap_dp_cdc.ap_ack_dp) &
                            (u_dp.u_cm0_dap_dp_cdc.dp_out_en |
                             u_dp.u_cm0_dap_dp_cdc.dp_err_out_en |
                             u_dp.u_cm0_dap_dp_cdc.dp_wr_en) ) );


  // Input assumptions

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSUME,
      "CDBGPWRUP 4-phase handshake: CDBGPWRUPACK must be deasserted out of reset")
    u_assume_cdbgpwrupack_reset
      (
       .clk          (SWCLKTCK),
       .reset_n      (1'b1),
       .start_event  ((~DPRESETn)),
       .test_expr    ((~DPRESETn) | (~CDBGPWRUPACK))
       );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSUME,
      "CDBGPWRUP 4-phase handshake: CDBGPWRUPACK only rises if requested")
    u_assume_cdbgpwrupack_rising
      (
       .clk          (SWCLKTCK),
       .reset_n      (DPRESETn),
       .start_event  ((~CDBGPWRUPREQ) & (~CDBGPWRUPACK)),
       .test_expr    (( CDBGPWRUPREQ) | (~CDBGPWRUPACK))
       );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSUME,
      "CDBGPWRUP 4-phase handshake: CDBGPWRUPACK only falls if requested")
    u_assume_cdbgpwrupack_falling
      (
       .clk          (SWCLKTCK),
       .reset_n      (DPRESETn),
       .start_event  (( CDBGPWRUPREQ) & ( CDBGPWRUPACK)),
       .test_expr    ((~CDBGPWRUPREQ) | ( CDBGPWRUPACK))
       );

  // Provide an extended version of DPRESETn that will be observed at DCLK
  reg dpreset_n_dclk;
  always @(posedge DCLK or negedge DPRESETn)
    if (!DPRESETn)
      dpreset_n_dclk <= 1'b0;
    else
      dpreset_n_dclk <= 1'b1;

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSUME,
      "APRESETn must not become asserted whilst powered up")
    u_assume_reset_cdbgpwrupack
      (
       .clk          (DCLK),
       .reset_n      (dpreset_n_dclk),
       .start_event  (APRESETn & ( (CDBGPWRUPREQ & CDBGPWRUPACK))),
       .test_expr    (APRESETn | (~(CDBGPWRUPREQ & CDBGPWRUPACK)))
       );



`endif

endmodule
