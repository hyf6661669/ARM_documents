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
//    Translates 4-bit value to condition field name
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:0] ual_fun_cond_field;
  
  input [`UAL_STR_LEN:0] in;
  input [3:0]            cond;
  
  reg   [`UAL_STR_LEN:0] o;
  
  begin
  
    o = in;
  
    case(cond)
      4'b0000 : o = { o, "EQ" };
      4'b0001 : o = { o, "NE" };
      4'b0010 : o = { o, "CS" };
      4'b0011 : o = { o, "CC" };
      4'b0100 : o = { o, "MI" };
      4'b0101 : o = { o, "PL" };
      4'b0110 : o = { o, "VS" };
      4'b0111 : o = { o, "VC" };
      4'b1000 : o = { o, "HI" };
      4'b1001 : o = { o, "LS" };
      4'b1010 : o = { o, "GE" };
      4'b1011 : o = { o, "LT" };
      4'b1100 : o = { o, "GT" };
      4'b1101 : o = { o, "LE" };
      4'b1110 : o = o; // AL
      default : o = { o, "??" };
    endcase
      
    ual_fun_cond_field = o;

  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------





