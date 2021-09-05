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
//    Decodes: THUMB, 16, 0101............
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_ls_reg;
  
  input [15:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  begin
  
    o     = `UAL_STR_EMPTY;
    
    case(opcode[11:9])
      3'b000  : o = { o, "STR" };
      3'b001  : o = { o, "STRH" };
      3'b010  : o = { o, "STRB" };
      3'b011  : o = { o, "LDRSB" };
      3'b100  : o = { o, "LDR" };
      3'b101  : o = { o, "LDRH" };
      3'b110  : o = { o, "LDRB" };
      3'b111  : o = { o, "LDRSH" };
      default : o = { o, "????" };
    endcase
    
    o = ual_fun_tab_align(o);
    
    o = ual_fun_reg_name(o, opcode[2:0]);
    o = { o, ",[" };
    o = ual_fun_reg_name(o, opcode[5:3]);
    o = { o, "," };
    o = ual_fun_reg_name(o, opcode[8:6]);
    o = { o, "]" };

    ual_t16_ls_reg = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



