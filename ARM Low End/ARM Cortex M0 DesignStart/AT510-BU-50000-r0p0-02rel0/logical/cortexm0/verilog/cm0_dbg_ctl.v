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
//      Checked In          : $Date: 2009-03-20 22:04:05 +0000 (Fri, 20 Mar 2009) $
//
//      Revision            : $Revision: 104861 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 DEBUG CONTROL AND STATUS REGISTER LOGIC
//-----------------------------------------------------------------------------

module cm0_dbg_ctl
  #(parameter CBAW = 0,
    parameter DBG  = 1,
    parameter RAR  = 0)

   (input  wire        dclk,                // debug clock
    input  wire        dbg_reset_n,         // debug reset

    output wire        dbg_restarted_o,     // core has exited halt
    output wire        halted_o,            // core is halted for debug

    output wire        dbg_c_debugen_o,     // debug enabled
    output wire        dbg_c_maskints_o,    // NVIC should mask IRQs
    output wire        dbg_dwt_en_o,        // watchpoint enabled
    output wire        dbg_halt_req_o,      // request to halt core
    output wire [31:0] dbg_hrdata_o,        // debug control read-data
    output wire        dbg_op_run_o,        // clock DCRSR opcode in core
    output wire        dbg_s_halt_o,        // core is halted

    input  wire        dbg_restart_i,       // external unhalt core request
    input  wire        dbg_ext_req_i,       // external halt core request
    input  wire        hready_i,            // AHB ready / core advance

    input  wire        ctl_bpu_event_i,     // breakpoint has hit
    input  wire        ctl_dbg_ex_last_i,   // core retiring an instruction
    input  wire        ctl_dbg_ex_reset_i,  // core in reset state
    input  wire        ctl_dbg_lockup_i,    // core is in LOCKUP
    input  wire        ctl_ex_idle_i,       // core is sleeping / idle
    input  wire        ctl_halt_ack_i,      // core is halted
    input  wire        dec_int_return_i,    // core returning from interrupt
    input  wire        dec_int_taken_i,     // core taking interrupt
    input  wire        dwt_event_i,         // watchpoint has hit
    input  wire [ 3:0] dsl_dbg_sels_i,      // debug control register selects
    input  wire        dsl_ppb_write_i,     // register select is for write
    input  wire        psr_dbg_hardfault_i, // core running in HardFault
    input  wire [31:0] slv_wdata_i);        // register write-data

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire        cfg_dbg  = (CBAW == 0) ? (DBG != 0) : 1'bZ;
   wire        cfg_rar  = (CBAW == 0) ? (RAR != 0) : 1'bZ;

   // ------------------------------------------------------------
   // Debug control state
   // ------------------------------------------------------------

   // DHCSR : Debug Halting Control and Status Register

   reg         c_debugen_raw;  // enable halting debug
   reg         c_halt_raw;     // halt the core
   reg         c_step_raw;     // step the core
   reg         c_maskints_raw; // mask PendSV, SysTick and IRQs
   reg         s_reset_st;     // sticky core has reset flag
   reg         s_retire_st;    // sticky instruction retired flag

   // DCRSR : Debug Core Register Selector Register

   reg         dbg_op_run;     // provoke core register read/write

   // DFSR : Debug Fault Status Register

   reg         dfsr_ext;       // EDBGRQ caused halt
   reg         dfsr_vc;        // vector catch caused halt
   reg         dfsr_dwt;       // watchpoint match caused halt
   reg         dfsr_bkpt;      // BKPT/breakpoint caused halt
   reg         dfsr_halt;      // C_HALT or C_STEP caused halt

   // DEMCR : Debug Exception and Monitor Control Register

   reg         dwt_ena;        // global watchpoint unit enable
   reg         vc_flt;         // vector catch on faults
   reg         vc_rst;         // vector catch on reset

   // ARM CoreSight debug halt/restart handshake register

   reg         dbg_restarted;  // acknowledge flag

   // ------------------------------------------------------------
   // Perform config specific input conditioning
   // ------------------------------------------------------------

   wire        lockup      = cfg_dbg ? ctl_dbg_lockup_i    :  1'b0;
   wire        ex_idle     = cfg_dbg ? ctl_ex_idle_i       :  1'b0;
   wire [ 3:0] dbg_sels    = cfg_dbg ? dsl_dbg_sels_i      :  4'b0;
   wire        ppb_write   = cfg_dbg ? dsl_ppb_write_i     :  1'b0;
   wire [31:0] slv_wdata   = cfg_dbg ? slv_wdata_i         : 32'b0;
   wire        halt_ack    = cfg_dbg ? ctl_halt_ack_i      :  1'b0;
   wire        dbg_restart = cfg_dbg ? dbg_restart_i       :  1'b0;
   wire        dbg_ext_req = cfg_dbg ? dbg_ext_req_i       :  1'b0;
   wire        ex_reset    = cfg_dbg ? ctl_dbg_ex_reset_i  :  1'b0;
   wire        int_taken   = cfg_dbg ? dec_int_taken_i     :  1'b0;
   wire        int_return  = cfg_dbg ? dec_int_return_i    :  1'b0;
   wire        ex_last     = cfg_dbg ? ctl_dbg_ex_last_i   :  1'b0;
   wire        hready      = cfg_dbg ? hready_i            :  1'b0;
   wire        hardfault   = cfg_dbg ? psr_dbg_hardfault_i :  1'b0;
   wire        bpu_event   = cfg_dbg ? ctl_bpu_event_i     :  1'b0;
   wire        dwt_event   = cfg_dbg ? dwt_event_i         :  1'b0;

   // ------------------------------------------------------------
   // Generate extra reset signal for reset-all-registers config
   // ------------------------------------------------------------

   wire        rar_reset_n = cfg_rar ? dbg_reset_n : 1'b1;

   // ------------------------------------------------------------
   // Decode debug control PPB bus reads and writes
   // ------------------------------------------------------------

   // architecture requires that DHCSR only accept writes when
   // the write-data also contains the magic key

   wire        key_ok       = slv_wdata[31:16] == 16'hA05F;

   wire        ppb_dfsr_wr  = dbg_sels[3] &  ppb_write;
   wire        ppb_dhcsr_wr = dbg_sels[2] &  ppb_write & key_ok;
   wire        ppb_dcrsr_wr = dbg_sels[1] &  ppb_write;
   wire        ppb_demcr_wr = dbg_sels[0] &  ppb_write;

   wire        ppb_dhcsr_rd = dbg_sels[2] & ~ppb_write;

   // ------------------------------------------------------------
   // Mask step, halt and maskints with c_debugen and config
   // ------------------------------------------------------------

   wire        c_debugen    = cfg_dbg ? c_debugen_raw : 1'b0;

   wire        c_halt_v     = c_debugen & c_halt_raw;
   wire        c_step_v     = c_debugen & c_step_raw;
   wire        c_maskints_v = c_debugen & c_maskints_raw;

   wire        c_halt       = cfg_dbg ? c_halt_v     : 1'b0;
   wire        c_step       = cfg_dbg ? c_step_v     : 1'b0;
   wire        c_maskints   = cfg_dbg ? c_maskints_v : 1'b0;

   // ------------------------------------------------------------
   // Define halted flag based on halt request and acknowledge
   // ------------------------------------------------------------

   // factor in C_HALT into S_HALT to ensure that S_HALT is never
   // set if C_HALT is cleared before the core enters halt mode

   wire        s_halt_v = halt_ack & c_halt;
   wire        s_halt   = cfg_dbg ? s_halt_v : 1'b0;
   wire        halted   = s_halt;

   // ------------------------------------------------------------
   // Mask DWTENA with C_DEBUGEN before use
   // ------------------------------------------------------------

   wire        dwt_en  = c_debugen & dwt_ena;

   // ------------------------------------------------------------
   // Debug core register read/write control
   // ------------------------------------------------------------

   // drive request into core to activate register read/write

   wire        dbg_op_run_nxt = s_halt & ppb_dcrsr_wr;

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dbg_op_run <= 1'b0;
     else if (cfg_dbg ? hready : 1'b0)
       dbg_op_run <= dbg_op_run_nxt;

   // S_REGRDY is always set when the core is halted;
   // register accesses are guaranteed to resolve in a single
   // AHB ready cycle, resulting in the DCRDR already being
   // valid by the time S_REGREADY could be read

   wire        s_regrdy = cfg_dbg ? s_halt : 1'b0;

   // ------------------------------------------------------------
   // CoreSight DBGRESTART/DBGRESTARTED handshake logic
   // ------------------------------------------------------------

   wire        clr_dbg_restarted = dbg_restart & s_halt;
   wire        set_dbg_restarted = ~dbg_restart & ~dbg_restarted;
   wire        up_dbg_restarted  = set_dbg_restarted | clr_dbg_restarted;
   wire        dbg_restarted_en  = up_dbg_restarted & hready;

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dbg_restarted <= 1'b1;
     else if (cfg_dbg ? dbg_restarted_en : 1'b0)
       dbg_restarted <= set_dbg_restarted;

   // ------------------------------------------------------------
   // Derive core instruction retirement and step advance
   // ------------------------------------------------------------

   // only real instructions that nominally complete or lockup
   // are marked as being retired

   wire        i_ret = ex_last | lockup;

   // when stepping, an event is generate for instructions
   // completing, exception events and lockup

   wire        i_adv = ( ex_last    |  // instruction retirement
                         int_taken  |  // interrupt entry
                         int_return |  // interrupt exit
                         lockup     ); // lockup

   // ------------------------------------------------------------
   // Detect Reset and HardFault vector events
   // ------------------------------------------------------------

   wire        vc_rst_trig = vc_rst & ex_reset;
   wire        vc_flt_trig = vc_flt & int_taken & hardfault;
   wire        vc_event    = c_debugen & (vc_rst_trig | vc_flt_trig);

   // ------------------------------------------------------------
   // Detect step, halt and external request events
   // ------------------------------------------------------------

   // single stepping will set the C_HALT bit when a valid
   // instruction is in De and is about to be commited to Ex,
   // an interrupt entry or exit occurs, or LOCKUP is encountered

   wire        step_event   = c_step & ~c_halt & i_adv & hready;

   // external events register only if not currently halted

   wire        ext_event    = c_debugen & dbg_ext_req & ~s_halt;

   // C_HALT can only be set when written with C_DEBUGEN

   wire        wr_halt      = slv_wdata[1] & slv_wdata[0];
   wire        wr_unhalt    = ppb_dhcsr_wr & ~wr_halt;
   wire        halted_event = (ppb_dhcsr_wr & wr_halt) | step_event;

   // ------------------------------------------------------------
   // DHCSR : Debug halt control and status registers
   // ------------------------------------------------------------

   wire        set_c_halt = ( halted_event |  // C_HALT or STEP
                              bpu_event    |  // BKPT or BPU match
                              dwt_event    |  // watchpoint hit
                              vc_event     |  // vector catch
                              ext_event    ); // external request

   wire        clr_c_halt = ( wr_unhalt    |  // C_HALT clear
                              set_dbg_restarted | // CoreSight
                              ex_reset     ); // core reset

   wire        up_c_halt = hready & (set_c_halt | clr_c_halt);

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       c_halt_raw <= 1'b0;
     else if (cfg_dbg ? up_c_halt : 1'b0)
       c_halt_raw <= set_c_halt;

   // ------------------------------------------------------------

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       c_debugen_raw <= 1'b0;
     else if (cfg_dbg ? ppb_dhcsr_wr : 1'b0)
       c_debugen_raw <= slv_wdata[0];

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       c_step_raw <= 1'b1;
     else if(cfg_dbg ? ppb_dhcsr_wr : 1'b0)
       c_step_raw <= slv_wdata[2];

   always @(posedge dclk or negedge rar_reset_n)
     if(~rar_reset_n)
       c_maskints_raw <= 1'b1;
     else if(cfg_dbg ? ppb_dhcsr_wr : 1'b0)
       c_maskints_raw <= slv_wdata[3];

   // ------------------------------------------------------------

   wire        up_s_retire_st = ppb_dhcsr_rd | i_ret | ex_reset;

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       s_retire_st <= 1'b0;
     else if (cfg_dbg ? up_s_retire_st : 1'b0)
       s_retire_st <= i_ret;

   // ------------------------------------------------------------

   wire        up_s_reset_st = ppb_dhcsr_rd | ex_reset;

   always @(posedge dclk or negedge dbg_reset_n)
     if (!dbg_reset_n)
       s_reset_st <= 1'b1;
     else if (cfg_dbg ? up_s_reset_st : 1'b0)
       s_reset_st <= ex_reset;

   // ------------------------------------------------------------
   // DFSR : Debug fault status register control
   // ------------------------------------------------------------

   wire up_dfsr_halt = halted_event | (ppb_dfsr_wr & slv_wdata[0]);
   wire up_dfsr_bkpt = bpu_event    | (ppb_dfsr_wr & slv_wdata[1]);
   wire up_dfsr_dwt  = dwt_event    | (ppb_dfsr_wr & slv_wdata[2]);
   wire up_dfsr_vc   = vc_event     | (ppb_dfsr_wr & slv_wdata[3]);
   wire up_dfsr_ext  = ext_event    | (ppb_dfsr_wr & slv_wdata[4]);

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dfsr_halt <= 1'b0;
     else if (cfg_dbg ? up_dfsr_halt : 1'b0)
       dfsr_halt <= halted_event;

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dfsr_bkpt <= 1'b0;
     else if (cfg_dbg ? up_dfsr_bkpt : 1'b0)
       dfsr_bkpt <= bpu_event;

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dfsr_dwt <= 1'b0;
     else if (cfg_dbg ? up_dfsr_dwt : 1'b0)
       dfsr_dwt <= dwt_event;

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dfsr_vc <= 1'b0;
     else if (cfg_dbg ? up_dfsr_vc : 1'b0)
       dfsr_vc <= vc_event;

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       dfsr_ext <= 1'b0;
     else if (cfg_dbg ? up_dfsr_ext : 1'b0)
       dfsr_ext <= ext_event;

   // ------------------------------------------------------------
   // DEMCR : PPB write logic for exception and monitor control
   // ------------------------------------------------------------

   always @(posedge dclk or negedge dbg_reset_n)
     if (~dbg_reset_n)
       begin
         dwt_ena <= 1'b0;
         vc_flt  <= 1'b0;
         vc_rst  <= 1'b0;
       end
     else if (cfg_dbg ? ppb_demcr_wr : 1'b0)
       begin
         dwt_ena <= slv_wdata[24];
         vc_flt  <= slv_wdata[10];
         vc_rst  <= slv_wdata[ 0];
       end

   // ------------------------------------------------------------
   // Construct architectural registers and PPB read-data
   // ------------------------------------------------------------

   // DFSR : Debug Fault Status Register

   wire [31:0] dfsr   = { {27{1'b0}},  // 31: 5 Reserved
                          dfsr_ext,    //     4 EXTERNAL
                          dfsr_vc,     //     3 VCATCH
                          dfsr_dwt,    //     2 DWTTRAP
                          dfsr_bkpt,   //     1 BKPT
                          dfsr_halt }; //     0 HALTED

   // DHCSR : Debug Halting Control and Status Register

   wire [31:0] dhcsr  = { {6{1'b0}},   // 31:16 Reserved
                          s_reset_st,  //    25 S_RESET_ST
                          s_retire_st, //    24 S_RETIRE_ST
                          {4{1'b0}},   // 23:20 Reserved
                          lockup,      //    19 S_LOCKUP
                          ex_idle,     //    18 S_SLEEP
                          s_halt,      //    17 S_HALT
                          s_regrdy,    //    16 S_REGRDY
                          {12{1'b0}},  // 15: 4 Reserved
                          c_maskints,  //     3 C_MASKINTS
                          c_step,      //     2 C_STEP
                          c_halt,      //     1 C_HALT
                          c_debugen }; //     0 C_DEBUGEN

   // DEMCR : Debug Exception and Monitor Control Register

   wire [31:0] demcr  = { {7{1'b0}},   // 31:25 Reserved
                          dwt_ena,     //    24 DWTENA
                          {13{1'b0}},  // 23:11 Reserved
                          vc_flt,      //    10 VC_HARDERR
                          {9{1'b0}},   //  9: 1 Reserved
                          vc_rst };    //     0 VC_CORERESET

   // Debug control PPB read-data mux

   wire [31:0] hrdata = ( {32{dbg_sels[3]}} & dfsr  |
                          {32{dbg_sels[2]}} & dhcsr |
                          {32{dbg_sels[0]}} & demcr );

   // ------------------------------------------------------------
   // Output assignments
   // ------------------------------------------------------------

   assign     dbg_halt_req_o   = cfg_dbg ? c_halt        :  1'b0;
   assign     dbg_op_run_o     = cfg_dbg ? dbg_op_run    :  1'b0;
   assign     dbg_s_halt_o     = cfg_dbg ? s_halt        :  1'b0;
   assign     dbg_c_debugen_o  = cfg_dbg ? c_debugen     :  1'b0;
   assign     dbg_c_maskints_o = cfg_dbg ? c_maskints    :  1'b0;
   assign     dbg_dwt_en_o     = cfg_dbg ? dwt_en        :  1'b0;
   assign     dbg_hrdata_o     = cfg_dbg ? hrdata        : 32'b0;
   assign     dbg_restarted_o  = cfg_dbg ? dbg_restarted :  1'b0;
   assign     halted_o         = cfg_dbg ? halted        :  1'b0;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

 `include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,12,`OVL_ASSERT,"Register enables must never be X")
       u_asrt_reg_en_x
         (.clk       (dclk),
          .reset_n   (dbg_reset_n),
          .qualifier (1'b1),
          .test_expr ({ hready,
                        up_dbg_restarted,
                        up_c_halt,
                        ppb_dhcsr_wr,
                        up_s_retire_st,
                        up_s_reset_st,
                        up_dfsr_halt,
                        up_dfsr_bkpt,
                        up_dfsr_dwt,
                        up_dfsr_vc,
                        up_dfsr_ext,
                        ppb_demcr_wr }));

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"DBG config unknown")
   u_asrt_cfg_dbg
     ( .clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_dbg) );

`endif


endmodule // cm0_dbg_ctl

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
