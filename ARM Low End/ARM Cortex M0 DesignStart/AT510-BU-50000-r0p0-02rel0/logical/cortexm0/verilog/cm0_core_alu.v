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
//      Checked In          : $Date: 2009-03-04 13:41:36 +0000 (Wed, 04 Mar 2009) $
//
//      Revision            : $Revision: 102736 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 CORE ARITHMETIC LOGIC UNIT AND ADDRESS GENERATOR
//-----------------------------------------------------------------------------

module cm0_core_alu
  #(parameter CBAW = 0,
    parameter SMUL = 0)

   (output wire [31:0] alu_agu_o,         // raw adder value output
    output wire [31:0] alu_res_o,         // arithmetic/logic result
    output wire        alu_cflag_o,       // arithmetic carry-out
    output wire        alu_vflag_o,       // arithmetic overflow
    output wire [31:0] alu_haddr_o,       // AHB sanitized address
    output wire [ 1:0] alu_hsize_o,       // AHB size output
    output wire        alu_ext_trans_o,   // AHB HTRANS
    output wire        alu_ppb_trans_o,   // PPB HTRANS
    output wire        alu_spec_htrans_o, // speculative HTRANS
    output wire [31:0] alu_addr_raw_o,    // raw address output
    output wire        alu_align_err_o,   // address has alignment error
    output wire        alu_xn_region_o,   // addr matches execute-never region
    output wire        alu_dbg_trans_o,   // transaction valid for watchpoint
    output wire        alu_itrans_ack_o,  // transaction is on behalf of PFU

    input  wire [19:0] ctl_alu_ctl_i,     // data-path control
    input  wire [11:0] ctl_imm_i,         // immediate value from decode
    input  wire [ 1:0] ctl_ls_size_i,     // load/store size
    input  wire        ctl_addr_phase_i,  // data load/store address cycle
    input  wire        ctl_kill_addr_i,   // kill address phase (last faulted)
    input  wire        ctl_mul_ctl_i,     // small-multiplier control
    input  wire        dec_agu_ex_i,      // use ALU as address-generation-unit
    input  wire        dec_agu_sel_ra_i,  // select read-port A as address
    input  wire        dec_agu_sel_add_i, // select adder result as address
    input  wire        dec_bus_idle_i,    // force bus to idle (idle/fault/IRQ)
    input  wire [31:0] gpr_ra_data_hi_i,  // read-port A register value
    input  wire [31:0] gpr_rb_data_hi_i,  // read-port B register value
    input  wire        mul_sel_i,         // single bit of multiplicand
    input  wire [30:0] pfu_fe_addr_i,     // fetch-address from prefetch-unit
    input  wire        pfu_opcode_13_i,   // bit[13] of opcode (used for BL)
    input  wire [11:0] pfu_opcode_11_0_i, // bit[11:0] of opcode (used for BL)
    input  wire        pfu_itrans_req_i,  // PFU transaction request
    input  wire [ 3:0] psr_apsr_i,        // architectural APSR
    input  wire [ 5:0] psr_ipsr_i,        // architectural IPSR
    input  wire        psr_primask_i,     // architectural PRIMASK
    input  wire        psr_control_i,     // architectural CONTROL
    input  wire        psr_sp_align_i,    // stack-alignment bit
    input  wire        psr_handler_i);    // IPSR maps to Handler Mode

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire        cfg_smul = (CBAW == 0) ? (SMUL != 0) : 1'bZ;

   // ------------------------------------------------------------
   // Mask inputs based upon configuration
   // ------------------------------------------------------------

   wire        mul_ctl  = cfg_smul ? ctl_mul_ctl_i : 1'b0;
   wire        mul_sel  = cfg_smul ? mul_sel_i     : 1'b0;

   // --------------------------------------------------------
   // Overview of control field : ctl_alu_ctl_i[19:0]
   // --------------------------------------------------------

   // source of secondary input value:

   //     [17] - select BL immediate for second operand
   //     [16] - select unshifted 4-bit immediate for 2nd operand
   //     [15] - select shifted 5-bit immediate for 2nd operand
   //     [14] - select unshifted 8-bit immediate for 2nd operand
   //     [13] - select shifted 8-bit immediate for 2nd operand
   //     [12] - select unshifted 12-bit immediate for 2nd operand
   //     [11] - select read-port B register value for 2nd operand

   // primary input value conditioning:

   //     [10] - mask bit[2] to generate 64-bit aligned value
   //     [ 9] - mask value to zero for RSBS and MVN

   // secondary input value conditioning:

   //     [ 8] - invert value of second operand

   // adder carry-input selection:

   //     [ 7] - select APSR carry-flag
   //     [ 6] - force carry-input to one, e.g. for SUB

   // output multiplexor selection:

   //     [ 5] - select adder output       \ overridden by small
   //     [ 4] - select read-port A value  / multiplier control
   //     [ 3] - select logical AND operation
   //     [ 2] - select logical exclusive-OR operation
   //     [ 1] - select read-port B value - combined with A for ORR
   //     [ 0] - select special register base on ctl_imm value

   // ------------------------------------------------------------
   // Derive operand B from register or shifted immediate operand
   // ------------------------------------------------------------

   // the DE-EX immediate fields can encode a number of different
   // values for various instructions; decode has already
   // performed any required shift by one, here we also optionally
   // perform a shift by two

   wire [31:0] imm3_0  = { {29{1'b0}}, ctl_imm_i[2:0] };
   wire [31:0] imm4_2  = { {26{1'b0}}, ctl_imm_i[3:0], 2'b00 };
   wire [31:0] imm8_0  = { {24{1'b0}}, ctl_imm_i[7:0] };
   wire [31:0] imm8_2  = { {22{1'b0}}, ctl_imm_i[7:0], 2'b00 };
   wire [31:0] imm12_0 = { {20{ctl_imm_i[11]}}, ctl_imm_i[11:0] };

   // compute signed 24-bit immediate for 32-bit branch-with-link
   // instruction using both execute immediate and decode fields

   wire [31:0] imm_bl  =
               { {8{ctl_imm_i[11]}},                       // S
                 ~(pfu_opcode_13_i ^ ctl_imm_i[11]),       // I1
                 ~(pfu_opcode_11_0_i[11] ^ ctl_imm_i[11]), // I2
                 ctl_imm_i[10:1],                          // imm10
                 pfu_opcode_11_0_i[10:0],                  // imm11
                 1'b0 };                                   // '0'

   // select operand B from either the branch-with-link, one
   // of the shifted immediates, or the raw register-file value

   wire [31:0] opb     =
               ( {32{ctl_alu_ctl_i[17]}} & imm_bl    |
                 {32{ctl_alu_ctl_i[16]}} & imm3_0    |
                 {32{ctl_alu_ctl_i[15]}} & imm4_2    |
                 {32{ctl_alu_ctl_i[14]}} & imm8_0    |
                 {32{ctl_alu_ctl_i[13]}} & imm8_2    |
                 {32{ctl_alu_ctl_i[12]}} & imm12_0   |
                 {32{ctl_alu_ctl_i[11]}} & gpr_rb_data_hi_i );

   // ------------------------------------------------------------
   // Perform operand conditioning and addition
   // ------------------------------------------------------------

   // operand A can either be presented as the raw register value,
   // or masked to zero for unary negate style operations, or have
   // bit [2] cleared in order to perform AEABI stack alignment
   // for exception stacking

   wire [31:0] add_msk = { {29{ctl_alu_ctl_i[9]}},
                           ctl_alu_ctl_i[9] & ~ctl_alu_ctl_i[10],
                           {2{ctl_alu_ctl_i[9]}} };

   wire [31:0] add_opa = gpr_ra_data_hi_i & add_msk;

   // operand B may be presented as the raw operand value, or
   // negated for subtraction and other invert style operations

   wire [31:0] add_opb = opb ^ {32{ctl_alu_ctl_i[8]}};

   // carry in can be either the true APSR C-flag for ADC/SBC,
   // or forced to one/zero for add/subtract respectively

   wire        psr_cflag = psr_apsr_i[1];

   wire        add_cin = (psr_cflag & ctl_alu_ctl_i[7]) | ctl_alu_ctl_i[6];

   // perform 32+32->33 bit addition

`ifdef ARM_CM0_X_DECODER
   // implement less X-pessimistic addition when testing using
   // the X generating pre-minimised decoder for validation
   wire [31:0] add_opax = {add_opa[31:1], (add_opb[0] | add_cin) & add_opa[0]};
   wire [32:0] add_resx = add_opax + add_opb + add_cin;
   wire [32:0] add_res  = {add_resx[32:1],
                           (add_opb[0] | add_cin) ? add_resx[0] : add_opa[0]};
`else
   wire [32:0] add_res = add_opa + add_opb + add_cin;
`endif

   // compute signed arithmetic overflow if the sign of the
   // result is different from the sign of the primary operand
   // and the sign of the operands were not also different

   wire        ops_diff = add_opa[31] ^ add_opb[31];
   wire        res_diff = add_opa[31] ^ add_res[31];
   wire        overflow = res_diff & ~ops_diff;

   // ------------------------------------------------------------
   // Generate control for MRS
   // ------------------------------------------------------------

   // the 32-bit MRS instruction encodes part of its operation
   // into the immediate field, we extract this information here
   // to determine whether the APSR, IPSR, PRIMASK or CONTROL
   // values are being read

   wire        i_psr_en = ctl_alu_ctl_i[0] & ~ctl_imm_i[4] &  ctl_imm_i[0];
   wire        pmask_en = ctl_alu_ctl_i[0] &  ctl_imm_i[4] & ~ctl_imm_i[2];
   wire        a_psr_en = ctl_alu_ctl_i[0] & ~ctl_imm_i[4] & ~ctl_imm_i[2];
   wire        cntrl_en = ctl_alu_ctl_i[0] &  ctl_imm_i[4] &  ctl_imm_i[2];

   // ------------------------------------------------------------
   // Generate output value for stack alignment restoration
   // ------------------------------------------------------------

   // on return from an exception, we must restore any
   // mis-alignment that was present on the stack pointer

   wire [31:0] stk_align = { {29{1'b0}}, psr_sp_align_i, {2{1'b0}} };

   // ------------------------------------------------------------
   // Generate output value for EXC_RETURN
   // ------------------------------------------------------------

   // the EXC_RETURN value in ARMv6-M can assume one of three
   // possible values:
   //
   //   0xFFFFFFF1 - entry to Handler from Handler
   //   0xFFFFFFF9 - entry to Handler from Thread using MSP
   //   0xFFFFFFFD - entry to Handler from Thread using PSP

   wire [31:0] exc_ret = { {28{1'b1}},     // 31: 4
                           ~psr_handler_i, //     3
                           psr_control_i,  //     2
                           2'b01};         //  1: 0

   // ------------------------------------------------------------
   // Factor small multiplier into mux terms
   // ------------------------------------------------------------

   // when implemented with the small multiplier, the selection
   // logic for input operand vs adder result needs overriding
   // during a MULS instruction based upon the current multiplier
   // bit value; note that this logic is only used during the
   // final cycle, and results in a 32-cycle multiply rather
   // than the 33-cycles required had only the AGU selection
   // path been instrumented

   wire        sel_add_smul = ctl_alu_ctl_i[5] | mul_ctl & mul_sel;
   wire        sel_add_fmul = ctl_alu_ctl_i[5];
   wire        sel_add      = cfg_smul ? sel_add_smul : sel_add_fmul;

   wire        sel_opa_smul = ctl_alu_ctl_i[4] | mul_ctl & ~mul_sel;
   wire        sel_opa_fmul = ctl_alu_ctl_i[4];
   wire        sel_opa      = cfg_smul ? sel_opa_smul : sel_opa_fmul;

   // ------------------------------------------------------------
   // Perform output muxing and logical operations
   // ------------------------------------------------------------

   // generate bitwise operation results

   wire [31:0] alu_and = gpr_ra_data_hi_i & add_opb;
   wire [31:0] alu_eor = gpr_ra_data_hi_i ^ add_opb;

   // ADD - use AU
   // SUB - use AU
   // AND - dedicated AND logic (below)
   // EOR - dedicated XOR logic (below)
   // ORR - merged into result mux, 2 select bits high
   // BIC - dedicated AND logic (B inverted)
   // MOV - reg on B, 0 on A
   // NEG - 0 on A, B inverted, c_in - 1
   // MVN - reg on B (inverted), 0 on A

   wire [31:0] alu_res =
               ( {32{sel_add}} & add_res[31:0]                    |
                 {32{sel_opa}} & gpr_ra_data_hi_i                 |
                 {32{ctl_alu_ctl_i[3]}} & alu_and                 |
                 {32{ctl_alu_ctl_i[2]}} & alu_eor                 |
                 {32{ctl_alu_ctl_i[1]}} & gpr_rb_data_hi_i        |
                 {32{a_psr_en}} & {psr_apsr_i,{28{1'b0}}}         |
                 {32{i_psr_en}} & {{26{1'b0}},psr_ipsr_i}         |
                 {32{pmask_en}} & {{31{1'b0}},psr_primask_i}      |
                 {32{cntrl_en}} & {{30{1'b0}},psr_control_i,1'b0} |
                 {32{ctl_alu_ctl_i[18]}} & stk_align              |
                 {32{ctl_alu_ctl_i[19]}} & exc_ret                );

   // ------------------------------------------------------------
   // Generate internal non-masked address
   // ------------------------------------------------------------

   // the AGU result can be selected from either the result of
   // the adder, directly from the read-port input, or from the
   // prefetch unit; for the small multiplier implementation,
   // the same logic is reused to select either the pre or post
   // addition value depending on whether the current bit of the
   // multiplier is zero or one respectively

   wire        mul_sel_ra   = mul_ctl & ~mul_sel | dec_agu_sel_ra_i;
   wire        mul_sel_agu  = mul_ctl &  mul_sel | dec_agu_sel_add_i;

   wire        addr_sel_ra  = cfg_smul ? mul_sel_ra  : dec_agu_sel_ra_i;
   wire        addr_sel_agu = cfg_smul ? mul_sel_agu : dec_agu_sel_add_i;

   wire [31:0] addr_raw  =
               ( {32{dec_agu_ex_i & addr_sel_ra}}  & gpr_ra_data_hi_i[31:0] |
                 {32{dec_agu_ex_i & addr_sel_agu}} & add_res[31:0] |
                 {32{~dec_agu_ex_i}} & {pfu_fe_addr_i[30:0], 1'b0}  );

   // ------------------------------------------------------------
   // Generate final AHB address and size
   // ------------------------------------------------------------

   // have selected a value for the AGU, AMBA3 AHB-Lite requires
   // that this address always be aligned to the size of the
   // transaction (even if no transaction is actually be
   // performed); to do this, the load/store size is used to
   // create a mask

   // instruction fetches are always word sized, and the
   // instruction address must have the bottom two bits masked;
   // it is important to note that whilst itrans will not be set
   // at the sametime as a true load or store, the same does not
   // hold true during atomic exception handling, however,
   // all exception PUSH/POPs are word aligned anyway

   wire [ 1:0] addr_mask  = { ~ctl_ls_size_i[1],
                              ~(|ctl_ls_size_i[1:0]) } &
                              {2{~pfu_itrans_req_i}};

   wire [31:0] addr_ahb   = { addr_raw[31:2],
                              addr_raw[1:0] & addr_mask };

   wire [ 1:0] hsize      =
               {(ctl_ls_size_i[1] & dec_agu_ex_i) |  pfu_itrans_req_i,
                (ctl_ls_size_i[0] & dec_agu_ex_i) & ~pfu_itrans_req_i };

   // ARMv6-M requires that all unaligned load/stores (that is
   // any where the address is not a multiple of the size),
   // should be synchronously faulted; reuse the mask value
   // already created for AHB compliance to check the premasked
   // least-significant address lines; addr_err reports back to
   // cm0_core_ctl to allow fault injection

   wire        addr_ua    = |(addr_raw[1:0] & ~addr_mask);
   wire        addr_err   = addr_ua & dec_agu_ex_i;

   // determine whether, as a result of all the checks, a valid
   // D-side transaction should be performed:

   //   dec_agu_ex_i    : indicates that a transaction was requested
   //   ~dec_bus_idle_i  : indicates not suppressed by the decoder
   //   ~addr_ua     : indicates didn't alignment fault
   //   ~ctl_kill_addr_i : indicates not part of an aborted burst

   wire        dvalid_tx  = ( dec_agu_ex_i & ~dec_bus_idle_i &
                              ~addr_ua & ~ctl_kill_addr_i );

   // determine whether an instruction fetch is being requested
   // that should not be presented as a result of falling into
   // the architecturally defined execute never (XN) regions
   // between 0x40000000-0x5FFFFFFF and 0xA0000000-0xFFFFFFFF

   // for instruction flow changes, e.g. branches, loads to the PC,
   // vector fetches and the like, it is permissible for dvalid_tx
   // and itrans_i to be simultaneously set, however, ctl_addr_phase_i
   // is never set for an instruction fetch

   wire        xn_region  = ( (addr_raw[30] & ~addr_raw[29]) |
                              (addr_raw[31] &  addr_raw[29]) );

   wire        itrans    = pfu_itrans_req_i & ~ctl_addr_phase_i;

   wire        xn_itrans = itrans & xn_region;

   // the core is responsible for its own decoding as to whether
   // a transaction should be presented to the external AHB, or
   // on the internal private-peripheral bus (PPB) based upon
   // whether the address is below, or above 0xE0000000 respectively

   // whilst all instruction transactions to the PPB are ignored
   // by the cm0_matrix, XN instruction transactions to AHB
   // must be killed here

   wire        addr_ppb   = addr_raw[31:28] == 4'hE;

   wire        dtrans_ext = dvalid_tx & ~addr_ppb;

   wire        htrans_ext = (itrans | dtrans_ext) & ~xn_itrans;
   wire        htrans_ppb = dvalid_tx & addr_ppb;

   // to facilitate higher-frequency of operation, a speculative
   // transaction signal is exported that may be used both
   // externally and by the PPB debug peripherals, it does not
   // contain information as to whether the transaction was
   // routed to PPB vs AHB, nor does it include cancellation
   // due to XN instruction fetch

   wire        spec_htrans = dvalid_tx | pfu_itrans_req_i;
   wire        wpt_trans   = spec_htrans;

   // ------------------------------------------------------------
   // Assign outputs
   // ------------------------------------------------------------

   assign      alu_spec_htrans_o = spec_htrans;
   assign      alu_cflag_o       = add_res[32];
   assign      alu_vflag_o       = overflow;
   assign      alu_agu_o         = add_res[31:0];
   assign      alu_res_o         = alu_res;
   assign      alu_haddr_o       = addr_ahb;
   assign      alu_addr_raw_o    = addr_raw;
   assign      alu_ext_trans_o   = htrans_ext;
   assign      alu_ppb_trans_o   = htrans_ppb;
   assign      alu_hsize_o       = hsize;
   assign      alu_align_err_o   = addr_err;
   assign      alu_xn_region_o   = xn_region;
   assign      alu_dbg_trans_o   = wpt_trans;
   assign      alu_itrans_ack_o  = itrans;

   // ------------------------------------------------------------

endmodule // cm0_core_alu

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
