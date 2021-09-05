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
//    Decodes: THUMB, 32, 111100111010....10.0.000........
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t32_hints;
  
  input [31:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  begin
  
    o = `UAL_STR_EMPTY;

    if(opcode[7:0] < 8'b00000101)
      begin
	
	case(opcode[7:0])
	  8'b00000000 : o = { "NOP.W" };
	  8'b00000001 : o = { "YIELD.W" };
	  8'b00000010 : o = { "WFE.W" };
	  8'b00000011 : o = { "WFI.W" };
	  8'b00000100 : o = { "SEV.W" };
	  default     : o = { "?????" }; // unreachable
	endcase
	
	if(opcode[13] || opcode[11] || !(|opcode[19:16]))
	  begin
	    o = ual_fun_tab_align(o);
	    o = { o, "? SBZ/SBO = 0x" };
	    o = ual_fun_hex(o, {opcode[19:16], opcode[13], opcode[11]});
	  end
	
      end
    else
      begin
	o = ual_t32_undefined(opcode);
      end
    
    
    ual_t32_hints = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



