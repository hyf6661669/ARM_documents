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
//     MCU System level for Cortex-M0 Integration Kit
//-----------------------------------------------------------------------------
// 
// This level instantiates the following blocks:
//  o u_sys            - Integration Kit System Level
//  o u_pmu               - Cortex-M0 Power Management Unit
//  o u_clk_gen           - Clock Generator
//  o u_rst_ctl           - Reset Controller
//
// Additionally this level contains tristates on bi-directional pins from MCU
//-----------------------------------------------------------------------------

module CM0IKMCU
  (input  wire           CLK,        // Clock
   input  wire           PORESETn,   // Power-On-Reset
   input  wire           nTRST,      // Test reset from JTAG equipment
   input  wire           SWCLKTCK,   // Serial Wire Clock or TCK
   inout  wire           SWDIOTMS,   // Debug TMS
   input  wire           TDI,        // Debug TDI
   output wire           TDO,        // Debug TDO
   inout  wire [31:0]    EXTGPIO);   // External GPIO Pins

// --------------------------------------------------------------------------
// Wires & Regs
// --------------------------------------------------------------------------
  wire        mcu_fclk;              // Free-running clock
  wire        mcu_sclk;              // System clock   
  wire        mcu_hclk;              // AHB clock
  wire        mcu_dclk;              // Debug clock   
  wire        mcu_stclk;             // Systick clock
  wire        mcu_wicenreq;          // WIC-enable Requrest   
  wire        mcu_wicenack;          // WIC enable Ack   
  wire        mcu_cdbgpwrupreq;      // Debug Power Up Request   
  wire        mcu_cdbgpwrupack;      // Debug Power Up Ack   
  wire        mcu_sleepholdreqn;     // Extended sleep Request   
  wire        mcu_sleepholdackn;     // Extended sleep Ack
  wire        mcu_sysisolaten;       // SRPG System Isolate
  wire        mcu_sysretainn;        // SRPG System Retain 
  wire        mcu_syspwrdown;        // SRPG System Power Down
  wire        mcu_dbgisolaten;       // SRPG Debug Isolate
  wire        mcu_dbgpwrdown;        // SRPG Debug Power Down
  wire        mcu_wakeup;            // WIC Wake up
  wire        mcu_sleepdeep;         // Sleepdeep from CM0 
  wire        mcu_gatehclk;          // Gate HCLK  
  wire 	      mcu_hresetreq;         // HRESET Request   
  wire        mcu_sysresetreq;       // SYSRESET Request 
  wire        mcu_pmuhresetreq;      // PMU HRESET Requeset
  wire 	      mcu_pmudbgresetreq;    // PMU DBGRESET Request
  wire 	      mcu_poresetn;          // Power-On Reset from Reset Controller
  wire 	      mcu_hresetn;           // System Reset from Reset Controller
  wire 	      mcu_dbgresetn;         // Debug Reset from Reset Controller
  wire        mcu_syspwrdownack;     // SYSPWRDOWNACK from CM0   
  wire        mcu_dbgpwrdownack;     // DBGPWRDOWNACK from CM0
  wire        pmu_syspwrdownack;     // SYSPWRDOWNACK to PMU   
  wire        pmu_dbgpwrdownack;     // DBGPWRDOWNACK to PMU   
  wire        mcu_swdo;              // SW data out 
  wire        mcu_swdoen;            // SW data out enable
  wire        mcu_ntdoen;            // JTAG TDO enable
  wire        mcu_swditms;           // SW data in
  wire        mcu_tdo;               // TDO
  wire [31:0] mcu_extgpioin;         // GPIOIN from IKSYS
  wire [31:0] mcu_extgpioout;        // GPIOOUT from IKSYS  
  wire [31:0] mcu_extgpioen;         // GPIOEN from IKSYS
  integer     i;

`ifdef ARM_SRPG_ON
`ifdef ARM_UPF_INVERT_PWRDOWNACK
   // Invert PWRDOWNACK for UPF
   assign    pmu_syspwrdownack = ~mcu_syspwrdownack;
   assign    pmu_dbgpwrdownack = ~mcu_dbgpwrdownack;
`elsif ARM_CPF_PWRDOWNACK
   // PWRDOWACK not driven for CPF
   assign    pmu_syspwrdownack = mcu_syspwrdown;
   assign    pmu_dbgpwrdownack = mcu_dbgpwrdown;
`else
   // For everything else including Netlists
   assign    pmu_syspwrdownack = mcu_syspwrdownack;
   assign    pmu_dbgpwrdownack = mcu_dbgpwrdownack;
`endif 
`else
   // Non Power-aware simulation
   assign    pmu_syspwrdownack = mcu_syspwrdown;
   assign    pmu_dbgpwrdownack = mcu_dbgpwrdown;
`endif // ARM_SRPG_ON
   
//-----------------------------------------------------------------------------
// Integration Kit System Level
//-----------------------------------------------------------------------------

  cm0ik_sys u_sys
    (// Inputs
     .PORESETn                        (mcu_poresetn),
     .HRESETn                         (mcu_hresetn),
     .DBGRESETn                       (mcu_dbgresetn),
     .FCLK                            (mcu_fclk),
     .SCLK                            (mcu_sclk),
     .HCLK                            (mcu_hclk),
     .DCLK                            (mcu_dclk),
     .STCLK                           (mcu_stclk),
     .nTRST                           (nTRST),
     .SWCLKTCK                        (SWCLKTCK),
     .SWDITMS                         (mcu_swditms),
     .TDI                             (TDI),
     .WICENREQ                        (mcu_wicenreq),
     .CDBGPWRUPACK                    (mcu_cdbgpwrupack),
     .SLEEPHOLDREQn                   (mcu_sleepholdreqn),
     .SYSISOLATEn                     (mcu_sysisolaten),
     .SYSRETAINn                      (mcu_sysretainn),
     .SYSPWRDOWN                      (mcu_syspwrdown),
     .DBGISOLATEn                     (mcu_dbgisolaten),
     .DBGPWRDOWN                      (mcu_dbgpwrdown),
     .EXTGPIOIN                       (mcu_extgpioin),
     // Outputs
     .CDBGPWRUPREQ                    (mcu_cdbgpwrupreq),
     .TDO                             (mcu_tdo),
     .nTDOEN                          (mcu_ntdoen),
     .SWDO                            (mcu_swdo),
     .SWDOEN                          (mcu_swdoen),
     .WICENACK                        (mcu_wicenack),
     .WAKEUP                          (mcu_wakeup),
     .SLEEPDEEP                       (mcu_sleepdeep),
     .SLEEPHOLDACKn                   (mcu_sleepholdackn),
     .GATEHCLK                        (mcu_gatehclk),
     .SYSRESETREQ                     (mcu_sysresetreq),
     .SYSPWRDOWNACK                   (mcu_syspwrdownack),
     .DBGPWRDOWNACK                   (mcu_dbgpwrdownack),
     .EXTGPIOOUT                      (mcu_extgpioout),
     .EXTGPIOEN                       (mcu_extgpioen));

//-----------------------------------------------------------------------------
// PMU
//-----------------------------------------------------------------------------

  cortexm0_pmu u_pmu
    (// Inputs
     .FCLK                            (mcu_fclk),
     .PORESETn                        (mcu_poresetn),
     .HRESETREQ                       (mcu_hresetreq),
     // Outputs
     .SCLK                            (mcu_sclk),
     .HCLK                            (mcu_hclk),
     .DCLK                            (mcu_dclk),
     .PMUHRESETREQ                    (mcu_pmuhresetreq),
     .PMUDBGRESETREQ                  (mcu_pmudbgresetreq),
     .WICENREQ                        (mcu_wicenreq),
     .CDBGPWRUPACK                    (mcu_cdbgpwrupack),
     .SLEEPHOLDREQn                   (mcu_sleepholdreqn),
     .SYSISOLATEn                     (mcu_sysisolaten),
     .SYSRETAINn                      (mcu_sysretainn),
     .SYSPWRDOWN                      (mcu_syspwrdown),
     .DBGISOLATEn                     (mcu_dbgisolaten),
     .DBGPWRDOWN                      (mcu_dbgpwrdown),
     // Inputs
     .PMUENABLE                       (1'b1),
     .CDBGPWRUPREQ                    (mcu_cdbgpwrupreq),
     .WICENACK                        (mcu_wicenack),
     .WAKEUP                          (mcu_wakeup),
     .SLEEPDEEP                       (mcu_sleepdeep),
     .SLEEPHOLDACKn                   (mcu_sleepholdackn),
     .GATEHCLK                        (mcu_gatehclk),
     .SYSPWRDOWNACK                   (pmu_syspwrdownack),
     .DBGPWRDOWNACK                   (pmu_dbgpwrdownack),
     .CGBYPASS                        (1'b0));

//-----------------------------------------------------------------------------
// Clock Generator
//-----------------------------------------------------------------------------

  cm0ik_clk_gen u_clk_gen
    (//Inputs
     .CLK                             (CLK),
     .RESETn                          (mcu_poresetn),
     //Outputs
     .FCLK                            (mcu_fclk),
     .STCLK                           (mcu_stclk));

 
//-----------------------------------------------------------------------------
// Reset Controller
//-----------------------------------------------------------------------------

  cortexm0_rst_ctl u_rst_ctl
    (// Inputs
     .GLOBALRESETn                    (PORESETn),
     .FCLK                            (mcu_fclk),
     .HCLK                            (mcu_hclk),
     .DCLK                            (mcu_dclk),
     .SYSRESETREQ                     (mcu_sysresetreq),
     .PMUHRESETREQ                    (mcu_pmuhresetreq),
     .PMUDBGRESETREQ                  (mcu_pmudbgresetreq),
     .RSTBYPASS                       (1'b0),
     .SE                              (1'b0),
     // Outputs
     .PORESETn                        (mcu_poresetn),
     .HRESETn                         (mcu_hresetn),
     .DBGRESETn                       (mcu_dbgresetn),
     .HRESETREQ                       (mcu_hresetreq)
     );
  
//-----------------------------------------------------------------------------
// Tristate logic for EXTGPIO
//-----------------------------------------------------------------------------

  bufif1 (EXTGPIO[ 0], mcu_extgpioout[ 0], mcu_extgpioen[ 0]);
  bufif1 (EXTGPIO[ 1], mcu_extgpioout[ 1], mcu_extgpioen[ 1]);
  bufif1 (EXTGPIO[ 2], mcu_extgpioout[ 2], mcu_extgpioen[ 2]);
  bufif1 (EXTGPIO[ 3], mcu_extgpioout[ 3], mcu_extgpioen[ 3]);
  bufif1 (EXTGPIO[ 4], mcu_extgpioout[ 4], mcu_extgpioen[ 4]);
  bufif1 (EXTGPIO[ 5], mcu_extgpioout[ 5], mcu_extgpioen[ 5]);
  bufif1 (EXTGPIO[ 6], mcu_extgpioout[ 6], mcu_extgpioen[ 6]);
  bufif1 (EXTGPIO[ 7], mcu_extgpioout[ 7], mcu_extgpioen[ 7]);
  bufif1 (EXTGPIO[ 8], mcu_extgpioout[ 8], mcu_extgpioen[ 8]);
  bufif1 (EXTGPIO[ 9], mcu_extgpioout[ 9], mcu_extgpioen[ 9]);
  bufif1 (EXTGPIO[10], mcu_extgpioout[10], mcu_extgpioen[10]);
  bufif1 (EXTGPIO[11], mcu_extgpioout[11], mcu_extgpioen[11]);
  bufif1 (EXTGPIO[12], mcu_extgpioout[12], mcu_extgpioen[12]);
  bufif1 (EXTGPIO[13], mcu_extgpioout[13], mcu_extgpioen[13]);
  bufif1 (EXTGPIO[14], mcu_extgpioout[14], mcu_extgpioen[14]);
  bufif1 (EXTGPIO[15], mcu_extgpioout[15], mcu_extgpioen[15]);
  bufif1 (EXTGPIO[16], mcu_extgpioout[16], mcu_extgpioen[16]);
  bufif1 (EXTGPIO[17], mcu_extgpioout[17], mcu_extgpioen[17]);
  bufif1 (EXTGPIO[18], mcu_extgpioout[18], mcu_extgpioen[18]);
  bufif1 (EXTGPIO[19], mcu_extgpioout[19], mcu_extgpioen[19]);
  bufif1 (EXTGPIO[20], mcu_extgpioout[20], mcu_extgpioen[20]);
  bufif1 (EXTGPIO[21], mcu_extgpioout[21], mcu_extgpioen[21]);
  bufif1 (EXTGPIO[22], mcu_extgpioout[22], mcu_extgpioen[22]);
  bufif1 (EXTGPIO[23], mcu_extgpioout[23], mcu_extgpioen[23]);
  bufif1 (EXTGPIO[24], mcu_extgpioout[24], mcu_extgpioen[24]);
  bufif1 (EXTGPIO[25], mcu_extgpioout[25], mcu_extgpioen[25]);
  bufif1 (EXTGPIO[26], mcu_extgpioout[26], mcu_extgpioen[26]);
  bufif1 (EXTGPIO[27], mcu_extgpioout[27], mcu_extgpioen[27]);
  bufif1 (EXTGPIO[28], mcu_extgpioout[28], mcu_extgpioen[28]);
  bufif1 (EXTGPIO[29], mcu_extgpioout[29], mcu_extgpioen[29]);
  bufif1 (EXTGPIO[30], mcu_extgpioout[30], mcu_extgpioen[30]);
  bufif1 (EXTGPIO[31], mcu_extgpioout[31], mcu_extgpioen[31]);

  assign mcu_extgpioin = EXTGPIO;

//-----------------------------------------------------------------------------
// Tristates on SWDIOTMS and TDO
//-----------------------------------------------------------------------------

  assign mcu_swditms = SWDIOTMS;

  bufif1 (SWDIOTMS, mcu_swdo, mcu_swdoen);
  bufif0 (TDO,      mcu_tdo,  mcu_ntdoen);
  
endmodule
