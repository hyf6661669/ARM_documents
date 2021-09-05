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
//    Decodes: THUMB, 16, 010000..........
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_dp_reg;
  
  input [15:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  reg   twoop;
  reg   rsbs;
  reg   muls;

  begin
  
    o     = `UAL_STR_EMPTY;
    
    twoop = (opcode[9:8] == 2'b10) | (opcode[9:6] == 4'b1111);
    rsbs  = (opcode[9:6] == 4'b1001);
    muls  = (opcode[9:6] == 4'b1101);
    
    case(opcode[9:6])
      4'b0000 : o = { o, "ANDS" };
      4'b0001 : o = { o, "EORS" };
      4'b0010 : o = { o, "LSLS" };
      4'b0011 : o = { o, "LSRS" };
      4'b0100 : o = { o, "ASRS" };
      4'b0101 : o = { o, "ADCS" };
      4'b0110 : o = { o, "SBCS" };
      4'b0111 : o = { o, "RORS" };
      4'b1000 : o = { o, "TST"  };
      4'b1001 : o = { o, "RSBS" };
      4'b1010 : o = { o, "CMP"  };
      4'b1011 : o = { o, "CMN"  };
      4'b1100 : o = { o, "ORRS" };
      4'b1101 : o = { o, "MULS" };
      4'b1110 : o = { o, "BICS" };
      4'b1111 : o = { o, "MVNS" };
      default : o = { o, "???"  };
    endcase
    
    o = ual_fun_tab_align(o);
    
    if(!twoop & !muls)
      begin
        o = ual_fun_reg_name(o, opcode[2:0]);
        o = { o, "," };
      end
      
    o = ual_fun_reg_name(o, opcode[2:0]);
    o = { o, "," };
    o = ual_fun_reg_name(o, opcode[5:3]);

    if(muls)
      begin
	o = { o, "," };
	o = ual_fun_reg_name(o, opcode[2:0]);
      end

    if(rsbs) o = { o, ",#0" };    

    ual_t16_dp_reg = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



