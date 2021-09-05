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
//      Checked In          : $Date: 2009-02-16 18:16:58 +0000 (Mon, 16 Feb 2009) $
//
//      Revision            : $Revision: 101137 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 CORE SHIFT AND PERMUTE UNIT
//-----------------------------------------------------------------------------

module cm0_core_spu
  #(parameter CBAW = 0,
    parameter BE   = 0)

   (output wire [31:0] spu_res_o,            // shift/permute result
    output wire        spu_nflag_o,          // shift result negative
    output wire        spu_zflag_o,          // shift result zero
    output wire        spu_cflag_o,          // shift carry-out

    input  wire [31:0] hrdata_i,             // AHB read-data

    input  wire [35:0] ctl_spu_ctl_i,        // data-path control
    input  wire [ 4:0] ctl_imm_4_0_i,        // shift by immediate value
    input  wire [31:0] gpr_ra_data_lo_i,     // shift/permute register operand
    input  wire [ 7:0] gpr_rb_data_lo_7_0_i, // shift by register value
    input  wire        mtx_cpu_resp_i,       // AHB error response
    input  wire        mtx_ppb_active_i,     // data-phase to PPB not AHB
    input  wire [31:0] mtx_ppb_hrdata_i,     // PPB read-data
    input  wire        psr_cflag_i);         // carry-flag input for shifts

   // ------------------------------------------------------------
   // Configuration
   // ------------------------------------------------------------

   wire        cfg_be = (CBAW == 0) ? (BE != 0) : 1'bZ;

   // ------------------------------------------------------------
   // Overview of control field : ctl_spu_ctl_i[35:0]
   // ------------------------------------------------------------

   // these signals control the front-end shift-unit, most
   // of these signals are do-not-care whenever the shift
   // is not being used, e.g. when bit[26] selects decoder:

   //     [35] - treat an immediate shift by zero as meaning 32
   //     [34] - shift by immediate value not by register value
   //     [33] - shift by register value not by immediate value
   //     [32] - perform left rather than right rotation
   //     [30] - operation is a ROR instruction
   //     [29] - operation is an ASR instruction
   //     [28] - operation is a ROR or a LSL instruction

   // these signals control the back-end permute unit:

   //     [26] - use decoder selects, not shifter derived values
   //  [25:22] - decoder byte-lane selects for byte 3
   //  [21:18] - decoder byte-lane selects for byte 2
   //  [17:14] - decoder byte-lane selects for byte 1
   //  [13:10] - decoder byte-lane selects for byte 0
   //  [ 9: 6] - replace byte-lanes 3,2,1 with sign bit
   //     [ 5] - source is external AHB or PPB bus
   //     [ 4] - source is register-file value
   //  [ 3: 0] - matrix byte-lane selection for sign bit

   // ------------------------------------------------------------
   // Derive right-rotation for barrel shifter
   // ------------------------------------------------------------

   // ARMv6-M supports both register based and immediate
   // based shifts/rotations; the value of immediate shifts
   // by zero are specific to the instruction being executed,
   // so start by normalising the rotation amount

   wire        opb_0   = ~|ctl_imm_4_0_i;
   wire        opb_32  = opb_0 & ctl_spu_ctl_i[35];

   wire [ 7:0] opb_imm = { 2'b00, opb_32,
                           {5{~opb_32}} & ctl_imm_4_0_i[4:0]};

   wire [ 7:0] rot_amt =
               ( {8{ctl_spu_ctl_i[34]}} & opb_imm |
                 {8{ctl_spu_ctl_i[33]}} & gpr_rb_data_lo_7_0_i[7:0] );

   // the 0 to 7 bit rotation muxes can only perform a rotate
   // right, therefore any left shifts must be converted into
   // their rotate-right equivalents

   wire [ 4:0] rol_amt = {5{1'b0}} - rot_amt[4:0];

   wire [ 4:0] ror_amt = ctl_spu_ctl_i[32] ? rol_amt : rot_amt[4:0];

   wire        ror_zero = ~|ror_amt;

   // ------------------------------------------------------------
   // Perform 0 to 7-bit barrel shift
   // ------------------------------------------------------------

   // rotate the entire 32-bit input operand right by the
   // computed amount

   wire        ror_amt_0 = ror_amt[1:0] == 2'b00;
   wire        ror_amt_1 = ror_amt[1:0] == 2'b01;
   wire        ror_amt_2 = ror_amt[1:0] == 2'b10;
   wire        ror_amt_3 = ror_amt[1:0] == 2'b11;

   wire [31:0] ror_in    = gpr_ra_data_lo_i[31:0];

   wire [31:0] ror_val_0 =
               ( {32{ror_amt_0}} & ror_in[31:0] |
                 {32{ror_amt_1}} & {ror_in[  0], ror_in[31:1]} |
                 {32{ror_amt_2}} & {ror_in[1:0], ror_in[31:2]} |
                 {32{ror_amt_3}} & {ror_in[2:0], ror_in[31:3]} );

   wire [31:0] ror_val   = ( ror_amt[2] ?
                             {ror_val_0[3:0], ror_val_0[31:4]} :
                             ror_val_0 );

   // ------------------------------------------------------------
   // Generate mask for shifts
   // ------------------------------------------------------------

   // unlike rotations, shifts require masking to be applied
   // to the rotated value; due to only 0-7 bits of rotation
   // having been applied, only the 8 most-significant-bits
   // need masking

   wire        inv_msk   = (|ror_amt) & ctl_spu_ctl_i[28];

   wire [ 2:0] ror_msk_0 = ( {3{ror_amt_0}}          |
                             {1'b0, {2{ror_amt_1}}}  |
                             {2'b00, {1{ror_amt_2}}} );

   wire [ 3:0] ror_msk_1 = {ror_msk_0, 1'b1};

   wire [ 7:0] ror_msk_2 = { {4{~ror_amt[2]}} & ror_msk_1,
                             {4{~ror_amt[2]}} | ror_msk_1 };

   wire [ 7:0] ror_msk   = ( ({8{inv_msk}} ^ ror_msk_2) |
                             {8{ctl_spu_ctl_i[30]}} );

   // ------------------------------------------------------------
   // Apply sign to rotate output
   // ------------------------------------------------------------

   // arithmetic shifts require sign insertion into the
   // masked bits; the bottom 24-bits are passed into the
   // permutation matrix unmodified

   wire        rot_sign  = ctl_spu_ctl_i[29] & ror_in[31];

   wire [ 7:0] rot_top   = ( ror_val[31:24] & ror_msk |
                             {8{rot_sign}}  & ~ror_msk);

   wire [31:0] rot_out   = {rot_top, ror_val[23:0]};

   // ------------------------------------------------------------
   // Derive dynamic matrix selects for shifter operations
   // ------------------------------------------------------------

   // unlike all other operations making use of the 4x4
   // permutatin matrix, the shift operation cross-bar
   // connections are derived dynamically based on a function
   // of the shift amount and the type of operation being
   // performed

   wire        ror_00     = ror_amt[4:3] == 2'b00;
   wire        ror_08     = ror_amt[4:3] == 2'b01;
   wire        ror_16     = ror_amt[4:3] == 2'b10;
   wire        ror_24     = ror_amt[4:3] == 2'b11;

   wire [ 3:0] ror_sel_0  = {ror_24, ror_16, ror_08, ror_00};
   wire [ 3:0] ror_sel_1  = {ror_16, ror_08, ror_00, ror_24};
   wire [ 3:0] ror_sel_2  = {ror_08, ror_00, ror_24, ror_16};
   wire [ 3:0] ror_sel_3  = {ror_00, ror_24, ror_16, ror_08};

   wire [ 3:0] rot_msk_0  = {4{ror_24 | ~ctl_spu_ctl_i[32] | ror_zero}};

   wire [ 3:0] rot_msk_1  = ( {3'b111, ctl_spu_ctl_i[28]} &
                              {4{ror_24 | ror_16 |
                                 ~ctl_spu_ctl_i[32] | ror_zero}} );

   wire [ 3:0] rot_msk_2  = ( {2'b11, {2{ctl_spu_ctl_i[28]}} } &
                              {4{ror_24 | ror_16 | ror_08 |
                                 ~ctl_spu_ctl_i[32] | ror_zero}});

   wire [ 3:0] rot_msk_3  = {1'b1, {3{ctl_spu_ctl_i[28]}} };

   wire        rot_ge_32  = |rot_amt[7:5] & ~ctl_spu_ctl_i[30];

   wire [ 3:0] rot_lt_32  = {4{~rot_ge_32}};

   wire [ 3:0] rot_sel_0  = ror_sel_0 & rot_msk_0 & rot_lt_32;
   wire [ 3:0] rot_sel_1  = ror_sel_1 & rot_msk_1 & rot_lt_32;
   wire [ 3:0] rot_sel_2  = ror_sel_2 & rot_msk_2 & rot_lt_32;
   wire [ 3:0] rot_sel_3  = ror_sel_3 & rot_msk_3 & rot_lt_32;

   wire        rot_sgn_0  = ~|rot_sel_0;
   wire        rot_sgn_1  = ~|rot_sel_1;
   wire        rot_sgn_2  = ~|rot_sel_2;
   wire        rot_sgn_3  = ~|rot_sel_3;

   // ------------------------------------------------------------
   // Shifter zero detection
   // ------------------------------------------------------------

   // zero detection is performed on the intermediate shift
   // value as only these instructions can set the Z-flag;
   // this effectively removes a false timing path on the
   // AHB read data path through the permutation matrix

   // the final result is known to be zero if all of the
   // individual used bytes are zero and no sign bits are
   // going to be injected

   wire [ 3:0] rot_used = ( rot_sel_0 | rot_sel_1 |
                            rot_sel_2 | rot_sel_3 );

   wire [ 3:0] rot_set  = { |rot_out[31:24],
                            |rot_out[23:16],
                            |rot_out[15: 8],
                            |rot_out[ 7: 0] };

   wire        rot_zero = ~( |(rot_set & rot_used) |
                             rot_sgn_1 & rot_sign  |
                             rot_sgn_2 & rot_sign  |
                             rot_sgn_3 & rot_sign  );

   // ------------------------------------------------------------
   // Shift negative detection
   // ------------------------------------------------------------

   // likewise, N-flag value is computed earlier based upon
   // which bit will end up in position 31, or the sign-bit
   // if sign extension is performed

   wire       rot_neg = ( rot_sel_3[3] & rot_out[31] |
                          rot_sel_3[2] & rot_out[23] |
                          rot_sel_3[1] & rot_out[15] |
                          rot_sel_3[0] & rot_out[ 7] |
                          rot_sgn_3 & rot_sign );

   // ------------------------------------------------------------
   // Shift carry detection
   // ------------------------------------------------------------

   // the carry flag is either, the incoming C-flag value,
   // or the bit either in position -1 or position 32;
   // because we have only performed a rotation so far, these
   // bit positions correspond to bits 31 and 0 respectively

   wire       shift_00  = ( ror_sel_0[3] & ror_val[24] |
                            ror_sel_0[2] & ror_val[16] |
                            ror_sel_0[1] & ror_val[ 8] |
                            ror_sel_0[0] & ror_val[ 0] );

   wire       shift_31  = ( ror_sel_3[3] & ror_val[31] |
                            ror_sel_3[2] & ror_val[23] |
                            ror_sel_3[1] & ror_val[15] |
                            ror_sel_3[0] & ror_val[ 7] );

   wire       rot_eq_00 = ~|rot_amt[7:0];
   wire       rot_gt_32 = |rot_amt[7:6] | (rot_amt[5] & |rot_amt[4:0]);

   wire       c_gt_32   = ( ctl_spu_ctl_i[30] & shift_31 |
                            ctl_spu_ctl_i[29] & rot_neg );

   wire       c_le_32   = ctl_spu_ctl_i[32] ? shift_00 : shift_31;
   wire       c_select  = rot_gt_32 ? c_gt_32 : c_le_32;

   wire       rot_carry = rot_eq_00 ? psr_cflag_i : c_select;

   // ------------------------------------------------------------
   // Merge matrix selects
   // ------------------------------------------------------------

   // for operations other than shift/rotate, the byte lane
   // permutation is derived via the main decoder; multiplex
   // between the computed shift/rotate lane selection and
   // the decoder generated selections

   // for data loaded from AHB, we also force in the HRESP
   // error signal so as to generate the value 0xFFFFFFFF
   // automatically for vector load-faults, or the
   // unimplemented exception number of 6'h3F for an XPSR
   // load fault - note that this relies on the NVIC
   // treating exception number 6'h3F as lower priority
   // than NMI or HardFault in order to correctly support
   // the HardFault/LockUp scenarios required by the
   // architecture for XPSR load faults

   wire        bus_abort   = ctl_spu_ctl_i[5] & mtx_cpu_resp_i;

   wire        per_sgn_0   = bus_abort;
   wire        per_sgn_1   = bus_abort | ctl_spu_ctl_i[7];
   wire        per_sgn_2   = bus_abort | ctl_spu_ctl_i[8];
   wire        per_sgn_3   = bus_abort | ctl_spu_ctl_i[9];

   wire        mtx_sgn_0   = ctl_spu_ctl_i[26] ? per_sgn_0 : rot_sgn_0;
   wire        mtx_sgn_1   = ctl_spu_ctl_i[26] ? per_sgn_1 : rot_sgn_1;
   wire        mtx_sgn_2   = ctl_spu_ctl_i[26] ? per_sgn_2 : rot_sgn_2;
   wire        mtx_sgn_3   = ctl_spu_ctl_i[26] ? per_sgn_3 : rot_sgn_3;

   wire [ 3:0] per_sel_0   = ctl_spu_ctl_i[13:10];
   wire [ 3:0] per_sel_1   = ctl_spu_ctl_i[17:14];
   wire [ 3:0] per_sel_2   = ctl_spu_ctl_i[21:18];
   wire [ 3:0] per_sel_3   = ctl_spu_ctl_i[25:22];

   wire [ 3:0] mtx_sel_0   = ctl_spu_ctl_i[26] ? per_sel_0 : rot_sel_0;
   wire [ 3:0] mtx_sel_1   = ctl_spu_ctl_i[26] ? per_sel_1 : rot_sel_1;
   wire [ 3:0] mtx_sel_2   = ctl_spu_ctl_i[26] ? per_sel_2 : rot_sel_2;
   wire [ 3:0] mtx_sel_3   = ctl_spu_ctl_i[26] ? per_sel_3 : rot_sel_3;

   // ------------------------------------------------------------
   // Select matrix input from shifter or read-data
   // ------------------------------------------------------------

   // the core does not track whether read data is coming
   // from the external AHB, or the internal PPB (private-
   // peripheral-bus), but must be able to identify the source
   // as the AHB (and not the PPB) may be configured for
   // byte-invariant big-endianness; to do this it uses the
   // Cortex-M0 bus-matrix PPB active signals

   // big-endianess is implemented by a word-wide full
   // hard-byte-rotate here with the main decoder providing
   // different lane selects for big-endian vs little-endian

   wire        hrdata_sel = ctl_spu_ctl_i[5] & ~mtx_ppb_active_i;
   wire        prdata_sel = ctl_spu_ctl_i[5] &  mtx_ppb_active_i;

   wire [31:0] big_rdata  = { hrdata_i[ 7: 0],
                              hrdata_i[15: 8],
                              hrdata_i[23:16],
                              hrdata_i[31:24] };

   wire [31:0] bus_rdata  = cfg_be ? big_rdata : hrdata_i;

   wire [31:0] mtx_in     = ( {32{hrdata_sel}} & bus_rdata |
                              {32{prdata_sel}} & mtx_ppb_hrdata_i |
                              {32{ctl_spu_ctl_i[4]}} & rot_out );

   // ------------------------------------------------------------
   // Implement 4x 4:1 matrix
   // ------------------------------------------------------------

   // multiplex between the six potential sources of sign bit

   wire        mtx_sgn = ( ctl_spu_ctl_i[0] & mtx_in[ 7] |
                           ctl_spu_ctl_i[1] & mtx_in[15] |
                           ctl_spu_ctl_i[2] & mtx_in[23] |
                           ctl_spu_ctl_i[3] & mtx_in[31] |
                           ctl_spu_ctl_i[5] & mtx_cpu_resp_i |
                           rot_sign );

   // for each byte lane, select either zero or one incoming
   // byte lane, and optionally overwrite with the sign bit

   wire [ 7:0] lane_0 = ( {8{mtx_sel_0[0]}} & mtx_in[ 7: 0] |
                          {8{mtx_sel_0[1]}} & mtx_in[15: 8] |
                          {8{mtx_sel_0[2]}} & mtx_in[23:16] |
                          {8{mtx_sel_0[3]}} & mtx_in[31:24] |
                          {8{mtx_sgn_0 & mtx_sgn}} );

   wire [ 7:0] lane_1 = ( {8{mtx_sel_1[0]}} & mtx_in[ 7: 0] |
                          {8{mtx_sel_1[1]}} & mtx_in[15: 8] |
                          {8{mtx_sel_1[2]}} & mtx_in[23:16] |
                          {8{mtx_sel_1[3]}} & mtx_in[31:24] |
                          {8{mtx_sgn_1 & mtx_sgn}} );

   wire [ 7:0] lane_2 = ( {8{mtx_sel_2[0]}} & mtx_in[ 7: 0] |
                          {8{mtx_sel_2[1]}} & mtx_in[15: 8] |
                          {8{mtx_sel_2[2]}} & mtx_in[23:16] |
                          {8{mtx_sel_2[3]}} & mtx_in[31:24] |
                          {8{mtx_sgn_2 & mtx_sgn}} );

   wire [ 7:0] lane_3 = ( {8{mtx_sel_3[0]}} & mtx_in[ 7: 0] |
                          {8{mtx_sel_3[1]}} & mtx_in[15: 8] |
                          {8{mtx_sel_3[2]}} & mtx_in[23:16] |
                          {8{mtx_sel_3[3]}} & mtx_in[31:24] |
                          {8{mtx_sgn_3 & mtx_sgn}} );

   // concatenate the four byte lanes into the final value

   wire [31:0] spu_res = {lane_3, lane_2, lane_1, lane_0};

   // ------------------------------------------------------------
   // Assign outputs
   // ------------------------------------------------------------

   assign      spu_res_o   = spu_res;
   assign      spu_nflag_o = rot_neg;
   assign      spu_cflag_o = rot_carry;
   assign      spu_zflag_o = rot_zero;

   // ------------------------------------------------------------

endmodule // cm0_core_spu

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
