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
//    Expands a 12-bit value to an ARM shifted immediate
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:0] ual_fun_expand_imm;
  
  input [`UAL_STR_LEN:0] in;
  input [11:0]           imm;
  
  reg   [`UAL_STR_LEN:0] o;

  reg   [39:0]           tmp;
  reg   [31:0]           val;

  begin

    o = in;

    tmp = { imm[7:0], 24'b0, imm[7:0] };
    tmp = tmp >> { imm[11:8], 1'b0 };
    val = tmp[31:0];
    
    if(|imm[7:0] & ~|imm[1:0] & |imm[11:8])
      begin
	o = { o, "#" };
	if(imm[7:0] < 8'd10) o = ual_fun_decimal(o, imm[7:0]);
	else
	  begin
	    o = { o, "0x" };
	    o = ual_fun_hex(o, imm[7:0]);
	  end

	o = { o, ", " };
	o = ual_fun_decimal(o, { imm[11:8], 1'b0 } );

	o = { o, " ; " };
      end	            

    o = { o, "#0x" };
    o = ual_fun_hex(o, val);

    ual_fun_expand_imm = o;

  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------





