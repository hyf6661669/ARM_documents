//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2008-2009 ARM Limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM Limited.
//
//      SVN Information
//
//      Checked In          : $Date: 2009-02-19 17:03:29 +0000 (Thu, 19 Feb 2009) $
//
//      Revision            : $Revision: 101513 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 DEBUG BREAKPOINT UNIT
//-----------------------------------------------------------------------------

module cm0_dbg_bpu
  #(parameter CBAW = 0,
    parameter BKPT = 4,
    parameter DBG  = 1,
    parameter RAR  = 0)

   (input  wire        dclk,              // debug clock
    input  wire        dbg_reset_n,       // debug reset

    output wire [31:0] bpu_hrdata_o,      // breakpoint register read-data
    output wire [ 1:0] bpu_match_o,       // breakpoint half-word match

    input  wire        hready_i,          // AHB ready / core advance

    input  wire [29:0] alu_haddr_31_2_i,  // fetch address to match against
    input  wire        alu_dbg_trans_i,   // core is performing a transaction
    input  wire        ctl_hprot_i,       // transaction is a fetch if == 0
    input  wire        dbg_c_debugen_i,   // debug is enabled
    input  wire [ 4:0] dsl_bpu_sels_i,    // breakpoint register selects
    input  wire        dsl_ppb_write_i,   // register select is for write
    input  wire [31:0] slv_wdata_i);      // register write-data

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   // attempting to configure greater than four comparators will
   // result in only four comparators being generated;
   // if debug is absent, none will be implemented

   wire        cfg_dbg    = (CBAW == 0) ? (DBG != 0) : 1'bZ;

   wire [ 3:0] cfg_bkpt   = (CBAW == 0) ? { BKPT > 3,
                                            BKPT > 2,
                                            BKPT > 1,
                                            BKPT > 0 } : 4'bZ;

   wire [ 3:0] cfg_bkpt_m = cfg_bkpt & {4{cfg_dbg}};

   wire        cfg_rar    = (CBAW == 0) ? (RAR != 0) : 1'bZ;

   // ------------------------------------------------------------
   // Local execute control register state
   // ------------------------------------------------------------

   reg         bpu_comp0_en_r;  // comparator 0 enable
   reg         bpu_comp1_en_r;  // comparator 1 enable
   reg         bpu_comp2_en_r;  // comparator 2 enable
   reg         bpu_comp3_en_r;  // comparator 3 enable

   reg  [28:0] bpu_comp0_r;     // comparator 0 value
   reg  [28:0] bpu_comp1_r;     // comparator 1 value
   reg  [28:0] bpu_comp2_r;     // comparator 2 value
   reg  [28:0] bpu_comp3_r;     // comparator 3 value

   reg         bpu_en_r;        // master enable
   reg  [ 1:0] bpu_match;       // match flags

   // ------------------------------------------------------------
   // Local wires
   // ------------------------------------------------------------

   wire [31:0] bpu_comp0, bpu_comp1, bpu_comp2, bpu_comp3;
   wire [31:0] bpu_ctrl;
   wire        bpu_en;

   // ------------------------------------------------------------
   // Mask inputs based upon configuration
   // ------------------------------------------------------------

   wire        c_debugen       = cfg_bkpt_m[0] ? dbg_c_debugen_i  :  1'b0;
   wire        alu_dbg_trans   = cfg_bkpt_m[0] ? alu_dbg_trans_i  :  1'b0;
   wire        ctl_hprot       = cfg_bkpt_m[0] ? ctl_hprot_i      :  1'b0;
   wire [29:0] alu_haddr_31_2  = cfg_bkpt_m[0] ? alu_haddr_31_2_i : 30'b0;
   wire        hready          = cfg_bkpt_m[0] ? hready_i         :  1'b0;
   wire        ppb_write       = cfg_bkpt_m[0] ? dsl_ppb_write_i  :  1'b0;
   wire [ 4:0] bpu_sels        = cfg_bkpt_m[0] ? dsl_bpu_sels_i   :  5'b0;
   wire [31:0] slv_wdata       = cfg_bkpt_m[0] ? slv_wdata_i      : 32'b0;

   // ------------------------------------------------------------
   // Generate extra reset signal for reset-all-registers config
   // ------------------------------------------------------------

   wire        rar_reset_n     = cfg_rar ? dbg_reset_n : 1'b1;

   // ------------------------------------------------------------
   // Breakpoint comparator function
   // ------------------------------------------------------------

   wire [31:0] alu_haddr = {alu_haddr_31_2, 2'b00};

   // [1] = match on upper-half-word
   // [0] = match on lower-half-word

   function [1:0] bp_comp;
      input        imp;
      input [31:0] addr;
      input [31:0] comp;
      reg   [ 1:0] i_comp;
      begin
        i_comp  = ( {2{comp[0]}} &                  // enabled
                    {2{addr[28:2] == comp[28:2]}} & // matches
                    comp[31:30] );                  // function
        bp_comp = imp ? i_comp : 2'b00;             // implemented
      end
   endfunction // bp_comp

   // ------------------------------------------------------------
   // Instantiate comparators and hit register logic
   // ------------------------------------------------------------

   wire        match_en = ( c_debugen & bpu_en & alu_dbg_trans &
                            ~ctl_hprot & ~(|alu_haddr[31:29]) );

   wire [ 1:0] match_0  = bp_comp(cfg_bkpt_m[0],alu_haddr,bpu_comp0);
   wire [ 1:0] match_1  = bp_comp(cfg_bkpt_m[1],alu_haddr,bpu_comp1);
   wire [ 1:0] match_2  = bp_comp(cfg_bkpt_m[2],alu_haddr,bpu_comp2);
   wire [ 1:0] match_3  = bp_comp(cfg_bkpt_m[3],alu_haddr,bpu_comp3);

   wire [ 1:0] match_n  = match_0 | match_1 | match_2 | match_3;

   wire [ 1:0] nxt_bpu_match = {2{match_en}} & match_n;

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       bpu_match <= 2'b00;
     else if (cfg_bkpt_m[0] ? hready : 1'b0)
       bpu_match <= nxt_bpu_match;

   // ------------------------------------------------------------
   // peripheral bus write interface logic
   // ------------------------------------------------------------

   wire        ppb_bpu_ctrl_wr  = bpu_sels[4] & ppb_write;
   wire        ppb_bpu_comp0_wr = bpu_sels[3] & ppb_write;
   wire        ppb_bpu_comp1_wr = bpu_sels[2] & ppb_write;
   wire        ppb_bpu_comp2_wr = bpu_sels[1] & ppb_write;
   wire        ppb_bpu_comp3_wr = bpu_sels[0] & ppb_write;

   wire [28:0] bpu_comp_nxt = {slv_wdata[31:30],slv_wdata[28:2]};

   // ------------------------------------------------------------
   // Synchronous update logic
   // ------------------------------------------------------------

   // comparator 0

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       bpu_comp0_r <= {29{1'b1}};
     else if(ppb_bpu_comp0_wr & cfg_bkpt_m[0])
       bpu_comp0_r <= bpu_comp_nxt;

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       bpu_comp0_en_r <= 1'b0;
     else if (cfg_bkpt_m[0] ? ppb_bpu_comp0_wr : 1'b0)
       bpu_comp0_en_r <= slv_wdata[0];

   // comparator 1

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       bpu_comp1_r <= {29{1'b1}};
     else if(cfg_bkpt_m[1] ? ppb_bpu_comp1_wr : 1'b0)
       bpu_comp1_r <= bpu_comp_nxt;

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       bpu_comp1_en_r <= 1'b0;
     else if (cfg_bkpt_m[1] ? ppb_bpu_comp1_wr : 1'b0)
       bpu_comp1_en_r <= slv_wdata[0];

   // comparator 2

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       bpu_comp2_r <= {29{1'b1}};
     else if(cfg_bkpt_m[2] ? ppb_bpu_comp2_wr : 1'b0)
       bpu_comp2_r <= bpu_comp_nxt;

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       bpu_comp2_en_r <= 1'b0;
     else if (cfg_bkpt_m[2] ? ppb_bpu_comp2_wr : 1'b0)
       bpu_comp2_en_r <= slv_wdata[0];

   // comparator 3

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       bpu_comp3_r <= {29{1'b1}};
     else if(cfg_bkpt_m[3] ? ppb_bpu_comp3_wr : 1'b0)
       bpu_comp3_r <= bpu_comp_nxt;

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       bpu_comp3_en_r <= 1'b0;
     else if (cfg_bkpt_m[3] ? ppb_bpu_comp3_wr : 1'b0)
       bpu_comp3_en_r <= slv_wdata[0];

   // breakpoint unit control

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       bpu_en_r <= 1'b0;
     else if (cfg_bkpt_m[0] ? ppb_bpu_ctrl_wr : 1'b0)
       bpu_en_r <= &(slv_wdata[1:0]);

   // ------------------------------------------------------------
   // Peripheral bus read interface logic
   // ------------------------------------------------------------

   // Configurability & read values

   wire [ 2:0] num_comp  = ( {3{cfg_bkpt_m[3]   == 1'b1}}  & 3'b100 |
                             {3{cfg_bkpt_m[3:2] == 2'b01}} & 3'b011 |
                             {3{cfg_bkpt_m[2:1] == 2'b01}} & 3'b010 |
                             {3{cfg_bkpt_m[1:0] == 2'b01}} & 3'b001 );

   wire [ 3:0] num_code  = {1'b0, num_comp};

   assign      bpu_en    = cfg_bkpt_m[0] ?  bpu_en_r : 1'b0;

   assign      bpu_ctrl  = { {24{1'b0}},           // 31: 8 Reserved
                             num_code,             //  7: 4 NUM_CODE
                             {2{1'b0}},            //  3: 2 Reserved
                             1'b0,                 //     1 KEY (RAZ)
                             bpu_en };             //     0 ENABLE

   assign      bpu_comp0 = ( cfg_bkpt_m[0] ?
                             { bpu_comp0_r[28:27], // 31:30 BP_MATCH
                               1'b0,               //    29 Reserved
                               bpu_comp0_r[26:0],  // 28: 2 COMP
                               1'b0,               //     1 Reserved
                               bpu_comp0_en_r }    //     0 ENABLE
                             : 32'b0 );

   assign      bpu_comp1 = ( cfg_bkpt_m[1] ?
                             { bpu_comp1_r[28:27], // 31:30 BP_MATCH
                               1'b0,               //    29 Reserved
                               bpu_comp1_r[26:0],  // 28: 2 COMP
                               1'b0,               //     1 Reserved
                               bpu_comp1_en_r }    //     0 ENABLE
                             : 32'b0 );

   assign      bpu_comp2 = ( cfg_bkpt_m[2] ?
                             { bpu_comp2_r[28:27], // 31:30 BP_MATCH
                               1'b0,               //    29 Reserved
                               bpu_comp2_r[26:0],  // 28: 2 COMP
                               1'b0,               //     1 Reserved
                               bpu_comp2_en_r }    //     0 ENABLE
                             : 32'b0 );

   assign      bpu_comp3 = ( cfg_bkpt_m[3] ?
                             { bpu_comp3_r[28:27], // 31:30 BP_MATCH
                               1'b0,               //    29 Reserved
                               bpu_comp3_r[26:0],  // 28: 2 COMP
                               1'b0,               //     1 Reserved
                               bpu_comp3_en_r }    //     0 ENABLE
                             : 32'b0 );

   // ------------------------------------------------------------
   // Read data mux
   // ------------------------------------------------------------

   wire [31:0] hrdata   = ( {32{bpu_sels[4]}} & bpu_ctrl  |
                            {32{bpu_sels[3]}} & bpu_comp0 |
                            {32{bpu_sels[2]}} & bpu_comp1 |
                            {32{bpu_sels[1]}} & bpu_comp2 |
                            {32{bpu_sels[0]}} & bpu_comp3 );

   // ------------------------------------------------------------
   // Assign outputs
   // ------------------------------------------------------------

   assign      bpu_match_o  = cfg_bkpt_m[0] ? bpu_match : 2'b0;
   assign      bpu_hrdata_o = cfg_bkpt_m[0] ? hrdata    : 32'b0;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,6,`OVL_ASSERT,"Register enables must never be X")
       u_asrt_reg_en_x
         (.clk       (dclk),
          .reset_n   (dbg_reset_n),
          .qualifier (1'b1),
          .test_expr ({ hready,
                        ppb_bpu_comp0_wr,
                        ppb_bpu_comp1_wr,
                        ppb_bpu_comp2_wr,
                        ppb_bpu_comp3_wr,
                        ppb_bpu_ctrl_wr }));

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"DBG config unknown")
   u_asrt_cfg_dbg
     ( .clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_dbg) );

   assert_never_unknown
     #(`OVL_FATAL,4,`OVL_ASSERT,"BKPT config unknown")
   u_asrt_cfg_bkpt
     ( .clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_bkpt) );

`endif

endmodule // cm0_dbg_bpu

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
