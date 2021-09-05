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
//      Checked In          : $Date: 2009-03-12 17:00:02 +0000 (Thu, 12 Mar 2009) $
//
//      Revision            : $Revision: 103845 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_ap_cdc (
    //Clocks & Resets
    dclk, apreset_n,

    //Data From DP
    dp_rnw_i, dp_regaddr_i, dp_data_i,
    //Data To DP
    ap_data_o, ap_err_o,

    //Data From AP
    ap_data_ap_i, ap_err_ap_i,
    //Data To AP
    dp_data_ap_o, dp_regaddr_ap_o, dp_rnw_ap_o,
    //Control From AP
    ap_wr_en_i, ap_out_en_i,

    //Handshake Signals
    dp_req_dp_i, dp_req_ap_o,
    ap_ack_ap_o, ap_ack_load_i,

    // Scan Enable for DFT
    SE
  );

// ----------------------------------------------------------------------------
// Configurablility
// ----------------------------------------------------------------------------
  parameter PRESENT = 1;
  parameter RAR     = 0;

// ----------------------------------------------------------------------------
// Port Definitions
// ----------------------------------------------------------------------------
  input         dclk;
  input         apreset_n;
  input         dp_rnw_i;
  input   [3:0] dp_regaddr_i;
  input  [31:0] dp_data_i;
  output [31:0] ap_data_o;
  output        ap_err_o;
  input  [31:0] ap_data_ap_i;
  input         ap_err_ap_i;
  output [31:0] dp_data_ap_o;
  output  [3:0] dp_regaddr_ap_o;
  output        dp_rnw_ap_o;
  input         ap_wr_en_i;
  input         ap_out_en_i;
  input         dp_req_dp_i;
  output        dp_req_ap_o;
  output        ap_ack_ap_o;
  input         ap_ack_load_i;
  input         SE;

// ----------------------------------------------------------------------------
// Signal Declarations
// ----------------------------------------------------------------------------
  //Masked Top Level Signals
  wire          dp_rnw;
  wire    [3:0] dp_regaddr;
  wire   [31:0] dp_data;
  wire   [31:0] ap_data_ap;
  wire          ap_err_ap;
  wire   [31:0] dp_data_ap;
  wire    [3:0] dp_regaddr_ap;
  wire          dp_rnw_ap;
  wire          ap_wr_en;
  wire          ap_out_en;
  wire          dp_req_dp;
  wire          dp_req_ap;
  wire          ap_ack_load;
  wire          ap_ack_ap;

  // - In AP Domain
  wire   [31:0] ap_data;
  wire          ap_err;

  // RAR reset signals
  wire          rar_apreset_n;

//------------------------------------------------------------------------------
// Remove Module If AP Not Present
//------------------------------------------------------------------------------
  wire  cfg_presnt = (PRESENT != 0);
  wire  cfg_rar    = (RAR != 0);

  //Mask Inputs
  assign dp_rnw           = cfg_presnt ? dp_rnw_i         : 1'b0;
  assign dp_regaddr       = cfg_presnt ? dp_regaddr_i     : {4{1'b0}};
  assign dp_data          = cfg_presnt ? dp_data_i        : {32{1'b0}};
  assign ap_data_ap       = cfg_presnt ? ap_data_ap_i     : {32{1'b0}};
  assign ap_err_ap        = cfg_presnt ? ap_err_ap_i      : 1'b0;
  assign ap_wr_en         = cfg_presnt ? ap_wr_en_i       : 1'b0;
  assign ap_out_en        = cfg_presnt ? ap_out_en_i      : 1'b0;
  assign dp_req_dp        = cfg_presnt ? dp_req_dp_i      : 1'b0;
  assign ap_ack_load      = cfg_presnt ? ap_ack_load_i    : 1'b0;

  //Mask Outputs
  assign ap_data_o        = cfg_presnt ? ap_data          : {32{1'b0}};
  assign ap_err_o         = cfg_presnt ? ap_err           : 1'b0;
  assign dp_data_ap_o     = cfg_presnt ? dp_data_ap       : {32{1'b0}};
  assign dp_regaddr_ap_o  = cfg_presnt ? dp_regaddr_ap    : 4'b0000;
  assign dp_rnw_ap_o      = cfg_presnt ? dp_rnw_ap        : 1'b0;
  assign dp_req_ap_o      = cfg_presnt ? dp_req_ap        : 1'b0;
  assign ap_ack_ap_o      = cfg_presnt ? ap_ack_ap        : 1'b0;

  // RAR Resets
  assign rar_apreset_n    = cfg_rar    ? apreset_n        : 1'b1;

// ----------------------------------------------------------------------------
// Handshake Signals
  //The dp_req_dp signal comes from the DP. The signal needs to be synchronised 
  //into the AP's clock domain before it can safely be used in the AP.
  //The ap_ack_ap signal is to be sent to the DP and needs to be driven by
  //a CDC-safe launch flop.
// ----------------------------------------------------------------------------
  cm0_dap_cdc_capt_sync 
    #(.PRESENT (PRESENT))
    u_dp_req_sync (
      .SYNCRSTn     (apreset_n),
      .SYNCCLK      (dclk),
      .SYNCDI       (dp_req_dp),
      .SE           (SE),
      .SYNCDO       (dp_req_ap)
    );

  cm0_dap_cdc_send_reset
    #(.PRESENT    (PRESENT))
    u_reg_ap_ack
    ( .REGCLK     (dclk),
      .REGRESETn  (apreset_n),
      .REGEN      (ap_ack_load),
      .REGDI      (dp_req_ap),
      .SE         (SE),
      .REGDO      (ap_ack_ap) );

// ----------------------------------------------------------------------------
// Registers
  //NB The registers are not reset, as by definition they are only used to
  //transfer data and must therefore have been loaded with useful data before
  //they are read.
  //The registers will have their output connected to logic in the other
  //clock domain, so care must be taken that the output does not glitch when
  //the input is not enabled. To ensure this, specific "CDC-Safe" registers
  //are used which are instantiated as a separate module.
// ----------------------------------------------------------------------------

  // - ap_data Launch
  cm0_dap_cdc_send_data
    #(.PRESENT  (PRESENT))
    u_reg_ap_data
    ( .REGCLK        (dclk),
      .RARREGRESETn  (rar_apreset_n),
      .REGEN         (ap_wr_en),
      .REGDI         (ap_data_ap),
      .SE            (SE),
      .REGDO         (ap_data) );

  // - ap_err
  cm0_dap_cdc_send
    #(.PRESENT  (PRESENT))
    u_reg_ap_err
    ( .REGCLK        (dclk),
      .RARREGRESETn  (rar_apreset_n),
      .REGEN         (ap_wr_en),
      .REGDI         (ap_err_ap),
      .SE            (SE),
      .REGDO         (ap_err) );

// ----------------------------------------------------------------------------
// Assign Outputs
  //Note that because AP domain outputs are connected to DP domain inputs
  //(and vice-versa), the outputs are masked by a control signal in the
  //output domain to avoid glitches. This masking is performed by
  //a "CDC-Safe" AND gate, i.e. one which ensures that if one of the inputs
  //is low, then changes on the other input do not cause glitches on the
  //outputs. To ensure that this requirement can be met in implementation,
  //the mask is instantiated as a separate module.
// ----------------------------------------------------------------------------

  //AP Outputs
  // - dp_data_ap
  cm0_dap_cdc_comb_and_data
    #(.PRESENT (PRESENT)) 
    u_mask_dp_data
    ( .DATAIN   (dp_data),
      .MASKn    (ap_out_en),
      .DATAOUT  (dp_data_ap));

  // - dp_regaddr_ap
  cm0_dap_cdc_comb_and_addr
    #(.PRESENT (PRESENT)) 
    u_mask_dp_regaddr
    ( .DATAIN   (dp_regaddr),
      .MASKn    (ap_out_en),
      .DATAOUT  (dp_regaddr_ap));

  // - dp_rnw_ap
  cm0_dap_cdc_comb_and
    #(.PRESENT (PRESENT))
    u_mask_dp_rnw
    ( .DATAIN   (dp_rnw),
      .MASKn    (ap_out_en),
      .DATAOUT  (dp_rnw_ap));

// ----------------------------------------------------------------------------
// Assertions
// ----------------------------------------------------------------------------
`ifdef ARM_ASSERT_ON
  `include "std_ovl_defines.h"

  // - ap_wr_en[3:0]
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "ap_wr_en must never be x")
    u_x_check_ap_wr_en
    ( .clk        (dclk),
      .reset_n    (apreset_n),
      .qualifier  (1'b1),
      .test_expr  (ap_wr_en));

`endif
endmodule
