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
//      Checked In          : $Date: 2009-03-09 11:17:53 +0000 (Mon, 09 Mar 2009) $
//
//      Revision            : $Revision: 103261 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEXM0 IMPLEMENTATION AND CONFIGURATION LEVEL
// ----------------------------------------------------------------------------
// This is an example wrapper level to allow you to configure your
// instantiation of CORTEXM0 and add any specific I/O that you need for
// your implementation. The example provided here is for an SRPG implementation
// and assumes a particular set of power-control signals. You can change these
// to meet the requirements of your particular library and flow
//-----------------------------------------------------------------------------

module CORTEXM0IMP
  (
   // CLOCK AND RESETS -----------------------------------------------------
   input  wire        SCLK,          // System clock
   input  wire        HCLK,          // AHB clock
   input  wire        DCLK,          // Debug clock
   input  wire        DBGRESETn,     // Debug logic asynchronous reset
   input  wire        HRESETn,       // System logic asynchronous reset
   
   // AHB-LITE MASTER PORT -------------------------------------------------
   output wire [31:0] HADDR,         // AHB transaction address
   output wire [ 2:0] HBURST,        // AHB burst, tied to single
   output wire        HMASTLOCK,     // AHB locked transfer (always zero)
   output wire [ 3:0] HPROT,         // AHB protection, priv-data or priv-inst
   output wire [ 2:0] HSIZE,         // AHB size, only byte, half-word or word
   output wire [ 1:0] HTRANS,        // AHB transfer, non-sequential only
   output wire [31:0] HWDATA,        // AHB write-data
   output wire        HWRITE,        // AHB write control
   input  wire [31:0] HRDATA,        // AHB read-data
   input  wire        HREADY,        // AHB stall signal
   input  wire        HRESP,         // AHB error response
   
   output wire        HMASTER,       // AHB master, 0 = core, 1 = debug/slave
   
   // AHB-LITE SUB-SET DEBUG SLAVE PORT ------------------------------------
   input  wire [31:0] SLVADDR,       // Slave transaction address
   input  wire [ 1:0] SLVSIZE,       // Slave transaction size
   input  wire [ 1:0] SLVTRANS,      // Slave transaction request ([0] unused)
   input  wire [31:0] SLVWDATA,      // Slave write-data
   input  wire        SLVWRITE,      // Slave write control
   output wire [31:0] SLVRDATA,      // Slave read-data
   output wire        SLVREADY,      // Slave stall signal
   output wire        SLVRESP,       // Slave error response
   
   // DEBUG ----------------------------------------------------------------
   input  wire        DBGRESTART,    // CoreSight exit-debug request
   output wire        DBGRESTARTED,  // CoreSight have-left debug acknowledge
   input  wire        EDBGRQ,        // External debug request
   output wire        HALTED,        // Core is halted
   
   // MISCELLANEOUS --------------------------------------------------------
   input  wire        NMI,           // Non-maskable interrupt input
   input  wire [31:0] IRQ,           // 32 interrupt request inputs
   output wire        TXEV,          // Event transmit
   input  wire        RXEV,          // Event receive
   output wire        LOCKUP,        // Core is locked-up
   output wire        SYSRESETREQ,   // System reset request
   input  wire [25:0] STCALIB,       // SysTick calibration register value
   input  wire        STCLKEN,       // SysTick SCLK clock enable
   input  wire [ 7:0] IRQLATENCY,    // Interrupt latency value
   input  wire [19:0] ECOREVNUM,     // Engineering-change-order revision bits
   
   // CODE SEQUENTIALITY AND SPECULATION -----------------------------------
   output wire        CODENSEQ,      // Code fetch is non-sequential to last
   output wire [ 2:0] CODEHINTDE,    // Code fetch hints
   output wire        SPECHTRANS,    // Speculative HTRANS[1]
   
   // POWER MANAGEMENT -----------------------------------------------------
   output wire        SLEEPING,      // Core sleeping (HCLK may be gated)
   output wire        SLEEPDEEP,     // Core is in deep-sleep
   input  wire        SLEEPHOLDREQn, // Sleep extension request
   output wire        SLEEPHOLDACKn, // Sleep extension acknowledge
   input  wire        WICDSREQn,     // Operate in WIC based deep-sleep mode
   output wire        WICDSACKn,     // Acknowledge using WIC based deep-sleep
   output wire [31:0] WICMASKISR,    // WIC interrupt sensitivity mask
   output wire        WICMASKNMI,    // WIC NMI sensitivity mask
   output wire        WICMASKRXEV,   // WIC event sensitivity mask
   output wire        WICLOAD,       // WIC should reload using current masks
   output wire        WICCLEAR,      // WIC should clear its mask
   
   // SCAN/TEST IO ---------------------------------------------------------
   input  wire        SE,            // Scan-enable
   
   // SRPG IO (no RTL-level function) --------------------------------------
   input  wire        SYSRETAINn,
   input  wire        SYSISOLATEn,
   input  wire        SYSPWRDOWN,
   output wire        SYSPWRDOWNACK,
   input  wire        DBGISOLATEn,
   input  wire        DBGPWRDOWN,
   output wire        DBGPWRDOWNACK);
  
  // ----------------------------------------------------------------------
  // Configurability
  // ----------------------------------------------------------------------
  // Modify this section to configure CORTEXM0INTEGRATION
  // ----------------------------------------------------------------------
  parameter  ACG      =  1;      // Architectural clock gating:
                                 //   0 = absent
                                 //   1 = present
  // ----------------------------------------------------------------------
  parameter  AHBSLV   =  1;      // SLV port AHB-Lite compliance:
                                 //   0 = non-compliant
                                 //   1 = more-compliant
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
  parameter  NUMIRQ   = 32;      // Functional IRQ lines:
                                 //   1 = IRQ[0]
                                 //   2 = IRQ[1:0]
                                 //   . . ...
                                 //  32 = IRQ[31:0]
  // ----------------------------------------------------------------------
  parameter  SMUL     =  0;      // Multiplier configuration:
                                 //   0 = MULS is single cycle (fast)
                                 //   1 = MULS takes 32-cycles (small)
  // ----------------------------------------------------------------------
  parameter  RAR      =  0;      // Reset-all-register option
                                 //   0 = standard, architectural reset
                                 //   1 = extended, all register reset
  // ----------------------------------------------------------------------
  parameter  SYST     =  1;      // SysTick timer option:
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
  parameter  WPT      =  2;      // Number of DWT comparators:
                                 //   0 = none
                                 //   1 = one
                                 //   2 = two
  // ----------------------------------------------------------------------

  CORTEXM0
    #(.ACG(ACG), .AHBSLV(AHBSLV), .BE(BE), .BKPT(BKPT),
      .DBG(DBG), .NUMIRQ(NUMIRQ), .RAR(RAR), .SMUL(SMUL),
      .SYST(SYST), .WIC(WIC), .WICLINES(WICLINES), .WPT(WPT))
      u_cortexm0
        (// Outputs
         .HADDR                          (HADDR[31:0]),
         .HBURST                         (HBURST[2:0]),
         .HMASTLOCK                      (HMASTLOCK),
         .HPROT                          (HPROT[3:0]),
         .HSIZE                          (HSIZE[2:0]),
         .HTRANS                         (HTRANS[1:0]),
         .HWDATA                         (HWDATA[31:0]),
         .HWRITE                         (HWRITE),
         .HMASTER                        (HMASTER),
         .SLVRDATA                       (SLVRDATA[31:0]),
         .SLVREADY                       (SLVREADY),
         .SLVRESP                        (SLVRESP),
         .DBGRESTARTED                   (DBGRESTARTED),
         .HALTED                         (HALTED),
         .TXEV                           (TXEV),
         .LOCKUP                         (LOCKUP),
         .SYSRESETREQ                    (SYSRESETREQ),
         .CODENSEQ                       (CODENSEQ),
         .CODEHINTDE                     (CODEHINTDE[2:0]),
         .SPECHTRANS                     (SPECHTRANS),
         .SLEEPING                       (SLEEPING),
         .SLEEPDEEP                      (SLEEPDEEP),
         .SLEEPHOLDACKn                  (SLEEPHOLDACKn),
         .WICDSACKn                      (WICDSACKn),
         .WICMASKISR                     (WICMASKISR[31:0]),
         .WICMASKNMI                     (WICMASKNMI),
         .WICMASKRXEV                    (WICMASKRXEV),
         .WICLOAD                        (WICLOAD),
         .WICCLEAR                       (WICCLEAR),
         // Inputs
         .SCLK                           (SCLK),
         .HCLK                           (HCLK),
         .DCLK                           (DCLK),
         .DBGRESETn                      (DBGRESETn),
         .HRESETn                        (HRESETn),
         .HRDATA                         (HRDATA[31:0]),
         .HREADY                         (HREADY),
         .HRESP                          (HRESP),
         .SLVADDR                        (SLVADDR[31:0]),
         .SLVSIZE                        (SLVSIZE[1:0]),
         .SLVTRANS                       (SLVTRANS[1:0]),
         .SLVWDATA                       (SLVWDATA[31:0]),
         .SLVWRITE                       (SLVWRITE),
         .DBGRESTART                     (DBGRESTART),
         .EDBGRQ                         (EDBGRQ),
         .NMI                            (NMI),
         .IRQ                            (IRQ[31:0]),
         .RXEV                           (RXEV),
         .STCALIB                        (STCALIB[25:0]),
         .STCLKEN                        (STCLKEN),
         .IRQLATENCY                     (IRQLATENCY[7:0]),
         .ECOREVNUM                      (ECOREVNUM[19:0]),
         .SLEEPHOLDREQn                  (SLEEPHOLDREQn),
         .WICDSREQn                      (WICDSREQn),
         .SE                             (SE));

endmodule // CORTEXM0IMP

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
