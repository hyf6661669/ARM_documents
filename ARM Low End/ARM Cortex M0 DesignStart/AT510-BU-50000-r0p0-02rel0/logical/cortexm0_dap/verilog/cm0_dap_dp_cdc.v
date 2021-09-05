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

module cm0_dap_dp_cdc
  (
  // Clock and Reset
  swclktck, dpreset_n,
  // Control from DP domain
  dp_wr_en_i, dp_out_en_i, dp_err_out_en_i,
  // Data from DP domain
  dp_rnw_dp_i, dp_regaddr_dp_i, dp_data_dp_i,
  // Data to DP domain
  ap_data_dp_o, ap_err_dp_o,
  // Control from AP domain
  // Data from AP domain
  ap_data_i, ap_err_i,
  // Data to AP domain
  dp_rnw_o, dp_regaddr_o, dp_data_o,
  // Handshake
  dp_req_dp_load_i, dp_req_dp_next_i, dp_req_dp_o,
  ap_ack_ap_i, ap_ack_dp_o,
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

  // Inputs
  input           swclktck;
  input           dpreset_n;
  input           dp_wr_en_i;
  input           dp_rnw_dp_i;
  input     [3:0] dp_regaddr_dp_i;
  input    [31:0] dp_data_dp_i;
  input           dp_out_en_i;
  input           dp_err_out_en_i;
  input [31:0]    ap_data_i;
  input           ap_err_i;
  input           ap_ack_ap_i;
  input           dp_req_dp_load_i;
  input           dp_req_dp_next_i;
  input           SE;

  // Outputs
  output  [31:0]    ap_data_dp_o;
  output            ap_err_dp_o;
  output            ap_ack_dp_o;
  output            dp_rnw_o;
  output     [3:0]  dp_regaddr_o;
  output    [31:0]  dp_data_o;
  output            dp_req_dp_o;
  
// ----------------------------------------------------------------------------
// Signal Declarations
// ----------------------------------------------------------------------------

  wire          dp_wr_en_i;
  wire          dp_rnw_dp_i;
  wire    [3:0] dp_regaddr_dp_i;
  wire   [31:0] dp_data_dp_i;
  wire          dp_out_en_i;
  wire          dp_err_out_en_i;
  wire [31:0]   ap_data_i;
  wire          ap_err_i;
  wire          ap_ack_ap_i;
  wire          dp_req_dp_load_i;
  wire          dp_req_dp_next_i;

  wire [31:0]   ap_data_dp_o;
  wire          ap_err_dp_o;
  wire          ap_ack_dp_o;
  wire          dp_rnw_o;
  wire   [3:0]  dp_regaddr_o;
  wire  [31:0]  dp_data_o;
  wire          dp_req_dp_o;

  wire          dp_out_en;
  wire          dp_err_out_en;
  wire [31:0]   ap_data;
  wire          ap_err;
  wire          ap_ack_ap;
  wire          dp_req_dp_load;
  wire          dp_req_dp_next;

  wire          dp_wr_en;
  wire          dp_rnw_dp;
  wire    [3:0] dp_regaddr_dp;
  wire   [31:0] dp_data_dp;
  wire [31:0]   ap_data_dp;
  wire          ap_err_dp;
  wire          ap_ack_dp;
  wire          dp_rnw;
  wire   [3:0]  dp_regaddr;
  wire  [31:0]  dp_data;
  wire          dp_req_dp;

  // RAR reset signals
  wire          rar_dpreset_n;

//------------------------------------------------------------------------------
// Remove Module If DP Not Present
//------------------------------------------------------------------------------

  wire  cfg_presnt = (PRESENT != 0);
  wire  cfg_rar    = (RAR != 0);

  // Mask Inputs
  assign dp_wr_en           = cfg_presnt ? dp_wr_en_i           : 1'b0;
  assign dp_rnw_dp          = cfg_presnt ? dp_rnw_dp_i          : 1'b0;
  assign dp_regaddr_dp      = cfg_presnt ? dp_regaddr_dp_i      : {4{1'b0}};
  assign dp_data_dp         = cfg_presnt ? dp_data_dp_i         : {32{1'b0}};
  assign dp_out_en          = cfg_presnt ? dp_out_en_i          : 1'b0;
  assign dp_err_out_en      = cfg_presnt ? dp_err_out_en_i      : 1'b0;
  assign dp_req_dp_load     = cfg_presnt ? dp_req_dp_load_i     : 1'b0;
  assign dp_req_dp_next     = cfg_presnt ? dp_req_dp_next_i     : 1'b0;
  assign ap_ack_ap          = cfg_presnt ? ap_ack_ap_i          : 1'b0; 
  assign ap_data            = cfg_presnt ? ap_data_i            : {32{1'b0}};
  assign ap_err             = cfg_presnt ? ap_err_i             : 1'b0;
  
  // Mask Outputs
  assign ap_ack_dp_o        = cfg_presnt ? ap_ack_dp            : 1'b0;
  assign ap_data_dp_o       = cfg_presnt ? ap_data_dp           : {32{1'b0}};
  assign ap_err_dp_o        = cfg_presnt ? ap_err_dp            : 1'b0;
  assign dp_rnw_o           = cfg_presnt ? dp_rnw               : 1'b0;
  assign dp_regaddr_o       = cfg_presnt ? dp_regaddr           : {4{1'b0}};
  assign dp_data_o          = cfg_presnt ? dp_data              : {32{1'b0}};
  assign dp_req_dp_o        = cfg_presnt ? dp_req_dp            : 1'b0;

  // RAR Resets
  assign rar_dpreset_n      = cfg_rar    ? dpreset_n        : 1'b1;

// ----------------------------------------------------------------------------
// Handshake Signal
// The ap_ack_ap signal comes from the AP. The signal needs to be synchronised 
// into the DP clock domain before it can be used in the DP block.
// The dp_req_dp signal goes to the AP and needs to be driven by a CDC-safe
// launch flop.
// ----------------------------------------------------------------------------
  cm0_dap_cdc_capt_sync 
    #(.PRESENT (PRESENT))
    u_ap_ack_sync (
      .SYNCRSTn     (dpreset_n),
      .SYNCCLK      (swclktck),
      .SYNCDI       (ap_ack_ap),
      .SE           (SE),
      .SYNCDO       (ap_ack_dp)
  );
  
  cm0_dap_cdc_send_reset
    #(.PRESENT    (PRESENT))
    u_reg_dp_req_dp (
      .REGCLK     (swclktck),
      .REGRESETn  (dpreset_n),
      .REGEN      (dp_req_dp_load),
      .REGDI      (dp_req_dp_next),
      .SE         (SE),
      .REGDO      (dp_req_dp)
  );

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

  // - dp_data Launch
  cm0_dap_cdc_send_data
    #(.PRESENT  (PRESENT))
    u_reg_dp_data
    ( .REGCLK        (swclktck),
      .RARREGRESETn  (rar_dpreset_n),
      .REGEN         (dp_wr_en),
      .REGDI         (dp_data_dp),
      .SE            (SE),
      .REGDO         (dp_data) );

  // - dp_regaddr Launch
  cm0_dap_cdc_send_addr
    #(.PRESENT  (PRESENT))
    u_reg_dp_regaddr
    ( .REGCLK        (swclktck),
      .RARREGRESETn  (rar_dpreset_n),
      .REGEN         (dp_wr_en),
      .REGDI         (dp_regaddr_dp),
      .SE            (SE),
      .REGDO         (dp_regaddr) );

  // - dp_rnw Launch
  cm0_dap_cdc_send
    #(.PRESENT  (PRESENT))
    u_reg_dp_rnw
    ( .REGCLK        (swclktck),
      .RARREGRESETn  (rar_dpreset_n),
      .REGEN         (dp_wr_en),
      .REGDI         (dp_rnw_dp),
      .SE            (SE),
      .REGDO         (dp_rnw) );

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

  //DP Outputs
  // - ap_data_dp
  cm0_dap_cdc_comb_and_data
    #(.PRESENT      (PRESENT))
    u_mask_ap_data_ap
    ( .DATAIN   (ap_data),
      .MASKn    (dp_out_en),
      .DATAOUT  (ap_data_dp));

  // - ap_err_dp
  cm0_dap_cdc_comb_and
    #(.PRESENT      (PRESENT)) 
    u_mask_ap_err_ap
    ( .DATAIN   (ap_err),
      .MASKn    (dp_err_out_en),
      .DATAOUT  (ap_err_dp));


// ----------------------------------------------------------------------------
// Assertions
// ----------------------------------------------------------------------------
`ifdef ARM_ASSERT_ON
  `include "std_ovl_defines.h"

  //Check enable terms to flops are never unknown
  // - dp_wr_en
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_wr_en must never be x")
    u_x_check_dp_wr_en
    ( .clk        (swclktck),
      .reset_n    (dpreset_n),
      .qualifier  (1'b1),
      .test_expr  (dp_wr_en));

`endif

endmodule
