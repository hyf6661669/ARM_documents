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
//      Checked In          : $Date: 2008-10-30 20:30:12 +0000 (Thu, 30 Oct 2008) $
//
//      Revision            : $Revision: 92875 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_dp
  ( swclktck, dpreset_n,
    n_trst,   tdo,      n_tdoen,   tdi,
    swditms,  swdo,   swdoen,
    cdbgpwrupreq,       cdbgrstreq,         csyspwrupreq,
    csyspwrupack_i,  cdbgpwrupack,  cdbgrstack_i,
    cm0_dap_ap_to_dp, cm0_dap_dp_to_ap,
    ecorevnum,
    // Scan Enable for DFT
    SE
  );

// ----------------------------------------------------------------------------
// Configurablility
// ----------------------------------------------------------------------------
  parameter DBG = 1;        //1 -> DAP Present, 0 -> DAP Not Present
  parameter JTAGnSW = 0;    //1 -> JTAG, 0 -> SW
  parameter RAR = 0;        //1 -> Resets on All Registers, 0 -> not RAR

// ----------------------------------------------------------------------------
// Port Definitions
// ----------------------------------------------------------------------------
  //External IO
  input           swclktck;
  input           dpreset_n;
  input           n_trst;
  input           tdi;
  input           swditms;
  input           csyspwrupack_i;
  input           cdbgpwrupack;
  input           cdbgrstack_i;
  output          tdo;
  output          n_tdoen;
  output          swdo;
  output          swdoen;
  output          cdbgpwrupreq;
  output          csyspwrupreq;
  output          cdbgrstreq;
  //Internal DAP IO
  input   [33:0]  cm0_dap_ap_to_dp;
  output  [37:0]  cm0_dap_dp_to_ap;

  //Configurability IO
  input    [3:0]  ecorevnum;

  // Scan Enable for DFT
  input           SE;

// ----------------------------------------------------------------------------
// Signal Declarations
// ----------------------------------------------------------------------------
  //Module Outputs Selected Between JTAG & SW
  wire          tdo;
  wire          n_tdoen;
  wire          swdo;
  wire          swdoen;
  wire          cdbgpwrupreq;
  wire          csyspwrupreq;
  wire          cdbgrstreq;
  wire   [31:0] dp_data_dp;
  wire    [3:0] dp_regaddr_dp;
  wire          dp_rnw_dp;
  wire   [31:0] dp_data;
  wire    [3:0] dp_regaddr;
  wire          dp_rnw;
  wire          dp_wr_en;
  wire          dp_out_en;
  wire          dp_err_out_en;
  wire          dp_req_dp;
  wire          dp_req_dp_load;
  wire          dp_req_dp_next;
  wire          ap_err_dp;
  wire          ap_ack_dp;
  wire   [31:0] ap_data_dp;
  wire          dp_cs_cdbgpwrupreq;
  wire          dp_cs_cdbgpwrupack;
  wire          reset_dp_ap_handshake;

  //Module Outputs from JTAG & SW to be Selected Between
  wire          jt_tdo;
  wire          jt_n_tdoen;
  wire          sw_swdo;
  wire          sw_swdoen;
  wire          jt_dp_cs_cdbgpwrupreq;
  wire          sw_dp_cs_cdbgpwrupreq;
  wire          jt_csyspwrupreq;
  wire          sw_csyspwrupreq;
  wire          jt_cdbgrstreq;
  wire          sw_cdbgrstreq;
  wire   [31:0] jt_dp_data_dp;
  wire   [31:0] sw_dp_data_dp;
  wire    [3:0] jt_dp_regaddr_dp;
  wire    [3:0] sw_dp_regaddr_dp;
  wire          jt_dp_rnw_dp;
  wire          sw_dp_rnw_dp;
  wire          jt_dp_wr_en;
  wire          sw_dp_wr_en;
  wire          jt_dp_out_en;
  wire          sw_dp_out_en;
  wire          jt_dp_err_out_en;
  wire          sw_dp_err_out_en;
  wire          jt_dp_req_dp_load;
  wire          sw_dp_req_dp_load;
  wire          jt_dp_req_dp_next;
  wire          sw_dp_req_dp_next;

//------------------------------------------------------------------------------
// Remove DP If Not Present
//------------------------------------------------------------------------------
  //cfg_dbg is set when the DAP is present
  wire          cfg_dbg = (DBG != 0);

  //Tie Inputs to Inactive State When DAP Not Present
  wire          csyspwrupack      = cfg_dbg ? csyspwrupreq        : 1'b0;
  wire          cdbgrstack        = cfg_dbg ? cdbgrstack_i        : 1'b0;
  wire          ap_err;
  wire          ap_ack_ap;
  wire   [31:0] ap_data;

//------------------------------------------------------------------------------
// Select Between JTAG & SW
//------------------------------------------------------------------------------
  //cfg_jtag is set when JTAG is selected, clear when SW is selected
  wire          cfg_jtag = (JTAGnSW != 0);

  //Most input signals to cm0_dap_dp are connected to two internal signals:
  //one to each DP. These input signal pairs are muxed such that one signal
  //is always tied-off depending on which DP is selected. Certain signals are
  //only used by a single DP (e.g. tdi); these are tied-off in the usual way.
  //Inputs to the JTAG DP are prefixed jt_, inputs to the SW DP are prefixed
  //sw_.
  wire jt_tdi               =   cfg_jtag  ? tdi                 : 1'b0;
  wire jt_tms               =   cfg_jtag  ? swditms             : 1'b0;
  wire sw_swdi              = (!cfg_jtag) ? swditms             : 1'b0;
  wire jt_csyspwrupack_sync =   cfg_jtag  ? csyspwrupack        : 1'b0;
  wire sw_csyspwrupack_sync = (!cfg_jtag) ? csyspwrupack        : 1'b0;
  wire jt_dp_cs_cdbgpwrupack =   cfg_jtag  ? dp_cs_cdbgpwrupack : 1'b0;
  wire sw_dp_cs_cdbgpwrupack = (!cfg_jtag) ? dp_cs_cdbgpwrupack : 1'b0;
  wire jt_cdbgrstack_sync   =   cfg_jtag  ? cdbgrstack          : 1'b0;
  wire sw_cdbgrstack_sync   = (!cfg_jtag) ? cdbgrstack          : 1'b0;
  wire jt_ap_err_dp         =   cfg_jtag  ? ap_err_dp           : 1'b0;
  wire sw_ap_err_dp         = (!cfg_jtag) ? ap_err_dp           : 1'b0;
  wire jt_ap_ack_dp         =   cfg_jtag  ? ap_ack_dp           : 1'b0;
  wire sw_ap_ack_dp         = (!cfg_jtag) ? ap_ack_dp           : 1'b0;
  wire [31:0] jt_ap_data_dp =   cfg_jtag  ? ap_data_dp          : {32{1'b0}};
  wire [31:0] sw_ap_data_dp = (!cfg_jtag) ? ap_data_dp          : {32{1'b0}};
  wire jt_dp_req_dp         =   cfg_jtag  ? dp_req_dp           : 1'b0;
  wire sw_dp_req_dp         = (!cfg_jtag) ? dp_req_dp           : 1'b0;
  wire jt_reset_dp_ap_handshake = cfg_jtag ? reset_dp_ap_handshake : 1'b0;
  wire sw_reset_dp_ap_handshake = (!cfg_jtag) ? reset_dp_ap_handshake : 1'b0;
  wire [3:0] jt_ecorevnum   =   cfg_jtag  ? ecorevnum           : 4'b0000;
  wire [3:0] sw_ecorevnum   = (!cfg_jtag) ? ecorevnum           : 4'b0000;

  //Outputs from the separate SW & JTAG DPs, prefixed sw_ or jt_ are muxed onto
  //the relevant internal signal, which is then masked to form the output.
  assign tdo                  = cfg_jtag  ? jt_tdo      : 1'b0;
  assign n_tdoen              = cfg_jtag  ? jt_n_tdoen  : 1'b0;
  assign swdo                 = cfg_jtag  ? 1'b0        : sw_swdo;
  assign swdoen               = cfg_jtag  ? 1'b0        : sw_swdoen;
  assign dp_cs_cdbgpwrupreq   = cfg_jtag  ? jt_dp_cs_cdbgpwrupreq
                                          : sw_dp_cs_cdbgpwrupreq;
  assign csyspwrupreq         = cfg_jtag  ? jt_csyspwrupreq
                                          : sw_csyspwrupreq;
  assign cdbgrstreq           = cfg_jtag  ? jt_cdbgrstreq
                                          : sw_cdbgrstreq;
  assign dp_data_dp           = cfg_jtag  ? jt_dp_data_dp
                                          : sw_dp_data_dp;
  assign dp_regaddr_dp        = cfg_jtag  ? jt_dp_regaddr_dp
                                          : sw_dp_regaddr_dp;
  assign dp_rnw_dp            = cfg_jtag  ? jt_dp_rnw_dp
                                          : sw_dp_rnw_dp;
  assign dp_wr_en             = cfg_jtag  ? jt_dp_wr_en
                                          : sw_dp_wr_en;
  assign dp_out_en            = cfg_jtag  ? jt_dp_out_en
                                          : sw_dp_out_en;
  assign dp_err_out_en        = cfg_jtag  ? jt_dp_err_out_en
                                          : sw_dp_err_out_en;
  assign dp_req_dp_load       = cfg_jtag  ? jt_dp_req_dp_load
                                          : sw_dp_req_dp_load;
  assign dp_req_dp_next       = cfg_jtag  ? jt_dp_req_dp_next
                                          : sw_dp_req_dp_next;
// -----------------------------------------------------------------------------
// Domain Crossing Buses
// -----------------------------------------------------------------------------

  // To facilitate tool workflow, signals crossing the power domain boundary
  // from the DP (DP Power Domain) to the AP (Debug Power Domain) are bundled
  // into a bus to be passed across the boundary as a single signal.
  assign cm0_dap_dp_to_ap  = {
                               dp_rnw,         // [37]
                               dp_regaddr,     // [36:33]
                               dp_data,        // [32:1]
                               dp_req_dp       // [0]
                             };

  // Unpack signals from incoming bus
  assign
  {
    ap_data,
    ap_err,
    ap_ack_ap
  }
  = cm0_dap_ap_to_dp;

//------------------------------------------------------------------------------
// Instantiate JTAG & SW DPs
//------------------------------------------------------------------------------
  //JTAG DP
  cm0_dap_dp_jtag
    #(.DBG      (DBG),
      .JTAGnSW  (JTAGnSW),
      .RAR      (RAR))
    u_cm0_dap_dp_jtag
    ( .tck                        (swclktck),
      .dpreset_n                  (dpreset_n),
      .n_trst                     (n_trst),
      .tdi_i                      (jt_tdi),
      .tms_i                      (jt_tms),
      .csyspwrupack_sync_i        (jt_csyspwrupack_sync),
      .dp_cs_cdbgpwrupack_i       (jt_dp_cs_cdbgpwrupack),
      .cdbgrstack_sync_i          (jt_cdbgrstack_sync),
      .dp_cs_cdbgpwrupreq_o       (jt_dp_cs_cdbgpwrupreq),
      .csyspwrupreq_o             (jt_csyspwrupreq),
      .cdbgrstreq_o               (jt_cdbgrstreq),
      .tdo_o                      (jt_tdo),
      .n_tdoen_o                  (jt_n_tdoen),
      .ap_data_dp_i               (jt_ap_data_dp),
      .ap_err_dp_i                (jt_ap_err_dp),
      .ap_ack_dp_i                (jt_ap_ack_dp),
      .dp_data_dp_o               (jt_dp_data_dp),
      .dp_regaddr_dp_o            (jt_dp_regaddr_dp),
      .dp_rnw_dp_o                (jt_dp_rnw_dp),
      .dp_wr_en_o                 (jt_dp_wr_en),
      .dp_out_en_o                (jt_dp_out_en),
      .dp_err_out_en_o            (jt_dp_err_out_en),
      .dp_req_dp_i                (jt_dp_req_dp),
      .dp_req_dp_load_o           (jt_dp_req_dp_load),
      .dp_req_dp_next_o           (jt_dp_req_dp_next),
      .reset_dp_ap_handshake_i    (jt_reset_dp_ap_handshake),
      .ecorevnum_i                (jt_ecorevnum)
    );

  //SW DP
  cm0_dap_dp_sw
    #(.DBG      (DBG),
      .JTAGnSW  (JTAGnSW),
      .RAR      (RAR))
    u_cm0_dap_dp_sw
    ( .swclk                      (swclktck),
      .dpreset_n                  (dpreset_n),
      .swdi_i                     (sw_swdi),
      .csyspwrupack_sync_i        (sw_csyspwrupack_sync),
      .dp_cs_cdbgpwrupack_i       (sw_dp_cs_cdbgpwrupack),
      .cdbgrstack_sync_i          (sw_cdbgrstack_sync),
      .dp_cs_cdbgpwrupreq_o       (sw_dp_cs_cdbgpwrupreq),
      .csyspwrupreq_o             (sw_csyspwrupreq),
      .cdbgrstreq_o               (sw_cdbgrstreq),
      .swdo_o                     (sw_swdo),
      .swdoen_o                   (sw_swdoen),
      .ap_data_dp_i               (sw_ap_data_dp),
      .ap_err_dp_i                (sw_ap_err_dp),
      .ap_ack_dp_i                (sw_ap_ack_dp),
      .dp_data_dp_o               (sw_dp_data_dp),
      .dp_regaddr_dp_o            (sw_dp_regaddr_dp),
      .dp_rnw_dp_o                (sw_dp_rnw_dp),
      .dp_wr_en_o                 (sw_dp_wr_en),
      .dp_out_en_o                (sw_dp_out_en),
      .dp_err_out_en_o            (sw_dp_err_out_en),
      .dp_req_dp_i                (sw_dp_req_dp),
      .dp_req_dp_load_o           (sw_dp_req_dp_load),
      .dp_req_dp_next_o           (sw_dp_req_dp_next),
      .reset_dp_ap_handshake_i    (sw_reset_dp_ap_handshake),
      .ecorevnum_i                (sw_ecorevnum),
      .SE                         (SE)
    );

  // DP Half of the CDC Module
  cm0_dap_dp_cdc
    #(.PRESENT (DBG),
      .RAR     (RAR))
    u_cm0_dap_dp_cdc
    (
      .swclktck                   (swclktck),
      .dpreset_n                  (dpreset_n),
      .dp_wr_en_i                 (dp_wr_en),
      .dp_rnw_dp_i                (dp_rnw_dp),
      .dp_regaddr_dp_i            (dp_regaddr_dp),
      .dp_data_dp_i               (dp_data_dp),
      .dp_out_en_i                (dp_out_en),
      .dp_err_out_en_i            (dp_err_out_en),
      .dp_req_dp_load_i           (dp_req_dp_load),
      .dp_req_dp_next_i           (dp_req_dp_next),
      .dp_req_dp_o                (dp_req_dp),
      .dp_rnw_o                   (dp_rnw),
      .dp_regaddr_o               (dp_regaddr),
      .dp_data_o                  (dp_data),
      .ap_data_dp_o               (ap_data_dp),
      .ap_err_dp_o                (ap_err_dp),
      .ap_data_i                  (ap_data),
      .ap_err_i                   (ap_err),
      .ap_ack_ap_i                (ap_ack_ap),
      .ap_ack_dp_o                (ap_ack_dp),
      .SE                         (SE)
    );

  // Power-up Handshaking Module
  cm0_dap_dp_pwr
    #(.PRESENT (DBG))
    u_cm0_dap_dp_pwr
    (
      .swclktck                   (swclktck),
      .dpreset_n                  (dpreset_n),
      .dp_cs_cdbgpwrupreq_i       (dp_cs_cdbgpwrupreq),
      .dp_cs_cdbgpwrupack_o       (dp_cs_cdbgpwrupack),
      .cdbgpwrupreq_o             (cdbgpwrupreq),
      .cdbgpwrupack_i             (cdbgpwrupack),
      .dp_req_dp_i                (dp_req_dp),
      .ap_ack_dp_i                (ap_ack_dp),
      .reset_dp_ap_handshake_o    (reset_dp_ap_handshake),
      .SE                         (SE)
    );

endmodule
