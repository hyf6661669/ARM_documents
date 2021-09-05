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
//    Translates 2-bit type and 5-bit immediate value to shift type
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:0] ual_fun_imm_shift;
  
  input [`UAL_STR_LEN:0] in;
  input [1:0]            type;
  input [4:0]            imm5;
  
  reg   [`UAL_STR_LEN:0] o;
  reg                    zero;
  
  begin
  
    o    = in;
    zero = ~|imm5;

    if(type | !zero)
      case(type)
	
        2'b00 : begin
                  o = { o, ",LSL #" };
                  o = ual_fun_decimal(o, imm5);
	        end
	
        2'b01 : begin
                  o = { o, ",LSR #" };
                  o = zero ? { o, "32" } : ual_fun_decimal(o, imm5);
                end
	
        2'b10 : begin
                  o = { o, ",ASR #" };
                  o = zero ? { o, "32" } : ual_fun_decimal(o, imm5);
                end
	
        2'b11 : begin
                  o = zero ? { o, ",RRX" } : { o, ",ROR #" };
                  o = zero ? o : ual_fun_decimal(o, imm5);
                end
      endcase
	  
    ual_fun_imm_shift = o;

  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------





