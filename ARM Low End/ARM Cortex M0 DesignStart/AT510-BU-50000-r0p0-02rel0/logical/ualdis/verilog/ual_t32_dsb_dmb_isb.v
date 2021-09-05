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
//    Decodes: THUMB, 32, 111100111011....10.0............
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t32_dsb_dmb_isb;
  
  input [31:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  begin
  
    o = `UAL_STR_EMPTY;

    if((opcode[7:6] != 2'b01) || (opcode[5:4] == 2'b11))
      begin
	o = ual_t32_undefined(opcode);
      end
    else
      begin
    
	case(opcode[7:4])
	  4'b0100 : o = { o, "DSB" };
	  4'b0101 : o = { o, "DMB" };
	  4'b0110 : o = { o, "ISB" };
	  default : o = { o, "???" }; // unreachable
	endcase
	
	if((|opcode[3:0]) || !(&{opcode[19:16], ~opcode[13], opcode[11:8]}))
	  o = ual_fun_tab_align(o);

	if((|opcode[3:0]))
	  begin
	    o = { o, "0x" };
	    o = ual_fun_hex(o, opcode[3:0]);
	  end

	if(!(&{opcode[19:16], ~opcode[13], opcode[11:8]}))
	  begin
	    o = { o, "  ? SBO/SBZ = 0x" };
	    o = ual_fun_hex(o, {opcode[19:16], opcode[13], opcode[11:8]});
	  end
	
      end

    ual_t32_dsb_dmb_isb = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



