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
//    Decodes: THUMB, 16, 10111111....0000
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t16_hints;
  
  input [15:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;
  reg                    misc;

  begin
  
    o    = `UAL_STR_EMPTY;

    if(opcode[7:4] > 4'b0100)
      begin

	o = { o, "DCI" };
	o = ual_fun_tab_align(o);
	o = { o, "0x" };
	o = ual_fun_hex(o, opcode);
	o = { o, "  ; ? Undefined, NOP Hint" };

      end
    else
      begin

        case(opcode[7:4])
          4'b0000 : o = { o, "NOP" };
          4'b0001 : o = { o, "YIELD" };
          4'b0010 : o = { o, "WFE" };
          4'b0011 : o = { o, "WFI" };
          4'b0100 : o = { o, "SEV" };
          default : o = { o, "????" };
        endcase
	
      end
    
    ual_t16_hints = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



