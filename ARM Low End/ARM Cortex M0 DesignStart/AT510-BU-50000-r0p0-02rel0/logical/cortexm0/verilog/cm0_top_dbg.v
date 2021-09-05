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
//      Checked In          : $Date: 2009-03-04 12:54:11 +0000 (Wed, 04 Mar 2009) $
//
//      Revision            : $Revision: 102725 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 DEBUG SUB-MODULE INTERCONNECT LEVEL
//-----------------------------------------------------------------------------

module cm0_top_dbg
  #(parameter CBAW   = 0,
    parameter AHBSLV = 1,
    parameter BKPT   = 4,
    parameter DBG    = 1,
    parameter RAR    = 0,
    parameter WPT    = 2)

   (input  wire        dclk,               // debug clock
    input  wire        dbg_reset_n,        // debug reset

    output wire        dbg_restarted_o,    // restarted from halt
    output wire        halted_o,           // core halted for debug
    output wire [31:0] slv_rdata_o,        // SLV port read-data
    output wire        slv_ready_o,        // SLV port ready
    output wire        slv_resp_o,         // SLV port error response

    input  wire        dbg_restart_i,      // core restart request
    input  wire        dbg_ext_req_i,      // external debug request
    input  wire [15:0] eco_rev_num_19_4_i, // revision number ECO bits
    input  wire [31:0] slv_addr_i,         // SLV address
    input  wire [ 1:0] slv_size_i,         // SLV size
    input  wire [ 1:0] slv_trans_i,        // SLV transaction
    input  wire [31:0] slv_wdata_i,        // SLV write-data
    input  wire        slv_write_i,        // SLV write not read

    output wire [77:0] cm0_dbg_to_sys_o,   // channel to system domain
    input wire [113:0] cm0_sys_to_dbg_i);  // channel from system domain

   // ------------------------------------------------------------
   // Local wires
   // ------------------------------------------------------------

   wire [31:0] bpu_hrdata;    // read data from breakpoint unit
   wire        dbg_s_halt;    // S_HALT bit
   wire [31:0] dbg_hrdata;    // read data from debug control
   wire        dbg_dwt_en;    // watchpoint unit enable
   wire        dwt_event;     // watchpoint unit triggered flag
   wire [31:0] dsl_hrdata;    // read data from CoreSight IDs
   wire [ 7:0] dsl_dwt_sels;  // register selects for DWT
   wire [ 4:0] dsl_bpu_sels;  // register selects for BPU
   wire [ 3:0] dsl_dbg_sels;  // register selects for debug CTL
   wire        dsl_ppb_write; // debugger register write
   wire [31:0] dwt_hrdata;    // read data from watchpoint unit

   // ------------------------------------------------------------
   // Debug to system domain output bundling
   // ------------------------------------------------------------

   wire [ 1:0] bpu_match_o;      // breakpoint hit on top/bottom 16-bits
   wire        dbg_c_debugen_o;  // debug is enabled
   wire        dbg_c_maskints_o; // NVIC should suppress IRQs
   wire        dbg_halt_req_o;   // halt request to core
   wire        dbg_op_run_o;     // debug register read/write request
   wire [31:0] dif_addr_o;       // debugger address to matrix
   wire        dif_dphase_o;     // debugger in data-phase
   wire [ 1:0] dif_size_o;       // debugger transaction size for matrix
   wire        dif_trans_o;      // debugger transaction request
   wire [31:0] dif_wdata_o;      // debugger write-data
   wire        dif_write_o;      // debugger write request
   wire [ 1:0] dsl_cid_sels_o;   // debugger selects for core IDs
   wire        dsl_ppb_active_o; // debugger active on PPB


   assign      cm0_dbg_to_sys_o = { bpu_match_o[1:0],
                                    dbg_c_debugen_o,
                                    dbg_c_maskints_o,
                                    dbg_halt_req_o,
                                    dbg_op_run_o,
                                    dif_addr_o[31:0],
                                    dif_dphase_o,
                                    dif_size_o[1:0],
                                    dif_trans_o,
                                    dif_wdata_o[31:0],
                                    dif_write_o,
                                    dsl_cid_sels_o[1:0],
                                    dsl_ppb_active_o };

   // ------------------------------------------------------------
   // System to debug domain input un-bundling
   // ------------------------------------------------------------

   wire        alu_dbg_trans_i;      // core transaction valid for watchpoints
   wire [31:0] alu_haddr_i;          // core AHB/PPB address for watchpoints
   wire        ctl_ex_idle_i;        // core sleeping / idle
   wire        ctl_bpu_event_i;      // core executed BKPT or breakpoint
   wire        ctl_dbg_ex_last_i;    // core is retiring an instruction
   wire        ctl_dbg_ex_reset_i;   // core is in reset state
   wire        ctl_dbg_lockup_i;     // core is in LOCKUP
   wire        ctl_dwt_atomic_i;     // core is halted/exception processing
   wire        ctl_halt_ack_i;       // core has halted
   wire        ctl_hprot_i;          // data not instruction transaction
   wire        ctl_hwrite_i;         // core HWRITE for watchpoints
   wire [ 1:0] ctl_ls_size_i;        // core data-transaction size
   wire        dec_int_return_i;     // core returning from interrupt
   wire        dec_int_taken_i;      // core taking interrupt
   wire [31:0] mtx_dif_rdata_i;      // debug interface NVIC/AHB read-data
   wire        mtx_dif_resp_i;       // debug interface AHB error response
   wire        mtx_dif_slot_i;       // debug transaction request acceptable
   wire [30:0] pfu_dwt_iaex_i;       // instruction address for WPT PCSR
   wire        pfu_pipefull_i;       // core pipeline is full
   wire        psr_dbg_hardfault_i;  // core running in/entering HardFault
   wire        hready_i;             // AHB ready / core advance

   assign      { alu_dbg_trans_i,
                 alu_haddr_i[31:0],
                 ctl_ex_idle_i,
                 ctl_bpu_event_i,
                 ctl_dbg_ex_last_i,
                 ctl_dbg_ex_reset_i,
                 ctl_dbg_lockup_i,
                 ctl_dwt_atomic_i,
                 ctl_halt_ack_i,
                 ctl_hprot_i,
                 ctl_hwrite_i,
                 ctl_ls_size_i[1:0],
                 dec_int_return_i,
                 dec_int_taken_i,
                 mtx_dif_rdata_i[31:0],
                 mtx_dif_resp_i,
                 mtx_dif_slot_i,
                 pfu_dwt_iaex_i[30:0],
                 pfu_pipefull_i,
                 psr_dbg_hardfault_i,
                 hready_i } = cm0_sys_to_dbg_i;

   // ------------------------------------------------------------
   // Debug control logic instantiation
   // ------------------------------------------------------------

   cm0_dbg_ctl
     #(.CBAW(CBAW), .DBG(DBG), .RAR(RAR))
       u_ctl
         (.dclk                   (dclk),
          .dbg_reset_n            (dbg_reset_n),

          .halted_o               (halted_o),
          .dbg_restarted_o        (dbg_restarted_o),

          .dbg_c_debugen_o        (dbg_c_debugen_o),
          .dbg_c_maskints_o       (dbg_c_maskints_o),
          .dbg_dwt_en_o           (dbg_dwt_en),
          .dbg_halt_req_o         (dbg_halt_req_o),
          .dbg_hrdata_o           (dbg_hrdata[31:0]),
          .dbg_op_run_o           (dbg_op_run_o),
          .dbg_s_halt_o           (dbg_s_halt),

          .dbg_restart_i          (dbg_restart_i),
          .dbg_ext_req_i          (dbg_ext_req_i),
          .hready_i               (hready_i),

          .ctl_bpu_event_i        (ctl_bpu_event_i),
          .ctl_dbg_ex_last_i      (ctl_dbg_ex_last_i),
          .ctl_dbg_ex_reset_i     (ctl_dbg_ex_reset_i),
          .ctl_dbg_lockup_i       (ctl_dbg_lockup_i),
          .ctl_ex_idle_i          (ctl_ex_idle_i),
          .ctl_halt_ack_i         (ctl_halt_ack_i),
          .dec_int_return_i       (dec_int_return_i),
          .dec_int_taken_i        (dec_int_taken_i),
          .dwt_event_i            (dwt_event),
          .dsl_dbg_sels_i         (dsl_dbg_sels[3:0]),
          .dsl_ppb_write_i        (dsl_ppb_write),
          .psr_dbg_hardfault_i    (psr_dbg_hardfault_i),
          .slv_wdata_i            (slv_wdata_i[31:0]));

   // ------------------------------------------------------------
   // Breakpoint unit instantiation
   // ------------------------------------------------------------

   cm0_dbg_bpu
     #(.CBAW(CBAW), .BKPT(BKPT), .DBG(DBG), .RAR(RAR))
       u_bpu
         (.dclk                   (dclk),
          .dbg_reset_n            (dbg_reset_n),

          .bpu_hrdata_o           (bpu_hrdata[31:0]),
          .bpu_match_o            (bpu_match_o[1:0]),

          .hready_i               (hready_i),

          .alu_dbg_trans_i        (alu_dbg_trans_i),
          .alu_haddr_31_2_i       (alu_haddr_i[31:2]),
          .ctl_hprot_i            (ctl_hprot_i),
          .dbg_c_debugen_i        (dbg_c_debugen_o),
          .dsl_bpu_sels_i         (dsl_bpu_sels[4:0]),
          .dsl_ppb_write_i        (dsl_ppb_write),
          .slv_wdata_i            (slv_wdata_i[31:0]));

   // ------------------------------------------------------------
   // Watchpoint unit instantiation
   // ------------------------------------------------------------

   cm0_dbg_dwt
     #(.CBAW(CBAW), .DBG(DBG), .RAR(RAR), .WPT(WPT))
       u_dwt
         (.dclk                   (dclk),
          .dbg_reset_n            (dbg_reset_n),

          .dwt_event_o            (dwt_event),
          .dwt_hrdata_o           (dwt_hrdata[31:0]),

          .hready_i               (hready_i),

          .alu_haddr_i            (alu_haddr_i[31:0]),
          .alu_dbg_trans_i        (alu_dbg_trans_i),
          .ctl_hprot_i            (ctl_hprot_i),
          .ctl_hwrite_i           (ctl_hwrite_i),
          .ctl_ls_size_i          (ctl_ls_size_i[1:0]),
          .ctl_dwt_atomic_i       (ctl_dwt_atomic_i),
          .dbg_dwt_en_i           (dbg_dwt_en),
          .dbg_c_debugen_i        (dbg_c_debugen_o),
          .dbg_s_halt_i           (dbg_s_halt),
          .dbg_halt_req_i         (dbg_halt_req_o),
          .dsl_dwt_sels_i         (dsl_dwt_sels[7:0]),
          .dsl_ppb_write_i        (dsl_ppb_write),
          .pfu_dwt_iaex_i         (pfu_dwt_iaex_i[30:0]),
          .pfu_pipefull_i         (pfu_pipefull_i),
          .slv_wdata_i            (slv_wdata_i[31:0]));

   // ------------------------------------------------------------
   // Debug bus interface unit instantiation
   // ------------------------------------------------------------

   cm0_dbg_if
     #(.CBAW(CBAW), .AHBSLV(AHBSLV), .DBG(DBG), .RAR(RAR))
       u_if
         (.dclk                   (dclk),
          .dbg_reset_n            (dbg_reset_n),

          .slv_rdata_o            (slv_rdata_o[31:0]),
          .slv_ready_o            (slv_ready_o),
          .slv_resp_o             (slv_resp_o),

          .dif_addr_o             (dif_addr_o[31:0]),
          .dif_dphase_o           (dif_dphase_o),
          .dif_size_o             (dif_size_o[1:0]),
          .dif_trans_o            (dif_trans_o),
          .dif_wdata_o            (dif_wdata_o[31:0]),
          .dif_write_o            (dif_write_o),

          .hready_i               (hready_i),
          .slv_addr_i             (slv_addr_i[31:0]),
          .slv_size_i             (slv_size_i[1:0]),
          .slv_trans_i            (slv_trans_i[1:0]),
          .slv_wdata_i            (slv_wdata_i[31:0]),
          .slv_write_i            (slv_write_i),

          .dsl_hrdata_i           (dsl_hrdata[31:0]),
          .dwt_hrdata_i           (dwt_hrdata[31:0]),
          .bpu_hrdata_i           (bpu_hrdata[31:0]),
          .dbg_hrdata_i           (dbg_hrdata[31:0]),
          .mtx_dif_rdata_i        (mtx_dif_rdata_i[31:0]),
          .mtx_dif_resp_i         (mtx_dif_resp_i),
          .mtx_dif_slot_i         (mtx_dif_slot_i));

   // ------------------------------------------------------------
   // Debug PPB space address decoder instantiation
   // ------------------------------------------------------------

   cm0_dbg_sel
     #(.CBAW(CBAW), .BKPT(BKPT), .DBG(DBG), .WPT(WPT))
       u_sel
         (.dclk                   (dclk),
          .dbg_reset_n            (dbg_reset_n),

          .dsl_cid_sels_o         (dsl_cid_sels_o[1:0]),
          .dsl_dbg_sels_o         (dsl_dbg_sels[3:0]),
          .dsl_bpu_sels_o         (dsl_bpu_sels[4:0]),
          .dsl_dwt_sels_o         (dsl_dwt_sels[7:0]),
          .dsl_hrdata_o           (dsl_hrdata[31:0]),
          .dsl_ppb_write_o        (dsl_ppb_write),
          .dsl_ppb_active_o       (dsl_ppb_active_o),

          .hready_i               (hready_i),
          .eco_rev_num_19_4_i     (eco_rev_num_19_4_i[15:0]),
          .dif_trans_i            (dif_trans_o),
          .dif_size_1_i           (dif_size_o[1]),
          .dif_addr_i             (dif_addr_o[31:0]),
          .dif_write_i            (dif_write_o),
          .mtx_dif_slot_i         (mtx_dif_slot_i));

   // ------------------------------------------------------------

endmodule // cm0_top_dbg

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
