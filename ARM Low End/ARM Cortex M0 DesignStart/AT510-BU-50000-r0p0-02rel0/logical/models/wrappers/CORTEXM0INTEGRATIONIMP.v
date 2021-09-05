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
//      Checked In          : $Date: 2009-03-09 12:42:49 +0000 (Mon, 09 Mar 2009) $
//
//      Revision            : $Revision: 103282 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEXM0INTEGRATION IMPLEMENTATION AND CONFIGURATION LEVEL
//-----------------------------------------------------------------------------
// This is an example wrapper level to allow you to configure your
// instantiation of CORTEXM0 and add any specific I/O that you need for
// your implementation. The example provided here is for an SRPG implementation
// and assumes a particular set of power-control signals. You can change these
// to meet the requirements of your particular library and flow
//-----------------------------------------------------------------------------

module CORTEXM0INTEGRATIONIMP
  (// CLOCK AND RESETS
   input  wire        FCLK,
   input  wire        SCLK,
   input  wire        HCLK,
   input  wire        DCLK,
   input  wire        PORESETn,
   input  wire        DBGRESETn,
   input  wire        HRESETn,
   input  wire        SWCLKTCK,
   input  wire        nTRST,
   
   // AHB-LITE MASTER PORT
   output wire [31:0] HADDR,
   output wire [ 2:0] HBURST,
   output wire        HMASTLOCK,
   output wire [ 3:0] HPROT,
   output wire [ 2:0] HSIZE,
   output wire [ 1:0] HTRANS,
   output wire [31:0] HWDATA,
   output wire        HWRITE,
   input  wire [31:0] HRDATA,
   input  wire        HREADY,
   input  wire        HRESP,
   output wire        HMASTER,
   
   // CODE SEQUENTIALITY AND SPECULATION
   output wire        CODENSEQ,
   output wire [ 2:0] CODEHINTDE,
   output wire        SPECHTRANS,
   
   // DEBUG
   input  wire        SWDITMS,
   input  wire        TDI,
   output wire        SWDO,
   output wire        SWDOEN,
   output wire        TDO,
   output wire        nTDOEN,
   input  wire        DBGRESTART,
   output wire        DBGRESTARTED,
   input  wire        EDBGRQ,
   output wire        HALTED,
   
   // MISC
   input  wire        NMI,
   input  wire [31:0] IRQ,
   output wire        TXEV,
   input  wire        RXEV,
   output wire        LOCKUP,
   output wire        SYSRESETREQ,
   input  wire [25:0] STCALIB,
   input  wire        STCLKEN,
   input  wire [ 7:0] IRQLATENCY,
   input  wire [27:0] ECOREVNUM,    // [27:20] to DAP, [19:0] to core
   
     // POWER MANAGEMENT
   output wire        GATEHCLK,
   output wire        SLEEPING,
   output wire        SLEEPDEEP,
   output wire        WAKEUP,
   output wire [33:0] WICSENSE,
   input  wire        SLEEPHOLDREQn,
   output wire        SLEEPHOLDACKn,
   input  wire        WICENREQ,
   output wire        WICENACK,
   output wire        CDBGPWRUPREQ,
   input  wire        CDBGPWRUPACK,
   
   // SCAN IO
   input  wire        SE,
   input  wire        RSTBYPASS,
   
   // SRPG IO (no RTL-level function)
   input  wire        SYSRETAINn,
   input  wire        SYSISOLATEn,
   input  wire        SYSPWRDOWN,
   output wire        SYSPWRDOWNACK,
   input  wire        DBGISOLATEn,
   input  wire        DBGPWRDOWN,
   output wire        DBGPWRDOWNACK
   );
  
  // ----------------------------------------------------------------------
  // Configurability
  // ----------------------------------------------------------------------
  // Modify this section to configure CORTEXM0INTEGRATION
  // ------------------------------------------------------------
  parameter  ACG      =  1;      // Architectural clock gating:
                                 //   0 = absent
                                 //   1 = present
  // ----------------------------------------------------------------------
  parameter  BE       =  0;      // Data transfer endianess:
                                 //   0 = little-endian
                                 //   1 = byte-invariant big-endian
  // ----------------------------------------------------------------------
  parameter  BKPT     =  4;      // Number of breakpoint comparators:
                                 //   0 = none
                                 //   1 = one
                                 //   2 = two
                                 //   3 = three
                                 //   4 = four
  // ----------------------------------------------------------------------
  parameter  DBG      =  1;      // Debug configuration:
                                 //   0 = no debug support
                                 //   1 = implement debug support
  // ----------------------------------------------------------------------
  parameter  JTAGnSW  =  0;      // Debug port interface
                                 //   0 = SerialWire interface
                                 //   1 = JTAG interface
  // ----------------------------------------------------------------------
  parameter  NUMIRQ   = 32;      // Functional IRQ lines:
                                 //   0 = none
                                 //   1 = IRQ[0]
                                 //   2 = IRQ[1:0]
                                 //   . . ...
                                 //  32 = IRQ[31:0]
  // ----------------------------------------------------------------------
  parameter  RAR      =  0;      // Reset-all-register option
                                 //   0 = standard, architectural reset
                                 //   1 = extended, all register reset
  // ----------------------------------------------------------------------
  parameter  SMUL     =  0;      // Multiplier configuration:
                                 //   0 = MULS is single cycle (fast)
                                 //   1 = MULS takes 32-cycles (small)
  // ----------------------------------------------------------------------
  parameter  SYST     =  1;      // SysTick option:
                                 //   0 = SysTick not present
                                 //   1 = SysTick present
  // ----------------------------------------------------------------------
  parameter  WIC      =  1;      // Wake-up interrupt controller support:
                                 //   0 = no support
                                 //   1 = WIC deep-sleep supported
  // ----------------------------------------------------------------------
  parameter  WICLINES = 34;      // Supported WIC lines:
                                 //   2 = NMI and RXEV
                                 //   3 = NMI, RXEV and IRQ[0]
                                 //   4 = NMI, RXEV and IRQ[1:0]
                                 //   . . ...
                                 //  34 = NMI, RXEV and IRQ[31:0]
  // ----------------------------------------------------------------------
  parameter  WPT      =  2;      // Number of DWT comparators
                                 //   0 = none
                                 //   1 = one
                                 //   2 = two
  // ----------------------------------------------------------------------
  
  CORTEXM0INTEGRATION
    #(.ACG(ACG), .BE(BE), .BKPT(BKPT), .DBG(DBG), .JTAGnSW(JTAGnSW),
      .NUMIRQ(NUMIRQ), .RAR(RAR), .SMUL(SMUL), .SYST(SYST), 
      .WIC(WIC), .WICLINES(WICLINES), .WPT(WPT))
      u_cortexm0integration
        (
         .FCLK                           (FCLK),
         .SCLK                           (SCLK),
         .HCLK                           (HCLK),
         .DCLK                           (DCLK),
         .PORESETn                       (PORESETn),
         .DBGRESETn                      (DBGRESETn),
         .HRESETn                        (HRESETn),
         .SWCLKTCK                       (SWCLKTCK),
         .nTRST                          (nTRST),
         .HADDR                          (HADDR[31:0]),
         .HBURST                         (HBURST[2:0]),
         .HMASTLOCK                      (HMASTLOCK),
         .HPROT                          (HPROT[3:0]),
         .HSIZE                          (HSIZE[2:0]),
         .HTRANS                         (HTRANS[1:0]),
         .HWDATA                         (HWDATA[31:0]),
         .HWRITE                         (HWRITE),
         .HRDATA                         (HRDATA[31:0]),
         .HREADY                         (HREADY),
         .HRESP                          (HRESP),
         .HMASTER                        (HMASTER),
         .CODENSEQ                       (CODENSEQ),
         .CODEHINTDE                     (CODEHINTDE[2:0]),
         .SPECHTRANS                     (SPECHTRANS),
         .SWDITMS                        (SWDITMS),
         .TDI                            (TDI),
         .SWDO                           (SWDO),
         .SWDOEN                         (SWDOEN),
         .TDO                            (TDO),
         .nTDOEN                         (nTDOEN),
         .DBGRESTART                     (DBGRESTART),
         .DBGRESTARTED                   (DBGRESTARTED),
         .EDBGRQ                         (EDBGRQ),
         .HALTED                         (HALTED),
         .NMI                            (NMI),
         .IRQ                            (IRQ[31:0]),
         .TXEV                           (TXEV),
         .RXEV                           (RXEV),
         .LOCKUP                         (LOCKUP),
         .SYSRESETREQ                    (SYSRESETREQ),
         .STCALIB                        (STCALIB[25:0]),
         .STCLKEN                        (STCLKEN),
         .IRQLATENCY                     (IRQLATENCY[7:0]),
         .ECOREVNUM                      (ECOREVNUM[27:0]),
         .GATEHCLK                       (GATEHCLK),
         .SLEEPING                       (SLEEPING),
         .SLEEPDEEP                      (SLEEPDEEP),
         .WAKEUP                         (WAKEUP),
         .WICSENSE                       (WICSENSE[33:0]),
         .SLEEPHOLDREQn                  (SLEEPHOLDREQn),
         .SLEEPHOLDACKn                  (SLEEPHOLDACKn),
         .WICENREQ                       (WICENREQ),
         .WICENACK                       (WICENACK),
         .CDBGPWRUPREQ                   (CDBGPWRUPREQ),
         .CDBGPWRUPACK                   (CDBGPWRUPACK),
         .SE                             (SE),
         .RSTBYPASS                      (RSTBYPASS));
  
endmodule // CORTEXM0INTEGRATIONIMP

// ---------------------------------------------------------------
// EOF
// ---------------------------------------------------------------
