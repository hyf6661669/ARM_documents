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
//      Checked In          : $Date: 2009-03-14 09:38:33 +0000 (Sat, 14 Mar 2009) $
//
//      Revision            : $Revision: 104097 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 CORE PROCESSOR STATUS REGISTERS AND FINAL RESULT MULTIPLEXOR
//-----------------------------------------------------------------------------

module cm0_core_psr
  #(parameter CBAW = 0,
    parameter DBG  = 1,
    parameter SMUL = 0)

   (input  wire        hclk,                   // AHB clock
    input  wire        hreset_n,               // AHB reset

    output wire [31:0] psr_gpr_wdata_o,        // final register write-data
    output wire        psr_cflag_o,            // C flag for ALU/SPU
    output wire [ 3:0] psr_apsr_o,             // APSR (N,Z,C,V)
    output wire [ 5:0] psr_ipsr_o,             // IPSR (exception number)
    output wire        psr_primask_o,          // PRIMASK value
    output wire        psr_primask_ex_o,       // forwarded next PRIMASK value
    output wire        psr_control_o,          // architected CONTROL[1] value
    output wire        psr_cc_pass_o,          // condition code pass for Bcc
    output wire        psr_rfi_in_irq_o,       // Handler & IAEX is EXC_RETURN
    output wire        psr_sp_auto_o,          // CONTROL[1]/Mode default SP
    output wire        psr_sp_align_o,         // SP not double-word aligned
    output wire        psr_handler_o,          // in Handler Mode (IPSR != 0)
    output wire        psr_nmi_active_o,       // in NMI exception (IPSR == 2)
    output wire        psr_hdf_active_o,       // in HardFault (IPSR == 3)
    output wire        psr_dbg_hardfault_o,    // hdf_active for debugger
    output wire        psr_n_or_h_active_o,    // in NMI or HardFault handler
    output wire        psr_svc_is_undef_o,     // SVC instruction should UNDEF

    input  wire        hready_i,               // AHB ready / core advance
    input  wire [31:0] alu_res_i,              // ALU computed result
    input  wire        alu_vflag_i,            // ALU computed overflow
    input  wire        alu_cflag_i,            // ALU computed carry-out
    input  wire        ctl_instr_rfi_i,        // valid for return instruction
    input  wire        ctl_xpsr_en_i,          // load XPSR
    input  wire        ctl_msr_en_i,           // MSR instruction in execute
    input  wire        ctl_imm_4_i,            // immediate value for MSR/MRS
    input  wire        ctl_imm_2_i,            // immediate value for MSR/MRS
    input  wire        ctl_rb_addr_1_i,        // reg-file port-B address bit
    input  wire        ctl_wr_addr_1_i,        // reg-file write-address bit
    input  wire        ctl_halt_ack_i,         // core is halted for debug
    input  wire        ctl_dbg_xpsr_en_i,      // perform debugger XPSR write
    input  wire        ctl_spu_en_i,           // choose SPU's flags not ALU's
    input  wire        ctl_xpsr_sel_pfu_i,     // next XPSR value from PFU
    input  wire        dec_xpsr_sel_spu_i,     // next XPSR value from SPU
    input  wire        dec_nzflag_en_i,        // execute writes N and Z
    input  wire        dec_cflag_en_i,         // execute writes V
    input  wire        dec_vflag_en_i,         // execute writes V
    input  wire        dec_sp_align_en_i,      // sample current SP alignment
    input  wire        dec_cps_en_i,           // CPSID/CPSIE in execute
    input  wire        dec_int_taken_i,        // interrupt entry complete
    input  wire        gpr_ra_data_hi_2_i,     // read-port A bit[2]
    input  wire [ 3:0] gpr_rb_data_hi_31_28_i, // read-port B bits[31:28]
    input  wire        gpr_rb_data_hi_25_i,    // read-port B bit[25]
    input  wire [ 1:0] gpr_rb_data_hi_1_0_i,   // read-port B bits[1:0]
    input  wire [31:0] mul_res_i,              // multiplier array result
    input  wire        nvm_svc_escalate_i,     // SVCall priority too low
    input  wire        nvr_vect_clr_active_i,  // VECTCLRACTIVE reset request
    input  wire [ 5:0] pfu_int_num_i,          // next IPSR value from PFU
    input  wire [ 3:0] pfu_opcode_11_8_i,      // Bcc condition code
    input  wire        pfu_iaex_rfi_i,         // PC matches an EXC_RETURN
    input  wire        pfu_rfi_on_psp_i,       // SP selection from EXC_RETURN
    input  wire [31:0] spu_res_i,              // result from shift/permute
    input  wire        spu_cflag_i,            // carry-out from shifter
    input  wire        spu_zflag_i,            // zero-flag from shifter
    input  wire        spu_nflag_i);           // negative-flag from shifter

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire        cfg_dbg  = (CBAW == 0) ? (DBG  != 0) : 1'bZ;
   wire        cfg_smul = (CBAW == 0) ? (SMUL != 0) : 1'bZ;

   // ------------------------------------------------------------
   // Registers for NZCV flags, control and exception number
   // ------------------------------------------------------------

   reg         nflag;     // architectural N flag
   reg         zflag;     // architectural Z flag
   reg         cflag;     // architectural C flag
   reg         vflag;     // architectural V flag
   reg         primask;   // architectural PRIMASK bit
   reg         control;   // architectural CONTROL[1] bit
   reg  [ 5:0] ipsr;      // architectural exception number
   reg         stk_align; // stack alignment bit for interrupts

   // ------------------------------------------------------------
   // Configure inputs based upon configuration
   // ------------------------------------------------------------

   wire        ctl_halt_ack    = cfg_dbg ? ctl_halt_ack_i        : 1'b0;
   wire        dbg_xpsr_en     = cfg_dbg ? ctl_dbg_xpsr_en_i     : 1'b0;
   wire        vect_clr_active = cfg_dbg ? nvr_vect_clr_active_i : 1'b0;

   // ------------------------------------------------------------
   // Extract result and next-state flags from current operation
   // ------------------------------------------------------------

   // when the result of the SPU, ALU or MUL block is required,
   // the other blocks must be returning zero

   wire [31:0] mul_res   = cfg_smul ? 32'b0 : mul_res_i;

   wire [31:0] add_mul   = alu_res_i | mul_res;
   wire [31:0] res       = spu_res_i | add_mul;

   wire        add_mul_z = ~|add_mul;

   wire        nflag_nxt_i = ctl_spu_en_i ? spu_nflag_i : add_mul[31];
   wire        zflag_nxt_i = ctl_spu_en_i ? spu_zflag_i : add_mul_z;
   wire        cflag_nxt_i = ctl_spu_en_i ? spu_cflag_i : alu_cflag_i;

   // ------------------------------------------------------------
   // Create architectural APSR
   // ------------------------------------------------------------

   // the APSR[3:0] contains the top four bits of the XPSR[31:28],
   // and consists of the three architectural state flags N, Z, C
   // and V (result Negative, Zero, Carry/not-borrow and oVerflow)

   wire [ 3:0] apsr = { nflag, zflag, cflag, vflag };

   // ------------------------------------------------------------
   // Detect that execution level is handler
   // ------------------------------------------------------------

   // the architecture specifies an NMI handler with exception
   // number 6'h02, and a HardFault handler with exception
   // number 6'h03

   // an exception number of 6'h00 indicates that we are
   // executing in Thread Mode, whilst any non-zero values
   // indicates that we are executing in Handler Mode

   wire        top_set    = |ipsr[5:2];

   wire        nmi_active = ~top_set & (ipsr[1:0] == 2'b10);
   wire        hdf_active = ~top_set & (ipsr[1:0] == 2'b11);
   wire        handler    =  top_set | (ipsr[1:0] != 2'b00);

   wire        rfi_in_irq  = pfu_iaex_rfi_i & handler;

   // the stack pointer is normally MSP, however, the PSP
   // stack pointer may be used if we are in Thread Mode and
   // the CONTROL bit is set, or we are returning to Thread
   // Mode and bit[1] of the EXC_RETURN value (now in IAEX) is
   // set

   wire        rfi_on_psp = ( rfi_in_irq & ctl_instr_rfi_i &
                              pfu_rfi_on_psp_i );

   wire        psp_auto   = control | rfi_on_psp;

   // ------------------------------------------------------------
   // Determine whether SVC should execute as an UNDEF
   // ------------------------------------------------------------

   // if the SVCall priority is lower than the currently active
   // level, or if HardFault or NMI is active, or PRIMASK is set,
   // then the core should treat SVC instructions as though they
   // were UNDEFINED

   wire        psr_n_or_h_active = nmi_active | hdf_active;

   wire        svc_is_undef = ( psr_n_or_h_active |
                                primask |
                                nvm_svc_escalate_i );

   // ------------------------------------------------------------
   // MSR and exception return XPSR load flag override logic
   // ------------------------------------------------------------

   // the flags can be set as the result of executing a data-
   // processing instruction, or set directly via an MSR
   // instruction, or restored via an exception return load of
   // the XPSR, or modified via a debugger access to the DCRSR

   wire [ 1:0] psr_imm   = {ctl_imm_4_i, ctl_imm_2_i};

   wire        ldr_flags = ctl_xpsr_en_i & dec_xpsr_sel_spu_i;

   wire        msr_flags = ( ctl_msr_en_i & (psr_imm == 2'b00) |
                             dbg_xpsr_en );

   wire        std_flags = ~(ldr_flags | msr_flags);

   wire        nzflag_en = dec_nzflag_en_i | ~std_flags;
   wire        cflag_en  = dec_cflag_en_i  | ~std_flags;
   wire        vflag_en  = dec_vflag_en_i  | ~std_flags;

   wire        nflag_nxt = ( std_flags & nflag_nxt_i |
                             msr_flags & gpr_rb_data_hi_31_28_i[3] |
                             ldr_flags & spu_res_i[31] );

   wire        zflag_nxt = ( std_flags & zflag_nxt_i |
                             msr_flags & gpr_rb_data_hi_31_28_i[2] |
                             ldr_flags & spu_res_i[30] );

   wire        cflag_nxt = ( std_flags & cflag_nxt_i |
                             msr_flags & gpr_rb_data_hi_31_28_i[1] |
                             ldr_flags & spu_res_i[29] );

   wire        vflag_nxt = ( std_flags & alu_vflag_i |
                             msr_flags & gpr_rb_data_hi_31_28_i[0] |
                             ldr_flags & spu_res_i[28] );

   // ------------------------------------------------------------
   // Condition code evaluation
   // ------------------------------------------------------------

   // condition code evaluation is performed late in decode using
   // flags from execute; correctness for Bcc in decode whilst
   // MSR in execute isn't required as the MSR will refetch, so
   // can use values before they are forced by MSR to improve
   // timing

   // forward execute flags into decode, not that whenever the
   // N flag is set, so too is the Z flag

   wire        nflag_de  = dec_nzflag_en_i ? nflag_nxt_i : nflag;
   wire        zflag_de  = dec_nzflag_en_i ? zflag_nxt_i : zflag;
   wire        cflag_de  = dec_cflag_en_i  ? cflag_nxt_i : cflag;
   wire        vflag_de  = dec_vflag_en_i  ? alu_vflag_i : vflag;

   // reduce opcodes to control fields in order to minimise
   // evaluation time of late flags from execute

   // pfu_opcode_11_8_i corresponds to the condition code
   // field for Bcc, note that the condition is inverted based
   // on bit[0] of the code:

   //  CODE  CC  FLAGS                CODE  CC  FLAGS
   //  ----  --  ------------------   ----  --  ----------------
   //  0000  EQ  Z set                0001  NE  Z clear
   //  0010  CS  C set                0011  CC  C clear
   //  0100  MI  N set                0101  PL  N clear
   //  0110  VS  V set                0111  VC  V clear
   //  1000  HI  C set and Z clear    1001  LS  C clear or Z set
   //  1010  GE  N == V               1011  LT  N != V
   //  1100  GT  N == V and Z clear   1101  LE  N != V or Z set
   //  1110  AL  (reserved)           1111  NV  (reserved)

   // which are all reduced to either the following or its inverse
   //  ((N | ?) == (V | ?))  &  ((Z ^ ?) | ?)  &  (C | ?)

   wire [ 3:0] cc_code   = pfu_opcode_11_8_i;

   wire        cc_mask_n = (  cc_code[1] & ~cc_code[3] |
                             ~cc_code[1] & ~cc_code[2] );

   wire        cc_mask_z = (  cc_code[2] & ~cc_code[3] |
                              cc_code[1] );

   wire        cc_mask_c = (  cc_code[1] &  cc_code[3] |
                             ~cc_code[1] & ~cc_code[3] |
                              cc_code[2] );

   wire        cc_mask_v = ( ~cc_code[1] & ~cc_code[2] |
                             ~cc_code[1] & ~cc_code[3] |
                             ~cc_code[2] & ~cc_code[3] );

   wire        cc_inv_z  = cc_code[3] | cc_code[2];

   // Evaluate flags against condition code

   wire        cc_pass_n = cc_mask_n | nflag_de;
   wire        cc_pass_z = cc_mask_z | (zflag_de ^ cc_inv_z);
   wire        cc_pass_c = cc_mask_c | cflag_de;
   wire        cc_pass_v = cc_mask_v | vflag_de;

   wire        cc_pass   = ( ( (cc_pass_n == cc_pass_v) &
                               cc_pass_z & cc_pass_c ) ^
                             cc_code[0] );

   // ------------------------------------------------------------
   // MSR logic for PRIMASK and CONTROL
   // ------------------------------------------------------------

   // PRIMASK is used to boost the priority of the core so as to
   // prevent interruption by a configurable priority interrupt,
   // i.e. anything other than NMI or HardFault

   // PRIMASK may be written as the result of an MSR instruction,
   // or execution of a CPSID/CPSIE, or as the result of a debug
   // access to the combined PRIMASK/CONTROL field

   // accesses from the core and debug differ, so generate
   // separate terms

   wire        cpu_msr_en = ctl_msr_en_i & ~ctl_halt_ack;
   wire        dbg_msr_en = ctl_msr_en_i &  ctl_halt_ack;

   wire        primask_en =
               ( cpu_msr_en & (psr_imm == 2'b10) |
                 dec_cps_en_i & ctl_wr_addr_1_i |
                 dbg_msr_en & psr_imm[0] );

   wire        primask_nxt = ( ctl_msr_en_i & gpr_rb_data_hi_1_0_i[0] |
                               dec_cps_en_i & ctl_rb_addr_1_i );

   // primask_ex forwards the next state of PRIMASK into execute
   // as CPSID requires precise synchronisation with interrupts
   // around it

   wire        primask_ex  = primask_en ? primask_nxt : primask;

   // CONTROL determines which stack pointer should be used; it
   // can be directly modified via an MSR whilst in Thread Mode,
   // is always cleared on entry to an interrupt (i.e. entering
   // Handler Mode), restored on return from exception, or
   // forced via a debug access to the combined PRIMASK/CONTROL
   // field

   wire        control_en =
               ( cpu_msr_en & ~handler & (psr_imm == 2'b11) |
                 dbg_msr_en & ~handler & psr_imm[0] |
                 dec_int_taken_i |
                 rfi_in_irq & ctl_instr_rfi_i);

   wire        control_nxt =
               ( cpu_msr_en & gpr_rb_data_hi_1_0_i[1] |
                 dbg_msr_en & gpr_rb_data_hi_25_i |
                 ctl_instr_rfi_i & pfu_rfi_on_psp_i );

   // ------------------------------------------------------------
   // Exception number control
   // ------------------------------------------------------------

   // the exception number mirrors the architectural defined
   // field in the IPSR component of the XPSR; the register is
   // not modifiable directly via software, and can only be
   // updated as a result of the XPSR read on an exception return,
   // or assigned to the new exception number on entry; debug
   // also provides a means of reseting the value to zero via
   // VECTCLRACTIVE

   wire        ipsr_sel_spu = dec_xpsr_sel_spu_i & ~vect_clr_active;
   wire        ipsr_sel_pfu = ctl_xpsr_sel_pfu_i & ~vect_clr_active;

   wire [ 5:0] ipsr_nxt = ( {6{ipsr_sel_spu}} & spu_res_i[5:0] |
                            {6{ipsr_sel_pfu}} & pfu_int_num_i );

   wire        ipsr_en  = ctl_xpsr_en_i | vect_clr_active;

   // ------------------------------------------------------------
   // Stack alignment bit control
   // ------------------------------------------------------------

   // the stack alignment bit is used to maintain an AEABI
   // compliant, 64-bit stack pointer on entry to an exception;
   // the value only becomes visible when pushed on the stack as
   // bit[9] of the XPSR, and effectively mirrors bit[2] of the
   // currently active stack-pointer (either MSP or PSP)

   wire        stk_align_nxt = ( ctl_xpsr_en_i
                                 ? spu_res_i[9]
                                 : gpr_ra_data_hi_2_i );

   // ------------------------------------------------------------
   // Qualify register enable terms with HREADY
   // ------------------------------------------------------------

   // the rest of the Cortex-M0 control logic only updates when
   // the AHB bus is ready, so we factor in HREADY here

   wire        nzflag_ena    = hready_i & nzflag_en;
   wire        cflag_ena     = hready_i & cflag_en;
   wire        vflag_ena     = hready_i & vflag_en;
   wire        primask_ena   = hready_i & primask_en;
   wire        control_ena   = hready_i & control_en;
   wire        ipsr_ena      = hready_i & ipsr_en;
   wire        stk_align_ena = hready_i & dec_sp_align_en_i;

   // ------------------------------------------------------------
   // Synchronous update logic
   // ------------------------------------------------------------

   // the values of the APSR flags out of reset are UNKNOWN;
   // to avoid pessimistic X-propagation issues, the flags are
   // reset to known (but arbitrary) values based upon empirically
   // minimal synthesis results

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n) begin
       nflag <= 1'b1;
       zflag <= 1'b1;
     end else if(nzflag_ena) begin
       nflag <= nflag_nxt;
       zflag <= zflag_nxt;
     end

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       cflag <= 1'b0;
     else if(cflag_ena)
       cflag <= cflag_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       vflag <= 1'b0;
     else if(vflag_ena)
       vflag <= vflag_nxt;

   // the exception number is reset to resemble the HardFault
   // handler's value so as to allow faults during the reset
   // sequence to generate a LockUp scenario at the architectural
   // prescribe priority - namely HardFault

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       ipsr <= 6'b000011;
     else if(ipsr_ena)
       ipsr <= ipsr_nxt;

   // both PRIMASK and CONTROL are architecturally defined to
   // be reset to zero

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       primask <= 1'b0;
     else if(primask_ena)
       primask <= primask_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       control <= 1'b0;
     else if(control_ena)
       control <= control_nxt;

   // the stack-alignment indicate is not architecturally
   // visible except as a result of an XPSR push to the stack
   // on exception entry; the reset value is arbitrary but
   // employs the same methodology as the APSR

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       stk_align <= 1'b1;
     else if(stk_align_ena)
       stk_align <= stk_align_nxt;

   // ------------------------------------------------------------
   // Assign outputs
   // ------------------------------------------------------------

   assign psr_gpr_wdata_o     = res;
   assign psr_cflag_o         = cflag;
   assign psr_apsr_o          = apsr;
   assign psr_ipsr_o          = ipsr;
   assign psr_primask_o       = primask;
   assign psr_primask_ex_o    = primask_ex;
   assign psr_control_o       = control;
   assign psr_cc_pass_o       = cc_pass;
   assign psr_rfi_in_irq_o    = rfi_in_irq;
   assign psr_sp_auto_o       = psp_auto;
   assign psr_sp_align_o      = stk_align;
   assign psr_handler_o       = handler;
   assign psr_nmi_active_o    = nmi_active;
   assign psr_hdf_active_o    = hdf_active;
   assign psr_dbg_hardfault_o = cfg_dbg ? hdf_active : 1'b0;
   assign psr_n_or_h_active_o = psr_n_or_h_active;
   assign psr_svc_is_undef_o  = svc_is_undef;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,7,`OVL_ASSERT,"Register enables must never be X")
   u_asrt_reg_en_x
     (.clk       (hclk),
      .reset_n   (hreset_n),
      .qualifier (1'b1),
      .test_expr ({ nzflag_ena,
                    cflag_ena,
                    vflag_ena,
                    ipsr_ena,
                    primask_ena,
                    control_ena,
                    stk_align_ena }));


   // Check that a single source is chosen when updating flags
   assert_one_hot
     #(`OVL_FATAL,3,`OVL_ASSERT,
       "Exactly one source must be selected for next flags")
   u_asrt_next_flags
     (.clk(hclk), .reset_n(hreset_n),
      .test_expr((nzflag_ena | cflag_ena | vflag_ena)
                 ? {ldr_flags, msr_flags, std_flags}
                 : 3'b001));

   // PFU supplies IPSRs that only match valid exceptions
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"PFU registered IPSR values must be valid")
   u_asrt_pfu_ipsr_ok
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(ctl_xpsr_sel_pfu_i & ctl_xpsr_en_i),
      .consequent_expr(((pfu_int_num_i < 6'd48) && (pfu_int_num_i > 6'd15)) ||
                       (pfu_int_num_i == 6'd2)  || // NMI
                       (pfu_int_num_i == 6'd3)  || // HardFault
                       (pfu_int_num_i == 6'd11) || // SVCall
                       (pfu_int_num_i == 6'd14) || // PendSV
                       (pfu_int_num_i == 6'd15))); // SysTick

   // Simplified handler checks
   assert_always
     #(`OVL_FATAL,`OVL_ASSERT,"HardFault active should equal IPSR of 3")
   u_asrt_hdf_match
     (.clk(hclk), .reset_n(hreset_n),
      .test_expr(hdf_active == (ipsr == 6'd3)));

   assert_always
     #(`OVL_FATAL,`OVL_ASSERT,"NMI active should equal IPSR of 2")
   u_asrt_nmi_match
     (.clk(hclk), .reset_n(hreset_n),
      .test_expr(nmi_active == (ipsr == 6'd2)));

   // SPU computed result checks
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"SPU result must be consistent with SPU-Z flag")
   u_asrt_spu_zero
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(ctl_spu_en_i & dec_nzflag_en_i),
      .consequent_expr(spu_zflag_i == (~|spu_res_i)));

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"SPU result must be consistent with SPU-N flag")
   u_asrt_spu_neg
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(ctl_spu_en_i & dec_nzflag_en_i),
      .consequent_expr(spu_nflag_i == spu_res_i[31]));

   // Condition code checks
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"0000 should generate EQ")
   u_asrt_cond_eq
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b0000),
      .consequent_expr(cc_pass == zflag_de) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"0001 should generate NE")
   u_asrt_cond_ne
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b0001),
      .consequent_expr(cc_pass == !zflag_de) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"0010 should generate CS")
   u_asrt_cond_cs
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b0010),
      .consequent_expr(cc_pass == cflag_de) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"0011 should generate CC")
   u_asrt_cond_cc
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b0011),
      .consequent_expr(cc_pass == !cflag_de) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"0100 should generate MI")
   u_asrt_cond_mi
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b0100),
      .consequent_expr(cc_pass == nflag_de) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"0101 should generate PL")
   u_asrt_cond_pl
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b0101),
      .consequent_expr(cc_pass == !nflag_de) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"0110 should generate VS")
   u_asrt_cond_vs
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b0110),
      .consequent_expr(cc_pass == vflag_de) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"0111 should generate VC")
   u_asrt_cond_vc
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b0111),
      .consequent_expr(cc_pass == !vflag_de) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"1000 should generate HI")
   u_asrt_cond_hi
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b1000),
      .consequent_expr(cc_pass == (cflag_de & !zflag_de)) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"1001 should generate LS")
   u_asrt_cond_ls
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b1001),
      .consequent_expr(cc_pass == (!cflag_de | zflag_de)) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"1010 should generate GE")
   u_asrt_cond_ge
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b1010),
      .consequent_expr(cc_pass == (nflag_de == vflag_de)) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"1011 should generate LT")
   u_asrt_cond_lt
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b1011),
      .consequent_expr(cc_pass == (nflag_de != vflag_de)) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"1100 should generate GT")
   u_asrt_cond_gt
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b1100),
      .consequent_expr(cc_pass == (!zflag_de & (nflag_de == vflag_de))) );

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"1101 should generate LE")
   u_asrt_cond_le
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(cc_code[3:0] == 4'b1101),
      .consequent_expr(cc_pass == (zflag_de | (nflag_de != vflag_de))) );

`endif

endmodule // cm0_core_psr

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
