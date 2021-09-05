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
//  UAL disassembler helper function
//    Translates a four bit value to an ARM/Thumb register name
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:0] ual_fun_reg_name;
  
  input [`UAL_STR_LEN:0] in;
  input [3:0]            num;
  
  reg   [`UAL_STR_LEN:0] o;

  begin
  
    o = in;
    
    case(num)
      4'h0    : o = { o, "r0" };
      4'h1    : o = { o, "r1" };
      4'h2    : o = { o, "r2" };
      4'h3    : o = { o, "r3" };
      4'h4    : o = { o, "r4" };
      4'h5    : o = { o, "r5" };
      4'h6    : o = { o, "r6" };
      4'h7    : o = { o, "r7" };
      4'h8    : o = { o, "r8" };
      4'h9    : o = { o, "r9" };
      4'hA    : o = { o, "r10" };
      4'hB    : o = { o, "r11" };
      4'hC    : o = { o, "r12" };
      4'hD    : o = { o, "sp" };
      4'hE    : o = { o, "lr" };
      4'hF    : o = { o, "pc" };
      default : o = { o, "??" };
    endcase

    ual_fun_reg_name = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------




