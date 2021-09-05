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
//    Decodes: THUMB, 32, 11110........... 1..1............
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t32_b_bl;
  
  input [31:0]           opcode;
  input [31:0]           address;
  
  reg   [31:0]           val;

  reg   [`UAL_STR_LEN:0] o;

  begin

    val = { {8{opcode[26]}},
	    ~(opcode[26] ^ opcode[13]),
	    ~(opcode[26] ^ opcode[11]),
	    opcode[25:16],
	    opcode[10:0],
	    1'b0 };
	    
    val = val + 32'd4;
  
    o = `UAL_STR_EMPTY;

    o = { o, "B" };

    if(opcode[14]) o = { o, "L" };
    else           o = { o, ".W"};
    
    
    o = ual_fun_tab_align(o);
  
    if(val == 32'b0)
      begin
        o = { o, "{pc}  ; 0x" };
	o   = ual_fun_hex(o, address);
      end
    else if(val[31])
      begin
	o   = { o, "{pc} - 0x" };
	val = (~val) + 32'd1;
	o   = ual_fun_hex(o, val);
	o   = { o, "  ; 0x" };
	val = (~val) + 32'd1;
	val = val + address;
	o   = ual_fun_hex(o, val);
      end
    else
      begin
	o   = { o, "{pc} + 0x" };
	o   = ual_fun_hex(o, val);
	o   = { o, "  ; 0x" };
	val = val + address;
	o   = ual_fun_hex(o, val);
      end
    
    ual_t32_b_bl = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



