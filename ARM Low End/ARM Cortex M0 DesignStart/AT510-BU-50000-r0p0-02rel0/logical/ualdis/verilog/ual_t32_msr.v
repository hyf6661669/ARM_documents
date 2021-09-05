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
//    Decodes: THUMB, 32, 111100111000....10.01000........
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_t32_msr;
  
  input [31:0] opcode;
  
  reg   [`UAL_STR_LEN:0] o;

  begin
  
    o = `UAL_STR_EMPTY;

    o = { o, "MSR" };
    o = ual_fun_tab_align(o);

    case(opcode[7:0])
      
      8'd0   : o = { o, "APSR" };
      8'd1   : o = { o, "IAPSR" };
      8'd2   : o = { o, "EAPSR" };
      8'd3   : o = { o, "PSR" };
      8'd5   : o = { o, "IPSR" };
      8'd6   : o = { o, "EPSR" };
      8'd7   : o = { o, "IEPSR" };
      8'd8   : o = { o, "MSP" };
      8'd9   : o = { o, "PSP" };
      8'd10  : o = { o, "DSP" };
      
      8'd16  : o = { o, "PRIMASK" };
      8'd17  : o = { o, "BASEPRI" };
      8'd18  : o = { o, "BASEPRI_MAX" };
      8'd19  : o = { o, "FAULTMASK" };
      8'd20  : o = { o, "CONTROL" };
      
      default:
	begin
	  o = { o, "#" };
	  o = ual_fun_big_decimal(o, opcode[7:0]);
	end
    endcase
    
    o = { o, "," };
    o = ual_fun_reg_name(o, opcode[19:16]);
    
    if(opcode[13])
      o = { o, "  ; ? SBZ = 0x1" };

    ual_t32_msr = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



