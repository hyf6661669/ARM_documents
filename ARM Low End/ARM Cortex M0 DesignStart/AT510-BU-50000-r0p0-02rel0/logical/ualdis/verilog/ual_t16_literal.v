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
//  Instruction decoder
//    Decodes: THUMB, 16, 01001...........
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_literal;
  
  input [15:0] opcode;
  input [31:0] address;
  
  reg   [`UAL_STR_LEN:0] o;
  reg   [31:0] base;
  reg   [31:0] dest;

  begin
  
    o    = `UAL_STR_EMPTY;

    base = {opcode[7:0], 2'b0};
    dest = {address[31:2], 2'b0} + {22'b0, base} + 32'd4;

    o    = { o, "LDR" };
    o    = ual_fun_tab_align(o);
    
    o    = ual_fun_reg_name(o, opcode[10:8]);
    o    = { o, ",[pc,#" };
    o    = ual_fun_big_decimal(o, {6'b0, base});
    o    = { o, "]  ; [0x" };
    o    = ual_fun_hex(o, dest);
    o    = { o, "]" };
    
    ual_t16_literal = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------
