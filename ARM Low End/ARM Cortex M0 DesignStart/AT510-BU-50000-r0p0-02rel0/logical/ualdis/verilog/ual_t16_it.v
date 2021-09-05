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
//    Decodes: THUMB, 16, 10111111........
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_it;
  
  input [15:0]           opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  begin

    o = `UAL_STR_EMPTY;
    o = { o, "IT" };

    if(|opcode[2:0])
      o = { o, (opcode[3] ^ opcode[4]) ? "E" : "T" };

    if(|opcode[1:0])
      o = { o, (opcode[2] ^ opcode[4]) ? "E" : "T" };

    if(opcode[0])
      o = { o, (opcode[1] ^ opcode[4]) ? "E" : "T" };

    o = ual_fun_tab_align(o);

    case(opcode[7:4])
      4'hE    : o = { o, "AL" };
      4'hF    : o = { o, "NV" };
      default : o = ual_fun_cond_field(o, opcode[7:4]);
    endcase

    ual_t16_it = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



