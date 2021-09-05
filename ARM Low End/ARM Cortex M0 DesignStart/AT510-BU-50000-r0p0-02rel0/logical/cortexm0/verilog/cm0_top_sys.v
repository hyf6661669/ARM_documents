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
//      Checked In          : $Date: 2009-03-16 13:06:45 +0000 (Mon, 16 Mar 2009) $
//
//      Revision            : $Revision: 104150 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 CORE, NVIC AND MATRIX INTERCONNECT LEVEL
//-----------------------------------------------------------------------------

module cm0_top_sys
  #(parameter CBAW     =  0,
    parameter AHBSLV   =  1,
    parameter BE       =  0,
    parameter BKPT     =  4,
    parameter DBG      =  1,
    parameter NUMIRQ   = 32,
    parameter RAR      =  0,
    parameter SMUL     =  0,
    parameter SYST     =  1,
    parameter WIC      =  1,
    parameter WICLINES = 34,
    parameter WPT      =  2)

   (// CLOCK AND RESETS
    input  wire        sclk,                // system clock
    input  wire        hclk,                // gated AHB clock
    input  wire        rclk0,               // gated lower reg-file clock
    input  wire        rclk1,               // gated upper reg-file clock
    input  wire        pclk,                // gated PPB space clock
    input  wire        hreset_n,            // system reset

    // DEBUG-CORE DOMAIN INTERCONNECT
    input  wire [77:0] cm0_dbg_to_sys_i,    // dbg-to-sys interconnect
    output wire [113:0] cm0_sys_to_dbg_o,   // sys-to-dbg interconnect

    // AHB-LITE MASTER PORT
    output wire [31:0] haddr_o,             // AHB address
    output wire [ 2:0] hburst_o,            // AHB burst (always 0)
    output wire        hmastlock_o,         // AHB locked transfer (always 0)
    output wire [ 3:0] hprot_o,             // AHB properties
    output wire [ 2:0] hsize_o,             // AHB size
    output wire [ 1:0] htrans_o,            // AHB transfer
    output wire [31:0] hwdata_o,            // AHB write data
    output wire        hwrite_o,            // AHB write not read
    input  wire [31:0] hrdata_i,            // AHB read data
    input  wire        hready_i,            // AHB ready and core advance
    input  wire        hresp_i,             // AHB error response

    output wire        hmaster_o,           // bus master (0=core, 1=debug)
    output wire        spec_htrans_o,       // speculative HTRANS[1]

    // MISC
    input  wire        nmi_i,               // non-maskable interrupt
    input  wire [31:0] irq_i,               // prioritizable interrupts
    output wire        txev_o,              // event output (SEV executed)
    input  wire        rxev_i,              // event input
    output wire        lockup_o,            // core is in LOCKUP
    output wire        sys_reset_req_o,     // system reset request
    input  wire [25:0] st_calib_i,          // SysTick calibration value
    input  wire        st_clk_en_i,         // SysTick SCLK count enable
    input  wire [ 7:0] irq_latency_i,       // interrupt latency
    input  wire [ 3:0] eco_rev_num_3_0_i,   // change-order revision patch

    // POWER MANAGEMENT
    output wire        sleeping_o,          // core and NVIC sleeping
    output wire        sleep_deep_o,        // sleep is deep
    input  wire        sleep_hold_req_n_i,  // sleep extension request
    output wire        sleep_hold_ack_n_o,  // sleep extension acknowledge
    input wire         wic_ds_req_n_i,      // WIC mode operation request
    output wire        wic_ds_ack_n_o,      // WIC mode operation acknowledge
    output wire [31:0] wic_mask_isr_o,      // WIC IRQ sensitivity
    output wire        wic_mask_nmi_o,      // WIC NMI sensitivity
    output wire        wic_mask_rxev_o,     // WIC RXEV sensitivity
    output wire        wic_load_o,          // NVIC to WIC upload
    output wire        wic_clear_o,         // NVIC to WIC clear request

    // CODE SEQUENTIALITY INFO
    output wire        code_nseq_o,         // fetch is non-sequential
    output wire [ 2:0] code_hint_de_o,      // fetch hints

    // CLOCK-GATE ENABLE TERMS
    output wire        ctl_rclk0_en_o,      // lower reg-bank clock enable
    output wire        ctl_rclk1_en_o,      // upper reg-bank clock enable
    output wire        msl_pclk_en_o);      // PPB space clock enable

   // ------------------------------------------------------------
   // Local inter-module connection wires
   // ------------------------------------------------------------

   wire        alu_ext_trans;       // core AHB transaction
   wire [ 1:0] alu_hsize;           // core AHB size
   wire        alu_ppb_trans;       // core PPB transaction
   wire        alu_spec_htrans;     // core speculative transaction
   wire        ctl_int_ready;       // core has registered interrupt
   wire        ctl_hdf_request;     // core HardFault request
   wire        ctl_wfi_adv_raw;     // core WFI retirement
   wire        ctl_wfe_execute;     // core executing WFE
   wire        ctl_wfi_execute;     // core executing WFI
   wire        dec_svc_request;     // core SVCall request (from SVC)
   wire [31:0] gpr_dcrdr_data;      // core debug-register-read-data
   wire [31:0] gpr_hwdata;          // core AHB write data
   wire        msl_dbg_aux_en;      // debug DCRDR write
   wire        msl_dbg_op_en;       // debug DCRSR write
   wire [22:0] msl_nvic_sels;       // matrix selects for NVIC registers
   wire        mtx_cpu_resp;        // matrix HRESP to core
   wire        mtx_ppb_active;      // PPB transaction data-phase
   wire        mtx_ppb_write;       // PPB data-phase is for a write
   wire [31:0] mtx_ppb_hrdata;      // combined PPB read-data
   wire [31:0] mtx_ppb_wdata;       // PPB write-data
   wire [31:0] nvm_hrdata;          // NVIC PPB read-data
   wire        nvm_int_pend;        // interrupt is pending in NVIC
   wire [ 5:0] nvm_int_pend_num;    // number of pending interrupt
   wire        nvm_svc_escalate;    // SVC instruction should HardFault
   wire        nvm_wfi_advance;     // WFI instruction should retire
   wire        nvr_wfe_advance;     // WFE instruction should retire
   wire        nvr_sleep_on_exit;   // core should WFI on return to Thread
   wire        nvr_vect_clr_active; // debug clear active request
   wire        psr_hdf_active;      // IPSR is HardFault (3)
   wire [ 5:0] psr_ipsr;            // current IPSR value
   wire        psr_n_or_h_active;   // IPSR is HardFault or NMI
   wire        psr_nmi_active;      // IPSR is NMI (2)
   wire        psr_primask_ex;      // forwarded PRIMASK value
   wire        psr_primask;         // registered PRIMASK value

   // ------------------------------------------------------------
   // System to debug domain output bundling
   // ------------------------------------------------------------

   wire        alu_dbg_trans_o;     // consider transaction for watchpoints
   wire [31:0] alu_haddr_o;         // core AHB address
   wire        ctl_ex_idle_o;       // core is sleeping / inactive
   wire        ctl_bpu_event_o;     // breakpoint or BKPT instruction hit
   wire        ctl_dbg_ex_last_o;   // core instruction / sequence retired
   wire        ctl_dbg_ex_reset_o;  // core in FSM in reset state
   wire        ctl_dbg_lockup_o;    // core is in LOCKUP
   wire        ctl_dwt_atomic_o;    // core performing micro-code
   wire        ctl_halt_ack_o;      // core halted
   wire        ctl_hprot_o;         // core data not instruction transaction
   wire        ctl_hwrite_o;        // core read not write transaction
   wire [ 1:0] ctl_ls_size_o;       // core AHB read/write data-size
   wire        dec_int_return_o;    // core returning from interupt
   wire        dec_int_taken_o;     // core interrupt taken
   wire [31:0] mtx_dif_rdata_o;     // debugger read data from NVIC/AHB
   wire        mtx_dif_resp_o;      // debugger error response from NVIC/AHB
   wire        mtx_dif_slot_o;      // core conceeds bus to debugger
   wire [30:0] pfu_dwt_iaex_o;      // PC value for watchpoint units PCSR
   wire        pfu_pipefull_o;      // core pipeline populated
   wire        psr_dbg_hardfault_o; // IPSR is HardFault for vector-catch
   wire        hready_o = hready_i; // AHB ready / core advance

   assign      cm0_sys_to_dbg_o = { alu_dbg_trans_o,
                                    alu_haddr_o[31:0],
                                    ctl_ex_idle_o,
                                    ctl_bpu_event_o,
                                    ctl_dbg_ex_last_o,
                                    ctl_dbg_ex_reset_o,
                                    ctl_dbg_lockup_o,
                                    ctl_dwt_atomic_o,
                                    ctl_halt_ack_o,
                                    ctl_hprot_o,
                                    ctl_hwrite_o,
                                    ctl_ls_size_o[1:0],
                                    dec_int_return_o,
                                    dec_int_taken_o,
                                    mtx_dif_rdata_o[31:0],
                                    mtx_dif_resp_o,
                                    mtx_dif_slot_o,
                                    pfu_dwt_iaex_o[30:0],
                                    pfu_pipefull_o,
                                    psr_dbg_hardfault_o,
                                    hready_o };

   // ------------------------------------------------------------
   // Debug to system domain input un-bundling
   // ------------------------------------------------------------

   wire [ 1:0] bpu_match_i;      // breakpoint matches fetch
   wire        dbg_c_debugen_i;  // debug is enabled
   wire        dbg_c_maskints_i; // NVIC should ignore prioritizable interrupts
   wire        dbg_halt_req_i;   // halt request from debug to core
   wire        dbg_op_run_i;     // perform DCRSR operation request
   wire [31:0] dif_addr_i;       // debugger address for AHB/NVIC
   wire        dif_dphase_i;     // debugger data-phase
   wire [ 1:0] dif_size_i;       // debugger transaction size
   wire        dif_trans_i;      // debugger transaction request
   wire [31:0] dif_wdata_i;      // debugger write-data
   wire        dif_write_i;      // debugger write not read transaction
   wire [ 1:0] dsl_cid_sels_i;   // debug read selects for CPUID and ACTLR
   wire        dsl_ppb_active_i; // debugger access to debug PPB (mask HRDATA)

   assign { bpu_match_i[1:0],
            dbg_c_debugen_i,
            dbg_c_maskints_i,
            dbg_halt_req_i,
            dbg_op_run_i,
            dif_addr_i[31:0],
            dif_dphase_i,
            dif_size_i[1:0],
            dif_trans_i,
            dif_wdata_i[31:0],
            dif_write_i,
            dsl_cid_sels_i[1:0],
            dsl_ppb_active_i } = cm0_dbg_to_sys_i;

   // ------------------------------------------------------------
   // Processor core instantiation
   // ------------------------------------------------------------

   cm0_core
     #(.CBAW(CBAW), .BE(BE), .DBG(DBG), .RAR(RAR), .SMUL(SMUL))
       u_core
         (.sclk                   (sclk),
          .hclk                   (hclk),
          .rclk0                  (rclk0),
          .rclk1                  (rclk1),
          .hreset_n               (hreset_n),

          .code_hint_de_o         (code_hint_de_o[2:0]),
          .code_nseq_o            (code_nseq_o),
          .lockup_o               (lockup_o),
          .sleep_hold_ack_n_o     (sleep_hold_ack_n_o),
          .txev_o                 (txev_o),

          .alu_spec_htrans_o      (alu_spec_htrans),
          .alu_haddr_o            (alu_haddr_o[31:0]),
          .alu_hsize_o            (alu_hsize[1:0]),
          .alu_ext_trans_o        (alu_ext_trans),
          .alu_ppb_trans_o        (alu_ppb_trans),
          .alu_dbg_trans_o        (alu_dbg_trans_o),
          .ctl_rclk0_en_o         (ctl_rclk0_en_o),
          .ctl_rclk1_en_o         (ctl_rclk1_en_o),
          .ctl_hprot_o            (ctl_hprot_o),
          .ctl_hwrite_o           (ctl_hwrite_o),
          .ctl_ls_size_o          (ctl_ls_size_o[1:0]),
          .ctl_ex_idle_o          (ctl_ex_idle_o),
          .ctl_int_ready_o        (ctl_int_ready),
          .ctl_wfe_execute_o      (ctl_wfe_execute),
          .ctl_wfi_execute_o      (ctl_wfi_execute),
          .ctl_wfi_adv_raw_o      (ctl_wfi_adv_raw),
          .ctl_hdf_request_o      (ctl_hdf_request),
          .ctl_halt_ack_o         (ctl_halt_ack_o),
          .ctl_dbg_lockup_o       (ctl_dbg_lockup_o),
          .ctl_dwt_atomic_o       (ctl_dwt_atomic_o),
          .ctl_dbg_ex_last_o      (ctl_dbg_ex_last_o),
          .ctl_dbg_ex_reset_o     (ctl_dbg_ex_reset_o),
          .ctl_bpu_event_o        (ctl_bpu_event_o),
          .dec_svc_request_o      (dec_svc_request),
          .dec_int_taken_o        (dec_int_taken_o),
          .dec_int_return_o       (dec_int_return_o),
          .gpr_hwdata_o           (gpr_hwdata[31:0]),
          .gpr_dcrdr_data_o       (gpr_dcrdr_data[31:0]),
          .pfu_dwt_iaex_o         (pfu_dwt_iaex_o[30:0]),
          .pfu_pipefull_o         (pfu_pipefull_o),
          .psr_ipsr_o             (psr_ipsr[5:0]),
          .psr_primask_ex_o       (psr_primask_ex),
          .psr_primask_o          (psr_primask),
          .psr_nmi_active_o       (psr_nmi_active),
          .psr_hdf_active_o       (psr_hdf_active),
          .psr_n_or_h_active_o    (psr_n_or_h_active),
          .psr_dbg_hardfault_o    (psr_dbg_hardfault_o),

          .hrdata_i               (hrdata_i[31:0]),
          .hready_i               (hready_i),
          .sleep_hold_req_n_i     (sleep_hold_req_n_i),
          .irq_latency_i          (irq_latency_i[7:0]),

          .bpu_match_i            (bpu_match_i[1:0]),
          .dbg_halt_req_i         (dbg_halt_req_i),
          .dbg_op_run_i           (dbg_op_run_i),
          .dbg_c_debugen_i        (dbg_c_debugen_i),
          .dif_wdata_i            (dif_wdata_i[31:0]),
          .msl_dbg_op_en_i        (msl_dbg_op_en),
          .msl_dbg_aux_en_i       (msl_dbg_aux_en),
          .mtx_cpu_resp_i         (mtx_cpu_resp),
          .mtx_ppb_hrdata_i       (mtx_ppb_hrdata[31:0]),
          .mtx_ppb_active_i       (mtx_ppb_active),
          .nvm_int_pend_i         (nvm_int_pend),
          .nvm_int_pend_num_i     (nvm_int_pend_num[5:0]),
          .nvm_svc_escalate_i     (nvm_svc_escalate),
          .nvr_wfe_advance_i      (nvr_wfe_advance),
          .nvm_wfi_advance_i      (nvm_wfi_advance),
          .nvr_sleep_on_exit_i    (nvr_sleep_on_exit),
          .nvr_vect_clr_active_i  (nvr_vect_clr_active));

   // ------------------------------------------------------------
   // Nested-vectored interrupt controller instantiation
   // ------------------------------------------------------------

   cm0_nvic
     #(.CBAW(CBAW), .BE(BE), .DBG(DBG), .NUMIRQ(NUMIRQ),
       .RAR(RAR), .SYST(SYST), .WIC(WIC), .WICLINES(WICLINES) )
       u_nvic
         (.sclk                   (sclk),
          .hclk                   (hclk),
          .pclk                   (pclk),
          .hreset_n               (hreset_n),

          .sleeping_o             (sleeping_o),
          .sleep_deep_o           (sleep_deep_o),
          .sys_reset_req_o        (sys_reset_req_o),
          .wic_ds_ack_n_o         (wic_ds_ack_n_o),
          .wic_mask_isr_o         (wic_mask_isr_o[31:0]),
          .wic_mask_nmi_o         (wic_mask_nmi_o),
          .wic_mask_rxev_o        (wic_mask_rxev_o),
          .wic_load_o             (wic_load_o),
          .wic_clear_o            (wic_clear_o),

          .nvm_hrdata_o           (nvm_hrdata[31:0]),
          .nvm_int_pend_o         (nvm_int_pend),
          .nvm_int_pend_num_o     (nvm_int_pend_num[5:0]),
          .nvm_svc_escalate_o     (nvm_svc_escalate),
          .nvm_wfi_advance_o      (nvm_wfi_advance),
          .nvr_wfe_advance_o      (nvr_wfe_advance),
          .nvr_sleep_on_exit_o    (nvr_sleep_on_exit),
          .nvr_vect_clr_actv_o    (nvr_vect_clr_active),

          .hready_i               (hready_i),
          .irq_i                  (irq_i[31:0]),
          .nmi_i                  (nmi_i),
          .rxev_i                 (rxev_i),
          .st_calib_i             (st_calib_i[25:0]),
          .st_clk_en_i            (st_clk_en_i),
          .wic_ds_req_n_i         (wic_ds_req_n_i),
          .txev_i                 (txev_o),

          .ctl_int_ready_i        (ctl_int_ready),
          .ctl_ex_idle_i          (ctl_ex_idle_o),
          .ctl_wfi_execute_i      (ctl_wfi_execute),
          .ctl_wfe_execute_i      (ctl_wfe_execute),
          .ctl_wfi_adv_raw_i      (ctl_wfi_adv_raw),
          .ctl_hdf_request_i      (ctl_hdf_request),
          .dec_svc_request_i      (dec_svc_request),
          .dec_int_taken_i        (dec_int_taken_o),
          .dec_int_return_i       (dec_int_return_o),
          .dbg_halt_req_i         (dbg_halt_req_i),
          .dbg_s_halt_i           (ctl_halt_ack_o),
          .dbg_c_maskints_i       (dbg_c_maskints_i),
          .dsl_ppb_active_i       (dsl_ppb_active_i),
          .msl_nvic_sels_i        (msl_nvic_sels[22:0]),
          .mtx_ppb_write_i        (mtx_ppb_write),
          .mtx_ppb_wdata_i        (mtx_ppb_wdata[31:0]),
          .psr_ipsr_i             (psr_ipsr),
          .psr_primask_ex_i       (psr_primask_ex),
          .psr_primask_i          (psr_primask),
          .psr_nmi_active_i       (psr_nmi_active),
          .psr_hdf_active_i       (psr_hdf_active),
          .psr_n_or_h_active_i    (psr_n_or_h_active));

   // ------------------------------------------------------------
   // Bus matrix instantiation
   // ------------------------------------------------------------

   cm0_matrix
     #(.CBAW(CBAW), .AHBSLV(AHBSLV), .DBG(DBG), .SYST(SYST))
       u_matrix
         (.hclk                   (hclk),
          .hreset_n               (hreset_n),

          .haddr_o                (haddr_o[31:0]),
          .hburst_o               (hburst_o[2:0]),
          .hmaster_o              (hmaster_o),
          .hmastlock_o            (hmastlock_o),
          .hprot_o                (hprot_o[3:0]),
          .hsize_o                (hsize_o[2:0]),
          .htrans_o               (htrans_o[1:0]),
          .hwdata_o               (hwdata_o[31:0]),
          .hwrite_o               (hwrite_o),
          .spec_htrans_o          (spec_htrans_o),

          .msl_dbg_aux_en_o       (msl_dbg_aux_en),
          .msl_dbg_op_en_o        (msl_dbg_op_en),
          .msl_nvic_sels_o        (msl_nvic_sels[22:0]),
          .msl_pclk_en_o          (msl_pclk_en_o),
          .mtx_cpu_resp_o         (mtx_cpu_resp),
          .mtx_dif_rdata_o        (mtx_dif_rdata_o[31:0]),
          .mtx_dif_resp_o         (mtx_dif_resp_o),
          .mtx_dif_slot_o         (mtx_dif_slot_o),
          .mtx_ppb_hrdata_o       (mtx_ppb_hrdata[31:0]),
          .mtx_ppb_write_o        (mtx_ppb_write),
          .mtx_ppb_active_o       (mtx_ppb_active),
          .mtx_ppb_wdata_o        (mtx_ppb_wdata[31:0]),

          .hrdata_i               (hrdata_i[31:0]),
          .hready_i               (hready_i),
          .hresp_i                (hresp_i),
          .eco_rev_num_3_0_i      (eco_rev_num_3_0_i[3:0]),

          .alu_haddr_i            (alu_haddr_o[31:0]),
          .alu_hsize_i            (alu_hsize[1:0]),
          .alu_ext_trans_i        (alu_ext_trans),
          .alu_spec_htrans_i      (alu_spec_htrans),
          .alu_ppb_trans_i        (alu_ppb_trans),
          .ctl_hprot_i            (ctl_hprot_o),
          .ctl_hwrite_i           (ctl_hwrite_o),
          .dbg_halt_req_i         (dbg_halt_req_i),
          .dif_addr_i             (dif_addr_i[31:0]),
          .dif_size_i             (dif_size_i[1:0]),
          .dif_trans_i            (dif_trans_i),
          .dif_wdata_i            (dif_wdata_i[31:0]),
          .dif_write_i            (dif_write_i),
          .dif_dphase_i           (dif_dphase_i),
          .dsl_cid_sels_i         (dsl_cid_sels_i[1:0]),
          .dsl_ppb_active_i       (dsl_ppb_active_i),
          .gpr_hwdata_i           (gpr_hwdata[31:0]),
          .gpr_dcrdr_data_i       (gpr_dcrdr_data[31:0]),
          .nvm_hrdata_i           (nvm_hrdata[31:0]));

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   reg         asrt_dataphase;

   always @(posedge sclk or negedge hreset_n)
     if(~hreset_n)
       asrt_dataphase <= 1'b0;
     else if(hready_i)
       asrt_dataphase <= alu_ext_trans;

   // Core should not perform transactions when sleeping
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,
       "Core should not address AHB whilst sleeping")
   u_asrt_sleep_noaddr
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(sleeping_o),
      .consequent_expr(~alu_ext_trans));

   // Core should not perform transactions when sleeping
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,
       "Core should not read/write AHB whilst sleeping")
   u_asrt_sleep_nodata
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(sleeping_o),
      .consequent_expr(~asrt_dataphase));

   reg [31:0]  code_addr_last;
   wire        code_fetch = htrans_o[1] & ~hprot_o[0] & hready_i;
   reg         branch_de_last;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       branch_de_last <= 1'b0;
     else
       branch_de_last <= code_hint_de_o[2];

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       code_addr_last <= 32'hF1234567;
     else if(code_fetch)
       code_addr_last <= haddr_o[31:0];

   // Code must be sequential if not marked otherwise
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"Instruction flow branched but no CODENSEQ")
   u_asrt_codeaddr
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(code_fetch & ~code_nseq_o),
      .consequent_expr(haddr_o[31:0] == (code_addr_last + 32'h4)) );

   // Hint signals must be zero or one-hot
   assert_zero_one_hot
     #(`OVL_FATAL,3,`OVL_ASSERT,"Only one CODEHINTDE is allowed at a time")
   u_asrt_codehintde
     ( .clk(hclk), .reset_n(hreset_n),
       .test_expr(code_hint_de_o[2:0]) );

   // Sleeping must have a reason, either WFE or WFI
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"Core sleeping with no reason (WFE/WFI)")
   u_asrt_sleep_reason
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(ctl_ex_idle_o),
      .consequent_expr(ctl_wfe_execute | ctl_wfi_execute) );

`endif

`ifdef ARM_CM0_VAL_MONITORS
   // ------------------------------------------------------------
   // Validation monitors
   // ------------------------------------------------------------
 `include "cm0_top_monitor.v"
`endif

`ifdef ARM_CM0_DETERMINISM_CHECKS
   // ------------------------------------------------------------
   // Determinism checks
   // ------------------------------------------------------------
 `include "cm0_top_determinism.v"
`endif

endmodule // cm0_top_sys

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
