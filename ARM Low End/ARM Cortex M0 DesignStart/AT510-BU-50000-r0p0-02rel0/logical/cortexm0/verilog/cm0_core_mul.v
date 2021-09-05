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
// CORTEX-M0 CORE MULTIPLIER ARRAY (FOR FAST MUL) OR 32:1 MUX (FOR SMALL MUL)
//-----------------------------------------------------------------------------

module cm0_core_mul
  #(parameter CBAW = 0,
    parameter SMUL = 0 )
   (output wire [31:0] mul_res_o,         // fast-mul full result
    output wire        mul_sel_o,         // small-mul multiplicand bit

    input  wire        ctl_mul_ctl_i,     // multiplier enable
    input  wire [ 4:0] ctl_imm_4_0_i,     // small-mul multiplicand bit select
    input  wire [31:0] gpr_ra_data_lo_i,  // fast-mul multiplier operand
    input  wire [31:0] gpr_rb_data_lo_i); // multiplicand operand

   // ------------------------------------------------------------
   // Implement configurability
   // ------------------------------------------------------------

   wire       cfg_smul = (CBAW == 0) ? (SMUL != 0) : 1'bZ;

   // ------------------------------------------------------------
   // Perform input conditioning and multiplication for fast mul
   // ------------------------------------------------------------

   // ctl_mul_ctl_i is used to indicate that a MULS is in in
   // execute; if a MULS is not in execute, then the output of
   // the following logic is forced to zero in order to allow
   // the use of an OR for the final register-file write-data
   // selection mux - for power saving reasons, the forcing to
   // zero is applied at the input to the multiply array

   wire        array_en = cfg_smul ? 1'b0 : ctl_mul_ctl_i;

   wire [31:0] fmul_opa = {32{array_en}} & gpr_ra_data_lo_i;
   wire [31:0] fmul_opb = {32{array_en}} & gpr_rb_data_lo_i;

   wire [63:0] fmul_int = fmul_opa * fmul_opb;

   wire [31:0] fmul_res = cfg_smul ? 32'b0 : fmul_int[31:0];

   // ------------------------------------------------------------
   // Perform input conditioning and selection for small mul
   // ------------------------------------------------------------

   wire [31:0] smul_opa = cfg_smul ? gpr_ra_data_lo_i : 32'b0;
   wire [ 4:0] smul_imm = cfg_smul ? ctl_imm_4_0_i : 5'b0;

   // smul_imm starts at 1 and increments through to 31 and
   // over to 0 in its final cycle

   // smul_sel is used in the ALU to select either the addition
   // result, or the incoming value

   wire        smul_int = ( (smul_imm == 5'd0)  & smul_opa[ 0] |
                            (smul_imm == 5'd1)  & smul_opa[31] |
                            (smul_imm == 5'd2)  & smul_opa[30] |
                            (smul_imm == 5'd3)  & smul_opa[29] |
                            (smul_imm == 5'd4)  & smul_opa[28] |
                            (smul_imm == 5'd5)  & smul_opa[27] |
                            (smul_imm == 5'd6)  & smul_opa[26] |
                            (smul_imm == 5'd7)  & smul_opa[25] |
                            (smul_imm == 5'd8)  & smul_opa[24] |
                            (smul_imm == 5'd9)  & smul_opa[23] |
                            (smul_imm == 5'd10) & smul_opa[22] |
                            (smul_imm == 5'd11) & smul_opa[21] |
                            (smul_imm == 5'd12) & smul_opa[20] |
                            (smul_imm == 5'd13) & smul_opa[19] |
                            (smul_imm == 5'd14) & smul_opa[18] |
                            (smul_imm == 5'd15) & smul_opa[17] |
                            (smul_imm == 5'd16) & smul_opa[16] |
                            (smul_imm == 5'd17) & smul_opa[15] |
                            (smul_imm == 5'd18) & smul_opa[14] |
                            (smul_imm == 5'd19) & smul_opa[13] |
                            (smul_imm == 5'd20) & smul_opa[12] |
                            (smul_imm == 5'd21) & smul_opa[11] |
                            (smul_imm == 5'd22) & smul_opa[10] |
                            (smul_imm == 5'd23) & smul_opa[ 9] |
                            (smul_imm == 5'd24) & smul_opa[ 8] |
                            (smul_imm == 5'd25) & smul_opa[ 7] |
                            (smul_imm == 5'd26) & smul_opa[ 6] |
                            (smul_imm == 5'd27) & smul_opa[ 5] |
                            (smul_imm == 5'd28) & smul_opa[ 4] |
                            (smul_imm == 5'd29) & smul_opa[ 3] |
                            (smul_imm == 5'd30) & smul_opa[ 2] |
                            (smul_imm == 5'd31) & smul_opa[ 1] );

   wire        smul_sel = cfg_smul ? smul_int : 1'b0;

   // ------------------------------------------------------------
   // Assign outputs
   // ------------------------------------------------------------

   assign      mul_res_o = fmul_res;
   assign      mul_sel_o = smul_sel;

   // ------------------------------------------------------------

endmodule // cm0_core_mul

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------

