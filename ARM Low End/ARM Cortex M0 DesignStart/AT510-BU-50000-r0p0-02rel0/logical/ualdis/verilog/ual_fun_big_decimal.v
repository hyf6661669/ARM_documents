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
//    Translates a 16 bit value to a decimal string in the range 0-65535
// ---------------------------------------------------------------------


function [`UAL_STR_LEN:0] ual_fun_big_decimal;
  
  input [`UAL_STR_LEN:0] in;
  input [15:0]           num;
  
  reg   [`UAL_STR_LEN:0] o;
  reg   [7:0]            digit;
  reg   [47:0]           decimal;
  reg   [15:0]           tmp;
  reg                    emit;
      
  integer                i;
  
  begin

    o     = in;
    tmp   = num;
    emit  = 1'b0;
    
    // ----------------------------------
    // calculate tens of thousands
    // ----------------------------------
    
    digit = 8'd0;

    for(i=0; i<10; i=i+1)
      begin
	if(tmp >= 16'd10000)
	  begin
	    tmp   = tmp - 16'd10000;
	    digit = digit + 8'd1;
          end
      end

    emit = |digit;
    
    if(emit) o = { o, "0" + digit };

    
    // ----------------------------------
    // calculate thousands
    // ----------------------------------    
    
    digit = 8'd0;

    for(i=0; i<10; i=i+1)
      begin
	if(tmp >= 16'd1000)
	  begin
	    tmp   = tmp - 16'd1000;
	    digit = digit + 8'd1;
          end
      end

    emit = |digit | emit;
    
    if(emit) o = { o, "0" + digit };

    
    // ----------------------------------
    // calculate hundreds
    // ----------------------------------    
    
    digit = 8'd0;

    for(i=0; i<10; i=i+1)
      begin
	if(tmp >= 16'd100)
	  begin
	    tmp   = tmp - 16'd100;
	    digit = digit + 8'd1;
          end
      end

    emit = |digit | emit;
    
    if(emit) o = { o, "0" + digit };

    
    // ----------------------------------
    // calculate tens
    // ----------------------------------    
    
    digit = 8'd0;

    for(i=0; i<10; i=i+1)
      begin
	if(tmp >= 16'd10)
	  begin
	    tmp   = tmp - 16'd10;
	    digit = digit + 8'd1;
          end
      end

    emit = |digit | emit;
    
    if(emit) o = { o, "0" + digit };

    
    // ----------------------------------
    // calculate units
    // ----------------------------------    
    
    digit = 8'd0;

    for(i=0; i<10; i=i+1)
      begin
	if(tmp >= 16'd1)
	  begin
	    tmp   = tmp - 16'd1;
	    digit = digit + 8'd1;
          end
      end
    
    o = { o, "0" + digit };

    
    ual_fun_big_decimal = o;

  end
endfunction


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------

