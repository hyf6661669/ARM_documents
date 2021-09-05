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
//      Checked In          : $Date: 2009-03-26 12:59:55 +0000 (Thu, 26 Mar 2009) $
//
//      Revision            : $Revision: 105221 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

// ---------------------------------------------------------------------
//  SVN information
//    $Date: 2009-03-26 12:59:55 +0000 (Thu, 26 Mar 2009) $
//    $Revision: 105221 $
// ---------------------------------------------------------------------

// ---------------------------------------------------------------------
//  Toplevel UAL disassembler include file
// ---------------------------------------------------------------------

// set up defines for include files

`define UAL_STR_CHARS   40
`define UAL_STR_LEN     ((`UAL_STR_CHARS*8)-1)
`define UAL_STR_EMPTY   {`UAL_STR_LEN{1'b0}}
`define UAL_TAB_STOP    8

// include all other files

`include "ual_fun_hex.v"
`include "ual_fun_reg_name.v"
`include "ual_fun_reg_list.v"
`include "ual_fun_tab_align.v"
`include "ual_fun_decimal.v"
`include "ual_fun_big_decimal.v"
`include "ual_fun_cond_field.v"

// include instruction set disassemblers

`include "ual_dec_t16.v"
`include "ual_dec_t32.v"

// display banner for each inclusion

initial
  begin
    $write("%m: ---------------------------------------------------------\n");
    $write("%m: Thumb UAL Verilog Disassembler\n");
    $write("%m: (C) COPYRIGHT 2006-2009 ARM Limited - All Rights Reserved\n");
    $write("%m: ARM v6-M Build 0001\n");
    $write("%m: ---------------------------------------------------------\n");
  end

// clear defines to prevent redefinition complaints

`undef UAL_STR_CHARS
`undef UAL_STR_LEN
`undef UAL_STR_EMPTY
`undef UAL_TAB_STOP


// ---------------------------------------------------------------------
//  EOF
// ---------------------------------------------------------------------



