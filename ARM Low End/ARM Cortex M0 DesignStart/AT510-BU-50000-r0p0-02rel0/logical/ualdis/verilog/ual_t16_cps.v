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
//    Decodes: THUMB, 16, 10110110011.0...
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_cps;
  
  input [15:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  begin
  
    o = `UAL_STR_EMPTY;

    if(opcode[4]) o = { o, "CPSID" };
    else          o = { o, "CPSIE" };
    
    o = ual_fun_tab_align(o);

    if(opcode[2]) o = { o, "a" };
    if(opcode[1]) o = { o, "i" };
    if(opcode[0]) o = { o, "f" };

    if(~(|opcode[2:0])) o = { o, "; ? aif = 0x0" };
    
    ual_t16_cps = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



