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
//    Decodes: THUMB, 16, 010001..........
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_dp_hi_reg;
  
  input [15:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  begin
  
    o     = `UAL_STR_EMPTY;

    // only MOV and ADD are allowed to use two low-registers
    
    if(opcode[7] | opcode[6] | ~opcode[8])
      begin
    
        case(opcode[9:8])
          2'b00   : o = { o, "ADD" };
          2'b01   : o = { o, "CMP" };
          2'b10   : o = { o, "MOV" };
          2'b11   : o = { o, "???" }; // BLX not in this decoder
          default : o = { o, "???" };
        endcase
    
        o = ual_fun_tab_align(o);
    
        o = ual_fun_reg_name(o, {opcode[7],opcode[2:0]});
        o = { o, "," };
    
        if(!(|opcode[9:8]))
          begin
            o = ual_fun_reg_name(o, {opcode[7],opcode[2:0]});
            o = { o, "," };
          end
    
        o = ual_fun_reg_name(o, opcode[6:3]);
	
      end
    else
      begin
	o = ual_t16_undefined(opcode);
      end
    
    ual_t16_dp_hi_reg = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



