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
// CORTEX-M0 CORE CONTROL
//-----------------------------------------------------------------------------

module cm0_core_ctl
  #(parameter CBAW = 0,
    parameter BE   = 0,
    parameter DBG  = 1,
    parameter RAR  = 0,
    parameter SMUL = 0)

   (input  wire        sclk,                // system clock
    input  wire        hclk,                // gated AHB clock
    input  wire        hreset_n,            // system reset

    output wire [ 2:0] code_hint_de_o,      // fetch hints
    output wire        lockup_o,            // core is in LOCKUP
    output wire        sleep_hold_ack_n_o,  // sleep extension acknowledge
    output wire        txev_o,              // event output (SEV in execute)

    output wire        ctl_rclk0_en_o,      // lower reg-bank clock enable
    output wire        ctl_rclk1_en_o,      // upper reg-bank clock enable
    output wire        ctl_hwrite_o,        // write not read transaction
    output wire        ctl_hprot_o,         // data not instruction
    output wire [19:0] ctl_alu_ctl_o,       // arithmetic logic unit control
    output wire [35:0] ctl_spu_ctl_o,       // shift-permute unit control
    output wire        ctl_mul_ctl_o,       // multiplier enable
    output wire [ 1:0] ctl_ls_size_o,       // load/store data size
    output wire        ctl_spu_en_o,        // select SPU result not ALU
    output wire        ctl_xpsr_en_o,       // enable PSR fields for writing
    output wire [ 3:0] ctl_ra_addr_o,       // read-port A address
    output wire [ 3:0] ctl_rb_addr_o,       // read-port B address
    output wire [ 3:0] ctl_wr_addr_o,       // write-port address
    output wire        ctl_wr_en_o,         // write-port register enable
    output wire [11:0] ctl_imm_o,           // immediate operand
    output wire        ctl_msr_en_o,        // MSR like operation in execute
    output wire        ctl_ex_last_o,       // last cycle of operation
    output wire        ctl_write_last_o,    // data-phase of a bus write
    output wire        ctl_iaex_en_o,       // IAEX (PC) update enable
    output wire        ctl_addr_phase_o,    // data address-phase
    output wire        ctl_int_ready_o,     // core has register interrupt
    output wire        ctl_hdf_request_o,   // HardFault pend request
    output wire        ctl_ex_idle_o,       // core sleeping on WFI / WFE
    output wire        ctl_wfe_execute_o,   // core executing WFE
    output wire        ctl_wfi_execute_o,   // core executing WFI or SoE
    output wire        ctl_wfi_adv_raw_o,   // core waking from WFI
    output wire        ctl_kill_addr_o,     // kill pipelined address phase
    output wire        ctl_instr_rfi_o,     // POP/BX, check for EXC_RETURN
    output wire        ctl_nmi_lockup_o,    // tell PFU to LOCKUP at NMI
    output wire        ctl_hdf_lockup_o,    // tell PFU to LOCKUP at HardFault
    output wire        ctl_halt_ack_o,      // core is halted
    output wire        ctl_dwt_atomic_o,    // microcode active, for debug
    output wire        ctl_dbg_lockup_o,    // core in LOCKUP, for debug
    output wire        ctl_dbg_ex_last_o,   // core last cycle, for debug
    output wire        ctl_dbg_ex_reset_o,  // core in reset, for debug
    output wire        ctl_dbg_xpsr_en_o,   // debug write to PSR fields
    output wire        ctl_bpu_event_o,     // breakpoint hit / BKPT in execute
    output wire        ctl_xpsr_sel_pfu_o,  // select PSR from prefetch unit
    output wire        dec_xpsr_sel_spu_o,  // select PSR from load
    output wire        dec_cps_en_o,        // enable PRIMASK update
    output wire        dec_aux_en_o,        // enable reg-bank AUX register
    output wire        dec_aux_tbit_o,      // copy T-bit to AUX register
    output wire        dec_aux_align_o,     // align AUX register to 32-bits
    output wire        dec_aux_sel_xpsr_o,  // copy xPSR into AUX register
    output wire        dec_aux_sel_iaex_o,  // copy instruction address to AUX
    output wire        dec_aux_sel_addr_o,  // copy computed address to AUX
    output wire        dec_ra_use_aux_o,    // force read-port A to provide AUX
    output wire        dec_sp_sel_psp_o,    // select PSP not MSP
    output wire        dec_sp_sel_en_o,     // enable SP selection register
    output wire        dec_sp_sel_auto_o,   // select SP based on CONTROL
    output wire        dec_nzflag_en_o,     // enable N and Z flag update
    output wire        dec_cflag_en_o,      // enable C flag update
    output wire        dec_vflag_en_o,      // enable V flag update
    output wire        dec_bus_idle_o,      // force AHB to idle
    output wire        dec_agu_ex_o,        // generate address from execute
    output wire        dec_agu_sel_ra_o,    // use read-port A as address
    output wire        dec_agu_sel_add_o,   // use ALU adder for address
    output wire        dec_iaex_sel_agu_o,  // select ALU adder for next PC
    output wire        dec_iaex_sel_spu_o,  // select load data for next PC
    output wire        dec_svc_request_o,   // Request pending of SVCall
    output wire        dec_interwork_o,     // PC update includes T-bit
    output wire        dec_sp_align_en_o,   // sample SP alignment for AEABI
    output wire        dec_int_taken_o,     // report interrupt taken
    output wire        dec_int_return_o,    // report interrupt returned from

    input  wire        hready_i,            // AHB read / core advance
    input  wire        sleep_hold_req_n_i,  // sleep extension request

    input  wire [ 1:0] alu_addr_raw_1_0_i,  // byte index for load permutation
    input  wire        alu_align_err_i,     // ALU detected alignment fault
    input  wire        dbg_halt_req_i,      // debug requests core halt
    input  wire        dbg_op_run_i,        // debug DCRSR execute
    input  wire        dbg_c_debugen_i,     // master debug enable
    input  wire        mtx_cpu_resp_i,      // AHB error response
    input  wire        nvm_int_pend_i,      // interrupt pending in NVIC
    input  wire        nvm_svc_escalate_i,  // SVC should generate HardFault
    input  wire        nvm_hdf_escalate_i,  // any fault should cause LOCKUP
    input  wire        nvm_wfi_advance_i,   // WFI and SoE should retire
    input  wire        nvr_wfe_advance_i,   // WFE should retire
    input  wire [ 5:0] pfu_int_num_i,       // registered IRQ number in PFU
    input  wire        pfu_sleep_rfi_i,     // EXC_RETURN to Thread and SoE
    input  wire [15:0] pfu_opcode_i,        // instruction opcode from PFU
    input  wire        pfu_op_special_i,    // not an architected instruction
    input  wire        psr_cc_pass_i,       // condition code for Bcc passes
    input  wire        psr_rfi_in_irq_i,    // valid return from exception
    input  wire        psr_nmi_active_i,    // current IPSR is NMI
    input  wire        psr_hdf_active_i,    // current IPSR is HardFault
    input  wire        pfu_int_delay_i,     // defer vector fetch for no jitter
    input  wire        pfu_rfi_on_psp_i);   // exception return uses PSP

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire        cfg_dbg  = (CBAW == 0) ? (DBG  != 0) : 1'bZ;
   wire        cfg_be   = (CBAW == 0) ? (BE   != 0) : 1'bZ;
   wire        cfg_rar  = (CBAW == 0) ? (RAR != 0)  : 1'bZ;
   wire        cfg_smul = (CBAW == 0) ? (SMUL != 0) : 1'bZ;

   // ------------------------------------------------------------
   // Local execute control register state
   // ------------------------------------------------------------

   reg         atomic;       // state explicit interrupt behaviour
   reg  [ 7:0] ex_ctl;       // current state
   reg         ex_last;      // final cycle of instruction
   reg  [ 3:0] ra_addr;      // read-port A address
   reg  [ 3:0] rb_addr;      // read-port B address
   reg  [ 3:0] wr_addr_raw;  // write-port address (pre-selection)
   reg  [ 7:0] imm_val;      // immediate-value
   reg         instr_rfi;    // instruction is valid for return
   reg         int_ready;    // interrupt is ready to preempt
   reg         int_delay;    // hold off to guarantee latency
   reg         wfi_adv_raw;  // WFI may retire
   reg         data_abort;   // HRESP error on last cycle
   reg  [ 1:0] addr_last;    // HTRANS valid in last cycle
   reg         alu_en;       // ALU enabled in this cycle
   reg         spu_en;       // SPU enabled in this cycle
   reg         write_last;   // HWRITE valid in last cycle
   reg         hdf_escalate; // faults should LOCKUP
   reg         sleep_hold_n; // active-low sleep hold acknowledge
   reg         nmi_lock;     // LOCKUP at next NMI fetch
   reg         hdf_lock;     // LOCKUP at next HardFault fetch

   // ------------------------------------------------------------
   // Local inter-module wires
   // ------------------------------------------------------------

   // execute FSM control and next-state signals
   wire [ 7:0] ex_ctl_nxt;      // state-machine next-state
   wire        ex_last_nxt;     // new instruction may be advanced
   wire        atomic_nxt;      // non-interruptable exception/debug state

   // memory system control signals
   wire        addr_phase;      // address phase for data-transaction
   wire        data_phase;      // data phase for data-transaction
   wire        hwrite;          // write not read
   wire [ 1:0] ls_size_raw;     // optimised transaction size

   // read-pointer A generation signals
   wire        ra_addr_en;
   wire        ra_sel_z2_0, ra_sel_7_2_0, ra_sel_z5_3;
   wire        ra_sel_z10_8, ra_sel_sp, ra_sel_pc;

   // read-pointer B generation signals
   wire        rb_addr_en;
   wire        rb_sel_z5_3, rb_sel_6_3, rb_sel_z8_6, rb_sel_3_0;
   wire        rb_sel_wr_ex, rb_sel_list, rb_sel_sp, rb_sel_aux;

   // write-pointer generation signals
   wire        wr_addr_raw_en;
   wire        wr_sel_z2_0, wr_sel_z10_8, wr_sel_11_8, wr_sel_3_0;
   wire        wr_sel_10_7, wr_sel_7777, wr_sel_list, wr_sel_excp;

   // immediate value bits[7:4] generation signals
   wire        im74_en;
   wire        im74_sel_6_3, im74_sel_z10, im74_sel_z10_9;
   wire        im74_sel_z6_4, im74_sel_7_4, im74_sel_list;
   wire        im74_sel_excp, im74_sel_exnum;

   // immediate value bits[3:0] generation signals
   wire        im30_en;
   wire        im30_sel_2_0z, im30_sel_9_6, im30_sel_8_6z;
   wire        im30_sel_3_0, im30_sel_z8_6, im30_sel_list;
   wire        im30_sel_incr, im30_sel_one, im30_sel_seven;
   wire        im30_sel_eight, im30_sel_exnum;

   // execute-phase final write-pointer selection signals
   wire        wr_use_wr, wr_use_ra, wr_use_lr;
   wire        wr_use_sp, wr_use_list;

   // fetch hint decode signals
   wire        branch_de;       // branch-like operation in decode
   wire        b_cond_de;       // conditional branch in decode

   // ALU and SPU next-cycle enables and raw execute control
   wire        alu_en_nxt, spu_en_nxt, mul_ctl;
   wire [19:0] alu_ctl_raw;
   wire [35:0] spu_ctl_raw;

   // PFU advance signal
   wire        iaex_en;         // PC advance / update

   // exception and sleep signals
   wire        hdf_request_raw; // instruction derived HardFault request
   wire        bkpt_ex;         // breakpoint hit or BKPT in execute
   wire        halt_ack_raw;    // in halted state
   wire        lockup;          // in LOCKUP state
   wire        instr_rfi_nxt;   // check IAEX for exception return next cycle
   wire        ex_idle;         // WFI, WFE or sleep-on-exit idle state
   wire        wfi_execute;     // WFI in execute
   wire        wfe_execute;     // WFE or SoE in execute
   wire        xpsr_sel_pfu;    // select next XPSR from PFU using exnum_en

   // xPSR update
   wire        msr_en;          // MSR like operation requiring PSR update
   wire        exnum_en;        // IPSR update from exception entry or return

   // register-bank write enable
   wire        wr_en;           // operation in execute updates R0-R14

   // ------------------------------------------------------------
   // Abbreviate inputs to declutter following code
   // ------------------------------------------------------------

   wire [12:0] op       = pfu_opcode_i[12:0];
   wire [ 5:0] last_num = pfu_int_num_i;

   // ------------------------------------------------------------
   // Generate extra reset signal for reset-all-registers config
   // ------------------------------------------------------------

   wire        rar_reset_n = cfg_rar ? hreset_n : 1'b1;

   // ------------------------------------------------------------
   // Generate decode hints for external memory system
   // ------------------------------------------------------------

   // code_hint_de[2] indicates that there is a branch-like
   // construct in decode; code_hint_de[1] indicates a backwards
   // conditional branch; code_hint_de[0] indicates a forwards
   // conditional branch

   wire [ 2:0] code_hint_de = { branch_de,
                                b_cond_de &  op[7],
                                b_cond_de & ~op[7] };

   // ------------------------------------------------------------
   // Generate final qualified return-from-interrupt signal
   // ------------------------------------------------------------

   // POP {PC} and BX can both cause an EXC_RETURN value to be
   // loaded into IAEX; the PFU validates the value is an
   // EXC_RETURN and passes this to the PSR module, which
   // validates that we are in Handler Mode, this arrives as
   // psr_rfi_in_irq_i; the decoder detemines when a write to
   // IAEX should be tested, this is registered into instr_rfi

   wire        valid_rfi = psr_rfi_in_irq_i & instr_rfi;

   // ------------------------------------------------------------
   // Clean up raw interrupt pending input and register on HREADY
   // ------------------------------------------------------------

   // clean up some scenarios where interrupt pend bits get
   // cleared in parallel (either by the core or debugger) with
   // set interrupt attempting to preempt

   // int_ready becomes set if an interrupt is pending in the NVIC
   // and we are not writing a new exception number from the NVIC
   // to the IPSR this cycle, or entering halt

   wire        halt_ack      = cfg_dbg ? halt_ack_raw : 1'b0;

   wire        int_rdy_flush = ( exnum_en & xpsr_sel_pfu | // taken
                                 halt_ack );               // halted

   wire        int_rdy_new   = nvm_int_pend_i; // new NVIC interrupt

   wire        int_ready_nxt = ~int_rdy_flush;
   wire        int_ready_en  = int_rdy_new | int_rdy_flush;

   // ------------------------------------------------------------
   // LOCKUP pend / HardFaults for interrupt stacking / unstacking
   // ------------------------------------------------------------

   // the architecture requires the generation of a hardfault
   // for a read-fault on the XPSR load when returning on the
   // process-stack-pointer, and a HardFault level LockUp for
   // the same when using the main-stack-pointer

   wire        exc_ret_msp   = ~pfu_rfi_on_psp_i;

   wire        atomic_abort  = atomic & data_abort;
   wire        atomic_rabort = atomic_abort & ~write_last;
   wire        atomic_wabort = atomic_abort &  write_last;

   wire        xpsr_rabort   = atomic_rabort & exnum_en;

   wire        hdf_escalate_en = hready_i & atomic;

   wire        hdf_request = ( hdf_request_raw |
                               xpsr_rabort |
                               ~hdf_escalate & atomic_wabort |
                               ~nvm_hdf_escalate_i & atomic_rabort );


   // LockUp for instructions occurs as part of the decoder's
   // standard functionality via lockup_o; LockUps caused as
   // part of stacking or unstacking are recorded for application
   // to either the NMI or HardFault vector fetch (by forcing
   // the read vector to 0xFFFFFFFF on entry or return to the
   // appropriate handler)

   wire        nmi_lock_nxt =
               ( hdf_escalate & atomic_wabort |
                 psr_nmi_active_i & atomic_rabort & ~exnum_en );

   wire        hdf_lock_nxt =
               ( psr_hdf_active_i & atomic_rabort & ~exnum_en |
                 xpsr_rabort & exc_ret_msp);

   wire        lock_flush   = ex_last | halt_ack;
   wire        nmi_lock_en  = hready_i & (nmi_lock_nxt | lock_flush);
   wire        hdf_lock_en  = hready_i & (hdf_lock_nxt | lock_flush);

   // ------------------------------------------------------------
   // Specialised logic for small multiplier configuration
   // ------------------------------------------------------------

   // the fast multiplier implementation only requires a 0->9
   // counter in decode in order to deal with load/store
   // multiple instructions; the small multiplier requires this
   // extending to 0->31 in order to provide a cycle for each
   // individual bit

   wire        im74_sel_smul = ( cfg_smul ?
                                 mul_ctl & im30_sel_incr :
                                 1'b0 );

   // atomic is simply used to remove X-pessimism from control
   // until the reset sequence has flushed the immediate
   // register contents

   wire [ 4:0] im40_smul = {imm_val[4] & ~atomic, imm_val[3:0]};
   wire [ 4:0] im40_fmul = {1'b0, imm_val[3:0]};
   wire [ 4:0] im40_val  = cfg_smul ? im40_smul : im40_fmul;

   wire [ 5:0] im40_incr  = im40_val[4:0] + 1'b1;
   wire        smul_last  = cfg_smul ? im40_incr[5] : 1'b1;

   // ------------------------------------------------------------
   // Auto-incrementor and list length for load/store-multiples
   // ------------------------------------------------------------

   // the list evaluation logic "measures" the length of a
   // load/store-multiple, push/pop or stack list frame, and
   // generates the next-state list (i.e. with the appropriate
   // register bit removed) along with the current register
   // index; when dealing with normal instructions, the list may
   // contain {r0-r7,lr}; when dealing with exception stacking
   // and unstacking, the r4 value is replaced with r12

   wire [ 3:0] im30_incr  = im40_incr[3:0];

   wire [ 3:0] list_len   = ( op[0] + op[1] + op[2] + op[3] +
                              op[4] + op[5] + op[6] + op[7] +
                              (op[8] & op[12]) );

   wire [ 7:0] list       = {imm_val[7:4], wr_addr_raw[3:0]};

   // list_mask generates a mask with 1's at the top and 0's at
   // the bottom, the division point being determined by the
   // position of the first set bit in list[7:0]

   wire [ 7:0] list_mask  = { |list[7:0],
                              |list[6:0],
                              |list[5:0],
                              |list[4:0],
                              |list[3:0],
                              |list[2:0],
                              |list[1:0],
                              list[0] };

   wire [ 7:0] list_nxt   = {list_mask[6:0], 1'b0} & list[7:0];

   wire        list_empty = ~|list_nxt;

   wire        list_elast = ~list_mask[7];

   wire [ 3:0] r4_or_r12  = { atomic, 3'b100 };

   // the position of the edge within the rippled mask value
   // determines the position of the least-significant set bit
   // and which register should be loaded/stored next

   wire [ 8:0] list_edge  = ( {1'b1, list_mask[7:0]} &
                             ~{list_mask[7:0], 1'b0} );

   wire [ 3:0] list_addr  = ( {4{list_edge[0]}} & 4'h0      |
                              {4{list_edge[1]}} & 4'h1      |
                              {4{list_edge[2]}} & 4'h2      |
                              {4{list_edge[3]}} & 4'h3      |
                              {4{list_edge[4]}} & r4_or_r12 |
                              {4{list_edge[5]}} & 4'h5      |
                              {4{list_edge[6]}} & 4'h6      |
                              {4{list_edge[7]}} & 4'h7      |
                              {4{list_edge[8]}} & 4'hE      );

   // ------------------------------------------------------------
   // Decoded operand selection muxes
   // ------------------------------------------------------------

   // these multiplex (via OR-of-AND muxes) between the various
   // decode stage signals ready for registration into execute

   wire [ 3:0] ra_addr_nxt =
               ( {4{ra_sel_z2_0}}    & {1'b0, op[2:0]}       |
                 {4{ra_sel_7_2_0}}   & {op[7], op[2:0]}      |
                 {4{ra_sel_z5_3}}    & {1'b0, op[5:3]}       |
                 {4{ra_sel_z10_8}}   & {1'b0, op[10:8]}      |
                 {4{ra_sel_sp}}      & 4'b1101               |
                 {4{ra_sel_pc}}      & 4'b1111               );

   wire [ 3:0] rb_addr_nxt =
               ( {4{rb_sel_z5_3}}    & {1'b0, op[5:3]}       |
                 {4{rb_sel_6_3}}     & op[6:3]               |
                 {4{rb_sel_z8_6}}    & {1'b0, op[8:6]}       |
                 {4{rb_sel_3_0}}     & {op[3], op[2:0]}      |
                 {4{rb_sel_wr_ex}}   & wr_addr_raw           |
                 {4{rb_sel_list}}    & list_addr             |
                 {4{rb_sel_sp}}      & 4'b1101               |
                 {4{rb_sel_aux}}     & 4'b1111               );

   wire [ 3:0] wr_addr_raw_nxt =
               ( {4{wr_sel_z2_0}}    & {1'b0, op[2:0]}       |
                 {4{wr_sel_z10_8}}   & {1'b0, op[10:8]}      |
                 {4{wr_sel_11_8}}    & op[11:8]              |
                 {4{wr_sel_10_7}}    & op[10:7]              |
                 {4{wr_sel_7777}}    & {4{op[7]}}            |
                 {4{wr_sel_3_0}}     & op[3:0]               |
                 {4{wr_sel_list}}    & list_nxt[3:0]         |
                 {4{wr_sel_excp}}    & 4'b1111               );

   wire [ 3:0] im74_nxt =
               ( {4{im74_sel_6_3}}   & op[6:3]               |
                 {4{im74_sel_z10}}   & {3'b000, op[10]}      |
                 {4{im74_sel_z10_9}} & {2'b00, op[10:9]}     |
                 {4{im74_sel_z6_4}}  & {1'b0, op[6:4]}       |
                 {4{im74_sel_7_4}}   & op[7:4]               |
                 {4{im74_sel_list}}  & list_nxt[7:4]         |
                 {4{im74_sel_excp}}  & 4'b0001               |
                 {4{im74_sel_exnum}} & {2'b0, last_num[5:4]} |
                 {4{im74_sel_smul}}  & {3'b0, im40_incr[4]}  );

   wire [ 3:0] im30_nxt =
               ( {4{im30_sel_2_0z}}  & {op[2:0], 1'b0}       |
                 {4{im30_sel_9_6}}   & op[9:6]               |
                 {4{im30_sel_8_6z}}  & {op[8:6], 1'b0}       |
                 {4{im30_sel_3_0}}   & op[3:0]               |
                 {4{im30_sel_z8_6}}  & {1'b0, op[8:6]}       |
                 {4{im30_sel_list}}  & list_len              |
                 {4{im30_sel_incr}}  & im30_incr             |
                 {4{im30_sel_one}}   & 4'b0001               |
                 {4{im30_sel_seven}} & 4'b0111               |
                 {4{im30_sel_eight}} & 4'b1000               |
                 {4{im30_sel_exnum}} & last_num[3:0]         );

   // the actual value provided to the register file as the
   // write address is muxed during execute between the various
   // sources, allowing the registers in decode to be reused
   // for large immediate values

   wire [ 3:0] wr_addr = ( {4{wr_use_wr}}   & wr_addr_raw |
                           {4{wr_use_ra}}   & ra_addr     |
                           {4{wr_use_lr}}   & 4'b1110     |
                           {4{wr_use_sp}}   & 4'b1101     |
                           {4{wr_use_list}} & rb_addr     );

   // ------------------------------------------------------------
   // Execute stage operand selection
   // ------------------------------------------------------------

   // each of the data-paths extracts various components of
   // the immediate registers, including the raw write-port
   // address

   wire [ 1:0] psr_imm = {imm_val[4], imm_val[2]};

   // ------------------------------------------------------------
   // Factor HREADY into register enables
   // ------------------------------------------------------------

   // the system is fundamentally a large FSM which advances
   // on the AHB HREADY input, thus we need to factor this into
   // the register enables

   wire        ra_addr_ena     = hready_i & ra_addr_en;
   wire        rb_addr_ena     = hready_i & rb_addr_en;
   wire        wr_addr_raw_ena = hready_i & wr_addr_raw_en;
   wire        im74_ena        = hready_i & im74_en;
   wire        im30_ena        = hready_i & im30_en;
   wire        addr_last_ena   = hready_i & addr_phase;
   wire        int_ready_ena   = hready_i & int_ready_en;
   wire        int_delay_ena   = hready_i & atomic;

   // ------------------------------------------------------------
   // Generate qualified data-abort signal
   // ------------------------------------------------------------

   // in addition, AHB HRESP ERRORs, can also be sampled in
   // their HREADY low phase; this allows interrupt latency
   // to be reduced and also permits retraction of any HTRANS
   // on the following cycle

   wire        data_abort_nxt =
               ( ~hready_i & mtx_cpu_resp_i & data_phase |
                 hready_i & alu_align_err_i & addr_phase );

   wire        data_abort_ena = hready_i | data_abort_nxt;

   // we will retract an address phase in parallel with a
   // data abort for instructions only; the exception stack
   // machine will just plow on regardless

   wire        kill_addr      = data_abort & ~atomic;

   // ------------------------------------------------------------
   // Qualify debug enable and construct breakpoint information
   // ------------------------------------------------------------

   // debug inputs are masked with the parameter derived wire
   // so as to facilitate optimisation when not present;
   // breakpoint-unit breakpoints are injected via the
   // prefetch-unit and propagate through execute, producing
   // bkpt_ex in execute (just like BKPT instructions)

   wire        debug_en     = cfg_dbg ? dbg_c_debugen_i : 1'b0;
   wire        dbg_halt_req = cfg_dbg ? dbg_halt_req_i  : 1'b0;
   wire        dbg_op_run   = cfg_dbg ? dbg_op_run_i    : 1'b0;

   wire        ex_reset     = ~|ex_ctl;
   wire        dbg_ex_reset = cfg_dbg ? ex_reset : 1'b0;

   wire        dbg_bpu_hit  = bkpt_ex;

   wire        bpu_hit      = cfg_dbg ? dbg_bpu_hit : 1'b0;

   // debug register reads are performed using the normal
   // decode/execute mechanics, however, these offer non-
   // standard access to the PSRs; debug enables for CONTROL
   // and PRIMASK are generated in the PSR module, however,
   // debug xPSR accesses also require notification to be
   // sent to the PFU in order to update the T-bit, thus
   // a single common enable signal is generated here

   wire        dbg_xpsr_en  = ~psr_imm[0] & msr_en & halt_ack;

   // mask out debug halt request if sleep extension is being
   // performed; note that a power-management-unit should not
   // really be driving CDBGPWRUPACK to the DAP whilst driving
   // SLEEPHOLDREQn to the core

   wire        halt_req     = dbg_halt_req & sleep_hold_n;

   // ------------------------------------------------------------
   // Clamp unused control to minimise power consumption
   // ------------------------------------------------------------

   // we could implement registers for all of the arithmetic-
   // logic and shift/permute-unit control signals with the
   // aim of reducing power consumption, however, clamping them
   // to sensible values when not in use produces similar
   // results at lower gate cost

   // the "magic" default values minimize toggling in later
   // data-path elements whilst also ensuring that the non
   // selected data-path produces zero as its result

   wire [19:0] alu_default  = 20'h00200;
   wire [19:0] alu_ctl      = alu_en ? alu_ctl_raw : alu_default;

   wire [35:0] spu_default  = 36'h00A108402;
   wire [35:0] spu_ctl      = spu_en ? spu_ctl_raw : spu_default;

   // ------------------------------------------------------------
   // Generate register file clock gate enable terms
   // ------------------------------------------------------------

   // the register file is split into two distinct clock trees
   // based upon typical usage, this provides the option of
   // reducing the register file clock-tree power

   // registers r0-r4 are on the primary register file clock
   // registers r5-lr are on the secondary register file clock

   wire        reg_set_0 = ( wr_addr == 4'd0 |
                             wr_addr == 4'd1 |
                             wr_addr == 4'd2 |
                             wr_addr == 4'd3 |
                             wr_addr == 4'd4 );

   wire        rclk0_en  = wr_en &  reg_set_0;
   wire        rclk1_en  = wr_en & ~reg_set_0;

   // ------------------------------------------------------------
   // Qualify internal sleep terms
   // ------------------------------------------------------------

   // the sleep advance signals need qualifying with the
   // sleep-hold extension logic; in addition, debug halt request
   // requires that WFI, WFE and sleep-on-exit complete
   // immediately so as not to stall debugging

   wire        dbg_adv     = halt_req;

   wire        sleep_rfi   = pfu_sleep_rfi_i & ~wfi_adv_raw;
   wire        wfe_adv     = nvr_wfe_advance_i & sleep_hold_n | dbg_adv;
   wire        wfi_adv     = wfi_adv_raw & sleep_hold_n | dbg_adv;
   wire        int_preempt = int_ready & sleep_hold_n;

   // ------------------------------------------------------------
   // Construct sleep hold acknowledge
   // ------------------------------------------------------------

   // acknowledge the request only if we know that we aren't
   // simultaneously being requested to wake-up, and if we
   // are actually asleep / going to sleep; sleep_hold_ack_n can
   // only become one if sleep_hold_req_n becomes one; a power
   // management unit should not simultaneously assert
   // SLEEPHOLDREQn and CDBGPWRUPACK

   wire        waking_up        = ( wfi_execute & wfi_adv |
                                    wfe_execute & wfe_adv );

   wire        sleep_hold_n_en  = ( sleep_hold_req_n_i   |  // de-request
                                    ex_idle & ~waking_up ); // sleeping

   wire        sleep_hold_n_ena = hready_i & sleep_hold_n_en;
   wire        sleep_hold_n_nxt = sleep_hold_req_n_i;

   // ------------------------------------------------------------
   // Clean up minimized HSIZE signal and generate HPROT[0]
   // ------------------------------------------------------------

   // the decoder is optimised so that ls_size_raw[0] is
   // don't-care for word sized transactions, therefore we
   // need to mask it out using ls_size_raw[1] in order to
   // produce legal AHB traffic

   wire [ 1:0] ls_size = { ls_size_raw[1],
                           ls_size_raw[0] & ~ls_size_raw[1] };

   // HPROT must be 1'b1 for all data-side transactions

   wire        hprot   = addr_phase;

   // ------------------------------------------------------------
   // Synchronous state update on HCLK
   // ------------------------------------------------------------

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n) begin
       ex_ctl       <= {8{1'b0}};
       ex_last      <= 1'b0;
       write_last   <= 1'b0;
       atomic       <= 1'b1;
       instr_rfi    <= 1'b0;
     end else if(hready_i) begin
       ex_ctl       <= ex_ctl_nxt;
       ex_last      <= ex_last_nxt;
       write_last   <= hwrite;
       atomic       <= atomic_nxt;
       instr_rfi    <= instr_rfi_nxt;
     end

   // ------------------------------------------------------------
   // Synchronous state update on HCLK - non reset
   // ------------------------------------------------------------

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       ra_addr[3:0] <= {4{1'b1}};
     else if(ra_addr_ena)
       ra_addr[3:0] <= ra_addr_nxt;

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       rb_addr[3:0] <= {4{1'b1}};
     else if(rb_addr_ena)
       rb_addr[3:0] <= rb_addr_nxt;

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       wr_addr_raw[3:0] <= {4{1'b1}};
     else if(wr_addr_raw_ena)
       wr_addr_raw[3:0] <= wr_addr_raw_nxt;

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       imm_val[7:4] <= {4{1'b1}};
     else if(im74_ena)
       imm_val[7:4] <= im74_nxt;

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       imm_val[3:0] <= {4{1'b1}};
     else if(im30_ena)
       imm_val[3:0] <= im30_nxt;

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       alu_en <= 1'b1;
     else if(hready_i)
       alu_en <= alu_en_nxt;

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       spu_en <= 1'b1;
     else if(hready_i)
       spu_en <= spu_en_nxt;

   // ------------------------------------------------------------
   // Synchronous state update on SCLK
   // ------------------------------------------------------------

   // unlike the rest of the registers in this module, these
   // clock using the NVIC's free running system clock; this
   // allows interrupts to be prepared in decode even when HCLK
   // gating is in use whilst still allowing sleep-latency to be
   // met

   always @(posedge sclk or negedge hreset_n)
     if(~hreset_n)
       int_ready <= 1'b0;
     else if(int_ready_ena)
       int_ready <= int_ready_nxt;

   always @(posedge sclk or negedge hreset_n)
     if(~hreset_n)
       sleep_hold_n <= 1'b1;
     else if(sleep_hold_n_ena)
       sleep_hold_n <= sleep_hold_n_nxt;

   always @(posedge sclk or negedge hreset_n)
     if(~hreset_n)
       wfi_adv_raw <= 1'b1;
     else if(hready_i)
       wfi_adv_raw <= nvm_wfi_advance_i;

   // ------------------------------------------------------------
   // Specialised-enable HCLK registers
   // ------------------------------------------------------------

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       int_delay <= 1'b0;
     else if(int_delay_ena)
       int_delay <= pfu_int_delay_i;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       data_abort <= 1'b0;
     else if(data_abort_ena)
       data_abort <= data_abort_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       addr_last <= 2'b00;
     else if(addr_last_ena)
       addr_last <= alu_addr_raw_1_0_i;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       hdf_escalate <= 1'b0;
     else if(hdf_escalate_en)
       hdf_escalate <= nvm_hdf_escalate_i;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       nmi_lock <= 1'b0;
     else if(nmi_lock_en)
       nmi_lock <= nmi_lock_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       hdf_lock <= 1'b0;
     else if(hdf_lock_en)
       hdf_lock <= hdf_lock_nxt;

   // ------------------------------------------------------------
   // Instantiate purely-combinatorial decoder
   // ------------------------------------------------------------

   cm0_core_dec
       u_dec
         (// Execute control
          .alu_en_nxt         (alu_en_nxt),
          .spu_en_nxt         (spu_en_nxt),
          .alu_ctl_raw        (alu_ctl_raw[19:0]),
          .spu_ctl_raw        (spu_ctl_raw[35:0]),
          .mul_ctl            (mul_ctl),
          .ls_size_raw        (ls_size_raw[1:0]),
          .exnum_sel_bus      (dec_xpsr_sel_spu_o),
          .exnum_sel_int      (xpsr_sel_pfu),
          .exnum_en           (exnum_en),
          .txev               (txev_o),
          .wfe_execute        (wfe_execute),
          .wfi_execute        (wfi_execute),
          .svc_request        (dec_svc_request_o),
          .hdf_request_raw    (hdf_request_raw),
          .ex_idle            (ex_idle),
          .instr_rfi          (instr_rfi_nxt),
          // Misc control
          .cps_en             (dec_cps_en_o),
          .aux_en             (dec_aux_en_o),
          .aux_tbit           (dec_aux_tbit_o),
          .aux_align          (dec_aux_align_o),
          .aux_sel_xpsr       (dec_aux_sel_xpsr_o),
          .aux_sel_iaex       (dec_aux_sel_iaex_o),
          .aux_sel_addr       (dec_aux_sel_addr_o),
          .psp_sel_nxt        (dec_sp_sel_psp_o),
          .psp_sel_en         (dec_sp_sel_en_o),
          .psp_sel_auto       (dec_sp_sel_auto_o),
          .dbg_halt_ack       (halt_ack_raw),
          .bkpt_ex            (bkpt_ex),
          .lockup             (lockup),
          // RA decode
          .ra_addr_en         (ra_addr_en),
          .ra_sel_z2_0        (ra_sel_z2_0),
          .ra_sel_7_2_0       (ra_sel_7_2_0),
          .ra_sel_z5_3        (ra_sel_z5_3),
          .ra_sel_z10_8       (ra_sel_z10_8),
          .ra_sel_sp          (ra_sel_sp),
          .ra_sel_pc          (ra_sel_pc),
          .ra_use_aux         (dec_ra_use_aux_o),
          // RB decode
          .rb_addr_en         (rb_addr_en),
          .rb_sel_z5_3        (rb_sel_z5_3),
          .rb_sel_6_3         (rb_sel_6_3),
          .rb_sel_z8_6        (rb_sel_z8_6),
          .rb_sel_3_0         (rb_sel_3_0),
          .rb_sel_wr_ex       (rb_sel_wr_ex),
          .rb_sel_list        (rb_sel_list),
          .rb_sel_sp          (rb_sel_sp),
          .rb_sel_aux         (rb_sel_aux),
          // WR decode
          .wr_addr_raw_en     (wr_addr_raw_en),
          .wr_sel_z2_0        (wr_sel_z2_0),
          .wr_sel_z10_8       (wr_sel_z10_8),
          .wr_sel_11_8        (wr_sel_11_8),
          .wr_sel_10_7        (wr_sel_10_7),
          .wr_sel_7777        (wr_sel_7777),
          .wr_sel_3_0         (wr_sel_3_0),
          .wr_sel_list        (wr_sel_list),
          .wr_sel_excp        (wr_sel_excp),
          .wr_use_wr          (wr_use_wr),
          .wr_use_ra          (wr_use_ra),
          .wr_use_lr          (wr_use_lr),
          .wr_use_sp          (wr_use_sp),
          .wr_use_list        (wr_use_list),
          .wr_en              (wr_en),
          // Immediate value decode
          .im74_en            (im74_en),
          .im74_sel_6_3       (im74_sel_6_3),
          .im74_sel_z10       (im74_sel_z10),
          .im74_sel_z10_9     (im74_sel_z10_9),
          .im74_sel_z6_4      (im74_sel_z6_4),
          .im74_sel_7_4       (im74_sel_7_4),
          .im74_sel_list      (im74_sel_list),
          .im74_sel_excp      (im74_sel_excp),
          .im74_sel_exnum     (im74_sel_exnum),
          .im30_en            (im30_en),
          .im30_sel_2_0z      (im30_sel_2_0z),
          .im30_sel_9_6       (im30_sel_9_6),
          .im30_sel_8_6z      (im30_sel_8_6z),
          .im30_sel_3_0       (im30_sel_3_0),
          .im30_sel_z8_6      (im30_sel_z8_6),
          .im30_sel_list      (im30_sel_list),
          .im30_sel_incr      (im30_sel_incr),
          .im30_sel_one       (im30_sel_one),
          .im30_sel_seven     (im30_sel_seven),
          .im30_sel_eight     (im30_sel_eight),
          .im30_sel_exnum     (im30_sel_exnum),
          // PSR flag enable decode
          .nzflag_en          (dec_nzflag_en_o),
          .cflag_en           (dec_cflag_en_o),
          .vflag_en           (dec_vflag_en_o),
          .msr_en             (msr_en),
          // Address and PFU decode
          .addr_ex            (dec_agu_ex_o),
          .addr_ra            (dec_agu_sel_ra_o),
          .addr_agu           (dec_agu_sel_add_o),
          .hwrite             (hwrite),
          .bus_idle           (dec_bus_idle_o),
          .iaex_agu           (dec_iaex_sel_agu_o),
          .iaex_spu           (dec_iaex_sel_spu_o),
          .iaex_en            (iaex_en),
          .interwork          (dec_interwork_o),
          .stk_align_en       (dec_sp_align_en_o),
          .int_taken          (dec_int_taken_o),
          .int_return         (dec_int_return_o),
          // Fetch hints
          .b_cond_de          (b_cond_de),
          .branch_de          (branch_de),
          // Next-state logic
          .atomic_nxt         (atomic_nxt),
          .data_phase         (data_phase),
          .addr_phase         (addr_phase),
          .ex_last_nxt        (ex_last_nxt),
          .ex_ctl_nxt         (ex_ctl_nxt[7:0]),
          // This state input
          .ex_ctl             (ex_ctl[7:0]),
          // Opcode inputs
          .opcode             (pfu_opcode_i[15:0]),
          .special            (pfu_op_special_i),
          .int_preempt        (int_preempt),
          .cc_pass            (psr_cc_pass_i),
          .ex_last            (ex_last),
          .valid_rfi          (valid_rfi),
          .sleep_rfi          (sleep_rfi),
          .list_empty         (list_empty),
          .list_elast         (list_elast),
          .smul_last          (smul_last),
          .addr_last          (addr_last[1:0]),
          .data_abort         (data_abort),
          .atomic             (atomic),
          .dbg_halt_req       (halt_req),
          .dbg_op_run         (dbg_op_run),
          .svc_escalate       (nvm_svc_escalate_i),
          .hdf_escalate       (hdf_escalate),
          .wfe_adv            (wfe_adv),
          .wfi_adv            (wfi_adv),
          .int_delay          (int_delay),
          .cfg_smul           (cfg_smul),
          .cfg_be             (cfg_be),
          .debug_en           (debug_en));

   // ------------------------------------------------------------
   // Assign outputs
   // ------------------------------------------------------------

   assign      code_hint_de_o     = code_hint_de;
   assign      sleep_hold_ack_n_o = sleep_hold_n;
   assign      lockup_o           = lockup;

   assign      ctl_dbg_lockup_o   = cfg_dbg ? lockup : 1'b0;
   assign      ctl_ra_addr_o      = ra_addr;
   assign      ctl_rb_addr_o      = rb_addr;
   assign      ctl_wr_addr_o      = wr_addr;
   assign      ctl_dbg_xpsr_en_o  = dbg_xpsr_en;
   assign      ctl_ex_last_o      = ex_last;
   assign      ctl_kill_addr_o    = kill_addr;
   assign      ctl_hprot_o        = hprot;
   assign      ctl_rclk0_en_o     = rclk0_en;
   assign      ctl_rclk1_en_o     = rclk1_en;
   assign      ctl_bpu_event_o    = bpu_hit;
   assign      ctl_write_last_o   = write_last;
   assign      ctl_alu_ctl_o      = alu_ctl;
   assign      ctl_spu_ctl_o      = spu_ctl;
   assign      ctl_hdf_request_o  = hdf_request;
   assign      ctl_halt_ack_o     = halt_ack;
   assign      ctl_hwrite_o       = hwrite;
   assign      ctl_ex_idle_o      = ex_idle;
   assign      ctl_wfi_adv_raw_o  = wfi_adv_raw;
   assign      ctl_ls_size_o      = ls_size;
   assign      ctl_hdf_lockup_o   = hdf_lock;
   assign      ctl_nmi_lockup_o   = nmi_lock;
   assign      ctl_msr_en_o       = msr_en;
   assign      ctl_xpsr_en_o      = exnum_en;
   assign      ctl_xpsr_sel_pfu_o = xpsr_sel_pfu;
   assign      ctl_dwt_atomic_o   = cfg_dbg ? atomic  : 1'b0;
   assign      ctl_dbg_ex_last_o  = cfg_dbg ? ex_last : 1'b0;
   assign      ctl_dbg_ex_reset_o = dbg_ex_reset;
   assign      ctl_iaex_en_o      = iaex_en;
   assign      ctl_addr_phase_o   = addr_phase;
   assign      ctl_mul_ctl_o      = mul_ctl;
   assign      ctl_imm_o          = {wr_addr_raw[3:0], imm_val[7:0]};
   assign      ctl_wr_en_o        = wr_en;
   assign      ctl_spu_en_o       = spu_en;
   assign      ctl_instr_rfi_o    = instr_rfi;
   assign      ctl_wfi_execute_o  = wfi_execute;
   assign      ctl_wfe_execute_o  = wfe_execute;
   assign      ctl_int_ready_o    = int_ready;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

 `include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,16,`OVL_ASSERT,"Register enables must never be X")
   u_asrt_reg_en_x
     (.clk                (sclk),
      .reset_n            (hreset_n),
      .qualifier          (1'b1),
      .test_expr          ({ ra_addr_ena,
                             rb_addr_ena,
                             wr_addr_raw_ena,
                             im74_ena,
                             im30_ena,
                             hready_i,
                             sleep_hold_n_ena,
                             int_ready_ena,
                             int_delay_ena,
                             data_abort_ena,
                             addr_last_ena,
                             hdf_escalate_en,
                             nmi_lock_en,
                             hdf_lock_en,
                             rclk0_en,
                             rclk1_en }));

   // Core will ignore debug events if sleep extension is being requested
   assert_implication
     #(`OVL_INFO,`OVL_ASSERT,
       "Halt request deferred due to SLEEPHOLDREQn")
   u_info_sleep_not_halt
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(dbg_halt_req_i),
      .consequent_expr(sleep_hold_req_n_i));

   // SVC escalation is a subset of HardFault escalation
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,
       "HardFault escalation must encompass SVC escalate")
   u_asrt_hdf_escalate_svc
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(nvm_hdf_escalate_i),
      .consequent_expr(nvm_svc_escalate_i));

   // Debug operation must look like a debug opcode
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,
       "Debug opcode must look like a debug opcode")
   u_asrt_dbg_op
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(dbg_op_run),
      .consequent_expr(pfu_op_special_i &
                       (~|pfu_opcode_i[14:8]) &
                       (~|pfu_opcode_i[6:4])));

   // Check that only one lockup destination is requested
   assert_zero_one_hot
     #(`OVL_FATAL,2,`OVL_ASSERT,
       "Can only have one LOCKUP destination")
   u_asrt_lock_next
     (.clk(hclk), .reset_n(hreset_n),
      .test_expr({nmi_lock_nxt, hdf_lock_nxt}));

   // Check that at most one list edge bit is set
   assert_zero_one_hot
     #(`OVL_FATAL,9,`OVL_ASSERT_2STATE,
       "List must only select one register")
   u_asrt_list_one_reg
     (.clk(hclk), .reset_n(hreset_n),
      .test_expr(list_edge[8:0]));

   // Unsupported special-opcode
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,
       "Special opcode 16'b11... can never be run")
   u_asrt_no_special_11
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(ex_last),
      .consequent_expr(!(pfu_op_special_i &
                         pfu_opcode_i[15] &
                         pfu_opcode_i[14])) );

   // Jitter delay leakage into decode
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,
       "Special opcode 16'b10... should never be run")
   u_asrt_no_special_10
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(ex_last),
      .consequent_expr(!(pfu_op_special_i &
                         pfu_opcode_i[15] &
                         ~pfu_opcode_i[14])) );

   // No transactions during sleep hold
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,
       "No transactions permitted during sleep hold")
   u_asrt_no_tx_sleep
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(~sleep_hold_n),
      .consequent_expr(~dec_agu_ex_o | dec_bus_idle_o) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,32,`OVL_ASSERT,"CBAW config unknown")
   u_asrt_cfg_cbaw
     (.clk                (hclk),
      .reset_n            (1'b1),
      .qualifier          (1'b1),
      .test_expr          (CBAW));

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"DBG config unknown")
   u_asrt_cfg_dbg
     (.clk                (hclk),
      .reset_n            (1'b1),
      .qualifier          (1'b1),
      .test_expr          (cfg_dbg));

   // Activity check

   reg [2:0]  asrt_cyc_count;

   wire       asrt_cyc_rst = ( lockup_o |                  // LockUp
                               dbg_halt_req_i & halt_ack | // halted
                               cfg_smul & mul_ctl |        // multiplying
                               ex_idle & ~sleep_hold_n |   // extended sleep
                               ex_idle & ~nvm_int_pend_i | // normal sleep
                               (ex_ctl != ex_ctl_nxt) |    // advanced
                               pfu_int_delay_i & atomic |  // jitter suppress
                               ex_last & ~atomic );        // finish instruction

   wire        asrt_cyc_en  = hready_i | asrt_cyc_rst;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       asrt_cyc_count <= 3'b0;
     else if(asrt_cyc_en)
       asrt_cyc_count <= asrt_cyc_rst ? 3'b0 : (asrt_cyc_count + 1'b1);

   assert_never
     #(`OVL_ERROR,`OVL_ASSERT,
       "Core should make progress if clocked and HREADY")
   u_asrt_stalled
     (.clk(hclk),
      .reset_n(hreset_n),
      .test_expr( asrt_cyc_count == 3'b111 ));


`ifdef ARM_CM0_VAL_MONITORS
   // Decode and control consistency checker
   cm0_core_chk
     #(.CBAW(CBAW), .BE(BE))
   u_dec_chk
     (.HCLK               (hclk),
      .HRESETn            (hreset_n),
      .opcode             (pfu_opcode_i[15:0]),
      .special            (pfu_op_special_i),
      .dbg_halt_req       (halt_req),
      .dbg_op_run         (dbg_op_run),
      .debug_en           (debug_en),
      .int_preempt        (int_preempt),
      .int_delay          (int_delay),
      .valid_rfi          (valid_rfi),
      .sleep_rfi          (sleep_rfi),
      .wfe_adv            (wfe_adv),
      .wfi_adv            (wfi_adv),
      .hdf_escalate       (hdf_escalate),
      .svc_escalate       (nvm_svc_escalate_i),
      .cc_pass            (psr_cc_pass_i),
      .addr_last          (addr_last[1:0]),
      .data_abort         (data_abort),
      .list_empty         (list_empty),
      .list_elast         (list_elast),
      .ex_last            (ex_last),
      .ex_ctl             (ex_ctl[7:0]),
      .atomic             (atomic));
`endif

   // ------------------------------------------------------------
`endif


endmodule // cm0_core_ctl

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
