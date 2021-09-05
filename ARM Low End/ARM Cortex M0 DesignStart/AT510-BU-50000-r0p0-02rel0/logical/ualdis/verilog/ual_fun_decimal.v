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
//    Translates a five bit value to a decimal string in the range 0-31
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:0] ual_fun_decimal;
  
  input [`UAL_STR_LEN:0] in;
  input [5:0]            num;
  
  reg   [`UAL_STR_LEN:0] o;
  
  begin

    o = in;
    
    case(num)
      6'd0    : o = { o, "0" };
      6'd1    : o = { o, "1" };
      6'd2    : o = { o, "2" };
      6'd3    : o = { o, "3" };
      6'd4    : o = { o, "4" };
      6'd5    : o = { o, "5" };
      6'd6    : o = { o, "6" };
      6'd7    : o = { o, "7" };
      6'd8    : o = { o, "8" };
      6'd9    : o = { o, "9" };
      6'd10   : o = { o, "10" };
      6'd11   : o = { o, "11" };
      6'd12   : o = { o, "12" };
      6'd13   : o = { o, "13" };
      6'd14   : o = { o, "14" };
      6'd15   : o = { o, "15" };
      6'd16   : o = { o, "16" };
      6'd17   : o = { o, "17" };
      6'd18   : o = { o, "18" };
      6'd19   : o = { o, "19" };
      6'd20   : o = { o, "20" };
      6'd21   : o = { o, "21" };
      6'd22   : o = { o, "22" };
      6'd23   : o = { o, "23" };
      6'd24   : o = { o, "24" };
      6'd25   : o = { o, "25" };
      6'd26   : o = { o, "26" };
      6'd27   : o = { o, "27" };
      6'd28   : o = { o, "28" };
      6'd29   : o = { o, "29" };
      6'd30   : o = { o, "30" };
      6'd31   : o = { o, "31" };
      6'd32   : o = { o, "32" };
      6'd33   : o = { o, "33" };
      6'd34   : o = { o, "34" };
      6'd35   : o = { o, "35" };
      6'd36   : o = { o, "36" };
      6'd37   : o = { o, "37" };
      6'd38   : o = { o, "38" };
      6'd39   : o = { o, "39" };
      6'd40   : o = { o, "40" };
      6'd41   : o = { o, "41" };
      6'd42   : o = { o, "42" };
      6'd43   : o = { o, "43" };
      6'd44   : o = { o, "44" };
      6'd45   : o = { o, "45" };
      6'd46   : o = { o, "46" };
      6'd47   : o = { o, "47" };
      6'd48   : o = { o, "48" };
      6'd49   : o = { o, "49" };
      6'd40   : o = { o, "50" };
      6'd51   : o = { o, "51" };
      6'd52   : o = { o, "52" };
      6'd53   : o = { o, "53" };
      6'd54   : o = { o, "54" };
      6'd55   : o = { o, "55" };
      6'd56   : o = { o, "56" };
      6'd57   : o = { o, "57" };
      6'd58   : o = { o, "58" };
      6'd59   : o = { o, "59" };
      6'd60   : o = { o, "60" };
      6'd61   : o = { o, "61" };
      6'd62   : o = { o, "62" };
      6'd63   : o = { o, "63" };      
      default : o = { o, "??" };
    endcase
    
    ual_fun_decimal = o;

  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------

