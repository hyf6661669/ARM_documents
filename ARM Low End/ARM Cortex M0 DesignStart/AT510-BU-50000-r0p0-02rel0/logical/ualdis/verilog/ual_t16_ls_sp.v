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
//    Decodes: THUMB, 16, 1001............
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_ls_sp;
  
  input [15:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  begin
  
    o = `UAL_STR_EMPTY;

    if(opcode[11]) o = { o, "LDR" };
    else           o = { o, "STR" };
    
    o = ual_fun_tab_align(o);
    o = ual_fun_reg_name(o, opcode[10:8]);

    
    if(opcode[7:0] > 8'd2) o = { o, ",[sp,#0x" };
    else                   o = { o, ",[sp,#" };

    o = ual_fun_hex(o, {opcode[7:0], 2'b0});
    o = { o, "]" };
    
    ual_t16_ls_sp = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------
