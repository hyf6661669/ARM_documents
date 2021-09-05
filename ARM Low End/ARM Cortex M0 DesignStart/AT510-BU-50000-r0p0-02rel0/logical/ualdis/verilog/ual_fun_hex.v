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
//    Translates upto a 32-bit value to a minimal hexadecimal string
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:0] ual_fun_hex;
  
  input [`UAL_STR_LEN:0] in;
  input [31:0]           num;
  
  reg   [`UAL_STR_LEN:0] o;
  
  reg   [31:0]           tmp;
  reg                    emit;
  integer                count;
  integer                i;

  begin
    
    o    = in;
    emit = 1'b0;
    tmp  = num;

    if(!num) o = { o, "0" };
    
    for(i=0; i<8; i=i+1)
      begin
      
        if(tmp[31:28] != 4'b0) emit = 1'b1;

	if(emit)
          case(tmp[31:28])
            4'h0    : o = { o, "0" };
            4'h1    : o = { o, "1" };
            4'h2    : o = { o, "2" };
            4'h3    : o = { o, "3" };
            4'h4    : o = { o, "4" };
            4'h5    : o = { o, "5" };
            4'h6    : o = { o, "6" };
            4'h7    : o = { o, "7" };
            4'h8    : o = { o, "8" };
            4'h9    : o = { o, "9" };
            4'hA    : o = { o, "a" };
            4'hB    : o = { o, "b" };
            4'hC    : o = { o, "c" };
            4'hD    : o = { o, "d" };
            4'hE    : o = { o, "e" };
            4'hF    : o = { o, "f" };
            default : o = { o, "?" };
          endcase

        tmp = { tmp[27:0], 4'b0 };
      end
      
    ual_fun_hex = o;

  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------





