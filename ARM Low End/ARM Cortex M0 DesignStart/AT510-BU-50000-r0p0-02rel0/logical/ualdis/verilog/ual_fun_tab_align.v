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
//    Pads out current string with spaces to operand tab stop
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:1] ual_fun_tab_align;
  
  input [`UAL_STR_LEN:0] in; 
  reg   [`UAL_STR_LEN:0] o;
  integer                i;
      
  begin
   
    o = in;

    // should use a while loop, but we use a "for" to make the
    // problem tractable for synthesis
    
    for(i=0; i<(`UAL_TAB_STOP); i = i + 1)
     if(~|o[(`UAL_TAB_STOP*8)+7:`UAL_TAB_STOP*8])
       o = { o, " " };

    ual_fun_tab_align = o;

  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



