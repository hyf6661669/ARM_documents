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
//      Checked In          : $Date: 2009-03-25 15:27:53 +0000 (Wed, 25 Mar 2009) $
//
//      Revision            : $Revision: 105149 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 EXAMPLE PMU
// This module provides an example Power Managment Unit (PMU) digital component
// that can be used to deploy the Cortex-M0 processor with a three power domain
// structure
// 1 - Always on domain (not under the control of this module)
// 2 - A system (SYS) domain
// 3 - A debug (DBG) domain
// State retention is supported for the SYS domain assuming the implementation
// of retention flip-flops.
// No retention is supported for the DBG domain - instead, a reset is forced
// on debug-domain power-up.
// Clock-gating control for all the processor clocks is also supported
// You can modify this module to suit your particular requirements.
// ----------------------------------------------------------------------------

`define ARM_POWERED_UP      2'b00
`define ARM_POWERING_DOWN   2'b01
`define ARM_POWERED_DOWN    2'b10
`define ARM_POWERING_UP     2'b11
`define ARM_POWER_UNDEF     2'bxx

module cortexm0_pmu
  (/*AUTOARG*/
  // Outputs
  HCLK, DCLK, SCLK, WICENREQ, CDBGPWRUPACK, SLEEPHOLDREQn, 
  SYSISOLATEn, SYSRETAINn, SYSPWRDOWN, DBGISOLATEn, DBGPWRDOWN, 
  PMUDBGRESETREQ, PMUHRESETREQ, 
  // Inputs
  FCLK, PORESETn, HRESETREQ, PMUENABLE, CDBGPWRUPREQ, WICENACK, 
  WAKEUP, SLEEPDEEP, SLEEPHOLDACKn, GATEHCLK, SYSPWRDOWNACK, 
  DBGPWRDOWNACK, CGBYPASS
  );

  // --------------------------------------------------------------------------
  // Inputs/Outputs
  // --------------------------------------------------------------------------

  input     FCLK;
  input     PORESETn;
  input     HRESETREQ;

  input     PMUENABLE;
  input     CDBGPWRUPREQ;
  input     WICENACK;
  input     WAKEUP;
  input     SLEEPDEEP;
  input     SLEEPHOLDACKn;
  input     GATEHCLK;
  input     SYSPWRDOWNACK;
  input     DBGPWRDOWNACK;
  input     CGBYPASS;

  output    HCLK;         // AHB clock
  output    DCLK;         // Processor debug clock
  output    SCLK;         // Processor system clock
  output    WICENREQ;
  output    CDBGPWRUPACK; // synchronous to FCLK
  output    SLEEPHOLDREQn;
  output    SYSISOLATEn;
  output    SYSRETAINn;
  output    SYSPWRDOWN;
  output    DBGISOLATEn;
  output    DBGPWRDOWN;
  output    PMUDBGRESETREQ;
  output    PMUHRESETREQ;

  reg [1:0] sys_st,     dbg_st;
  reg       sys_st_en,  dbg_st_en;
  reg [1:0] nxt_sys_st, nxt_dbg_st;
  reg       WICENREQ;

  wire      sleepholdack_n_s;
  wire      wicenack_s;
  wire      wakeup_s;
  wire      sleepdeep_s;
  wire      cdbgpwrupreq_s;
  wire      syspwrdownack_s;
  wire      dbgpwrdownack_s;
  
  // ------------------------
  // Synchronisers for inputs
  // ------------------------

  // Note: SLEEPHOLDACKn active LOW so reset HIGH
  cm0_pmu_sync_set
    u_dbg_holdackn_sync
      (.SYNCSETn (PORESETn),
       .SYNCCLK  (FCLK),
       .SYNCDI   (SLEEPHOLDACKn),
       .SYNCDO   (sleepholdack_n_s));

  cm0_pmu_sync_reset
    u_dbg_wicenack_sync
      (.SYNCRSTn (PORESETn),
       .SYNCCLK  (FCLK),
       .SYNCDI   (WICENACK),
       .SYNCDO   (wicenack_s));

  cm0_pmu_sync_reset
    u_dbg_wakeup_sync
      (.SYNCRSTn (PORESETn),
       .SYNCCLK  (FCLK),
       .SYNCDI   (WAKEUP),
       .SYNCDO   (wakeup_s));

  cm0_pmu_sync_reset
    u_dbg_sleepdeep_sync
      (.SYNCRSTn (PORESETn),
       .SYNCCLK  (FCLK),
       .SYNCDI   (SLEEPDEEP),
       .SYNCDO   (sleepdeep_s));
  
  cm0_pmu_sync_reset
    u_dbg_pupreq_sync
      (.SYNCRSTn (PORESETn),
       .SYNCCLK  (FCLK),
       .SYNCDI   (CDBGPWRUPREQ),
       .SYNCDO   (cdbgpwrupreq_s));

  cm0_pmu_sync_set
    u_sys_pdack_sync
      (.SYNCSETn (PORESETn),
       .SYNCCLK  (FCLK),
       .SYNCDI   (SYSPWRDOWNACK),
       .SYNCDO   (syspwrdownack_s));

  cm0_pmu_sync_reset
    u_dbg_pdack_sync
      (.SYNCRSTn (PORESETn),
       .SYNCCLK  (FCLK),
       .SYNCDI   (DBGPWRDOWNACK),
       .SYNCDO   (dbgpwrdownack_s));
  
  // WIC mode request logic
  // Set when PMUENABLE is set.
  // Cleared when PMUENABLE is cleared and the SYS domain is powered-up and
  // not in a state of flux.
  wire     set_wicreq  = PMUENABLE;
  wire     clr_wicreq  = ~PMUENABLE & ~sys_st_en & (sys_st == `ARM_POWERED_UP);

  always @(posedge FCLK or negedge PORESETn)
    if (!PORESETn)
      WICENREQ <= 1'b0;
    else if (set_wicreq | clr_wicreq)
      WICENREQ <= set_wicreq;

  wire     wic_ds_mode = WICENREQ & wicenack_s;
  wire     in_wic_ds   = wic_ds_mode & sleepdeep_s;

  // Safe to power down SYS domain if we are in WIC-based deepsleep mode
  // and the processor has commited to remaining in sleep mode till we are
  // able to power up again. Also, no power down is allowed if the debugger
  // has requested either domain to be powered-up.
  // Safe to power down DBG domain if the debugger has not requested either
  // domain to be powered-up
  wire     wake_up_dbg = cdbgpwrupreq_s | ~PMUENABLE;
  wire     wake_up_sys = wake_up_dbg | (dbg_st == `ARM_POWERING_UP) | wakeup_s | HRESETREQ;
  wire     can_pdw_sys = ~wake_up_sys & in_wic_ds & ~SLEEPHOLDREQn & ~sleepholdack_n_s;
  wire     can_pdw_dbg = ~wake_up_dbg;

  // Sleep extension logic (only applies to SYS domain)
  // Assert SLEEPHOLDREQn when a WIC-based sleepdeep_s is seen and hold it
  // until the core is about to be powered-up safely. Note the extra
  // logic required to clear SLEEPHOLDREQn if
  // 1) The processor sleeps but wakes up before sleepholdack_n_s can be
  // asserted (in this case, do not power-down)
  reg      sleepholdreq;
  wire     set_sleepholdreq = ~sleepholdreq & in_wic_ds & ~wake_up_sys;
  wire     clr_sleepholdreq =  sleepholdreq & ~in_wic_ds &
                               ( // SYS domain powered up
                                 (sys_st == `ARM_POWERED_UP) |
                                 // sleepdeep_s deasserted before ACK but after REQ
                                 sleepholdack_n_s
                               );
  
  always @(posedge FCLK or negedge PORESETn)
    if (!PORESETn)
      sleepholdreq <= 1'b0;
    else if (set_sleepholdreq | clr_sleepholdreq)
      sleepholdreq <= set_sleepholdreq;
  
  assign   SLEEPHOLDREQn    = ~sleepholdreq;
  
  // ------------------------
  // SYS power domain control
  // ------------------------
  // ISOLATEn, RETAINn and PWRDOWN are all launched from CDC-safe flops
  // to ensure no glitches

  wire   up_sys_iso  = ( ( sys_st == `ARM_POWERING_DOWN) |
                         ((sys_st == `ARM_POWERING_UP) & SYSRETAINn) );
  
  wire   nxt_sys_iso = (sys_st == `ARM_POWERING_UP);

  cm0_pmu_cdc_send_reset
    u_sysisolaten
      (.REGCLK     (FCLK),
       .REGRESETn  (PORESETn),
       .REGEN      (up_sys_iso),
       .REGDI      (nxt_sys_iso),
       .REGDO      (SYSISOLATEn));

  wire   up_sys_rtn  = ( ((sys_st == `ARM_POWERING_DOWN) & ~SYSISOLATEn) |
                         ((sys_st == `ARM_POWERING_UP)   & ~SYSPWRDOWN & ~syspwrdownack_s) );
  
  wire   nxt_sys_rtn = (sys_st == `ARM_POWERING_UP);
  
  cm0_pmu_cdc_send_reset
    u_sysretainn
      (.REGCLK     (FCLK),
       .REGRESETn  (PORESETn),
       .REGEN      (up_sys_rtn),
       .REGDI      (nxt_sys_rtn),
       .REGDO      (SYSRETAINn));

  wire   up_sys_pdn  = ( ((sys_st == `ARM_POWERING_DOWN) & ~SYSRETAINn) |
                         ( sys_st == `ARM_POWERING_UP) );
  
  wire   nxt_sys_pdn = (sys_st == `ARM_POWERING_DOWN);
  
  cm0_pmu_cdc_send_reset
    u_syspwrdown
      (.REGCLK     (FCLK),
       .REGRESETn  (PORESETn),
       .REGEN      (up_sys_pdn),
       .REGDI      (nxt_sys_pdn),
       .REGDO      (SYSPWRDOWN));
  
  wire   sys_pdw_done = SYSPWRDOWN & syspwrdownack_s;
  wire   sys_pup_done = up_sys_iso & nxt_sys_iso;
  wire   pmu_sclk_en  = (sys_st == `ARM_POWERED_UP);

  always @(/*AUTOSENSE*/can_pdw_sys or sys_pdw_done or sys_pup_done
           or sys_st or wake_up_sys)
    case (sys_st)
      `ARM_POWERED_UP:
        begin
          sys_st_en  = can_pdw_sys;
          nxt_sys_st = `ARM_POWERING_DOWN;
        end
      `ARM_POWERING_DOWN:
        begin
          sys_st_en  = sys_pdw_done;
          nxt_sys_st = `ARM_POWERED_DOWN;
        end
      `ARM_POWERED_DOWN:
        begin
          sys_st_en  = wake_up_sys;
          nxt_sys_st = `ARM_POWERING_UP;
        end
      `ARM_POWERING_UP:
        begin
          sys_st_en  = sys_pup_done;
          nxt_sys_st = `ARM_POWERED_UP;
          end
      default:
        begin
          sys_st_en  = 1'bx;
          nxt_sys_st = `ARM_POWER_UNDEF;
        end
    endcase // case(sys_st)

  always @(posedge FCLK or negedge PORESETn)
    if (!PORESETn)
      sys_st <= `ARM_POWERING_UP;
    else if (sys_st_en)
      sys_st <= nxt_sys_st;

  // SYS Domain Reset is extended by PMU when it occurs
  // while the domain is powered down
  assign PMUHRESETREQ = HRESETREQ & (sys_st != `ARM_POWERED_UP);

  // -----------------------------
  // DBG power domain state machine
  // -----------------------------
  // ISOLATEn and PWRDOWN are all launched from CDC-safe flops
  // to ensure no glitches
  // Note: no RETAINn for DBG power domain - reset forced on each power-up

  wire   up_dbg_iso  = ( ( dbg_st == `ARM_POWERING_DOWN) | 
                         ((dbg_st == `ARM_POWERING_UP) & ~DBGPWRDOWN & ~dbgpwrdownack_s &
                          // Delay debug domain power up until system domain up
                          (sys_pup_done | (sys_st == `ARM_POWERED_UP))) );
  
  wire   nxt_dbg_iso = (dbg_st == `ARM_POWERING_UP);
  
  cm0_pmu_cdc_send_reset
    u_dbgisolaten
      (.REGCLK     (FCLK),
       .REGRESETn  (PORESETn),
       .REGEN      (up_dbg_iso),
       .REGDI      (nxt_dbg_iso),
       .REGDO      (DBGISOLATEn));

  wire   up_dbg_pdn  = ( ((dbg_st == `ARM_POWERING_DOWN) & ~DBGISOLATEn) |
                         ( dbg_st == `ARM_POWERING_UP) );
  
  wire   nxt_dbg_pdn = (dbg_st == `ARM_POWERING_DOWN);

  cm0_pmu_cdc_send_set
    u_dbgpwrdown
      (.REGCLK     (FCLK),
       .REGSETn    (PORESETn),
       .REGEN      (up_dbg_pdn),
       .REGDI      (nxt_dbg_pdn),
       .REGDO      (DBGPWRDOWN));
  
  assign PMUDBGRESETREQ = (dbg_st == `ARM_POWERED_DOWN) | (dbg_st == `ARM_POWERING_UP);
  
  wire   dbg_pdw_done      = DBGPWRDOWN & dbgpwrdownack_s;
  wire   dbg_pup_done      = up_dbg_iso & nxt_dbg_iso;
  wire   pmu_dclk_en       = (dbg_st == `ARM_POWERED_UP);

  // CDBGPWRUPACK indicates debug domain power state when requested by CDBGPWRUPREQ
  // Note: the 4-phase handshake must be maintained even when the PMU is disabled
  // and power-down does not occur

  wire   nxt_cdbgpwrupack  = (cdbgpwrupreq_s &
                              (dbg_st_en
                               ? (nxt_dbg_st == `ARM_POWERED_UP)
                               : (dbg_st     == `ARM_POWERED_UP)));

  wire   up_cdbgpwrupack   = ((cdbgpwrupreq_s   ^ CDBGPWRUPACK) &
                              (nxt_cdbgpwrupack ^ CDBGPWRUPACK));

  cm0_pmu_cdc_send_reset
    u_cdbgpwrupack
      (.REGCLK     (FCLK),
       .REGRESETn  (PORESETn),
       .REGEN      (up_cdbgpwrupack),
       .REGDI      (nxt_cdbgpwrupack),
       .REGDO      (CDBGPWRUPACK));

  always @(/*AUTOSENSE*/can_pdw_dbg or dbg_pdw_done or dbg_pup_done
           or dbg_st or wake_up_dbg)
    case (dbg_st)
      `ARM_POWERED_UP:
        begin
          dbg_st_en  = can_pdw_dbg;
          nxt_dbg_st = `ARM_POWERING_DOWN;
        end
      `ARM_POWERING_DOWN:
        begin
          dbg_st_en  = dbg_pdw_done;
          nxt_dbg_st = `ARM_POWERED_DOWN;
        end
      `ARM_POWERED_DOWN:
        begin
          dbg_st_en  = wake_up_dbg;
          nxt_dbg_st = `ARM_POWERING_UP;
        end
      `ARM_POWERING_UP:
        begin
          dbg_st_en  = dbg_pup_done;
          nxt_dbg_st = `ARM_POWERED_UP;
          end
      default:
        begin
          dbg_st_en  = 1'bx;
          nxt_dbg_st = `ARM_POWER_UNDEF;
        end
    endcase // case(dbg_st)

  // Note: DBG power domain is OFF out of PORESETn
  always @(posedge FCLK or negedge PORESETn)
    if (!PORESETn)
      dbg_st <= `ARM_POWERING_DOWN;
    else if (dbg_st_en)
      dbg_st <= nxt_dbg_st;
  
  // -------------
  // Clock gates
  // -------------
  // Note: the following clock gates can be used even in a single
  // power-domain system
  
  wire hclk_en = pmu_sclk_en & ~GATEHCLK;
  
  cm0_pmu_acg #(.ACG(1))
    u_hclk
      (.CLKIN  (FCLK),
       .ENABLE (hclk_en),
       .BYPASS (CGBYPASS),
       .CLKOUT (HCLK));

  wire dclk_en = pmu_dclk_en;
  cm0_pmu_acg #(.ACG(1))
    u_dclk
      (.CLKIN  (FCLK),
       .ENABLE (dclk_en),
       .BYPASS (CGBYPASS),
       .CLKOUT (DCLK));

  wire sclk_en = pmu_sclk_en;
  cm0_pmu_acg #(.ACG(1))
    u_fclk
      (.CLKIN  (FCLK),
       .ENABLE (sclk_en),
       .BYPASS (CGBYPASS),
       .CLKOUT (SCLK));

`ifdef ARM_ASSERT_ON

`include "std_ovl_defines.h"

  // Input assumptions
  assert_implication
    #(`OVL_FATAL,`OVL_ASSUME,"GATEHCLK asserted when CDBGPWRUPACK high")
      u_gatehclk_cdbgpwrupack
        (.clk(FCLK), .reset_n(PORESETn),
         .antecedent_expr(CDBGPWRUPACK),
         .consequent_expr(~GATEHCLK));

  assert_next
    #(`OVL_FATAL,1,1,0,`OVL_ASSUME,"SYSPWRDOWNACK asserted while SYSPWRDOWN held low")
      u_syspwrdownack_low
        (.clk(FCLK), .reset_n(PORESETn),
         .start_event((~SYSPWRDOWN) & (~SYSPWRDOWNACK)),
         .test_expr  (( SYSPWRDOWN) | (~SYSPWRDOWNACK)));

  assert_next
    #(`OVL_FATAL,1,1,0,`OVL_ASSUME,"SYSPWRDOWNACK deasserted while SYSPWRDOWN held high")
      u_syspwrdownack_high
        (.clk(FCLK), .reset_n(PORESETn),
         .start_event(( SYSPWRDOWN) & ( SYSPWRDOWNACK)),
         .test_expr  ((~SYSPWRDOWN) | ( SYSPWRDOWNACK)));

  assert_next
    #(`OVL_FATAL,1,1,0,`OVL_ASSUME,"DBGPWRDOWNACK asserted while DBGPWRDOWN held low")
      u_dbgpwrdownack_low
        (.clk(FCLK), .reset_n(PORESETn),
         .start_event((~DBGPWRDOWN) & (~DBGPWRDOWNACK)),
         .test_expr  (( DBGPWRDOWN) | (~DBGPWRDOWNACK)));

  assert_next
    #(`OVL_FATAL,1,1,0,`OVL_ASSUME,"DBGPWRDOWNACK deasserted while DBGPWRDOWN held high")
      u_dbgpwrdownack_high
        (.clk(FCLK), .reset_n(PORESETn),
         .start_event(( DBGPWRDOWN) & ( DBGPWRDOWNACK)),
         .test_expr  ((~DBGPWRDOWN) | ( DBGPWRDOWNACK)));

  // State  machines and power-control interface coherence
  assert_implication
    #(`OVL_FATAL,`OVL_ASSERT,"SYS domain incorrectly powered down")
      u_sys_pdw_ok
        (.clk(FCLK), .reset_n(PORESETn),
         .antecedent_expr(sys_st == `ARM_POWERED_DOWN),
         .consequent_expr(~SYSISOLATEn & ~SYSRETAINn & SYSPWRDOWN & syspwrdownack_s));

  assert_implication
    #(`OVL_FATAL,`OVL_ASSERT,"SYS domain incorrectly powered up")
      u_sys_pup_ok
        (.clk(FCLK), .reset_n(PORESETn),
         .antecedent_expr(sys_st == `ARM_POWERED_UP),
         .consequent_expr(SYSISOLATEn & SYSRETAINn & ~SYSPWRDOWN & ~syspwrdownack_s));

  assert_implication
    #(`OVL_FATAL,`OVL_ASSERT,"DBG domain incorrectly powered down")
      u_dbg_pdw_ok
        (.clk(FCLK), .reset_n(PORESETn),
         .antecedent_expr(dbg_st == `ARM_POWERED_DOWN),
         .consequent_expr(~DBGISOLATEn & DBGPWRDOWN & dbgpwrdownack_s));

  assert_implication
    #(`OVL_FATAL,`OVL_ASSERT,"DBG domain incorrectly powered up")
      u_dbg_pup_ok
        (.clk(FCLK), .reset_n(PORESETn),
         .antecedent_expr(dbg_st == `ARM_POWERED_UP),
         .consequent_expr(DBGISOLATEn & ~DBGPWRDOWN & ~dbgpwrdownack_s & ~PMUDBGRESETREQ));

  assert_always
    #(`OVL_FATAL,`OVL_ASSERT,"SCLK gating inconsistent with SYS domain power status")
      u_sclk_pwr
        (.clk(FCLK), .reset_n(PORESETn),
         .test_expr(sclk_en == (sys_st == `ARM_POWERED_UP)));

  assert_implication
    #(`OVL_FATAL,`OVL_ASSERT,"HCLK running when SCLK gated")
      u_hclk_sclk
        (.clk(FCLK), .reset_n(PORESETn),
         .antecedent_expr(hclk_en),
         .consequent_expr(sclk_en));

  assert_always
    #(`OVL_FATAL,`OVL_ASSERT,"DCLK gating inconsistent with DBG domain power status")
      u_dclk_pwr
        (.clk(FCLK), .reset_n(PORESETn),
         .test_expr(dclk_en == (dbg_st == `ARM_POWERED_UP)));

  assert_implication
    #(`OVL_FATAL,`OVL_ASSERT,"SYS domain not powered up when DBG domain is powered up")
      u_dbg_sys_pwr
        (.clk(FCLK), .reset_n(PORESETn),
         .antecedent_expr(dbg_st == `ARM_POWERED_UP),
         .consequent_expr(sys_st == `ARM_POWERED_UP));

  assert_implication
    #(`OVL_FATAL,`OVL_ASSERT,"Power state or clock enables inconsistent with CDBGPWRUPACK")
      u_cdbgpwrupack_pwr_clks
        (.clk(FCLK), .reset_n(PORESETn),
         .antecedent_expr(CDBGPWRUPACK),
         .consequent_expr((sys_st == `ARM_POWERED_UP) & (dbg_st == `ARM_POWERED_UP) &
                          sclk_en & hclk_en & dclk_en));

`endif

endmodule // cortexm0_pmu


