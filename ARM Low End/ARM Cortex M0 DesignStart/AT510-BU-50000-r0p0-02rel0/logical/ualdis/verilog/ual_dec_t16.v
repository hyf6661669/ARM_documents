//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2006-2009 ARM Limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM Limited.
//
//      SVN Information
//
//      Checked In          : $Date: 2009-03-24 16:52:18 +0000 (Tue, 24 Mar 2009) $
//
//      Revision            : $Revision: 105072 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

// ---------------------------------------------------------------------
//  SVN information
//    $Date: 2009-03-24 16:52:18 +0000 (Tue, 24 Mar 2009) $
//    $Revision: 105072 $
// ---------------------------------------------------------------------

// ---------------------------------------------------------------------
//  UAL disassembler primary decoder for Thumb state T16
// ---------------------------------------------------------------------

// ---------------------------------------------------------------------
//  Note
//    The order of entries in the decode table below is critical
//    Verilog always works top to bottom for a decode match
// ---------------------------------------------------------------------


// include individual instruction disassemblers

`include "ual_t16_unpredictable.v"
`include "ual_t16_undefined.v"
`include "ual_t16_bkpt.v"
`include "ual_t16_hints.v"
`include "ual_t16_it.v"
`include "ual_t16_svc.v"
`include "ual_t16_dp_reg.v"
`include "ual_t16_shift_imm.v"
`include "ual_t16_dp_imm.v"
`include "ual_t16_dp_hi_reg.v"
`include "ual_t16_add_sp.v"
`include "ual_t16_add_sub_sp.v"
`include "ual_t16_add_sub.v"
`include "ual_t16_adr.v"
`include "ual_t16_ldm_stm.v"
`include "ual_t16_push_pop.v"
`include "ual_t16_bx_blx.v"
`include "ual_t16_literal.v"
`include "ual_t16_ls_sp.v"
`include "ual_t16_ls_reg.v"
`include "ual_t16_ls_imm.v"
`include "ual_t16_ls_h_imm.v"
`include "ual_t16_cps.v"
`include "ual_t16_b_cond.v"
`include "ual_t16_b.v"
`include "ual_t16_cbz.v"
`include "ual_t16_rev.v"
`include "ual_t16_extend.v"
`include "ual_t16_setend.v"
`include "ual_t16_prefix_t32.v"



// include decoder

function [`UAL_STR_LEN:0] ual_dec_t16;

  input [15:0] opcode;
  input [31:0] address;

  reg   [`UAL_STR_LEN:0] o;
  
  begin
  
    casez(opcode[15:0])

      16'b00011??????????? : o = ual_t16_add_sub(opcode);
      16'b000????????????? : o = ual_t16_shift_imm(opcode);
      16'b001????????????? : o = ual_t16_dp_imm(opcode);      
      16'b010000?????????? : o = ual_t16_dp_reg(opcode);
      16'b01000111???????? : o = ual_t16_bx_blx(opcode);      
      16'b010001?????????? : o = ual_t16_dp_hi_reg(opcode);
      16'b01001??????????? : o = ual_t16_literal(opcode,address);
      16'b0101???????????? : o = ual_t16_ls_reg(opcode);
      16'b011????????????? : o = ual_t16_ls_imm(opcode);
      16'b1000???????????? : o = ual_t16_ls_h_imm(opcode);
      16'b1001???????????? : o = ual_t16_ls_sp(opcode);      
      16'b10111110???????? : o = ual_t16_bkpt(opcode);
      16'b10100??????????? : o = ual_t16_adr(opcode,address);
      16'b10101??????????? : o = ual_t16_add_sp(opcode);
      16'b10110000???????? : o = ual_t16_add_sub_sp(opcode);
      16'b10110010???????? : o = ual_t16_extend(opcode);
      16'b101101100101???? : o = ual_t16_setend(opcode);
      16'b10110110011?0??? : o = ual_t16_cps(opcode);
      16'b10110110011?1??? : o = ual_t16_unpredictable(opcode);
      16'b10111010???????? : o = ual_t16_rev(opcode);
      16'b1011?0?1???????? : o = ual_t16_cbz(opcode,address);
      16'b1011?10????????? : o = ual_t16_push_pop(opcode);
      16'b10111111????0000 : o = ual_t16_hints(opcode);
      16'b10111111???????? : o = ual_t16_it(opcode);      
      16'b1100???????????? : o = ual_t16_ldm_stm(opcode);
      16'b11011111???????? : o = ual_t16_svc(opcode);
      16'b1101???????????? : o = ual_t16_b_cond(opcode,address);
      16'b11100??????????? : o = ual_t16_b(opcode,address);
      16'b1111???????????? : o = ual_t16_prefix_t32(opcode);
      
      default : o = ual_t16_undefined(opcode);
    endcase
      
    ual_dec_t16 = o;

  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------
