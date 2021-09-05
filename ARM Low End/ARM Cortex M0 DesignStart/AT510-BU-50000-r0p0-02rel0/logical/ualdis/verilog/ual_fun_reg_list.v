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
//    Translates a 16 bit value to an ARM/Thumb register list
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:0] ual_fun_reg_list;
  
  input [`UAL_STR_LEN:0] in;
  input [15:0]           list;
  
  reg   [`UAL_STR_LEN:0] o;

  reg   [3:0]            elem;
  reg   [17:0]           tmp;
  reg                    first;
  integer                i;

  begin
  
    o     = in;
    elem  = 4'd0;
    tmp   = {list, 2'b0};
    first = 1'b1;

    // note that tmp[2] is considered to be the current register
    // being processed on said iteration through the loop
    
    for(i = 0; i < 16; i = i + 1)
      begin
	if(tmp[2] & ((!tmp[1]) | (!tmp[0] & tmp[1] & !tmp[3])))
          begin
	    if(!first) o = { o, "," };
	    o = ual_fun_reg_name(o, elem);
	    first = 1'b0;
	  end
	else if(tmp[0] & tmp[1] & tmp[2] & !tmp[3])
	  begin
	    o = { o, "-" };
	    o = ual_fun_reg_name(o, elem);
	  end
	elem = elem + 4'd1;
        tmp  = {1'b0, tmp[17:1]};
      end

    ual_fun_reg_list = o;
  
  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------




