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
// CORTEX-M0 CORE SUB-MODULE INTERCONNECT LEVEL
//-----------------------------------------------------------------------------

module cm0_core
  #(parameter CBAW = 0,
    parameter BE   = 0,
    parameter DBG  = 1,
    parameter RAR  = 0,
    parameter SMUL = 0)

   (input  wire        sclk,                  // system clock
    input  wire        hclk,                  // gated AHB clock
    input  wire        rclk0,                 // lower reg-bank clock
    input  wire        rclk1,                 // upper reg-bank clock
    input  wire        hreset_n,              // system reset

    output wire        code_nseq_o,           // fetch is non-sequential
    output wire [ 2:0] code_hint_de_o,        // fetch hint signals
    output wire        lockup_o,              // core is in LOCKUP
    output wire        sleep_hold_ack_n_o,    // sleep extension acknowledge
    output wire        txev_o,                // event output (SEV executed)

    output wire        alu_ext_trans_o,       // bus transaction to AHB
    output wire [31:0] alu_haddr_o,           // bus transaction address
    output wire [ 1:0] alu_hsize_o,           // bus transaction size
    output wire        alu_ppb_trans_o,       // bus transaction to PPB
    output wire        alu_spec_htrans_o,     // speculative transaction
    output wire        alu_dbg_trans_o,       // watchpoint candidate trans
    output wire        ctl_hprot_o,           // bus is data not instruction
    output wire        ctl_hwrite_o,          // transaction write not read
    output wire        ctl_rclk0_en_o,        // lower reg-bank clock enable
    output wire        ctl_rclk1_en_o,        // upper reg-bank clock enable
    output wire        ctl_halt_ack_o,        // core has halted
    output wire        ctl_dbg_lockup_o,      // core is in LOCKUP, for debug
    output wire        ctl_dwt_atomic_o,      // core is atomic, for debug
    output wire        ctl_dbg_ex_last_o,     // core is retiring, for debug
    output wire        ctl_dbg_ex_reset_o,    // core is in reset, for debug
    output wire [ 1:0] ctl_ls_size_o,         // transaction size, for debug
    output wire        ctl_bpu_event_o,       // BPU hit / BKPT in execute
    output wire        ctl_int_ready_o,       // core has registered interrupt
    output wire        ctl_ex_idle_o,         // core is sleeping/inactive
    output wire        ctl_wfe_execute_o,     // executing WFE
    output wire        ctl_wfi_execute_o,     // executing WFI or sleep-on-exit
    output wire        ctl_wfi_adv_raw_o,     // core is leaving WFI state
    output wire        ctl_hdf_request_o,     // HardFault pend request
    output wire        dec_svc_request_o,     // SVCall pend request
    output wire        dec_int_taken_o,       // current IPSR interrupt taken
    output wire        dec_int_return_o,      // current IPSR interrupt return
    output wire [31:0] gpr_hwdata_o,          // bus write-data
    output wire [31:0] gpr_dcrdr_data_o,      // debug reg-bank access DCRDR
    output wire [30:0] pfu_dwt_iaex_o,        // PC value for watchpoint PCSR
    output wire        pfu_pipefull_o,        // pipeline full indicator
    output wire        psr_primask_ex_o,      // forwarded PRIMASK value
    output wire        psr_primask_o,         // registered PRIMASK value
    output wire        psr_nmi_active_o,      // IPSR is NMI
    output wire        psr_hdf_active_o,      // IPSR is HardFault
    output wire        psr_n_or_h_active_o,   // IPSR is NMI or HardFault
    output wire [ 5:0] psr_ipsr_o,            // current IPSR value
    output wire        psr_dbg_hardfault_o,   // IPSR is HardFault, for debug

    input  wire [31:0] hrdata_i,              // AHB read-data
    input  wire        hready_i,              // AHB ready and core advance
    input  wire [ 7:0] irq_latency_i,         // interrupt latency (-3)
    input  wire        sleep_hold_req_n_i,    // sleep extension request

    input  wire [ 1:0] bpu_match_i,           // breakpoint unit match
    input  wire        dbg_c_debugen_i,       // global debug master enable
    input  wire        dbg_halt_req_i,        // debug halt request
    input  wire        dbg_op_run_i,          // debug DCRSR action request
    input  wire [31:0] dif_wdata_i,           // debug DCRSR/DCRDR value
    input  wire        msl_dbg_op_en_i,       // debug DCRSR load to decoder
    input  wire        msl_dbg_aux_en_i,      // debug DCRDR load to AUX
    input  wire        mtx_cpu_resp_i,        // error response from AHB
    input  wire [31:0] mtx_ppb_hrdata_i,      // PPB space read-data
    input  wire        mtx_ppb_active_i,      // data-phase is to PPB space
    input  wire        nvm_int_pend_i,        // NVIC interrupt pending
    input  wire [ 5:0] nvm_int_pend_num_i,    // NVIC interrupt number
    input  wire        nvm_svc_escalate_i,    // SVC should generate HardFault
    input  wire        nvm_wfi_advance_i,     // WFI should retire
    input  wire        nvr_wfe_advance_i,     // WFE should retire
    input  wire        nvr_sleep_on_exit_i,   // return to Thread should WFI
    input  wire        nvr_vect_clr_active_i);// clear all exceptions

   // ------------------------------------------------------------
   // Local wires
   // ------------------------------------------------------------

   wire [31:0] alu_res;           // arithmetic/logic result
   wire        alu_vflag;         // arithmetic overflow flag
   wire        alu_cflag;         // arithmetic carry-out flag
   wire [31:0] alu_addr_raw;      // pre-aligned AHB address
   wire        alu_align_err;     // misaligned address computed
   wire [31:0] alu_agu;           // clean (aligned) AHB address
   wire        alu_xn_region;     // address is execute-never
   wire        alu_itrans_ack;    // instruction trans issued

   wire [ 3:0] ctl_ra_addr;       // primary read-port address
   wire [ 3:0] ctl_rb_addr;       // secondary read-port address
   wire [ 3:0] ctl_wr_addr;       // write-port address
   wire        ctl_wr_en;         // write-port write-enable
   wire        ctl_xpsr_en;       // enable EXNUM
   wire        ctl_msr_en;        // MSR is in execute
   wire [19:0] ctl_alu_ctl;       // Control for arithmetic-logic unit
   wire [35:0] ctl_spu_ctl;       // Control for shift/permute unit
   wire        ctl_mul_ctl;       // Control for multiplier unit
   wire [11:0] ctl_imm;           // control derived immediate value
   wire        ctl_kill_addr;     // Qualified data abort cycle
   wire        ctl_nmi_lockup;    // execution in NMI will LOCKUP
   wire        ctl_hdf_lockup;    // execution in HardFault will LOCKUP
   wire        ctl_addr_phase;    // data-side address phase
   wire        ctl_ex_last;       // last cycle in execute
   wire        ctl_iaex_en;       // enable IAEX advance
   wire        ctl_dbg_xpsr_en;   // debug XPSR write
   wire        ctl_write_last;    // write data-phase
   wire        ctl_instr_rfi;     // valid return-from-interrupt instruction
   wire        ctl_spu_en;        // shift-permute enabled, use its result
   wire        ctl_xpsr_sel_pfu;  // select exception number from IRQ

   wire        dec_xpsr_sel_spu;  // select exception number from bus
   wire        dec_aux_en;        // auxiliary-register enabled in this cycle
   wire        dec_nzflag_en;     // enable N and Z flag update
   wire        dec_cflag_en;      // enable C flag update
   wire        dec_vflag_en;      // enable V flag update
   wire        dec_agu_ex;        // execute is driving AHB
   wire        dec_agu_sel_ra;    // execute HADDR is RA value
   wire        dec_agu_sel_add;   // execute HADDR is AGU output
   wire        dec_bus_idle;      // force AHB IDLE
   wire        dec_cps_en;        // CPS in execute
   wire        dec_aux_tbit;      // force LSB of AUX
   wire        dec_aux_align;     // word align AUX
   wire        dec_aux_sel_xpsr;  // place XPSR into AUX
   wire        dec_aux_sel_iaex;  // place XPSR into AUX
   wire        dec_aux_sel_addr;  // place XPSR into AUX
   wire        dec_ra_use_aux;    // force a-port to output AUX reg
   wire        dec_sp_sel_en;     // stack-pointer register enable
   wire        dec_sp_sel_psp;    // use auxiliary stack-pointer (PSP)
   wire        dec_sp_sel_auto;   // select PSP from natural PSP
   wire        dec_iaex_sel_agu;  // update IAEX from AGU
   wire        dec_iaex_sel_spu;  // update IAEX from SPU
   wire        dec_interwork;     // instruction / exception is interworking
   wire        dec_sp_align_en;   // enable sampling of SP bit[2]

   wire [31:0] gpr_ra_data_lo;    // primary read-port value (r0-r7 only)
   wire [31:0] gpr_ra_data_hi;    // primary read-port value (all registers)
   wire [31:0] gpr_rb_data_lo;    // secondary read-port value (r0-r7 only)
   wire [31:0] gpr_rb_data_hi;    // secondary read-port value (all registers)

   wire [31:0] mul_res;           // single-cycle multiplier result
   wire        mul_sel;           // multi-cycle multiplier current bit value

   wire [15:0] pfu_opcode;        // current instruction opcode
   wire        pfu_op_special;    // instruction is breakpoint or abort
   wire        pfu_tbit;          // Thumb-State bit
   wire        pfu_iaex_rfi;      // IAEX looks like return from int
   wire        pfu_rfi_on_psp;    // exception return should use PSP
   wire        pfu_sleep_rfi;     // Return from interrupt with SLEEP_ON_EXIT
   wire [30:0] pfu_iaex_val;      // value of IAEX
   wire [ 5:0] pfu_int_num;       // registered int_pend_num
   wire        pfu_int_delay;     // hold off interrupt entry
   wire        pfu_itrans_req;    // PFU AHB transaction
   wire [30:0] pfu_fe_addr;       // current fetch address

   wire [31:0] psr_gpr_wdata;     // next write value (if enabled)
   wire        psr_sp_auto;       // natural selection for PSP value
   wire        psr_cflag;         // current C (carry) flag
   wire        psr_cc_pass;       // branch in decode passes condition
   wire        psr_rfi_in_irq;    // EXC_RETURN whilst in interrupt
   wire [ 3:0] psr_apsr;          // processor flags
   wire        psr_control;       // CONTROL[1]
   wire        psr_sp_align;      // value of XPSR[9]
   wire        psr_handler;       // currently in Handler mode
   wire        psr_svc_is_undef;  // SVC instruction should escalate

   wire [31:0] spu_res;           // result from SPU (shift/load ops)
   wire        spu_zflag;         // shift result zero flag
   wire        spu_cflag;         // shift carry-out flag
   wire        spu_nflag;         // shift negative-out flag

   // ------------------------------------------------------------
   // Arithmetic logic unit instantiation
   // ------------------------------------------------------------

   cm0_core_alu
     #(.CBAW(CBAW), .SMUL(SMUL))
       u_alu
         (.alu_spec_htrans_o      (alu_spec_htrans_o),

          .alu_haddr_o            (alu_haddr_o[31:0]),
          .alu_hsize_o            (alu_hsize_o[1:0]),
          .alu_ext_trans_o        (alu_ext_trans_o),
          .alu_ppb_trans_o        (alu_ppb_trans_o),
          .alu_dbg_trans_o        (alu_dbg_trans_o),
          .alu_itrans_ack_o       (alu_itrans_ack),

          .alu_agu_o              (alu_agu[31:0]),
          .alu_res_o              (alu_res[31:0]),
          .alu_cflag_o            (alu_cflag),
          .alu_vflag_o            (alu_vflag),
          .alu_addr_raw_o         (alu_addr_raw[31:0]),
          .alu_align_err_o        (alu_align_err),
          .alu_xn_region_o        (alu_xn_region),

          .ctl_alu_ctl_i          (ctl_alu_ctl[19:0]),
          .ctl_mul_ctl_i          (ctl_mul_ctl),
          .ctl_ls_size_i          (ctl_ls_size_o[1:0]),
          .ctl_addr_phase_i       (ctl_addr_phase),
          .ctl_kill_addr_i        (ctl_kill_addr),
          .ctl_imm_i              (ctl_imm[11:0]),
          .dec_agu_ex_i           (dec_agu_ex),
          .dec_agu_sel_ra_i       (dec_agu_sel_ra),
          .dec_agu_sel_add_i      (dec_agu_sel_add),
          .dec_bus_idle_i         (dec_bus_idle),
          .gpr_ra_data_hi_i       (gpr_ra_data_hi[31:0]),
          .gpr_rb_data_hi_i       (gpr_rb_data_hi[31:0]),
          .mul_sel_i              (mul_sel),
          .pfu_itrans_req_i       (pfu_itrans_req),
          .pfu_opcode_13_i        (pfu_opcode[13]),
          .pfu_opcode_11_0_i      (pfu_opcode[11:0]),
          .pfu_fe_addr_i          (pfu_fe_addr[30:0]),
          .psr_apsr_i             (psr_apsr[3:0]),
          .psr_ipsr_i             (psr_ipsr_o[5:0]),
          .psr_handler_i          (psr_handler),
          .psr_control_i          (psr_control),
          .psr_sp_align_i         (psr_sp_align),
          .psr_primask_i          (psr_primask_o));

   // ------------------------------------------------------------
   // Shift and permute unit instantiation
   // ------------------------------------------------------------

   cm0_core_spu
     #(.CBAW(CBAW), .BE(BE))
       u_spu
         (.spu_res_o              (spu_res[31:0]),
          .spu_zflag_o            (spu_zflag),
          .spu_cflag_o            (spu_cflag),
          .spu_nflag_o            (spu_nflag),

          .hrdata_i               (hrdata_i[31:0]),

          .ctl_spu_ctl_i          (ctl_spu_ctl[35:0]),
          .ctl_imm_4_0_i          (ctl_imm[4:0]),
          .gpr_ra_data_lo_i       (gpr_ra_data_lo[31:0]),
          .gpr_rb_data_lo_7_0_i   (gpr_rb_data_lo[7:0]),
          .psr_cflag_i            (psr_cflag),
          .mtx_ppb_active_i       (mtx_ppb_active_i),
          .mtx_cpu_resp_i         (mtx_cpu_resp_i),
          .mtx_ppb_hrdata_i       (mtx_ppb_hrdata_i[31:0]));

   // ------------------------------------------------------------
   // Single-cycle multiplier instantiation
   // ------------------------------------------------------------

   cm0_core_mul
     #(.CBAW(CBAW), .SMUL(SMUL))
       u_mul
         (.mul_res_o              (mul_res[31:0]),
          .mul_sel_o              (mul_sel),

          .ctl_mul_ctl_i          (ctl_mul_ctl),
          .ctl_imm_4_0_i          (ctl_imm[4:0]),
          .gpr_ra_data_lo_i       (gpr_ra_data_lo[31:0]),
          .gpr_rb_data_lo_i       (gpr_rb_data_lo[31:0]));

   // ------------------------------------------------------------
   // Processor status registers and final mux instantiation
   // ------------------------------------------------------------

   cm0_core_psr
     #(.CBAW(CBAW), .DBG(DBG), .SMUL(SMUL))
       u_psr
         (.hclk                   (hclk),
          .hreset_n               (hreset_n),

          .psr_dbg_hardfault_o    (psr_dbg_hardfault_o),
          .psr_primask_o          (psr_primask_o),
          .psr_primask_ex_o       (psr_primask_ex_o),
          .psr_gpr_wdata_o        (psr_gpr_wdata[31:0]),
          .psr_cflag_o            (psr_cflag),
          .psr_apsr_o             (psr_apsr[3:0]),
          .psr_ipsr_o             (psr_ipsr_o[5:0]),
          .psr_control_o          (psr_control),
          .psr_cc_pass_o          (psr_cc_pass),
          .psr_rfi_in_irq_o       (psr_rfi_in_irq),
          .psr_sp_auto_o          (psr_sp_auto),
          .psr_sp_align_o         (psr_sp_align),
          .psr_handler_o          (psr_handler),
          .psr_nmi_active_o       (psr_nmi_active_o),
          .psr_hdf_active_o       (psr_hdf_active_o),
          .psr_n_or_h_active_o    (psr_n_or_h_active_o),
          .psr_svc_is_undef_o     (psr_svc_is_undef),
          .hready_i               (hready_i),

          .alu_vflag_i            (alu_vflag),
          .alu_res_i              (alu_res[31:0]),
          .alu_cflag_i            (alu_cflag),
          .ctl_instr_rfi_i        (ctl_instr_rfi),
          .ctl_xpsr_en_i          (ctl_xpsr_en),
          .ctl_msr_en_i           (ctl_msr_en),
          .ctl_spu_en_i           (ctl_spu_en),
          .ctl_rb_addr_1_i        (ctl_rb_addr[1]),
          .ctl_wr_addr_1_i        (ctl_wr_addr[1]),
          .ctl_dbg_xpsr_en_i      (ctl_dbg_xpsr_en),
          .ctl_imm_4_i            (ctl_imm[4]),
          .ctl_imm_2_i            (ctl_imm[2]),
          .ctl_halt_ack_i         (ctl_halt_ack_o),
          .ctl_xpsr_sel_pfu_i     (ctl_xpsr_sel_pfu),
          .dec_xpsr_sel_spu_i     (dec_xpsr_sel_spu),
          .dec_nzflag_en_i        (dec_nzflag_en),
          .dec_cflag_en_i         (dec_cflag_en),
          .dec_vflag_en_i         (dec_vflag_en),
          .dec_cps_en_i           (dec_cps_en),
          .dec_sp_align_en_i      (dec_sp_align_en),
          .dec_int_taken_i        (dec_int_taken_o),
          .gpr_ra_data_hi_2_i     (gpr_ra_data_hi[2]),
          .gpr_rb_data_hi_31_28_i (gpr_rb_data_hi[31:28]),
          .gpr_rb_data_hi_25_i    (gpr_rb_data_hi[25]),
          .gpr_rb_data_hi_1_0_i   (gpr_rb_data_hi[1:0]),
          .mul_res_i              (mul_res[31:0]),
          .nvm_svc_escalate_i     (nvm_svc_escalate_i),
          .nvr_vect_clr_active_i  (nvr_vect_clr_active_i),
          .pfu_int_num_i          (pfu_int_num[5:0]),
          .pfu_opcode_11_8_i      (pfu_opcode[11:8]),
          .pfu_iaex_rfi_i         (pfu_iaex_rfi),
          .pfu_rfi_on_psp_i       (pfu_rfi_on_psp),
          .spu_res_i              (spu_res[31:0]),
          .spu_cflag_i            (spu_cflag),
          .spu_zflag_i            (spu_zflag),
          .spu_nflag_i            (spu_nflag));

   // ------------------------------------------------------------
   // General purpose register file instantiation
   // ------------------------------------------------------------

   cm0_core_gpr
     #(.CBAW(CBAW), .BE(BE), .DBG(DBG), .RAR(RAR), .SMUL(SMUL))
       u_gpr
         (.hclk                   (hclk),
          .rclk0                  (rclk0),
          .rclk1                  (rclk1),
          .hreset_n               (hreset_n),

          .gpr_hwdata_o           (gpr_hwdata_o[31:0]),
          .gpr_ra_data_lo_o       (gpr_ra_data_lo[31:0]),
          .gpr_ra_data_hi_o       (gpr_ra_data_hi[31:0]),
          .gpr_rb_data_lo_o       (gpr_rb_data_lo[31:0]),
          .gpr_rb_data_hi_o       (gpr_rb_data_hi[31:0]),
          .gpr_dcrdr_data_o       (gpr_dcrdr_data_o[31:0]),

          .hready_i               (hready_i),

          .alu_addr_raw_i         (alu_addr_raw[31:0]),
          .ctl_ra_addr_i          (ctl_ra_addr[3:0]),
          .ctl_rb_addr_i          (ctl_rb_addr[3:0]),
          .ctl_wr_en_i            (ctl_wr_en),
          .ctl_wr_addr_i          (ctl_wr_addr[3:0]),
          .ctl_ls_size_i          (ctl_ls_size_o[1:0]),
          .ctl_mul_ctl_i          (ctl_mul_ctl),
          .ctl_write_last_i       (ctl_write_last),
          .ctl_halt_ack_i         (ctl_halt_ack_o),
          .dec_sp_sel_psp_i       (dec_sp_sel_psp),
          .dec_sp_sel_en_i        (dec_sp_sel_en),
          .dec_sp_sel_auto_i      (dec_sp_sel_auto),
          .dec_aux_en_i           (dec_aux_en),
          .dec_aux_tbit_i         (dec_aux_tbit),
          .dec_aux_align_i        (dec_aux_align),
          .dec_aux_sel_xpsr_i     (dec_aux_sel_xpsr),
          .dec_aux_sel_iaex_i     (dec_aux_sel_iaex),
          .dec_aux_sel_addr_i     (dec_aux_sel_addr),
          .dec_ra_use_aux_i       (dec_ra_use_aux),
          .dif_wdata_i            (dif_wdata_i[31:0]),
          .msl_dbg_aux_en_i       (msl_dbg_aux_en_i),
          .mtx_ppb_active_i       (mtx_ppb_active_i),
          .pfu_tbit_i             (pfu_tbit),
          .pfu_iaex_val_i         (pfu_iaex_val[30:0]),
          .psr_sp_auto_i          (psr_sp_auto),
          .psr_gpr_wdata_i        (psr_gpr_wdata[31:0]),
          .psr_apsr_i             (psr_apsr[3:0]),
          .psr_ipsr_i             (psr_ipsr_o[5:0]),
          .psr_control_i          (psr_control),
          .psr_primask_i          (psr_primask_o),
          .psr_sp_align_i         (psr_sp_align));

   // ------------------------------------------------------------
   // Prefetch unit instantiation
   // ------------------------------------------------------------

   cm0_core_pfu
     #(.CBAW(CBAW), .DBG(DBG), .RAR(RAR))
       u_pfu
         (.sclk                   (sclk),
          .hclk                   (hclk),
          .hreset_n               (hreset_n),

          .code_nseq_o            (code_nseq_o),

          .pfu_dwt_iaex_o         (pfu_dwt_iaex_o[30:0]),
          .pfu_pipefull_o         (pfu_pipefull_o),
          .pfu_opcode_o           (pfu_opcode[15:0]),
          .pfu_op_special_o       (pfu_op_special),
          .pfu_fe_addr_o          (pfu_fe_addr[30:0]),
          .pfu_iaex_rfi_o         (pfu_iaex_rfi),
          .pfu_itrans_req_o       (pfu_itrans_req),
          .pfu_rfi_on_psp_o       (pfu_rfi_on_psp),
          .pfu_sleep_rfi_o        (pfu_sleep_rfi),
          .pfu_tbit_o             (pfu_tbit),
          .pfu_iaex_val_o         (pfu_iaex_val[30:0]),
          .pfu_int_num_o          (pfu_int_num[5:0]),
          .pfu_int_delay_o        (pfu_int_delay),

          .hready_i               (hready_i),
          .hrdata_i               (hrdata_i[31:0]),
          .irq_latency_i          (irq_latency_i[7:0]),
          .lockup_i               (lockup_o),

          .alu_agu_i              (alu_agu[31:0]),
          .alu_xn_region_i        (alu_xn_region),
          .alu_itrans_ack_i       (alu_itrans_ack),
          .bpu_match_i            (bpu_match_i[1:0]),
          .ctl_dbg_xpsr_en_i      (ctl_dbg_xpsr_en),
          .ctl_iaex_en_i          (ctl_iaex_en),
          .ctl_ex_last_i          (ctl_ex_last),
          .ctl_nmi_lockup_i       (ctl_nmi_lockup),
          .ctl_hdf_lockup_i       (ctl_hdf_lockup),
          .ctl_xpsr_en_i          (ctl_xpsr_en),
          .ctl_halt_ack_i         (ctl_halt_ack_o),
          .dec_int_taken_i        (dec_int_taken_o),
          .dec_xpsr_sel_spu_i     (dec_xpsr_sel_spu),
          .dec_bus_idle_i         (dec_bus_idle),
          .dec_interwork_i        (dec_interwork),
          .dec_iaex_sel_agu_i     (dec_iaex_sel_agu),
          .dec_iaex_sel_spu_i     (dec_iaex_sel_spu),
          .dif_wdata_16_i         (dif_wdata_i[16]),
          .dif_wdata_4_0_i        (dif_wdata_i[4:0]),
          .gpr_dcrdr_data_24_i    (gpr_dcrdr_data_o[24]),
          .msl_dbg_op_en_i        (msl_dbg_op_en_i),
          .mtx_cpu_resp_i         (mtx_cpu_resp_i),
          .nvm_int_pend_i         (nvm_int_pend_i),
          .nvm_int_pend_num_i     (nvm_int_pend_num_i[5:0]),
          .nvr_sleep_on_exit_i    (nvr_sleep_on_exit_i),
          .psr_nmi_active_i       (psr_nmi_active_o),
          .psr_hdf_active_i       (psr_hdf_active_o),
          .spu_res_i              (spu_res[31:0]));

   // ------------------------------------------------------------
   // Control and decoder instantiation
   // ------------------------------------------------------------

   cm0_core_ctl
     #(.CBAW(CBAW), .BE(BE), .DBG(DBG), .RAR(RAR), .SMUL(SMUL))
       u_ctl
         (.sclk                   (sclk),
          .hclk                   (hclk),
          .hreset_n               (hreset_n),

          .txev_o                 (txev_o),
          .sleep_hold_ack_n_o     (sleep_hold_ack_n_o),
          .lockup_o               (lockup_o),
          .code_hint_de_o         (code_hint_de_o[2:0]),

          .ctl_alu_ctl_o          (ctl_alu_ctl[19:0]),
          .ctl_spu_ctl_o          (ctl_spu_ctl[35:0]),
          .ctl_mul_ctl_o          (ctl_mul_ctl),
          .ctl_ls_size_o          (ctl_ls_size_o[1:0]),
          .ctl_spu_en_o           (ctl_spu_en),
          .ctl_xpsr_en_o          (ctl_xpsr_en),
          .ctl_ra_addr_o          (ctl_ra_addr[3:0]),
          .ctl_rb_addr_o          (ctl_rb_addr[3:0]),
          .ctl_wr_addr_o          (ctl_wr_addr[3:0]),
          .ctl_wr_en_o            (ctl_wr_en),
          .ctl_msr_en_o           (ctl_msr_en),
          .ctl_imm_o              (ctl_imm[11:0]),
          .ctl_ex_last_o          (ctl_ex_last),
          .ctl_write_last_o       (ctl_write_last),
          .ctl_iaex_en_o          (ctl_iaex_en),
          .ctl_addr_phase_o       (ctl_addr_phase),
          .ctl_int_ready_o        (ctl_int_ready_o),
          .ctl_dbg_xpsr_en_o      (ctl_dbg_xpsr_en),
          .ctl_xpsr_sel_pfu_o     (ctl_xpsr_sel_pfu),
          .ctl_kill_addr_o        (ctl_kill_addr),
          .ctl_nmi_lockup_o       (ctl_nmi_lockup),
          .ctl_hdf_lockup_o       (ctl_hdf_lockup),
          .ctl_hwrite_o           (ctl_hwrite_o),
          .ctl_hprot_o            (ctl_hprot_o),
          .ctl_ex_idle_o          (ctl_ex_idle_o),
          .ctl_wfe_execute_o      (ctl_wfe_execute_o),
          .ctl_wfi_execute_o      (ctl_wfi_execute_o),
          .ctl_instr_rfi_o        (ctl_instr_rfi),
          .ctl_wfi_adv_raw_o      (ctl_wfi_adv_raw_o),
          .ctl_halt_ack_o         (ctl_halt_ack_o),
          .ctl_rclk0_en_o         (ctl_rclk0_en_o),
          .ctl_rclk1_en_o         (ctl_rclk1_en_o),
          .ctl_hdf_request_o      (ctl_hdf_request_o),
          .ctl_dbg_lockup_o       (ctl_dbg_lockup_o),
          .ctl_dwt_atomic_o       (ctl_dwt_atomic_o),
          .ctl_dbg_ex_last_o      (ctl_dbg_ex_last_o),
          .ctl_dbg_ex_reset_o     (ctl_dbg_ex_reset_o),
          .ctl_bpu_event_o        (ctl_bpu_event_o),
          .dec_svc_request_o      (dec_svc_request_o),
          .dec_int_taken_o        (dec_int_taken_o),
          .dec_int_return_o       (dec_int_return_o),
          .dec_aux_en_o           (dec_aux_en),
          .dec_cps_en_o           (dec_cps_en),
          .dec_xpsr_sel_spu_o     (dec_xpsr_sel_spu),
          .dec_aux_tbit_o         (dec_aux_tbit),
          .dec_aux_align_o        (dec_aux_align),
          .dec_aux_sel_xpsr_o     (dec_aux_sel_xpsr),
          .dec_aux_sel_addr_o     (dec_aux_sel_addr),
          .dec_aux_sel_iaex_o     (dec_aux_sel_iaex),
          .dec_ra_use_aux_o       (dec_ra_use_aux),
          .dec_sp_sel_psp_o       (dec_sp_sel_psp),
          .dec_sp_sel_en_o        (dec_sp_sel_en),
          .dec_sp_sel_auto_o      (dec_sp_sel_auto),
          .dec_nzflag_en_o        (dec_nzflag_en),
          .dec_cflag_en_o         (dec_cflag_en),
          .dec_vflag_en_o         (dec_vflag_en),
          .dec_bus_idle_o         (dec_bus_idle),
          .dec_agu_ex_o           (dec_agu_ex),
          .dec_agu_sel_ra_o       (dec_agu_sel_ra),
          .dec_agu_sel_add_o      (dec_agu_sel_add),
          .dec_iaex_sel_agu_o     (dec_iaex_sel_agu),
          .dec_iaex_sel_spu_o     (dec_iaex_sel_spu),
          .dec_interwork_o        (dec_interwork),
          .dec_sp_align_en_o      (dec_sp_align_en),

          .hready_i               (hready_i),
          .sleep_hold_req_n_i     (sleep_hold_req_n_i),

          .alu_addr_raw_1_0_i     (alu_addr_raw[1:0]),
          .alu_align_err_i        (alu_align_err),
          .dbg_halt_req_i         (dbg_halt_req_i),
          .dbg_op_run_i           (dbg_op_run_i),
          .dbg_c_debugen_i        (dbg_c_debugen_i),
          .mtx_cpu_resp_i         (mtx_cpu_resp_i),
          .nvm_int_pend_i         (nvm_int_pend_i),
          .nvm_svc_escalate_i     (psr_svc_is_undef),
          .nvm_hdf_escalate_i     (psr_n_or_h_active_o),
          .nvr_wfe_advance_i      (nvr_wfe_advance_i),
          .nvm_wfi_advance_i      (nvm_wfi_advance_i),
          .pfu_opcode_i           (pfu_opcode[15:0]),
          .pfu_op_special_i       (pfu_op_special),
          .pfu_int_num_i          (pfu_int_num[5:0]),
          .pfu_sleep_rfi_i        (pfu_sleep_rfi),
          .pfu_int_delay_i        (pfu_int_delay),
          .pfu_rfi_on_psp_i       (pfu_rfi_on_psp),
          .psr_nmi_active_i       (psr_nmi_active_o),
          .psr_hdf_active_i       (psr_hdf_active_o),
          .psr_cc_pass_i          (psr_cc_pass),
          .psr_rfi_in_irq_i       (psr_rfi_in_irq));


   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   // Can only LockUp at NMI or HardFault priority
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"Must only LockUp at NMI or HardFault")
   u_asrt_lockup_ok
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(lockup_o),
      .consequent_expr(psr_nmi_active_o | psr_hdf_active_o));

`endif

endmodule // cm0_core

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
