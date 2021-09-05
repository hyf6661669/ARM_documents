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
//  UAL disassembler primary decoder for Thumb state T32
// ---------------------------------------------------------------------

// ---------------------------------------------------------------------
//  Note
//    The order of entries in the decode table below is critical
//    Verilog always works top to bottom for a decode match
// ---------------------------------------------------------------------


// include individual instruction disassemblers

`include "ual_t32_undefined.v"
`include "ual_t32_msr.v"
`include "ual_t32_mrs.v"
`include "ual_t32_dsb_dmb_isb.v"
`include "ual_t32_hints.v"
`include "ual_t32_b_cond.v"
`include "ual_t32_b_bl.v"
`include "ual_t32_opcode_t16.v"


// include decoder

function [`UAL_STR_LEN:0] ual_dec_t32;

  input [31:0] opcode;
  input [31:0] address;

  reg   [`UAL_STR_LEN:0] o;
  
  begin
    
    casez(opcode[31:0])

      32'b111100111000????_10?01000???????? : o = ual_t32_msr(opcode);
      32'b111100111010????_10?0?000???????? : o = ual_t32_hints(opcode);
      32'b111100111110????_10?0???????????? : o = ual_t32_mrs(opcode);
      32'b111100111011????_10?0???????????? : o = ual_t32_dsb_dmb_isb(opcode);
      32'b111101111111????_1010????1111???? : o = ual_t32_undefined(opcode);
      32'b11110?1110??????_10?0???????????? : o = ual_t32_undefined(opcode);
      32'b11110?1111??????_10?0???????????? : o = ual_t32_undefined(opcode);
      32'b11110???????????_10?0???????????? : o = ual_t32_b_cond(opcode,address);      
      32'b11110???????????_1??1???????????? : o = ual_t32_b_bl(opcode,address);
      32'b11110???????????_1??????????????? : o = ual_t32_undefined(opcode);
      
      default : o = ual_t32_undefined(opcode);
    endcase
    
 
    if(opcode[31:27] != 5'b11110) o = ual_t32_opcode_t16(opcode);
     
    ual_dec_t32 = o;

  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------
