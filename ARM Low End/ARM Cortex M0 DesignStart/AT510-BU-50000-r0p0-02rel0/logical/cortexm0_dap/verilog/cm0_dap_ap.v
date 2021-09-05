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

module cm0_dap_ap
  ( dclk,     apreset_n,  deviceen,
    slvrdata, slvwdata,   slvaddr, slvtrans, slvwrite,
    slvready, slvresp, slvsize, ap_base_reg,
    cm0_dap_dp_to_ap, cm0_dap_ap_to_dp,
    ecorevnum,
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
  //Clocks, Resets & Enables
  input         dclk;
  input         apreset_n;
  input         deviceen;
  input  [31:0] slvrdata;
  input         slvready;
  input         slvresp;
  output [31:0] slvwdata;
  output [31:0] slvaddr;
  output  [1:0] slvtrans;
  output        slvwrite;
  output  [1:0] slvsize;
  input  [31:0] ap_base_reg;

  //Internal DAP IO
  input    [37:0]  cm0_dap_dp_to_ap;
  output   [33:0]  cm0_dap_ap_to_dp;

  //Configurability IO
  input [3:0]   ecorevnum;

  // Scan Enable for DFT
  input         SE;

// ----------------------------------------------------------------------------
// Signal Declarations
// ----------------------------------------------------------------------------
  //Outputs To Top Level
  wire   [31:0] ap_data;
  wire          ap_err;
  wire          ap_ack_ap;

  //Connections Between Internal Blocks
  wire   [31:0] dp_data_ap;
  wire    [3:0] dp_regaddr_ap;
  wire          dp_rnw_ap;
  wire   [31:0] ap_data_ap;
  wire          ap_err_ap;
  wire          ap_wr_en;
  wire          ap_out_en;
  wire          dp_req_ap;
  wire          ap_ack_load;

  // Bus Unpacking
  wire   [31:0] dp_data;
  wire   [3:0]  dp_regaddr;
  wire          dp_rnw;
  wire          dp_req_dp;

//------------------------------------------------------------------------------
// Remove AP If Not Present
//------------------------------------------------------------------------------
  //cfg_presnt is set when the AP is present
  wire          cfg_presnt = (PRESENT != 0);

  assign        slvwdata = cfg_presnt ? dp_data_ap : {32{1'b0}};

// -----------------------------------------------------------------------------
// Domain Crossing Buses
// -----------------------------------------------------------------------------

  // To facilitate tool workflow, signals crossing the power domain boundary
  // from the AP (Debug Power Domain) to the DP (DP Power Domain) are bundled
  // into a bus to be passed across the boundary as a single signal.
  assign cm0_dap_ap_to_dp  = {
                               ap_data,    // [33:2]
                               ap_err,     // [1]
                               ap_ack_ap   // [0]
                             };

  // Unpack signals from incoming bus
  assign
  {
    dp_rnw,
    dp_regaddr,
    dp_data,
    dp_req_dp
  }
  = cm0_dap_dp_to_ap;

//------------------------------------------------------------------------------
// Instantiate AP Modules
//------------------------------------------------------------------------------
  //Instantiate AP Bus Master
  cm0_dap_ap_mast
    #(.PRESENT  (PRESENT),
      .RAR      (RAR))
    u_cm0_dap_ap_mast
    (
      .dclk             (dclk),
      .apreset_n        (apreset_n),
      .deviceen_i       (deviceen),
      .dp_data_ap_i     (dp_data_ap),
      .dp_regaddr_ap_i  (dp_regaddr_ap),
      .dp_rnw_ap_i      (dp_rnw_ap),
      .dp_req_ap_i      (dp_req_ap),
      .slvrdata_i       (slvrdata),
      .slvready_i       (slvready),
      .slvresp_i        (slvresp),
      .ap_data_ap_o     (ap_data_ap),
      .ap_out_en_o      (ap_out_en),
      .ap_wr_en_o       (ap_wr_en),
      .ap_err_ap_o      (ap_err_ap),
      .ap_ack_ap_i      (ap_ack_ap),
      .ap_ack_load_o    (ap_ack_load),
      .slvaddr_o        (slvaddr),
      .slvtrans_o       (slvtrans),
      .slvwrite_o       (slvwrite),
      .slvsize_o        (slvsize),
      .ap_base_reg_i    (ap_base_reg),
      .ecorevnum_i      (ecorevnum)
    );

  //Instantiate Transfer block to pass data between AP and DP across clock
  //boundary
  cm0_dap_ap_cdc
    #(.PRESENT  (PRESENT),
      .RAR      (RAR))
    u_cm0_dap_ap_cdc
    (
      .dclk             (dclk),
      .apreset_n        (apreset_n),
      .dp_data_i        (dp_data),
      .dp_regaddr_i     (dp_regaddr),
      .dp_rnw_i         (dp_rnw),
      .ap_data_ap_i     (ap_data_ap),
      .ap_err_ap_i      (ap_err_ap),
      .ap_wr_en_i       (ap_wr_en),
      .ap_out_en_i      (ap_out_en),
      .dp_req_dp_i      (dp_req_dp),
      .ap_data_o        (ap_data),
      .ap_err_o         (ap_err),
      .dp_data_ap_o     (dp_data_ap),
      .dp_regaddr_ap_o  (dp_regaddr_ap),
      .dp_rnw_ap_o      (dp_rnw_ap),
      .dp_req_ap_o      (dp_req_ap),
      .ap_ack_ap_o      (ap_ack_ap),
      .ap_ack_load_i    (ap_ack_load),
      .SE               (SE)
    );

endmodule
