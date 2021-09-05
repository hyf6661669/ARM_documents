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
//      Checked In          : $Date: 2009-03-09 12:09:16 +0000 (Mon, 09 Mar 2009) $
//
//      Revision            : $Revision: 103273 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 DEBUG SLAVE PORT BUS INFERFACE UNIT
//-----------------------------------------------------------------------------

module cm0_dbg_if
  #(parameter CBAW   = 0,
    parameter AHBSLV = 1,
    parameter DBG    = 1,
    parameter RAR    = 0)

   (input  wire        dclk,            // debug clock
    input  wire        dbg_reset_n,     // debug reset

    output wire [31:0] slv_rdata_o,     // SLV port read-data
    output wire        slv_ready_o,     // SLV port ready
    output wire        slv_resp_o,      // SLV port error response

    output wire [31:0] dif_addr_o,      // debugger address to matrix
    output wire        dif_dphase_o,    // debugger in data-phase
    output wire [ 1:0] dif_size_o,      // debugger size to matrix
    output wire        dif_trans_o,     // debugger transaction request
    output wire [31:0] dif_wdata_o,     // debugger write-data to AHB/NVIC
    output wire        dif_write_o,     // debugger write not read

    input  wire        hready_i,        // AHB ready / core advance
    input  wire [31:0] slv_addr_i,      // SLV port address
    input  wire [ 1:0] slv_size_i,      // SLV port transaction size
    input  wire [ 1:0] slv_trans_i,     // SLV port transaction
    input  wire [31:0] slv_wdata_i,     // SLV port write-data
    input  wire        slv_write_i,     // SLV port write not read

    input  wire [31:0] bpu_hrdata_i,    // breakpoint unit read-data
    input  wire [31:0] dsl_hrdata_i,    // CoreSight ID read-data
    input  wire [31:0] dbg_hrdata_i,    // debug control read-data
    input  wire [31:0] dwt_hrdata_i,    // watchpoint unit read-data
    input  wire        mtx_dif_slot_i,  // matrix address slot for debugger
    input  wire [31:0] mtx_dif_rdata_i, // matrix read-data from AHB/NVIC
    input  wire        mtx_dif_resp_i); // matrix error response from AHB

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire        cfg_ahbslv = (CBAW == 0) ? (AHBSLV != 0) : 1'bZ;
   wire        cfg_dbg    = (CBAW == 0) ? (DBG != 0)    : 1'bZ;
   wire        cfg_rar    = (CBAW == 0) ? (RAR != 0)    : 1'bZ;

   wire        dif_en     = cfg_ahbslv | cfg_dbg;

   // ------------------------------------------------------------
   // Register the absolute minimum from the slave port
   // ------------------------------------------------------------

   reg         slv_trans_r; // registered SLV trans[1]
   reg  [31:0] slv_addr_r;  // registered SLV address
   reg         slv_write_r; // registered SLV write
   reg  [ 1:0] slv_size_r;  // registered SLV size

   reg         dphase;      // in debug data-phase
   reg         stall;       // prevent transaction request

   // ------------------------------------------------------------
   // Mask inputs based upon configuration
   // ------------------------------------------------------------

   wire [31:0] slv_addr   = dif_en ? slv_addr_i      : 32'b0;
   wire [ 1:0] slv_size   = dif_en ? slv_size_i      :  2'b0;
   wire        slv_trans  = dif_en ? slv_trans_i[1]  :  1'b0;
   wire [31:0] slv_wdata  = dif_en ? slv_wdata_i     : 32'b0;
   wire        slv_write  = dif_en ? slv_write_i     :  1'b0;

   wire        mtx_slot   = dif_en ? mtx_dif_slot_i  :  1'b0;
   wire [31:0] mtx_rdata  = dif_en ? mtx_dif_rdata_i : 32'b0;
   wire        mtx_resp   = dif_en ? mtx_dif_resp_i  :  1'b0;
   wire        hready     = dif_en ? hready_i        :  1'b0;

   wire [31:0] dwt_hrdata = dif_en ? dwt_hrdata_i    : 32'b0;
   wire [31:0] dsl_hrdata = dif_en ? dsl_hrdata_i    : 32'b0;
   wire [31:0] bpu_hrdata = dif_en ? bpu_hrdata_i    : 32'b0;
   wire [31:0] dbg_hrdata = dif_en ? dbg_hrdata_i    : 32'b0;

   // ------------------------------------------------------------
   // Select either registered or non-register signal variants
   // ------------------------------------------------------------

   wire        raw_trans = cfg_ahbslv ? slv_trans_r : slv_trans;
   wire [31:0] dif_addr  = cfg_ahbslv ? slv_addr_r  : slv_addr;
   wire [ 1:0] dif_size  = cfg_ahbslv ? slv_size_r  : slv_size;
   wire        dif_write = cfg_ahbslv ? slv_write_r : slv_write;

   // ------------------------------------------------------------
   // Generate extra reset signal for reset-all-registers config
   // ------------------------------------------------------------

   wire        rar_reset_n = cfg_rar ? dbg_reset_n : 1'b1;

   // ------------------------------------------------------------
   // Merge debug component read data onto AHB/NVIC read data
   // ------------------------------------------------------------

   wire [31:0] slv_rdata = ( dwt_hrdata |  // watchpoint unit
                             bpu_hrdata |  // breakpoint unit
                             dbg_hrdata |  // debug control
                             dsl_hrdata |  // CoreSight IDs
                             mtx_rdata  ); // AHB, PPB, NVIC etc.

   // ------------------------------------------------------------
   // Monitor the CPUs HRESP for errors
   // ------------------------------------------------------------

   // this module sees the raw AHB HRESP signal; combining this
   // with the debug "dphase" signal, we can determine that the
   // core is experiencing an error; record this to allow us to
   // stall a subsequent transaction for AHB compliance reasons

   wire        cpu_resp  = mtx_resp & ~dphase;
   wire        stall_nxt = cpu_resp;
   wire        stall_en  = cpu_resp | stall;

   // ------------------------------------------------------------
   // Generate transaction request for bus-matrix
   // ------------------------------------------------------------

   // request a transaction if we have a transaction pending as
   // long as a core transaction hasn't just received an HRESP
   // error

   wire        dif_trans = raw_trans & ~stall;

   // the request is validated by the matrix on the first cycle
   // in which the core does not also wish to perform one,
   // indicated by mtx_slot; use this to determine when the debug
   // interface enters its data-phase

   wire        valid_trans = dif_trans & mtx_slot;

   wire        dphase_nxt = valid_trans;
   wire        dphase_en  = (valid_trans | dphase) & hready;

   // ------------------------------------------------------------
   // Derive slave-port ready and resp signals
   // ------------------------------------------------------------

   // ready back to the slave-port depends on the port
   // configuration, for both registered and combinatorial,
   // the raw AHB ready is provided during the data-phase;
   // for register address phase, ready is simply whether there
   // is space in the register-slice; for combinatorial
   // address, it is whether there is an address slot in the
   // matrix which isn't following a core HRESP error

   wire        com_ready = hready & mtx_slot & ~stall;
   wire        reg_ready = ~slv_trans_r;
   wire        new_ready = cfg_ahbslv ? reg_ready : com_ready;

   wire        slv_ready = dphase ? hready : new_ready;

   // only HRESP responses generated by the SLV port are fed
   // back to it; simply qualify with dphase

   wire        slv_resp  = dphase & mtx_resp;

   // ------------------------------------------------------------
   // Control registers for AHB slave port configuration
   // ------------------------------------------------------------

   // load a new transaction from the SLV port whenever we have
   // a transaction acknowledge by the matrix, or when a new
   // SLV transaction arrives whilst the port is ready

   wire        slv_trans_r_nxt = slv_trans & slv_ready;

   wire        slv_trans_en    = ( slv_trans_r_nxt |
                                   valid_trans & hready );

   // for a new transaction we also need to register all of the
   // associated control signals

   wire        slv_ctl_en      = slv_trans_r_nxt;

   // ------------------------------------------------------------
   // Sequential updates
   // ------------------------------------------------------------

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       stall <= 1'b1;
     else if(dif_en ? stall_en : 1'b0)
       stall <= stall_nxt;

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       dphase <= 1'b0;
     else if(dif_en ? dphase_en : 1'b0)
       dphase <= dphase_nxt;

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       slv_trans_r <= 1'b0;
     else if(cfg_ahbslv ? slv_trans_en : 1'b0)
       slv_trans_r <= slv_trans_r_nxt;

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n) begin
       slv_addr_r  <= {32{1'b1}};
       slv_size_r  <= {2{1'b1}};
       slv_write_r <= 1'b1;
     end else if(cfg_ahbslv ? slv_ctl_en : 1'b0) begin
       slv_addr_r  <= slv_addr_i[31:0];
       slv_size_r  <= slv_size_i[1:0];
       slv_write_r <= slv_write_i;
     end

   // ------------------------------------------------------------
   // Output assignments
   // ------------------------------------------------------------

   assign      dif_trans_o  = dif_en ? dif_trans :  1'b0;
   assign      dif_addr_o   = dif_en ? dif_addr  : 32'b0;
   assign      dif_size_o   = dif_en ? dif_size  :  2'b0;
   assign      dif_write_o  = dif_en ? dif_write :  1'b0;
   assign      dif_wdata_o  = dif_en ? slv_wdata : 32'b0;
   assign      dif_dphase_o = dif_en ? dphase    :  1'b0;

   assign      slv_rdata_o  = dif_en ? slv_rdata : 32'b0;
   assign      slv_ready_o  = dif_en ? slv_ready :  1'b0;
   assign      slv_resp_o   = dif_en ? slv_resp  :  1'b0;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,4,`OVL_ASSERT,"Register enables must never be X")
       u_asrt_reg_en_x
         (.clk       (dclk),
          .reset_n   (dbg_reset_n),
          .qualifier (1'b1),
          .test_expr ({ stall_en,
                        dphase_en,
                        slv_trans_en,
                        slv_ctl_en }));

    // ------------------------------------------------------------

`endif

endmodule // cm0_dbg_if

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
