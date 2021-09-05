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
//    Decodes: THUMB, 16, 10100...........
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_adr;
  
  input [15:0] opcode;
  input [31:0] address;
  
  reg   [`UAL_STR_LEN:0] o;
  reg   [31:0] offset;
  reg   [31:0] dest;

  begin
  
    o      = `UAL_STR_EMPTY;

    if(address[1]) offset = ({opcode[7:0], 2'b00} + 32'd2);
    else           offset = ({opcode[7:0], 2'b00} + 32'd4);
    
    dest   = address + offset;

    o      = { o, "ADR" };
    o      = ual_fun_tab_align(o);
    o      = ual_fun_reg_name(o, opcode[10:8]);
    o      = { o, ",{pc}+" };
    
    if(offset > 32'd9) o = { o, "0x" };
    
    o      = ual_fun_hex(o, offset);
    o      = { o, "  ; 0x" };
    o      = ual_fun_hex(o, dest);
    
    ual_t16_adr = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------
