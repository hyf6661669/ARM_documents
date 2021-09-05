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
//      Checked In          : $Date: 2009-03-10 15:13:03 +0000 (Tue, 10 Mar 2009) $
//
//      Revision            : $Revision: 103482 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 PROCESSOR MACRO-CELL LEVEL
//-----------------------------------------------------------------------------

module CORTEXM0
  #(// ----------------------------------------------------------------------
    // CORTEX-M0 PER-INSTANCE PARAMETERIZATION:
    // ----------------------------------------------------------------------
    parameter ACG      =  1,      // Architectural clock gating:
                                  //   0 = absent
                                  //   1 = present
    // ----------------------------------------------------------------------
    parameter AHBSLV   =  1,      // SLV port AHB-Lite compliance:
                                  //   0 = non-compliant
                                  //   1 = more-compliant
    // ----------------------------------------------------------------------
    parameter BE       =  0,      // Data transfer endianess:
                                  //   0 = little-endian
                                  //   1 = byte-invariant big-endian
    // ----------------------------------------------------------------------
    parameter BKPT     =  4,      // Number of breakpoint comparators:
                                  //   0 = none
                                  //   1 = one
                                  //   2 = two
                                  //   3 = three
                                  //   4 = four
    // ----------------------------------------------------------------------
    parameter DBG      =  1,      // Debug configuration:
                                  //   0 = no debug support
                                  //   1 = implement debug support
    // ----------------------------------------------------------------------
    parameter NUMIRQ   = 32,      // Functional IRQ lines:
                                  //   1 = IRQ[0]
                                  //   2 = IRQ[1:0]
                                  //   . . ...
                                  //  32 = IRQ[31:0]
    // ----------------------------------------------------------------------
    parameter SMUL     =  0,      // Multiplier configuration:
                                  //   0 = MULS is single cycle (fast)
                                  //   1 = MULS takes 32-cycles (small)
    // ----------------------------------------------------------------------
    parameter RAR      =  0,      // Reset-all-register option
                                  //   0 = standard, architectural reset
                                  //   1 = extended, all register reset
    // ----------------------------------------------------------------------
    parameter SYST     =  1,      // SysTick timer option:
                                  //   0 = SysTick not present
                                  //   1 = SysTick present
    // ----------------------------------------------------------------------
    parameter WIC      =  1,      // Wake-up interrupt controller support:
                                  //   0 = no support
                                  //   1 = WIC deep-sleep supported
    // ----------------------------------------------------------------------
    parameter WICLINES = 34,      // Supported WIC lines:
                                  //   2 = NMI and RXEV
                                  //   3 = NMI, RXEV and IRQ[0]
                                  //   4 = NMI, RXEV and IRQ[1:0]
                                  //   . . ...
                                  //  34 = NMI, RXEV and IRQ[31:0]
    // ----------------------------------------------------------------------
    parameter WPT      =  2)      // Number of DWT comparators:
                                  //   0 = none
                                  //   1 = one
                                  //   2 = two
    // ----------------------------------------------------------------------


   (// ----------------------------------------------------------------------
    // CORTEX-M0 PRIMARY INPUTS AND OUTPUTS
    // ----------------------------------------------------------------------

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
    input  wire        SE);           // Scan-enable (not used by RTL)
   // ----------------------------------------------------------------------

   // ----------------------------------------------------------------------
   // Disable wire-based configuration (used for DSM generation only)
   // ----------------------------------------------------------------------

   localparam CBAW = 0;

   // ----------------------------------------------------------------------
   // Instantiate Cortex-M0 structural level
   // ----------------------------------------------------------------------

   cm0_top
     #(.CBAW(CBAW), .ACG(ACG), .AHBSLV(AHBSLV), .BE(BE),
       .BKPT(BKPT), .DBG(DBG), .NUMIRQ(NUMIRQ), .RAR(RAR), .SYST(SYST),
       .SMUL(SMUL), .WIC(WIC), .WICLINES(WICLINES), .WPT(WPT))
       u_top
         (.sclk               (SCLK),
          .hclk               (HCLK),
          .dclk               (DCLK),
          .dbg_reset_n        (DBGRESETn),
          .hreset_n           (HRESETn),
          .SE                 (SE),

          .haddr_o            (HADDR[31:0]),
          .hburst_o           (HBURST[2:0]),
          .hmastlock_o        (HMASTLOCK),
          .hprot_o            (HPROT[3:0]),
          .hsize_o            (HSIZE[2:0]),
          .htrans_o           (HTRANS[1:0]),
          .hwdata_o           (HWDATA[31:0]),
          .hwrite_o           (HWRITE),
          .hrdata_i           (HRDATA[31:0]),
          .hready_i           (HREADY),
          .hresp_i            (HRESP),

          .hmaster_o          (HMASTER),

          .slv_addr_i         (SLVADDR[31:0]),
          .slv_size_i         (SLVSIZE[1:0]),
          .slv_trans_i        (SLVTRANS[1:0]),
          .slv_wdata_i        (SLVWDATA[31:0]),
          .slv_write_i        (SLVWRITE),
          .slv_rdata_o        (SLVRDATA[31:0]),
          .slv_ready_o        (SLVREADY),
          .slv_resp_o         (SLVRESP),

          .dbg_restart_i      (DBGRESTART),
          .dbg_restarted_o    (DBGRESTARTED),
          .dbg_ext_req_i      (EDBGRQ),
          .halted_o           (HALTED),
          .nmi_i              (NMI),
          .irq_i              (IRQ[31:0]),
          .txev_o             (TXEV),
          .rxev_i             (RXEV),
          .lockup_o           (LOCKUP),
          .sys_reset_req_o    (SYSRESETREQ),
          .st_calib_i         (STCALIB[25:0]),
          .st_clk_en_i        (STCLKEN),
          .irq_latency_i      (IRQLATENCY[7:0]),
          .eco_rev_num_i      (ECOREVNUM[19:0]),
          .code_nseq_o        (CODENSEQ),
          .code_hint_de_o     (CODEHINTDE[2:0]),
          .spec_htrans_o      (SPECHTRANS),
          .sleeping_o         (SLEEPING),
          .sleep_deep_o       (SLEEPDEEP),
          .sleep_hold_req_n_i (SLEEPHOLDREQn),
          .sleep_hold_ack_n_o (SLEEPHOLDACKn),
          .wic_ds_req_n_i     (WICDSREQn),
          .wic_ds_ack_n_o     (WICDSACKn),
          .wic_mask_isr_o     (WICMASKISR[31:0]),
          .wic_mask_nmi_o     (WICMASKNMI),
          .wic_mask_rxev_o    (WICMASKRXEV),
          .wic_load_o         (WICLOAD),
          .wic_clear_o        (WICCLEAR));

   // ----------------------------------------------------------------------

endmodule // CORTEXM0

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
