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
// CORTEX-M0 DEBUG WATCHPOINT UNIT
//-----------------------------------------------------------------------------

module cm0_dbg_dwt
  #(parameter CBAW = 0,
    parameter DBG  = 1,
    parameter RAR  = 0,
    parameter WPT  = 2)

   (input wire         dclk,              // debug clock
    input wire         dbg_reset_n,       // debug reset

    output wire        dwt_event_o,       // watchpoint hit
    output wire [31:0] dwt_hrdata_o,      // watchpoint register read-data

    input wire         hready_i,          // AHB ready / core advance

    input wire         alu_dbg_trans_i,   // valid core transaction
    input wire  [31:0] alu_haddr_i,       // core AHB address
    input wire         ctl_dwt_atomic_i,  // core is exception processing
    input wire         ctl_hprot_i,       // core load/store not fetch
    input wire         ctl_hwrite_i,      // core write not read
    input wire  [ 1:0] ctl_ls_size_i,     // core data-transaction size
    input wire         dbg_c_debugen_i,   // debug is enabled
    input wire         dbg_halt_req_i,    // halt has been requested
    input wire         dbg_dwt_en_i,      // watchpoint unit is enabled
    input wire         dbg_s_halt_i,      // core is halted for debug
    input wire  [ 7:0] dsl_dwt_sels_i,    // watchpoint register selects
    input wire         dsl_ppb_write_i,   // register selects are for write
    input wire  [30:0] pfu_dwt_iaex_i,    // instruction address for PCSR
    input wire         pfu_pipefull_i,    // core pipeline is populated
    input wire  [31:0] slv_wdata_i);      // register write-data

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   // attempting to configure greater than two comparators will
   // result in only two comparators being generated; if debug
   // is absent, no watchpoint unit will be implemented

   wire        cfg_dbg   = (CBAW == 0) ? (DBG != 0)     : 1'bZ;
   wire [ 1:0] cfg_wpt   = (CBAW == 0) ? {WPT>1, WPT>0} : 2'bZ;
   wire        cfg_rar   = (CBAW == 0) ? (RAR != 0)     : 1'bZ;

   wire [ 1:0] cfg_wpt_m = cfg_wpt & {2{cfg_dbg}};

   // ------------------------------------------------------------
   // Local execute control register state
   // ------------------------------------------------------------

   // all implemented registers mirror architecturally defined
   // state variables

   reg  [31:0] dwt_comp0_r; // DWT COMP[0]
   reg  [ 2:0] dwt_func0_r; // DWT FUNCTION[0]
   reg  [ 4:0] dwt_mask0_r; // DWT MASK[0]
   reg         dwt_mat0_r;  // DWT MATCH[0]

   reg  [31:0] dwt_comp1_r; // DWT COMP[1]
   reg  [ 2:0] dwt_func1_r; // DWT FUNCTION[1]
   reg  [ 4:0] dwt_mask1_r; // DWT MASK[1]
   reg         dwt_mat1_r;  // DWT MATCH[1]

   // ------------------------------------------------------------
   // Mask inputs based upon configuration
   // ------------------------------------------------------------

   // detach all inputs if no watchpoints are implemented;
   // an implementation with zero watchpoints implemenents no
   // watchpoint unit functionality, e.g. PCSR

   wire [ 7:0] dwt_sels   = cfg_wpt_m[0] ? dsl_dwt_sels_i   :  8'b0;
   wire        ppb_write  = cfg_wpt_m[0] ? dsl_ppb_write_i  :  1'b0;
   wire        cpu_trans  = cfg_wpt_m[0] ? alu_dbg_trans_i  :  1'b0;
   wire        ctl_hprot  = cfg_wpt_m[0] ? ctl_hprot_i      :  1'b0;
   wire        ctl_hwrite = cfg_wpt_m[0] ? ctl_hwrite_i     :  1'b0;
   wire [ 1:0] ctl_hsize  = cfg_wpt_m[0] ? ctl_ls_size_i    :  2'b0;
   wire [31:0] alu_haddr  = cfg_wpt_m[0] ? alu_haddr_i      : 32'b0;
   wire        hready     = cfg_wpt_m[0] ? hready_i         :  1'b0;
   wire [30:0] iaex       = cfg_wpt_m[0] ? pfu_dwt_iaex_i   : 31'b0;
   wire        c_debugen  = cfg_wpt_m[0] ? dbg_c_debugen_i  :  1'b0;
   wire        dwt_en     = cfg_wpt_m[0] ? dbg_dwt_en_i     :  1'b0;
   wire [31:0] slv_wdata  = cfg_wpt_m[0] ? slv_wdata_i      : 32'b0;
   wire        s_halt     = cfg_wpt_m[0] ? dbg_s_halt_i     :  1'b0;
   wire        dbg_atomic = cfg_wpt_m[0] ? ctl_dwt_atomic_i :  1'b0;
   wire        pipefull   = cfg_wpt_m[0] ? pfu_pipefull_i   :  1'b0;
   wire        halt_req   = cfg_wpt_m[0] ? dbg_halt_req_i   :  1'b0;

   // ------------------------------------------------------------
   // Mask register outputs based upon configuration
   // ------------------------------------------------------------

   // mask comparator 0 out if no watchpoints are implemented

   wire [31:0] dwt_comp0 = cfg_wpt_m[0] ? dwt_comp0_r : 32'b0;
   wire [ 4:0] dwt_mask0 = cfg_wpt_m[0] ? dwt_mask0_r :  5'b0;
   wire [ 2:0] dwt_func0 = cfg_wpt_m[0] ? dwt_func0_r :  3'b0;
   wire        dwt_mat0  = cfg_wpt_m[0] ? dwt_mat0_r  :  1'b0;

   // mask comparator 1 out if only one watchpoint implemented

   wire [31:0] dwt_comp1 = cfg_wpt_m[1] ? dwt_comp1_r : 32'b0;
   wire [ 4:0] dwt_mask1 = cfg_wpt_m[1] ? dwt_mask1_r :  5'b0;
   wire [ 2:0] dwt_func1 = cfg_wpt_m[1] ? dwt_func1_r :  3'b0;
   wire        dwt_mat1  = cfg_wpt_m[1] ? dwt_mat1_r  :  1'b0;

   // ------------------------------------------------------------
   // Generate extra reset signal for reset-all-registers config
   // ------------------------------------------------------------

   wire        rar_reset_n = cfg_rar ? dbg_reset_n : 1'b1;

   // ------------------------------------------------------------
   // Watchpoint comparator function
   // ------------------------------------------------------------

   // this function implements the watchpoint match functionality
   // defined by ARMv6-M; it converts the encoded MASK value into
   // a 32-bit mask for application to the selected input source,
   // selects either the PC or the AHB address as the source
   // input, masks it and compares it against the COMP value,
   // returning a single bit "hit" signal

   // for power saving reasons it is conventional to mask the
   // input source when the watchpoint comparator is disabled,
   // this is achieved by a disabled watchpoint comparator
   // faking a MASK value of 31

   // comparator masking is performed for data load/stores greater
   // than word for catching byte within word/half-word

   // i_func[2:0] is defined as:
   //
   //   000 - disabled
   //   0xx - reserved
   //   100 - PC watchpoint
   //   101 - data-read watchpoint
   //   110 - data-write watchpoint
   //   111 - data-read or write watchpoint

   function wp_comp;
      input        i_imp;
      input        i_en;
      input        i_read;
      input        i_write;
      input        i_execute;
      input [31:0] i_addr;
      input [ 1:0] i_size;
      input [31:0] i_pc;
      input [31:0] i_comp;
      input [ 4:0] i_mask;
      input [ 2:0] i_func;
      reg          i_off;
      reg   [ 4:0] i_mask_5;
      reg   [31:0] i_mask_32;
      reg          i_pcmode;
      reg          i_cmp_1;
      reg          i_cmp_0;
      reg   [ 1:0] i_cmp_lsb;
      reg   [31:0] i_test;
      reg   [31:0] i_value;
      reg          i_match;
      reg          i_rvalid;
      reg          i_wvalid;
      reg          i_ivalid;
      reg          i_valid;
      reg          i_event;
      reg          i_hit;
      begin
        i_off     = ~i_func[2] | ~i_en;              // in-active state
        i_mask_5  = {5{i_off}} | i_mask;             // mask for power
        i_mask_32 = {32{1'b1}} << i_mask_5;          // create 32-bit mask
        i_pcmode  = ~|i_func[1:0];                   // PC watchpoint mode
        i_cmp_1   = i_pcmode | ~i_size[1];           // compare bit[0]
        i_cmp_0   = ~|i_size[1:0];                   // compare bit[1]
        i_cmp_lsb = i_comp[1:0] & {i_cmp_1, i_cmp_0};// align comp[1:0]
        i_test    = {i_comp[31:2], i_cmp_lsb[1:0]};  // final compare value
        i_value   = i_pcmode ? i_pc : i_addr;        // select input
        i_match   = (i_value & i_mask_32) == i_test; // perform compare
        i_rvalid  = i_func[0] & i_read;              // read event
        i_wvalid  = i_func[1] & i_write;             // write event
        i_ivalid  = i_pcmode & i_execute;            // PC event
        i_valid   = i_rvalid | i_wvalid | i_ivalid;  // merge events
        i_event   = i_valid & i_match;               // add comparator
        i_hit     = i_event & ~i_off;                // final enable
        wp_comp   = i_imp ? i_hit : 1'b0;            // implemented
      end
   endfunction // wp_comp

   // ------------------------------------------------------------
   // Instantiate comparators and hit register logic
   // ------------------------------------------------------------

   // generate the common watchpoint hit function inputs

   wire [31:0] cpu_pc      = {iaex, 1'b0};
   wire        cpu_dtrans  = cpu_trans & ctl_hprot & hready;
   wire        cpu_rtrans  = cpu_dtrans & ~ctl_hwrite;
   wire        cpu_wtrans  = cpu_dtrans &  ctl_hwrite;
   wire        cpu_execute = pipefull & ~dbg_atomic & ~s_halt;
   wire        comp_en     = c_debugen & dwt_en;

   // compute if watchpoint 0 hits

   wire        match0 = wp_comp( cfg_wpt_m[0],
                                 comp_en,
                                 cpu_rtrans,
                                 cpu_wtrans,
                                 cpu_execute,
                                 alu_haddr[31:0],
                                 ctl_hsize[1:0],
                                 cpu_pc[31:0],
                                 dwt_comp0[31:0],
                                 dwt_mask0[4:0],
                                 dwt_func0[2:0] );

   // compute if watchpoint 1 hits

   wire        match1 = wp_comp( cfg_wpt_m[1],
                                 comp_en,
                                 cpu_rtrans,
                                 cpu_wtrans,
                                 cpu_execute,
                                 alu_haddr[31:0],
                                 ctl_hsize[1:0],
                                 cpu_pc[31:0],
                                 dwt_comp1[31:0],
                                 dwt_mask1[4:0],
                                 dwt_func1[2:0] );

   // generate event for debug control logic if either hit

   wire        dwt_event = match0 | match1;

   // ------------------------------------------------------------
   // peripheral bus register interface logic
   // ------------------------------------------------------------

   wire  ppb_dwt_comp0_wr = dwt_sels[5] &  ppb_write;
   wire  ppb_dwt_mask0_wr = dwt_sels[4] &  ppb_write;
   wire  ppb_dwt_func0_wr = dwt_sels[3] &  ppb_write;

   wire  ppb_dwt_comp1_wr = dwt_sels[2] &  ppb_write;
   wire  ppb_dwt_mask1_wr = dwt_sels[1] &  ppb_write;
   wire  ppb_dwt_func1_wr = dwt_sels[0] &  ppb_write;

   wire  ppb_dwt_func0_rd = dwt_sels[3] & ~ppb_write;
   wire  ppb_dwt_func1_rd = dwt_sels[0] & ~ppb_write;

   // ------------------------------------------------------------
   // Read clear register enables
   // ------------------------------------------------------------

   // the two match bits are architected as being clear-on-read

   wire  up_dwt_mat0  = ppb_dwt_func0_rd | match0;
   wire  up_dwt_mat1  = ppb_dwt_func1_rd | match1;

   // ------------------------------------------------------------
   // Synchronous update logic
   // ------------------------------------------------------------

   // first watchpoint register set

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       dwt_comp0_r <= {32{1'b1}};
     else if(cfg_wpt_m[0] ? ppb_dwt_comp0_wr : 1'b0)
       dwt_comp0_r <= slv_wdata[31:0];

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       dwt_mask0_r <= {5{1'b1}};
     else if(cfg_wpt_m[0] ? ppb_dwt_mask0_wr : 1'b0)
       dwt_mask0_r <= slv_wdata[4:0];

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dwt_func0_r <= {3{1'b0}};
     else if(cfg_wpt_m[0] ? ppb_dwt_func0_wr : 1'b0)
       dwt_func0_r <= slv_wdata[2:0];

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dwt_mat0_r <= 1'b0;
     else if(cfg_wpt_m[0] ? up_dwt_mat0 : 1'b0)
       dwt_mat0_r <= match0;

   // second watchpoint register set

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       dwt_comp1_r <= {32{1'b1}};
     else if(cfg_wpt_m[1] ? ppb_dwt_comp1_wr : 1'b0)
       dwt_comp1_r <= slv_wdata[31:0];

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       dwt_mask1_r <= {5{1'b1}};
     else if(cfg_wpt_m[1] ? ppb_dwt_mask1_wr : 1'b0)
       dwt_mask1_r <= slv_wdata[4:0];

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dwt_func1_r <= {3{1'b0}};
     else if(cfg_wpt_m[1] ? ppb_dwt_func1_wr : 1'b0)
       dwt_func1_r <= slv_wdata[2:0];

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dwt_mat1_r <= 1'b0;
     else if(cfg_wpt_m[1] ? up_dwt_mat1 : 1'b0)
       dwt_mat1_r <= match1;

   // ------------------------------------------------------------
   // peripheral bus read interface logic
   // ------------------------------------------------------------

   // the PCSR tracks the core program-counter unless we are
   // halted, in which case it reads as 0xFFFFFFFF

   // a number of the read values are constructed in multiple
   // stages to facilitate easier removal by the synthesis tool
   // when using a DWT with one or zero watchpoints

   wire [31:0] dwt_pcsr    = {iaex,1'b0} | {32{halt_req}};

   wire [ 3:0] num_comp    = { 2'b00,
                               cfg_wpt_m[1],
                               cfg_wpt_m[0] & ~cfg_wpt_m[1] };

   wire [31:0] dwt_ctrl    = { num_comp,     // 31:28 NUMCOMP
                               {28{1'b0}} }; // 27: 0 Reserved

   wire [31:0] dwt_mask0_v = { {27{1'b0}},   // 31: 5 Reserved
                               dwt_mask0 };  //  2: 0 MASK

   wire [31:0] dwt_func0_v = { {7{1'b0}},    // 31:25 Reserved
                               dwt_mat0,     //    24 MATCHED
                               {20{1'b0}},   // 23: 4 Reserved
                               1'b0,         //     3 FUNCTION
                               dwt_func0 };  //  2: 0 FUNCTION

   wire [31:0] dwt_mask1_v = { {27{1'b0}},   // 31: 5 Reserved
                               dwt_mask1 };  //  2: 0 MASK

   wire [31:0] dwt_func1_v = { {7{1'b0}},    // 31:25 Reserved
                               dwt_mat1,     //    24 MATCHED
                               {20{1'b0}},   // 23: 4 Reserved
                               1'b0,         //     3 FUNCTION
                               dwt_func1 };  //  2: 0 FUNCTION

   // ------------------------------------------------------------
   // Mask bus values with configuration
   // ------------------------------------------------------------

   // having zero watchpoint comparators also removes the PCSR

   wire [31:0] dwt_pcsr_p  = cfg_wpt_m[0] ? dwt_pcsr    : 32'b0;

   wire [31:0] dwt_comp0_p = cfg_wpt_m[0] ? dwt_comp0   : 32'b0;
   wire [31:0] dwt_mask0_p = cfg_wpt_m[0] ? dwt_mask0_v : 32'b0;
   wire [31:0] dwt_func0_p = cfg_wpt_m[0] ? dwt_func0_v : 32'b0;

   wire [31:0] dwt_comp1_p = cfg_wpt_m[1] ? dwt_comp1   : 32'b0;
   wire [31:0] dwt_mask1_p = cfg_wpt_m[1] ? dwt_mask1_v : 32'b0;
   wire [31:0] dwt_func1_p = cfg_wpt_m[1] ? dwt_func1_v : 32'b0;

   // ------------------------------------------------------------
   // Read data mux
   // ------------------------------------------------------------

   wire [31:0] hrdata = ( {32{dwt_sels[7]}} & dwt_ctrl    |
                          {32{dwt_sels[6]}} & dwt_pcsr_p  |
                          {32{dwt_sels[5]}} & dwt_comp0_p |
                          {32{dwt_sels[4]}} & dwt_mask0_p |
                          {32{dwt_sels[3]}} & dwt_func0_p |
                          {32{dwt_sels[2]}} & dwt_comp1_p |
                          {32{dwt_sels[1]}} & dwt_mask1_p |
                          {32{dwt_sels[0]}} & dwt_func1_p );

   // ------------------------------------------------------------
   // Output assignments
   // ------------------------------------------------------------

   assign     dwt_event_o  = cfg_wpt_m[0] ? dwt_event :  1'b0;
   assign     dwt_hrdata_o = cfg_wpt_m[0] ? hrdata    : 32'b0;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

 `include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,8,`OVL_ASSERT,"Register enables must never be X")
       u_asrt_reg_en_x
         (.clk       (dclk),
          .reset_n   (dbg_reset_n),
          .qualifier (1'b1),
          .test_expr ({ ppb_dwt_comp0_wr,
                        ppb_dwt_mask0_wr,
                        ppb_dwt_func0_wr,
                        up_dwt_mat0,
                        ppb_dwt_comp1_wr,
                        ppb_dwt_mask1_wr,
                        ppb_dwt_func1_wr,
                        up_dwt_mat1 }));

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,32,`OVL_ASSERT,"CBAW config unknown")
   u_asrt_cfg_cbaw
     (.clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
      .test_expr(CBAW) );

   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"DBG config unknown")
   u_asrt_cfg_dbg
     ( .clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_dbg) );

   assert_never_unknown
     #(`OVL_FATAL,2,`OVL_ASSERT,"WPT config unknown")
   u_asrt_cfg_wpt
     ( .clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_wpt) );

`endif

endmodule // cm0_dbg_dwt

// ---------------------------------------------------------------
// EOF
// ---------------------------------------------------------------
