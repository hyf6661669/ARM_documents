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
//      Checked In          : $Date: 2009-03-09 19:20:29 +0000 (Mon, 09 Mar 2009) $
//
//      Revision            : $Revision: 103365 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 CORE GENERAL PURPOSE REGISTER BANK IMPLEMENTATION
//-----------------------------------------------------------------------------

module cm0_core_gpr
  #(parameter CBAW = 0,
    parameter BE   = 0,
    parameter DBG  = 1,
    parameter RAR  = 0,
    parameter SMUL = 0)

   (input  wire        hclk,               // AHB clock
    input  wire        rclk0,              // gated lower regbank clock
    input  wire        rclk1,              // gated upper regbank clock
    input  wire        hreset_n,           // AHB reset

    output wire [31:0] gpr_hwdata_o,       // register derived AHB write data
    output wire [31:0] gpr_ra_data_lo_o,   // read-port A data (valid lo-reg)
    output wire [31:0] gpr_ra_data_hi_o,   // read-port A data (valid any-reg)
    output wire [31:0] gpr_rb_data_lo_o,   // read-port B data (valid lo-reg)
    output wire [31:0] gpr_rb_data_hi_o,   // read-port B data (valid any-reg)
    output wire [31:0] gpr_dcrdr_data_o,   // copy of AUX-reg for debug reads

    input  wire        hready_i,           // AHB ready signal / core advance
    input  wire [31:0] alu_addr_raw_i,     // address input from ALU
    input  wire [ 3:0] ctl_ra_addr_i,      // read-port A register address
    input  wire [ 3:0] ctl_rb_addr_i,      // read-port B register address
    input  wire [ 3:0] ctl_wr_addr_i,      // write-port register address
    input  wire        ctl_wr_en_i,        // write-port write-enable
    input  wire [ 1:0] ctl_ls_size_i,      // AHB data-size - used for stores
    input  wire        ctl_write_last_i,   // in AHB data-phase for a write
    input  wire        ctl_mul_ctl_i,      // MULS instruction in execute
    input  wire        ctl_halt_ack_i,     // core currently halted for debug
    input  wire        dec_sp_sel_en_i,    // enable PSP/MSP selection register
    input  wire        dec_sp_sel_psp_i,   // - update to use PSP
    input  wire        dec_sp_sel_auto_i,  // - update to use psp_auto
    input  wire        dec_aux_en_i,       // enable AUX register
    input  wire        dec_aux_tbit_i,     // - include T-bit as bit[0]
    input  wire        dec_aux_align_i,    // - word align next value
    input  wire        dec_aux_sel_xpsr_i, // - select XPSR value
    input  wire        dec_aux_sel_iaex_i, // - select instruction address
    input  wire        dec_aux_sel_addr_i, // - select address from ALU
    input  wire        dec_ra_use_aux_i,   // force read-port A to return AUX
    input  wire [31:0] dif_wdata_i,        // data for debug register writes
    input  wire        msl_dbg_aux_en_i,   // enable AUX selecting debug data
    input  wire        mtx_ppb_active_i,   // PPB data-phase - for endianess
    input  wire        pfu_tbit_i,         // architectural T-bit from PFU
    input  wire [30:0] pfu_iaex_val_i,     // instruction address from PFU
    input  wire        psr_sp_auto_i,      // CONTROL[1] derived choice of SP
    input  wire [31:0] psr_gpr_wdata_i,    // ALU/SPU/MUL write-port data value
    input  wire [ 3:0] psr_apsr_i,         // architectural APSR (N,Z,C,V)
    input  wire [ 5:0] psr_ipsr_i,         // architectural IPSR (exception)
    input  wire        psr_sp_align_i,     // XPSR[9] alignment of SP
    input  wire        psr_control_i,      // architectural CONTROL[1] value
    input  wire        psr_primask_i);     // architectural PRIMASK value

   // ------------------------------------------------------------
   // Implement configurability
   // ------------------------------------------------------------

   wire       cfg_be    = (CBAW == 0) ? (BE   != 0) : 1'bZ;
   wire       cfg_dbg   = (CBAW == 0) ? (DBG  != 0) : 1'bZ;
   wire       cfg_rar   = (CBAW == 0) ? (RAR  != 0) : 1'bZ;
   wire       cfg_smul  = (CBAW == 0) ? (SMUL != 0) : 1'bZ;

   // ------------------------------------------------------------
   // Architectural register state and auxiliary register
   // ------------------------------------------------------------

   reg  [31:0] reg_r00, reg_r01, reg_r02, reg_r03;
   reg  [31:0] reg_r04, reg_r05, reg_r06, reg_r07;
   reg  [31:0] reg_r08, reg_r09, reg_r10, reg_r11;
   reg  [31:0] reg_r12, reg_r14, reg_aux;
   reg  [29:0] reg_msp, reg_psp;

   // ------------------------------------------------------------
   // Stack pointer selection register
   // ------------------------------------------------------------

   reg         psp_sel;

   // ------------------------------------------------------------
   // Generate extra reset signal for reset-all-registers config
   // ------------------------------------------------------------

   wire        rar_reset_n  = cfg_rar ? hreset_n : 1'b1;

   // ------------------------------------------------------------
   // Clean up debug aux enable value and create debug aux sel
   // ------------------------------------------------------------

   wire        ctl_halt_ack = cfg_dbg ? ctl_halt_ack_i : 1'b0;
   wire        dbg_aux_en   = cfg_dbg ? msl_dbg_aux_en_i : 1'b0;

   wire        aux_sel_slv  = ctl_halt_ack & dbg_aux_en;
   wire [31:0] dif_wdata    = cfg_dbg ? dif_wdata_i : 32'b0;

   // ------------------------------------------------------------
   // Compute primary masks
   // ------------------------------------------------------------

   wire        ra_sel_r00 = ctl_ra_addr_i == 4'h0;
   wire        ra_sel_r01 = ctl_ra_addr_i == 4'h1;
   wire        ra_sel_r02 = ctl_ra_addr_i == 4'h2;
   wire        ra_sel_r03 = ctl_ra_addr_i == 4'h3;
   wire        ra_sel_r04 = ctl_ra_addr_i == 4'h4;
   wire        ra_sel_r05 = ctl_ra_addr_i == 4'h5;
   wire        ra_sel_r06 = ctl_ra_addr_i == 4'h6;
   wire        ra_sel_r07 = ctl_ra_addr_i == 4'h7;
   wire        ra_sel_r08 = ctl_ra_addr_i == 4'h8;
   wire        ra_sel_r09 = ctl_ra_addr_i == 4'h9;
   wire        ra_sel_r10 = ctl_ra_addr_i == 4'hA;
   wire        ra_sel_r11 = ctl_ra_addr_i == 4'hB;
   wire        ra_sel_r12 = ctl_ra_addr_i == 4'hC;
   wire        ra_sel_r13 = ctl_ra_addr_i == 4'hD;
   wire        ra_sel_r14 = ctl_ra_addr_i == 4'hE;
   wire        ra_sel_aux = ctl_ra_addr_i == 4'hF;

   // ------------------------------------------------------------
   // Compute secondary masks
   // ------------------------------------------------------------

   wire        rb_sel_r00 = ctl_rb_addr_i == 4'h0;
   wire        rb_sel_r01 = ctl_rb_addr_i == 4'h1;
   wire        rb_sel_r02 = ctl_rb_addr_i == 4'h2;
   wire        rb_sel_r03 = ctl_rb_addr_i == 4'h3;
   wire        rb_sel_r04 = ctl_rb_addr_i == 4'h4;
   wire        rb_sel_r05 = ctl_rb_addr_i == 4'h5;
   wire        rb_sel_r06 = ctl_rb_addr_i == 4'h6;
   wire        rb_sel_r07 = ctl_rb_addr_i == 4'h7;
   wire        rb_sel_r08 = ctl_rb_addr_i == 4'h8;
   wire        rb_sel_r09 = ctl_rb_addr_i == 4'h9;
   wire        rb_sel_r10 = ctl_rb_addr_i == 4'hA;
   wire        rb_sel_r11 = ctl_rb_addr_i == 4'hB;
   wire        rb_sel_r12 = ctl_rb_addr_i == 4'hC;
   wire        rb_sel_r13 = ctl_rb_addr_i == 4'hD;
   wire        rb_sel_r14 = ctl_rb_addr_i == 4'hE;
   wire        rb_sel_aux = ctl_rb_addr_i == 4'hF;

   // ------------------------------------------------------------
   // Construct 32-bit stack pointer values and masks
   // ------------------------------------------------------------

   wire [31:0] val_msp     = {reg_msp, 2'b00};
   wire [31:0] val_psp     = {reg_psp, 2'b00};

   wire        ra_sel_msp  = ~psp_sel & ra_sel_r13;
   wire        ra_sel_psp  =  psp_sel & ra_sel_r13;

   wire        rb_sel_msp  = ~psp_sel & rb_sel_r13;
   wire        rb_sel_psp  =  psp_sel & rb_sel_r13;

   wire        psp_sel_en  = hready_i & dec_sp_sel_en_i;

   wire        psp_sel_nxt = ( dec_sp_sel_auto_i & psr_sp_auto_i |
                               dec_sp_sel_psp_i );

   // ------------------------------------------------------------
   // Primary read-port AND-OR multiplexors
   // ------------------------------------------------------------

   wire [31:0] ra_data_lo =
               ( {32{ra_sel_r00}} & reg_r00 |
                 {32{ra_sel_r01}} & reg_r01 |
                 {32{ra_sel_r02}} & reg_r02 |
                 {32{ra_sel_r03}} & reg_r03 |
                 {32{ra_sel_r04}} & reg_r04 |
                 {32{ra_sel_r05}} & reg_r05 |
                 {32{ra_sel_r06}} & reg_r06 |
                 {32{ra_sel_r07}} & reg_r07 );

   wire [31:0] ra_mux_hi =
               ( ra_data_lo |
                 {32{ra_sel_msp}} & val_msp |
                 {32{ra_sel_psp}} & val_psp |
                 {32{ra_sel_r08}} & reg_r08 |
                 {32{ra_sel_r09}} & reg_r09 |
                 {32{ra_sel_r10}} & reg_r10 |
                 {32{ra_sel_r11}} & reg_r11 |
                 {32{ra_sel_r12}} & reg_r12 |
                 {32{ra_sel_r14}} & reg_r14 );

   wire        ra_is_aux = ra_sel_aux | dec_ra_use_aux_i;

   wire        mul_ctl   = cfg_smul ? ctl_mul_ctl_i : 1'b0;
   wire [31:0] mul_aux   = cfg_smul ? {reg_aux[30:0],1'b0} : 32'b0;

`ifdef ARM_X_DECODER
   reg [31:0]  ra_data_hi;
   always @(ra_is_aux or mul_ctl or reg_aux or ra_mux_hi or mul_aux)
     case({ra_is_aux,mul_ctl})
       2'bX0   : ra_data_hi = (reg_aux == ra_mux_hi) ? reg_aux : 32'bX;
       2'b10   : ra_data_hi = reg_aux;
       2'b00   : ra_data_hi = ra_mux_hi;
       2'b01   : ra_data_hi = mul_aux;
       default : ra_data_hi = 32'bX;
     endcase // case({ra_is_aux,mul_ctl})
`else
   wire [31:0] ra_data_hi =
               ( {32{ ra_is_aux & ~mul_ctl}} & reg_aux   |
                 {32{~ra_is_aux & ~mul_ctl}} & ra_mux_hi |
                 {32{mul_ctl}}               & mul_aux   );
`endif

   // ------------------------------------------------------------
   // Secondary read-port AND-OR multiplexors
   // ------------------------------------------------------------

   wire [31:0] rb_data_lo =
               ( {32{rb_sel_r00}} & reg_r00 |
                 {32{rb_sel_r01}} & reg_r01 |
                 {32{rb_sel_r02}} & reg_r02 |
                 {32{rb_sel_r03}} & reg_r03 |
                 {32{rb_sel_r04}} & reg_r04 |
                 {32{rb_sel_r05}} & reg_r05 |
                 {32{rb_sel_r06}} & reg_r06 |
                 {32{rb_sel_r07}} & reg_r07 );

   wire [31:0] rb_data_hi =
               ( rb_data_lo |
                 {32{rb_sel_msp}} & val_msp |
                 {32{rb_sel_psp}} & val_psp |
                 {32{rb_sel_r08}} & reg_r08 |
                 {32{rb_sel_r09}} & reg_r09 |
                 {32{rb_sel_r10}} & reg_r10 |
                 {32{rb_sel_r11}} & reg_r11 |
                 {32{rb_sel_r12}} & reg_r12 |
                 {32{rb_sel_r14}} & reg_r14 |
                 {32{rb_sel_aux}} & reg_aux );

   // ------------------------------------------------------------
   // Write enable generation optimised for gate count
   // ------------------------------------------------------------

   wire        wr_en   = ctl_wr_en_i & hready_i;

   wire [3:0]  wr_addr = {4{~wr_en}} | ctl_wr_addr_i;

   wire        wr_en_r00 = wr_addr == 4'h0;
   wire        wr_en_r01 = wr_addr == 4'h1;
   wire        wr_en_r02 = wr_addr == 4'h2;
   wire        wr_en_r03 = wr_addr == 4'h3;
   wire        wr_en_r04 = wr_addr == 4'h4;
   wire        wr_en_r05 = wr_addr == 4'h5;
   wire        wr_en_r06 = wr_addr == 4'h6;
   wire        wr_en_r07 = wr_addr == 4'h7;
   wire        wr_en_r08 = wr_addr == 4'h8;
   wire        wr_en_r09 = wr_addr == 4'h9;
   wire        wr_en_r10 = wr_addr == 4'ha;
   wire        wr_en_r11 = wr_addr == 4'hb;
   wire        wr_en_r12 = wr_addr == 4'hc;
   wire        wr_en_r13 = wr_addr == 4'hd;
   wire        wr_en_r14 = wr_addr == 4'he;
   wire        wr_en_msp = ~psp_sel & wr_en_r13;
   wire        wr_en_psp =  psp_sel & wr_en_r13;

   wire        aux_en    = ( dec_aux_en_i & hready_i |
                             aux_sel_slv & cfg_dbg );

   // ------------------------------------------------------------
   // Write port logic
   // ------------------------------------------------------------

   wire [29:0] wr_msp_data = psr_gpr_wdata_i[31:2];
   wire [29:0] wr_psp_data = wr_msp_data;

   wire [31:0] dctl     = { {6{1'b0}},                      // [31:26]
                            psr_control_i,                  // [25]
                            {24{1'b0}},                     // [24:0]
                            psr_primask_i };                // [0]

   wire [31:0] xpsr     = { psr_apsr_i[3:0],                // [31:28]
                            {3{1'b0}},                      // [27:25]
                            pfu_tbit_i,                     // [24]
                            {14{1'b0}},                     // [23:10]
                            psr_sp_align_i & ~ctl_halt_ack, // [9]
                            {3{1'b0}},                      // [8:6]
                            psr_ipsr_i[5:0] };              // [5:0]

   wire [31:0] xpsr_val = ( {32{ dec_aux_tbit_i &  cfg_dbg}} & dctl |
                            {32{~dec_aux_tbit_i | ~cfg_dbg}} & xpsr );

   wire        aux_tbit = dec_aux_tbit_i & pfu_tbit_i;

   wire [31:0] aux_addr = { alu_addr_raw_i[31:2],
                            alu_addr_raw_i[1] & ~dec_aux_align_i,
                            alu_addr_raw_i[0] | aux_tbit };

   wire [31:0] iaex_val = {pfu_iaex_val_i[30:0], 1'b0};

   wire [31:0] aux_data = ( {32{dec_aux_sel_xpsr_i}} & xpsr_val |
                            {32{dec_aux_sel_addr_i}} & aux_addr |
                            {32{dec_aux_sel_iaex_i}} & iaex_val |
                            {32{aux_sel_slv}} & dif_wdata   );

   // ------------------------------------------------------------
   // Register bank D-type flops using gated RCLK0
   // ------------------------------------------------------------

   always @(posedge rclk0 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r00 <= {32{1'b1}};
     else if(wr_en_r00)
       reg_r00 <= psr_gpr_wdata_i;

   always @(posedge rclk0 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r01 <= {32{1'b1}};
     else if(wr_en_r01)
       reg_r01 <= psr_gpr_wdata_i;

   always @(posedge rclk0 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r02 <= {32{1'b1}};
     else if(wr_en_r02)
       reg_r02 <= psr_gpr_wdata_i;

   always @(posedge rclk0 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r03 <= {32{1'b1}};
     else if(wr_en_r03)
       reg_r03 <= psr_gpr_wdata_i;

   always @(posedge rclk0 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r04 <= {32{1'b1}};
     else if(wr_en_r04)
       reg_r04 <= psr_gpr_wdata_i;

   // ------------------------------------------------------------
   // Register bank D-type flops using gated RCLK1
   // ------------------------------------------------------------

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r05 <= {32{1'b1}};
     else if(wr_en_r05)
       reg_r05 <= psr_gpr_wdata_i;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r06 <= {32{1'b1}};
     else if(wr_en_r06)
       reg_r06 <= psr_gpr_wdata_i;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r07 <= {32{1'b1}};
     else if(wr_en_r07)
       reg_r07 <= psr_gpr_wdata_i;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r08 <= {32{1'b1}};
     else if(wr_en_r08)
       reg_r08 <= psr_gpr_wdata_i;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r09 <= {32{1'b1}};
     else if(wr_en_r09)
       reg_r09 <= psr_gpr_wdata_i;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r10 <= {32{1'b1}};
     else if(wr_en_r10)
       reg_r10 <= psr_gpr_wdata_i;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r11 <= {32{1'b1}};
     else if(wr_en_r11)
       reg_r11 <= psr_gpr_wdata_i;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r12 <= {32{1'b1}};
     else if(wr_en_r12)
       reg_r12 <= psr_gpr_wdata_i;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_msp <= {30{1'b1}};
     else if(wr_en_msp)
       reg_msp <= wr_msp_data;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_psp <= {30{1'b1}};
     else if(wr_en_psp)
       reg_psp <= wr_psp_data;

   always @(posedge rclk1 or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_r14 <= {32{1'b1}};
     else if(wr_en_r14)
       reg_r14 <= psr_gpr_wdata_i;

   // ------------------------------------------------------------
   // Auxiliary register
   // ------------------------------------------------------------

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       reg_aux <= {32{1'b1}};
     else if(aux_en)
       reg_aux <= aux_data;

   // ------------------------------------------------------------
   // Stack pointer selection register
   // ------------------------------------------------------------

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       psp_sel <= 1'b1;
     else if(psp_sel_en)
       psp_sel <= psp_sel_nxt;

   // ------------------------------------------------------------
   // Store value byte replicator
   // ------------------------------------------------------------

   // ctl_ls_size_i[1:0]:
   //
   //  00 = permute for byte store
   //  01 = permute for half-word store
   //  10 = permute for word store
   //  11 = no useful function

   wire [31:0] str_val = rb_data_hi[31:0];

   wire        byte_tx = ctl_write_last_i & ~|ctl_ls_size_i[1:0];
   wire        half_tx = ctl_write_last_i & ctl_ls_size_i[0];
   wire        word_tx = ctl_write_last_i & ctl_ls_size_i[1];

   wire [ 7:0] lane0   = {8{ctl_write_last_i}} & str_val[7:0];

   wire [ 7:0] lane1   = ( {8{ byte_tx}} & str_val[ 7: 0] |
                           {8{~byte_tx}} & str_val[15: 8] );

   wire [ 7:0] lane2   = ( {8{ word_tx}} & str_val[23:16] |
                           {8{~word_tx}} & str_val[ 7: 0] );

   wire [ 7:0] lane3   = ( {8{ byte_tx}} & str_val[ 7: 0] |
                           {8{ half_tx}} & str_val[15: 8] |
                           {8{ word_tx}} & str_val[31:24] );

   wire [31:0] str_le  = {lane3, lane2, lane1, lane0};
   wire [31:0] str_be  = {lane0, lane1, lane2, lane3};
   wire [31:0] str_pbe = mtx_ppb_active_i ? str_le : str_be;

   wire [31:0] hwdata  = cfg_be ? str_pbe : str_le;

   // ------------------------------------------------------------
   // Output assignments from internal nets
   // ------------------------------------------------------------

   wire [31:0] dbg_rdata    = cfg_dbg ? reg_aux : 32'b0;

   assign      gpr_hwdata_o     = hwdata;
   assign      gpr_ra_data_lo_o = ra_data_lo;
   assign      gpr_ra_data_hi_o = ra_data_hi;
   assign      gpr_rb_data_lo_o = rb_data_lo;
   assign      gpr_rb_data_hi_o = rb_data_hi;
   assign      gpr_dcrdr_data_o = dbg_rdata;

   // ------------------------------------------------------------
   // Assertion and auxiliary logic
   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON

`include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,20,`OVL_ASSERT,"Register enables must never be X")
       u_asrt_reg_en_x
         (.clk       (hclk),
          .reset_n   (hreset_n),
          .qualifier (1'b1),
          .test_expr ({ rclk0,
                        rclk1,
                        wr_en_r00,
                        wr_en_r01,
                        wr_en_r02,
                        wr_en_r03,
                        wr_en_r04,
                        wr_en_r05,
                        wr_en_r06,
                        wr_en_r07,
                        wr_en_r08,
                        wr_en_r09,
                        wr_en_r10,
                        wr_en_r11,
                        wr_en_r12,
                        wr_en_msp,
                        wr_en_psp,
                        wr_en_r14,
                        aux_en,
                        psp_sel_en }));

   // Check one-hotness of write-enables
   assert_zero_one_hot
     #(`OVL_FATAL,16,`OVL_ASSERT,"Write-port enables must be onehot")
   u_asrt_wr_en_exclusive
     (.clk(hclk), .reset_n(1'b1),
      .test_expr( { wr_en_r00, wr_en_r01, wr_en_r02, wr_en_r03,
                    wr_en_r04, wr_en_r05, wr_en_r06, wr_en_r07,
                    wr_en_r08, wr_en_r09, wr_en_r10, wr_en_r11,
                    wr_en_r12, wr_en_msp, wr_en_psp, wr_en_r14 }));

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,32,`OVL_ASSERT,"CBAW config unknown")
   u_asrt_cfg_cbaw
     ( .clk(hclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(CBAW) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"DBG config unknown")
   u_asrt_cfg_dbg
     ( .clk(hclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_dbg) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"BE config unknown")
   u_asrt_cfg_be
     ( .clk(hclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_be) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"SMUL config unknown")
   u_asrt_cfg_smul
     ( .clk(hclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_smul) );

`endif

endmodule // cm0_core_gpr

// ---------------------------------------------------------------
// EOF
// ---------------------------------------------------------------
