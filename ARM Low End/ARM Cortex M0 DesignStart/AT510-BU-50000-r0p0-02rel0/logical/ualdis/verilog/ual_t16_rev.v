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
//    Decodes: THUMB, 16, 10111010........
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_rev;
  
  input [15:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  begin
  
    o = `UAL_STR_EMPTY;

    if(opcode[7:6] != 2'b10)
      begin
	
        case(opcode[7:6])
          2'b00   : o = { o, "REV" };
          2'b01   : o = { o, "REV16" };
          2'b10   : o = { o, "?????" }; // unreachable
          2'b11   : o = { o, "REVSH" };
          default : o = { o, "?????" };
        endcase
    
        o = ual_fun_tab_align(o);
    
        o = ual_fun_reg_name(o, opcode[2:0]);
        o = { o, "," };
        o = ual_fun_reg_name(o, opcode[5:3]);
	
      end
    else
      begin
	o = ual_t16_undefined(opcode);
      end
    

    ual_t16_rev = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



