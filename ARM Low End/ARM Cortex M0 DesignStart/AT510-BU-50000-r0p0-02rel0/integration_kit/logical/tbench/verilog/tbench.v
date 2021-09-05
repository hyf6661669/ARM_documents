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
//      Checked In          : $Date: 2008-12-08 12:21:19 +0000 (Mon, 08 Dec 2008) $
//
//      Revision            : $Revision: 96209 $
//
//      Release Information : Cortex-M0-AT510-r0p0-01rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//     Top-level testbench for Cortex-M0 Integration Kit
//-----------------------------------------------------------------------------
//
// This block instantiates:
//  o u_mcu          - Example MCU system
//  o u_clk_src      - Clock source
//  o u_poreset      - Power-On-Reset Generator
//  o u_debug_driver - Debug Driver
// It also optionally includes:
//  o u_tarmac       - Tarmac Logger for Cortex-M0 in MCU
//-----------------------------------------------------------------------------
`include "cm0ik_defs.v"
`timescale 1ns/1ps

module tbench();

//-----------------------------------------------------------------------------
// Signal declarations
//-----------------------------------------------------------------------------

  wire                  CLK;        //  primary clock
  wire                  PORESETn;   //  power-on-reset
  wire                  nTRST;      //  JTAG reset signal
  wire                  SWCLKTCK;   //  SW/JTAG clock
  wire                  SWDIOTMS;   //  SW Data In/Out / JTAG TMS
  wire                  TDI;        //  JTAG data in
  wire                  TDO;        //  JTAG data out
  wire [31:0]           EXTGPIO;    //  GPIO pins from ARMIKMCU

//-----------------------------------------------------------------------------
// MCU System
//-----------------------------------------------------------------------------

   // Add pullups and pulldowns on Debug Interface
   pullup (nTRST);
   pullup (TDI);
   pullup (TDO);
   pullup (SWDIOTMS);
   pulldown (SWCLKTCK);
   
 
  CM0IKMCU u_mcu
  (
   // Inputs
   .CLK                                 (CLK),
   .PORESETn                            (PORESETn),
   .nTRST                               (nTRST),
   .SWCLKTCK                            (SWCLKTCK),
   .TDI                                 (TDI),
   // Outputs
   .TDO                                 (TDO),
   // Inouts
   .SWDIOTMS                            (SWDIOTMS),
   .EXTGPIO                             (EXTGPIO[31:0]));

//-----------------------------------------------------------------------------
// Clock Source
//-----------------------------------------------------------------------------
  
  cm0ik_clk_src u_clk_src
  (//Outputs
   .CLK                                 (CLK));

//-----------------------------------------------------------------------------
// Power-On-Reset
//-----------------------------------------------------------------------------

  cm0ik_poreset u_poreset
  (// Outputs
   .PORESETn                            (PORESETn));

//-----------------------------------------------------------------------------
// Debug driver block
//-----------------------------------------------------------------------------

  // Add pulldowns on interface signals between ARMIKMCU and debug driver
  pulldown(EXTGPIO[24]);
  pulldown(EXTGPIO[25]);
  pulldown(EXTGPIO[26]);
  pulldown(EXTGPIO[27]);
  pulldown(EXTGPIO[28]);
  pulldown(EXTGPIO[29]);
  pulldown(EXTGPIO[30]);
  pulldown(EXTGPIO[31]);
  
  cm0ik_debug_driver u_dbg_drv
  (
   // Inputs
   .CLK                                 (CLK),
   .PORESETn                            (PORESETn),
   .EXTSIGNAL29                         (EXTGPIO[29]),
   .EXTSIGNAL28                         (EXTGPIO[28]),
   .EXTSIGNAL27                         (EXTGPIO[27]),
   .EXTSIGNAL26                         (EXTGPIO[26]),
   .EXTSIGNAL25                         (EXTGPIO[25]),
   .EXTSIGNAL24                         (EXTGPIO[24]),
   .TDO                                 (TDO),
   // Outputs
   .EXTSIGNAL31                         (EXTGPIO[31]),
   .EXTSIGNAL30                         (EXTGPIO[30]),
   .nTRST                               (nTRST),
   .SWCLKTCK                            (SWCLKTCK),
   .SWDIOTMS                            (SWDIOTMS),
   .TDI                                 (TDI));


//-----------------------------------------------------------------------------
// Pull Ups on unused GPIO pins
//-----------------------------------------------------------------------------

  pullup(EXTGPIO[ 2]);
  pullup(EXTGPIO[ 3]);
  pullup(EXTGPIO[ 4]);
  pullup(EXTGPIO[ 5]);
  pullup(EXTGPIO[ 6]);
  pullup(EXTGPIO[ 7]);
  pullup(EXTGPIO[16]);
  pullup(EXTGPIO[17]);
  pullup(EXTGPIO[18]);
  pullup(EXTGPIO[19]);
  pullup(EXTGPIO[20]);
  pullup(EXTGPIO[21]);
  pullup(EXTGPIO[22]);
  pullup(EXTGPIO[23]);

  
//-----------------------------------------------------------------------------
// Character Output - debug_driver block
//-----------------------------------------------------------------------------

  wire [7:0]  d_chardata = {1'b0, u_dbg_drv.GPIOOUT[14:8]};
  
  wire        d_charstrobe = u_dbg_drv.GPIOOUT[15];

  always@(d_charstrobe)
    if(d_charstrobe == 1'b1)
       $write ("%c", d_chardata);
  
//-----------------------------------------------------------------------------
// Character Output - STDOUT
//-----------------------------------------------------------------------------

  wire [7:0]  chardata = {1'b0, EXTGPIO[14:8]};
  
  wire        charstrobe = EXTGPIO[15];

  always@(charstrobe)
    if(charstrobe == 1'b1)
       $write ("%c", chardata);
   
//-----------------------------------------------------------------------------
// TESTCOMPLETE, TESTPASS
//-----------------------------------------------------------------------------

  pulldown(EXTGPIO[0]);
  pulldown(EXTGPIO[1]);
   
  wire        TESTCOMPLETE = EXTGPIO[0];

  wire        TESTPASS = EXTGPIO[1];

  always@(posedge CLK)
    begin
      if(TESTCOMPLETE == 1'b1)
        begin
          if(TESTPASS == 1'b1)
               $display ("** TEST PASSED OK ** (Time:%d)", $time);
          else
               $display ("** TEST FAILED ** (Time:%d)", $time);
          $finish;
        end
    end  

//-----------------------------------------------------------------------------
// Runaway Simulation Timer
//-----------------------------------------------------------------------------

  initial 
    begin
      #`ARM_CM0IK_SIM_TIMEOUT
      $display ("** TEST KILLED ** (Time:%d)", $time);
      $finish(2);
    end

//-----------------------------------------------------------------------------
// Tarmac    
//-----------------------------------------------------------------------------

`ifdef ARM_CM0IK_TARMAC

`ifdef ARM_CM0IK_INTEGRATION_LEVEL
`define ARM_CM0IK_PATH tbench.u_mcu.u_sys.u_timing.u_int_imp.u_cortexm0integration.u_cortexm0
`else
`define ARM_CM0IK_PATH tbench.u_mcu.u_sys.u_timing.u_imp.u_cortexm0
`endif // ARM_CM0IK_INTEGRATION_LEVEL

  cm0_tarmac #(.LOGFILENAME("tarmac.log"))
    u_tarmac
      (.enable_i      (1'b1),
 
       .hclk_i        (`ARM_CM0IK_PATH.HCLK),
       .hready_i      (`ARM_CM0IK_PATH.HREADY),
       .haddr_i       (`ARM_CM0IK_PATH.HADDR[31:0]),
       .hprot_i       (`ARM_CM0IK_PATH.HPROT[3:0]),
       .hsize_i       (`ARM_CM0IK_PATH.HSIZE[2:0]),
       .hwrite_i      (`ARM_CM0IK_PATH.HWRITE),
       .htrans_i      (`ARM_CM0IK_PATH.HTRANS[1:0]),
       .hresetn_i     (`ARM_CM0IK_PATH.HRESETn),
       .hresp_i       (`ARM_CM0IK_PATH.HRESP),
       .hrdata_i      (`ARM_CM0IK_PATH.HRDATA[31:0]),
       .hwdata_i      (`ARM_CM0IK_PATH.HWDATA[31:0]),
       .lockup_i      (`ARM_CM0IK_PATH.LOCKUP),
       .halted_i      (`ARM_CM0IK_PATH.HALTED),
       .codehintde_i  (`ARM_CM0IK_PATH.CODEHINTDE[2:0]),
       .codenseq_i    (`ARM_CM0IK_PATH.CODENSEQ),
 
       .hdf_req_i     (`ARM_CM0IK_PATH.u_top.u_sys.ctl_hdf_request),
       .int_taken_i   (`ARM_CM0IK_PATH.u_top.u_sys.dec_int_taken_o),
       .int_return_i  (`ARM_CM0IK_PATH.u_top.u_sys.dec_int_return_o), 
       .int_pend_i    (`ARM_CM0IK_PATH.u_top.u_sys.nvm_int_pend),
       .pend_num_i    (`ARM_CM0IK_PATH.u_top.u_sys.nvm_int_pend_num[5:0]),
       .ipsr_i        (`ARM_CM0IK_PATH.u_top.u_sys.psr_ipsr[5:0]),
 
       .ex_last_i     (`ARM_CM0IK_PATH.u_top.u_sys.u_core.ctl_ex_last),
       .iaex_en_i     (`ARM_CM0IK_PATH.u_top.u_sys.u_core.ctl_iaex_en), 
       .reg_waddr_i   (`ARM_CM0IK_PATH.u_top.u_sys.u_core.ctl_wr_addr[3:0]),
       .reg_write_i   (`ARM_CM0IK_PATH.u_top.u_sys.u_core.ctl_wr_en),
       .xpsr_en_i     (`ARM_CM0IK_PATH.u_top.u_sys.u_core.ctl_xpsr_en),
       .fe_addr_i     (`ARM_CM0IK_PATH.u_top.u_sys.u_core.pfu_fe_addr[30:0]),
       .int_delay_i   (`ARM_CM0IK_PATH.u_top.u_sys.u_core.pfu_int_delay),
       .special_i     (`ARM_CM0IK_PATH.u_top.u_sys.u_core.pfu_op_special),
       .opcode_i      (`ARM_CM0IK_PATH.u_top.u_sys.u_core.pfu_opcode[15:0]),
       .reg_wdata_i   (`ARM_CM0IK_PATH.u_top.u_sys.u_core.psr_gpr_wdata[31:0]),
 
       .atomic_i      (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_ctl.atomic),
       .atomic_nxt_i  (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_ctl.atomic_nxt),
       .dabort_i      (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_ctl.data_abort), 
       .ex_last_nxt_i (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_ctl.ex_last_nxt), 
       .int_preempt_i (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_ctl.int_preempt),
       
       .psp_sel_i     (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_gpr.psp_sel),
       .xpsr_i        (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_gpr.xpsr[31:0]),
        
       .iaex_i        (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_pfu.iaex[30:0]),
       .iaex_nxt_i    (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_pfu.iaex_nxt[30:0]),
       .opcode_nxt_i  (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_pfu.ibuf_de_nxt[15:0]),
       .delay_count_i (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_pfu.ibuf_lo[13:6]),
       .tbit_en_i     (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_pfu.tbit_en),
 
       .cflag_en_i    (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_psr.cflag_ena),
       .ipsr_en_i     (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_psr.ipsr_ena),
       .nzflag_en_i   (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_psr.nzflag_ena),
       .vflag_en_i    (`ARM_CM0IK_PATH.u_top.u_sys.u_core.u_psr.vflag_ena) );
  
`endif // ARM_CM0IK_TARMAC

endmodule
