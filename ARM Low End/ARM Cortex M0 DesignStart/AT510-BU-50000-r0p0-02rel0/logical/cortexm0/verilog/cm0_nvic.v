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
// CORTEX-M0 NESTED VECTORED INTERRUPT CONTROLLER SUB-MODULE INTERCONNECT
//-----------------------------------------------------------------------------

module cm0_nvic
  #(parameter CBAW     = 0,
    parameter BE       = 0,
    parameter DBG      = 1,
    parameter NUMIRQ   = 32,
    parameter RAR      = 0,
    parameter SYST     = 1,
    parameter WIC      = 1,
    parameter WICLINES = 34)

   (input wire         sclk,                // system clock
    input wire         hclk,                // gated system clock
    input wire         pclk,                // gated PPB write clock
    input wire         hreset_n,            // AHB reset

    output wire        sleeping_o,          // core sleeping indicator
    output wire        sleep_deep_o,        // deep sleeping indicator
    output wire        sys_reset_req_o,     // request system reset

    output wire        wic_ds_ack_n_o,      // acknowledge for WIC-deep sleep
    output wire [31:0] wic_mask_isr_o,      // WIC mask for IRQs
    output wire        wic_mask_nmi_o,      // WIC mask for NMI
    output wire        wic_mask_rxev_o,     // WIC mask for RXEV
    output wire        wic_load_o,          // load signal for WIC mask
    output wire        wic_clear_o,         // clear signal for WIC mask

    output wire [31:0] nvm_hrdata_o,        // PPB read-data bus
    output wire        nvm_int_pend_o,      // exception pending from NVIC
    output wire [ 5:0] nvm_int_pend_num_o,  // IPSR of pending exception
    output wire        nvm_svc_escalate_o,  // need to escalate SVC to HF
    output wire        nvr_vect_clr_actv_o, // clear active state request
    output wire        nvr_sleep_on_exit_o, // SLEEPONEXIT in SCR
    output wire        nvm_wfi_advance_o,   // core should retire WFI
    output wire        nvr_wfe_advance_o,   // core should retire WFE

    input  wire        hready_i,            // AHB ready / core advance
    input  wire        st_clk_en_i,         // Systick reference clock enable
    input  wire [25:0] st_calib_i,          // SysTick calibration value
    input  wire [31:0] irq_i,               // external interrupts
    input  wire        nmi_i,               // non-maskable interrupt
    input  wire        rxev_i,              // external event request
    input  wire        wic_ds_req_n_i,      // request for WIC-deep sleep
    input  wire        txev_i,              // core generated event

    input  wire        ctl_int_ready_i,     // core has registered interrupt
    input  wire        ctl_ex_idle_i,       // core is idle/sleeping
    input  wire        ctl_wfi_execute_i,   // core executing WFI
    input  wire        ctl_wfe_execute_i,   // core executing WFE
    input  wire        ctl_wfi_adv_raw_i,   // core WFI retirement signal
    input  wire        ctl_hdf_request_i,   // fault detected by core
    input  wire        dec_int_taken_i,     // core has entered ISR
    input  wire        dec_int_return_i,    // core is returning from ISR
    input  wire        dec_svc_request_i,   // core executing SVC
    input  wire        dbg_s_halt_i,        // core halted in debug state
    input  wire        dbg_c_maskints_i,    // mask interrupts to core
    input  wire        dbg_halt_req_i,      // debug halt request
    input  wire        dsl_ppb_active_i,    // PPB debug not core access
    input  wire [31:0] mtx_ppb_wdata_i,     // PPB write-data bus
    input  wire [22:0] msl_nvic_sels_i,     // PPB NVIC register selects
    input  wire        mtx_ppb_write_i,     // PPB write enable
    input  wire [ 5:0] psr_ipsr_i,          // core current exception
    input  wire        psr_nmi_active_i,    // core is running NMI
    input  wire        psr_hdf_active_i,    // core is running HardFault
    input  wire        psr_n_or_h_active_i, // core running NMI or HardFault
    input  wire        psr_primask_i,       // PRIMASK value
    input  wire        psr_primask_ex_i);   // forwarded version of PRIMASK

   // ------------------------------------------------------------
   // Local interconnect wires
   // ------------------------------------------------------------

   wire [36:0] nvm_actv_bit;      // one-hot list of active exceptions
   wire [31:0] nvr_pend_irq;      // individual IRQ pending bits
   wire        nvr_pend_svc;      // SVCall pending bit
   wire        nvr_pend_psv;      // PendSV pending bit
   wire        nvr_pend_tck;      // SysTick pending bit
   wire        nvr_pend_nmi;      // NMI pending bit
   wire        nvr_pend_hdf;      // HardFault pending bit
   wire [1:0]  nvr_tck_lvl;       // SysTick priority level
   wire [1:0]  nvr_psv_lvl;       // PendSV priority level
   wire [1:0]  nvr_svc_lvl;       // SVCall priority level
   wire [63:0] nvr_irq_lvl;       // individual IRQ priority levels
   wire [31:0] nvr_irq_en;        // individual IRQ enables
   wire        nvr_deep_sleep;    // DEEPSLEEP bit
   wire        nvr_sev_on_pend;   // SEVONPEND bit
   wire        nvr_tck_en;        // SysTick counter enable bit
   wire        nvr_tck_int_en;    // SysTick interrupt enable bit
   wire        nvr_tck_clk_src;   // SysTick clock source bit
   wire        nvr_tck_cnt_flag;  // SysTick count-flag bit
   wire [23:0] nvr_tck_reload;    // SysTick reload value
   wire [23:0] nvr_tck_count;     // SysTick current value

   // ------------------------------------------------------------
   // NVIC register module instantiation
   // ------------------------------------------------------------

   cm0_nvic_reg
     #(.CBAW(CBAW), .DBG(DBG), .NUMIRQ(NUMIRQ), .RAR(RAR),
       .SYST(SYST), .WIC(WIC))
       u_reg
         (.hclk                   (hclk),
          .pclk                   (pclk),
          .sclk                   (sclk),
          .hreset_n               (hreset_n),

          .sleeping_o             (sleeping_o),
          .sleep_deep_o           (sleep_deep_o),
          .wic_ds_ack_n_o         (wic_ds_ack_n_o),
          .wic_load_o             (wic_load_o),
          .wic_clear_o            (wic_clear_o),
          .sys_reset_req_o        (sys_reset_req_o),

          .nvr_pend_svc_o         (nvr_pend_svc),
          .nvr_pend_psv_o         (nvr_pend_psv),
          .nvr_pend_tck_o         (nvr_pend_tck),
          .nvr_pend_irq_o         (nvr_pend_irq),
          .nvr_pend_hdf_o         (nvr_pend_hdf),
          .nvr_pend_nmi_o         (nvr_pend_nmi),
          .nvr_svc_lvl_o          (nvr_svc_lvl),
          .nvr_tck_lvl_o          (nvr_tck_lvl),
          .nvr_psv_lvl_o          (nvr_psv_lvl),
          .nvr_irq_lvl_o          (nvr_irq_lvl),
          .nvr_irq_en_o           (nvr_irq_en),
          .nvr_vect_clr_actv_o    (nvr_vect_clr_actv_o),
          .nvr_sev_on_pend_o      (nvr_sev_on_pend),
          .nvr_sleep_on_exit_o    (nvr_sleep_on_exit_o),
          .nvr_deep_sleep_o       (nvr_deep_sleep),
          .nvr_tck_cnt_flag_o     (nvr_tck_cnt_flag),
          .nvr_tck_clk_src_o      (nvr_tck_clk_src),
          .nvr_tck_int_en_o       (nvr_tck_int_en),
          .nvr_tck_en_o           (nvr_tck_en),
          .nvr_tck_reload_o       (nvr_tck_reload),
          .nvr_tck_count_o        (nvr_tck_count),
          .nvr_wfe_advance_o      (nvr_wfe_advance_o),

          .hready_i               (hready_i),
          .irq_i                  (irq_i),
          .nmi_i                  (nmi_i),
          .st_clk_en_i            (st_clk_en_i),
          .st_calib_25_i          (st_calib_i[25]),
          .rxev_i                 (rxev_i),
          .wic_ds_req_n_i         (wic_ds_req_n_i),
          .txev_i                 (txev_i),

          .ctl_int_ready_i        (ctl_int_ready_i),
          .ctl_hdf_request_i      (ctl_hdf_request_i),
          .ctl_wfe_execute_i      (ctl_wfe_execute_i),
          .ctl_wfi_execute_i      (ctl_wfi_execute_i),
          .ctl_ex_idle_i          (ctl_ex_idle_i),
          .ctl_wfi_adv_raw_i      (ctl_wfi_adv_raw_i),
          .dec_int_taken_i        (dec_int_taken_i),
          .dec_int_return_i       (dec_int_return_i),
          .dec_svc_request_i      (dec_svc_request_i),
          .dbg_s_halt_i           (dbg_s_halt_i),
          .dbg_halt_req_i         (dbg_halt_req_i),
          .nvm_int_pend_i         (nvm_int_pend_o),
          .nvm_actv_bit_i         (nvm_actv_bit),
          .msl_nvic_sels_i        (msl_nvic_sels_i),
          .mtx_ppb_write_i        (mtx_ppb_write_i),
          .dsl_ppb_active_i       (dsl_ppb_active_i),
          .mtx_ppb_wdata_i        (mtx_ppb_wdata_i));

   // ------------------------------------------------------------
   // NVIC pend and active logic module instantiation
   // ------------------------------------------------------------

   cm0_nvic_main
     #(.CBAW(CBAW), .BE(BE), .DBG(DBG), .NUMIRQ(NUMIRQ),
       .SYST(SYST), .WIC(WIC), .WICLINES(WICLINES))
       u_main
         (.hclk                   (hclk),
          .sclk                   (sclk),
          .hreset_n               (hreset_n),

          .wic_mask_rxev_o        (wic_mask_rxev_o),
          .wic_mask_nmi_o         (wic_mask_nmi_o),
          .wic_mask_isr_o         (wic_mask_isr_o),

          .nvm_hrdata_o           (nvm_hrdata_o),
          .nvm_int_pend_o         (nvm_int_pend_o),
          .nvm_int_pend_num_o     (nvm_int_pend_num_o),
          .nvm_svc_escalate_o     (nvm_svc_escalate_o),
          .nvm_wfi_advance_o      (nvm_wfi_advance_o),
          .nvm_actv_bit_o         (nvm_actv_bit),

          .st_calib_i             (st_calib_i),

          .ctl_wfe_execute_i      (ctl_wfe_execute_i),
          .ctl_wfi_execute_i      (ctl_wfi_execute_i),
          .dbg_c_maskints_i       (dbg_c_maskints_i),
          .nvr_pend_nmi_i         (nvr_pend_nmi),
          .nvr_pend_hdf_i         (nvr_pend_hdf),
          .nvr_pend_svc_i         (nvr_pend_svc),
          .nvr_pend_psv_i         (nvr_pend_psv),
          .nvr_pend_tck_i         (nvr_pend_tck),
          .nvr_pend_irq_i         (nvr_pend_irq),
          .nvr_tck_lvl_i          (nvr_tck_lvl),
          .nvr_psv_lvl_i          (nvr_psv_lvl),
          .nvr_svc_lvl_i          (nvr_svc_lvl),
          .nvr_irq_lvl_i          (nvr_irq_lvl),
          .nvr_irq_en_i           (nvr_irq_en),
          .nvr_tck_cnt_flag_i     (nvr_tck_cnt_flag),
          .nvr_tck_clk_src_i      (nvr_tck_clk_src),
          .nvr_tck_int_en_i       (nvr_tck_int_en),
          .nvr_tck_en_i           (nvr_tck_en),
          .nvr_tck_reload_i       (nvr_tck_reload),
          .nvr_tck_count_i        (nvr_tck_count),
          .nvr_sev_on_pend_i      (nvr_sev_on_pend),
          .nvr_sleep_on_exit_i    (nvr_sleep_on_exit_o),
          .nvr_deep_sleep_i       (nvr_deep_sleep),
          .msl_nvic_sels_i        (msl_nvic_sels_i),
          .psr_ipsr_i             (psr_ipsr_i),
          .psr_primask_ex_i       (psr_primask_ex_i),
          .psr_primask_i          (psr_primask_i),
          .psr_nmi_active_i       (psr_nmi_active_i),
          .psr_hdf_active_i       (psr_hdf_active_i),
          .psr_n_or_h_active_i    (psr_n_or_h_active_i));

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   // ensure that SVC request from the core causes something
   // appropriate to happend; this assertion lives here as it needs
   // u_main.unpredictable_actv_lvl_chg in order to deal with
   // UNPREDICTABLE software usage

   assert_next
     #(`OVL_INFO,1,1,0,`OVL_ASSERT,
       "SVC should cause either a SVCall pend or an escalation")
   u_info_svc_resp
     (.clk(hclk),
      .reset_n(hreset_n),
      .start_event(dec_svc_request_i &
                       ~u_main.unpredictable_actv_lvl_chg),
      .test_expr(nvm_int_pend_o ^ psr_n_or_h_active_i));

`endif

endmodule

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
