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
//      Checked In          : $Date: 2009-03-09 22:59:50 +0000 (Mon, 09 Mar 2009) $
//
//      Revision            : $Revision: 103375 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_dp_pwr
  (
  // Clock and Reset
  swclktck,
  dpreset_n,
  // DP CTRL/STAT Register link
  dp_cs_cdbgpwrupreq_i,
  dp_cs_cdbgpwrupack_o,
  // Power Handshake Signals exported from Top Level
  cdbgpwrupreq_o,
  cdbgpwrupack_i,
  // DP/AP Handshake Signals
  dp_req_dp_i,
  ap_ack_dp_i,
  // DP/AP Handshake Reset
  reset_dp_ap_handshake_o,
  // Scan Enable for DFT
  SE
  );

// ----------------------------------------------------------------------------
// Configuration Parameters
// ----------------------------------------------------------------------------
  parameter PRESENT = 1;
  wire      cfg_presnt = (PRESENT != 0);

// ----------------------------------------------------------------------------
// I/O
// ----------------------------------------------------------------------------
  // Clock and Reset
  input     swclktck;
  input     dpreset_n;

  // Inputs from other Modules
  input     dp_cs_cdbgpwrupreq_i;
  input     cdbgpwrupack_i;
  input     dp_req_dp_i;
  input     ap_ack_dp_i;

  // Outputs to other Modules
  output    dp_cs_cdbgpwrupack_o;
  output    cdbgpwrupreq_o;
  output    reset_dp_ap_handshake_o;

  // Scan Enable for DFT
  input     SE;

// ----------------------------------------------------------------------------
// Wire Declarations
// ----------------------------------------------------------------------------

  wire      dp_cs_cdbgpwrupreq;     // CDBGPWRUPREQ from DP CTRL/STAT
  wire      cdbgpwrupack;           // CDBGPWRUPACK from DAP pin
  wire      dp_req_dp;              // DP Request to AP
  wire      ap_ack_dp;              // AP Acknowledge from AP to DP
  
  wire      dp_cs_cdbgpwrupack;     // CDBGPWRUPACK for DP CTRL/STAT
  wire      cdbgpwrupreq;           // CDBGPWRUPREQ to DAP pin
  wire      reset_dp_ap_handshake;  // DP/AP handshake reset required

  wire      i_cdbgpwrupack_sync;    // (Intermediate) ...
  wire      cdbgpwrupack_sync;      // S/synchronized CDBGPWRUPACK from pin

  reg       cdbgpwrupreq_0;         // Power Up Request PEND
  wire      cdbgpwrupreq_1;         // Power Up Request COMMIT
                                    // (declared as wire as using instantiated
                                    // register)

  wire      cdbgpwrupreq_0_load;
  wire      cdbgpwrupreq_0_next;
  wire      cdbgpwrupreq_1_load;
  wire      cdbgpwrupreq_1_next;

// ----------------------------------------------------------------------------
// Isolation
// ----------------------------------------------------------------------------
// All the inputs to and outputs from this module are connected to logic so
// isolation by parameter is required to ensure all logic is removed during
// optimization if the DAP is not present.
// ----------------------------------------------------------------------------

  assign  dp_cs_cdbgpwrupreq      = cfg_presnt ? dp_cs_cdbgpwrupreq_i   : 1'b0;
  assign  cdbgpwrupack            = cfg_presnt ? cdbgpwrupack_i         : 1'b0;
  assign  dp_req_dp               = cfg_presnt ? dp_req_dp_i            : 1'b0;
  assign  ap_ack_dp               = cfg_presnt ? ap_ack_dp_i            : 1'b0;

  assign  dp_cs_cdbgpwrupack_o    = cfg_presnt ? dp_cs_cdbgpwrupack     : 1'b0;
  assign  cdbgpwrupreq_o          = cfg_presnt ? cdbgpwrupreq           : 1'b0;
  assign  reset_dp_ap_handshake_o = cfg_presnt ? reset_dp_ap_handshake  : 1'b0;

// ----------------------------------------------------------------------------
// CDBGPWRUPACK Synchronization
// ----------------------------------------------------------------------------
// CDBGPWRUPACK is a DAP pin and is assumed to be coming from a different
// clock domain to the DP, therefore synchronization is required.
// ----------------------------------------------------------------------------
  cm0_dap_cdc_capt_sync
    #(.PRESENT (PRESENT))
    u_cdbgpwrupack_sync
    (
      .SYNCRSTn     (dpreset_n),
      .SYNCCLK      (swclktck),
      .SYNCDI       (cdbgpwrupack),
      .SE           (SE),
      .SYNCDO       (i_cdbgpwrupack_sync)
    );

  assign cdbgpwrupack_sync = cfg_presnt ? i_cdbgpwrupack_sync : 1'b0;

// ----------------------------------------------------------------------------
// Power Up/Power Down Handshaking
// ----------------------------------------------------------------------------
// The power up/power down signals in software (as seen by the debugger) are
// decoupled from the signals sent to the pin to control power to the AP. This
// ensures that the 4-phase power handshaking on the interface is always 
// correctly performed.
//
// The software power down request is only committed (forwarded to the pin)
// when the DP/AP interface is idle with both handshake signals low. If the AP
// is busy the transaction is allowed to complete. If the AP is idle with the
// handshake signals high, then a transaction accessing reserved AP registers
// (which are RAZ/WI) is started, which when complete will result in both
// dp_req and ap_ack low, at which point the AP may safely be powered down.
//
// If an AP transaction is attempted after a power down request is made, the
// sticky error bit is forced high as such a transaction is illegal.
// ---------------------------------------------------------------------------

  // Logic to generate CDBGPWRUPACK in the CTRL/STAT Register
  assign dp_cs_cdbgpwrupack =  cdbgpwrupack_sync &
                             ((~dp_cs_cdbgpwrupreq) | 
                             (cdbgpwrupreq_0 &
                             cdbgpwrupreq));

  // Next values for power request pend (0) and commit (1) signals
  assign cdbgpwrupreq_0_next = dp_cs_cdbgpwrupreq;
  assign cdbgpwrupreq_1_next = cfg_presnt ? cdbgpwrupreq_0 : 1'b0;

  // Load Enable terms
  assign cdbgpwrupreq_0_load = (~(cdbgpwrupreq_0 ^ cdbgpwrupack_sync));
  assign cdbgpwrupreq_1_load = cfg_presnt ? (~(dp_req_dp | ap_ack_dp)) : 1'b0;

  //If the handshake is idle with both dp_req and ap_ack high it needs to be
  //reset to both 0. This is done by triggering a transaction to a reserved AP
  //register which is RAZ/WI.
  assign reset_dp_ap_handshake = dp_req_dp & ap_ack_dp & (~cdbgpwrupreq_0);

  // Registers
  always @(posedge swclktck or negedge dpreset_n)
    if (!dpreset_n)
    begin
      cdbgpwrupreq_0 <= 1'b0;
    end
    else if (cdbgpwrupreq_0_load)
    begin
      cdbgpwrupreq_0 <= cdbgpwrupreq_0_next;
    end

  // CDBGPWRUPREQ is exported from the DAP and reasonably presumably into
  // a different clock domain, therefore a CDC-safe launch flop is required.
  cm0_dap_cdc_send_reset
    #(.PRESENT (PRESENT))
    u_cdbgpwrupreq_commit
    (
      .REGCLK     (swclktck),
      .REGRESETn  (dpreset_n),
      .REGEN      (cdbgpwrupreq_1_load),
      .REGDI      (cdbgpwrupreq_1_next),
      .SE         (SE),
      .REGDO      (cdbgpwrupreq_1)
    );

  // Tie off register output if DAP not used
  assign cdbgpwrupreq = cfg_presnt ? cdbgpwrupreq_1 : 1'b0;

// ----------------------------------------------------------------------------
// Assertions
// ----------------------------------------------------------------------------
`ifdef ARM_ASSERT_ON
  `include "std_ovl_defines.h"

  // - cdbgpwrupreq_1_load
  assert_never_unknown 
    #(`OVL_FATAL, 1, `OVL_ASSERT, "cdbgpwrupreq_1_load can never be x")
    u_cdbgpwrupreq_1_load_x
      ( .clk        (swclktck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (cdbgpwrupreq_1_load) );

  // - cdbgpwrupreq_0_load
  assert_never_unknown 
    #(`OVL_FATAL, 1, `OVL_ASSERT, "cdbgpwrupreq_0_load can never be x")
    u_cdbgpwrupreq_0_load_x
      ( .clk        (swclktck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (cdbgpwrupreq_0_load) );
`endif

endmodule
