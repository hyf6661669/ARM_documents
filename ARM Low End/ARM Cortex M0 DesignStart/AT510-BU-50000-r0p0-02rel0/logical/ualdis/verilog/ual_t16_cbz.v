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
//    Decodes: THUMB, 16, 1011.0.1........
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_cbz;
  
  input [15:0]           opcode;
  input [31:0]           address;
  
  reg   [31:0]           val;

  reg   [`UAL_STR_LEN:0] o;

  begin

    o = `UAL_STR_EMPTY;

    val = { {25{1'b0}}, opcode[9], opcode[7:3], 1'b0 };
    val = val + 32'd4;
    
    if(opcode[11]) o = { o, "CBNZ" };
    else           o = { o, "CBZ" };
    
    o = ual_fun_tab_align(o);
    o = ual_fun_reg_name(o, opcode[2:0]);
    o = { o, "," };
    
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
    
    ual_t16_cbz = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



