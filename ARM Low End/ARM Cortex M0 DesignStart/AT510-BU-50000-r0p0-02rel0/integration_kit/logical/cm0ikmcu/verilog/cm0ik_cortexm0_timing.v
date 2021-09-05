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
//      Checked In          : $Date: 2009-03-10 11:55:09 +0000 (Tue, 10 Mar 2009) $
//
//      Revision            : $Revision: 103428 $
//
//      Release Information : Cortex-M0-AT510-r0p0-01rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//      Cortex-M0 Timing Wrapper
//-----------------------------------------------------------------------------
//
// This block instantiates
// o u_imp      -   Cortex-M0 Implementation Wrapper
//
// To ensure the Cortex-M0 is implemented in a working system, the functionality 
// of this module is made similar to the Cortex-M0 Integration level. So the 
// following are also instantiated here:
// o u_dap      -   Cortex-M0 DAP
// o u_wic      -   Cortex-M0 WIC
// o Additional logical to integrate the CORTEXM0IMP with DAP, WIC
// Also optionally instantiates
// o u_capture  -   Vector Capture for Cortex-M0 Implementation
//
// Also applies SDF to u_imp and delays input signals to u_imp
//-----------------------------------------------------------------------------
`include "cm0ik_defs.v" 

module cm0ik_cortexm0_timing
  #(parameter          CAPTUREVEC = 0)
   (input  wire        FCLK,
    input  wire        SCLK,
    input  wire        HCLK,
    input  wire        DCLK,
    input  wire        PORESETn,
    input  wire        DBGRESETn,
    input  wire        HRESETn,
    input  wire        SWCLKTCK,
    input  wire        nTRST,
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
    output wire        CODENSEQ,
    output wire [ 2:0] CODEHINTDE,
    output wire        SPECHTRANS,
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
    input  wire        NMI,
    input  wire [31:0] IRQ,
    output wire        TXEV,
    input  wire        RXEV,
    output wire        LOCKUP,
    output wire        SYSRESETREQ,
    input  wire        STCLKEN,
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
    input  wire        SE,
    input  wire        RSTBYPASS,
    input  wire        SYSRETAINn,
    input  wire        SYSISOLATEn,
    input  wire        SYSPWRDOWN,
    output wire        SYSPWRDOWNACK,
    input  wire        DBGISOLATEn,
    input  wire        DBGPWRDOWN,
    output wire        DBGPWRDOWNACK);

// Wire declarations
   wire         timing_dbgresetn;
   wire         timing_hresetn;
   wire [31:0]  timing_hrdata;
   wire         timing_hready;
   wire         timing_hresp;
   wire [31:0]  timing_slvaddr;
   wire [1:0]   timing_slvsize;
   wire [1:0]   timing_slvtrans;
   wire [31:0]  timing_slvwdata;
   wire         timing_slvwrite;
   wire         timing_dbgrestart;
   wire         timing_edbgrq;
   wire [ 7:0]  timing_irqlatency;
   wire [25:0]  timing_stcalib;
   wire         timing_nmi;
   wire [31:0]  timing_irq;
   wire         timing_rxev;
   wire         timing_stclken;
   wire         timing_sleepholdreqn;
   wire         timing_wicdsreqn;
   wire         timing_se;
`ifdef ARM_CM0IK_SRPG
   wire         timing_sysisolaten;
   wire         timing_sysretainn;
   wire         timing_syspwrdown;
   wire         timing_dbgisolaten;
   wire         timing_dbgpwrdown;
`endif // ARM_CM0IK_SRPG

   // ----------------------------------------------------------------------
   // Configurability
   // ----------------------------------------------------------------------
   // Modify this parameters here to match the parameters in CORTEXM0IMP
   // ----------------------------------------------------------------------
   // ----------------------------------------------------------------------
   parameter  DBG      =  1;      // Debug configuration:
                                  //   0 = no debug support
                                  //   1 = implement debug support
   // ----------------------------------------------------------------------
   parameter  JTAGnSW  = 0;       // Debug port interface
                                  //   0 = SerialWire interface
                                  //   1 = JTAG interface
   // ----------------------------------------------------------------------
   parameter  RAR      =  0;      // Reset-all-register option
                                  //   0 = standard, architectural reset
                                  //   1 = extended, all register reset
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

   // This tied wire allows configuration of the ROM table base
   // address which is read from the AP during debug sessions. If
   // the default configuration is used the value should be left at
   // 32'hE00FF003.
   wire [31:0] baseaddr = 32'hE00FF003;

   wire        cfg_dbg = DBG != 0;  // Reduce DBG param to a wire

   // ------------------------------------------------------------
   // Define sub-module interconnect wires
   // ------------------------------------------------------------

   wire        dp_reset_n;          // Synchronised PORESETn

   wire [31:0] slv_rdata;           // Core -> DAP read data
   wire        slv_ready;           // Core -> DAP bus ready
   wire        slv_resp;            // Core -> DAP error response

   wire        wic_clear;           // NVIC -> WIC clear
   wire        wic_ds_req_n;        // WIC  -> NVIC mode request
   wire        wic_ds_ack_n;        // NVIC -> WIC mode acknowledge
   wire        wic_load;            // NVIC -> WIC load
   wire [31:0] wic_mask_isr;        // NVIC -> WIC IRQs mask
   wire        wic_mask_nmi;        // NVIC -> WIC NMI mask
   wire        wic_mask_rxev;       // NVIC -> WIC RXEV mask

   wire [33:0] wic_pend;            // interrupt pend lines

   wire [33:0] wic_sense;           // WIC sensitivity output

   wire [31:0] slv_addr_dap;        // DAP -> Core address
   wire [31:0] slv_wdata_dap;       // DAP -> Core write data
   wire [ 1:0] slv_trans_dap;       // DAP -> Core transaction
   wire        slv_write_dap;       // DAP -> Core write
   wire [ 1:0] slv_size_dap;        // DAP -> Core size

   wire        sw_do;               // DAP serial-wire output
   wire        sw_do_en;            // DAP serial-wire out enable
   wire        t_do;                // DAP TDO
   wire        t_do_en_n;           // DAP TDO enable
   wire        cdbg_pwrup_req;      // DAP powerup request

   // ------------------------------------------------------------
   // Tie off key debug signals if no debug is implemented
   // ------------------------------------------------------------

   // this logic is present to allow synthesis to strip out the
   // debug-access-port if no debug is required; implementors
   // may choose simply not to instantiate the DAP sub-module

   wire [31:0] slv_addr       = cfg_dbg ? slv_addr_dap  : {32{1'b0}};
   wire [31:0] slv_wdata      = cfg_dbg ? slv_wdata_dap : {32{1'b0}};
   wire [ 1:0] slv_trans      = cfg_dbg ? slv_trans_dap : {2{1'b0}};
   wire        slv_write      = cfg_dbg ? slv_write_dap : 1'b0;
   wire [ 1:0] slv_size       = cfg_dbg ? slv_size_dap  : {2{1'b0}};
   wire        device_en      = cfg_dbg ? 1'b1          : 1'b0;

   wire        sw_clk_tck     = SWCLKTCK;
   wire        t_rst_n        = nTRST;
   wire        sw_di_t_ms     = cfg_dbg ? SWDITMS       : 1'b1;
   wire        t_di           = TDI;
   wire        cdbg_pwrup_ack = cfg_dbg ? CDBGPWRUPACK  : 1'b0;
   wire [31:0] slv_rdata_dap  = cfg_dbg ? slv_rdata     : {32{1'b0}};
   wire        slv_ready_dap  = cfg_dbg ? slv_ready     : 1'b0;
   wire        slv_resp_dap   = cfg_dbg ? slv_resp      : 1'b0;

   // ------------------------------------------------------------
   // Example reset synchronizer for dp_reset
   // ------------------------------------------------------------

   cm0_dbg_reset_sync #(.PRESENT(DBG))
     u_dpreset_sync
       (
        .RSTIN     (PORESETn),
        .CLK       (SWCLKTCK),
        .SE        (SE),
        .RSTBYPASS (RSTBYPASS),
        .RSTOUT    (dp_reset_n));

   // ------------------------------------------------------------
   // Generate signal that can be used to gate system clock
   // ------------------------------------------------------------

   // HCLK to core (and system) may be gated if the core is
   // sleeping, and there is no chance of a debug transaction

   wire        gate_hclk = ( (SLEEPING | ~SLEEPHOLDACKn) &
                             ~cdbg_pwrup_ack );

   // ------------------------------------------------------------
   // Connect wake-up interrupt controller to Cortex-M0 NVIC
   // ------------------------------------------------------------

   // the WIC module makes no distinction between NMI, RXEV or
   // regular interrupts, so simply assign NMI, RXEV and the
   // configured number of IRQ signals consistently to the least
   // significant bits of input and output ports

   wire [33:0] wic_mask = { wic_mask_isr[31:0],
                            wic_mask_nmi,
                            wic_mask_rxev };

   wire [33:0] wic_int  = { IRQ[31:0],
                            NMI,
                            RXEV };

   wire [31:0] irq_pend  = IRQ  | wic_pend[33:2];
   wire        nmi_pend  = NMI  | wic_pend[1];
   wire        rxev_pend = RXEV | wic_pend[0];

   // ------------------------------------------------------------

   //-----------------------------------------------------------------------------
   // SDF Timing Annotation
   //-----------------------------------------------------------------------------
`ifdef ARM_CM0IK_SDF
   initial
     begin
       $sdf_annotate("../CORTEXM0IMP.sdf.gz", u_imp);
     end
`endif // ARM_CM0IK_SDF

   //-----------------------------------------------------------------------------
   // Delaying input signals
   //-----------------------------------------------------------------------------
`ifdef ARM_CM0IK_SDF
    `define ARM_CM0IK_DELAY 3
`else
    `define ARM_CM0IK_DELAY 0
`endif // ARM_CM0IK_SDF

cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_HRESETn       (.dataout(timing_hresetn), .datain(HRESETn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_DBGRESETn     (.dataout(timing_dbgresetn), .datain(DBGRESETn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(32)) u_dl_HRDATA        (.dataout(timing_hrdata), .datain(HRDATA));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_HREADY        (.dataout(timing_hready), .datain(HREADY));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_HRESP         (.dataout(timing_hresp), .datain(HRESP));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(32)) u_dl_SLVADDR       (.dataout(timing_slvaddr), .datain(slv_addr));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(2))  u_dl_SLVSIZE       (.dataout(timing_slvsize), .datain(slv_size));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(2))  u_dl_SLVTRANS      (.dataout(timing_slvtrans), .datain(slv_trans));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(32)) u_dl_SLVWDATA      (.dataout(timing_slvwdata), .datain(slv_wdata));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SLVWRITE      (.dataout(timing_slvwrite), .datain(slv_write));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_DBGRESTART    (.dataout(timing_dbgrestart), .datain(DBGRESTART));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_EDBGRQ        (.dataout(timing_edbgrq), .datain(EDBGRQ));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(26)) u_dl_STCALIB       (.dataout(timing_stcalib), .datain(`ARM_CM0IK_STCALIB));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_NMI           (.dataout(timing_nmi), .datain(nmi_pend));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(32)) u_dl_IRQ           (.dataout(timing_irq), .datain(irq_pend));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(8))  u_dl_IRQLATENCY    (.dataout(timing_irqlatency), .datain(`ARM_CM0IK_IRQLATENCY));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_RXEV          (.dataout(timing_rxev), .datain(rxev_pend));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_STCLKEN       (.dataout(timing_stclken), .datain(STCLKEN));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SLEEPHOLDREQn (.dataout(timing_sleepholdreqn), .datain(SLEEPHOLDREQn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_WICDSREQn     (.dataout(timing_wicdsreqn), .datain(wic_ds_req_n));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SE            (.dataout(timing_se), .datain(SE));
`ifdef ARM_CM0IK_SRPG
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SYSISOLATEn   (.dataout(timing_sysisolaten), .datain(SYSISOLATEn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SYSRETAINn    (.dataout(timing_sysretainn), .datain(SYSRETAINn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SYSPWRDOWN    (.dataout(timing_syspwrdown), .datain(SYSPWRDOWN));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_DBGISOLATEn   (.dataout(timing_dbgisolaten), .datain(DBGISOLATEn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_DBGPWRDOWN    (.dataout(timing_dbgpwrdown), .datain(DBGPWRDOWN));
`endif // ARM_CM0IK_SRPG

   // ------------------------------------------------------------
   // Cortex-M0 Implementation Wrapper instantiation
   // ------------------------------------------------------------

   CORTEXM0IMP
       u_imp
         (
          // Outputs
          .HADDR                          (HADDR[31:0]),
          .HBURST                         (HBURST[2:0]),
          .HMASTLOCK                      (HMASTLOCK),
          .HPROT                          (HPROT[3:0]),
          .HSIZE                          (HSIZE[2:0]),
          .HTRANS                         (HTRANS[1:0]),
          .HWDATA                         (HWDATA[31:0]),
          .HWRITE                         (HWRITE),
          .HMASTER                        (HMASTER),
          .SLVRDATA                       (slv_rdata[31:0]),
          .SLVREADY                       (slv_ready),
          .SLVRESP                        (slv_resp),
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
          .WICDSACKn                      (wic_ds_ack_n),
          .WICMASKISR                     (wic_mask_isr[31:0]),
          .WICMASKNMI                     (wic_mask_nmi),
          .WICMASKRXEV                    (wic_mask_rxev),
          .WICLOAD                        (wic_load),
          .WICCLEAR                       (wic_clear),
`ifdef ARM_CM0IK_SRPG
          .SYSPWRDOWNACK                  (SYSPWRDOWNACK),
          .DBGPWRDOWNACK                  (DBGPWRDOWNACK),
`endif // ARM_CM0IK_SRPG
          // Inputs
          .SCLK                           (SCLK),
          .HCLK                           (HCLK),
          .DCLK                           (DCLK),
          .DBGRESETn                      (timing_dbgresetn),
          .HRESETn                        (timing_hresetn),
          .HRDATA                         (timing_hrdata),
          .HREADY                         (timing_hready),
          .HRESP                          (timing_hresp),
          .SLVADDR                        (timing_slvaddr[31:0]),
          .SLVSIZE                        (timing_slvsize[1:0]),
          .SLVTRANS                       (timing_slvtrans[1:0]),
          .SLVWDATA                       (timing_slvwdata[31:0]),
          .SLVWRITE                       (timing_slvwrite),
          .DBGRESTART                     (timing_dbgrestart),
          .EDBGRQ                         (timing_edbgrq),
          .NMI                            (timing_nmi),
          .IRQ                            (timing_irq[31:0]),
          .RXEV                           (timing_rxev),
          .STCALIB                        (timing_stcalib[25:0]),
          .STCLKEN                        (timing_stclken),
          .IRQLATENCY                     (timing_irqlatency[7:0]),
          .ECOREVNUM                      (20'b0),
          .SLEEPHOLDREQn                  (timing_sleepholdreqn),
          .WICDSREQn                      (timing_wicdsreqn),
`ifdef ARM_CM0IK_SRPG
          .SYSISOLATEn                    (timing_sysisolaten),
          .SYSRETAINn                     (timing_sysretainn),
          .SYSPWRDOWN                     (timing_syspwrdown),
          .DBGISOLATEn                    (timing_dbgisolaten),
          .DBGPWRDOWN                     (timing_dbgpwrdown),
`endif // ARM_CM0IK_SRPG
          .SE                             (timing_se));
          
   // ------------------------------------------------------------
   // Cortex-M0 debug-access-port instantiation
   // ------------------------------------------------------------

   CORTEXM0DAP
           #(.JTAGnSW                       (JTAGnSW),
             .DBG                           (DBG),
             .RAR                           (RAR))
         u_dap
           (
             // Outputs
            .SWDO                           (sw_do),
            .SWDOEN                         (sw_do_en),
            .TDO                            (t_do),
            .nTDOEN                         (t_do_en_n),
            .CDBGPWRUPREQ                   (cdbg_pwrup_req),
            .SLVADDR                        (slv_addr_dap[31:0]),
            .SLVWDATA                       (slv_wdata_dap[31:0]),
            .SLVTRANS                       (slv_trans_dap[1:0]),
            .SLVWRITE                       (slv_write_dap),
            .SLVSIZE                        (slv_size_dap[1:0]),
            // Inputs
            .SWCLKTCK                       (sw_clk_tck),
            .nTRST                          (t_rst_n),
            .DPRESETn                       (dp_reset_n),
            .APRESETn                       (DBGRESETn),
            .SWDITMS                        (sw_di_t_ms),
            .TDI                            (t_di),
            .CDBGPWRUPACK                   (cdbg_pwrup_ack),
            .DEVICEEN                       (device_en),
            .DCLK                           (DCLK),
            .SLVRDATA                       (slv_rdata_dap[31:0]),
            .SLVREADY                       (slv_ready_dap),
            .SLVRESP                        (slv_resp_dap),
            .BASEADDR                       (baseaddr),
            .ECOREVNUM                      (8'b0),
            .SE                             (SE)
         );

   // ------------------------------------------------------------
   // Cortex-M0 wake-up interrupt controller instantiation
   // ------------------------------------------------------------

   cortexm0_wic
        #(.WIC                            (WIC),
          .WICLINES                       (WICLINES))
       u_wic
         (// Outputs
          .WAKEUP                         (WAKEUP),
          .WICSENSE                       (wic_sense[33:0]),
          .WICPEND                        (wic_pend[33:0]),
          .WICDSREQn                      (wic_ds_req_n),
          .WICENACK                       (WICENACK),
          // Inputs
          .FCLK                           (FCLK),
          .nRESET                         (HRESETn),
          .WICLOAD                        (wic_load),
          .WICCLEAR                       (wic_clear),
          .WICINT                         (wic_int[33:0]),
          .WICMASK                        (wic_mask[33:0]),
          .WICENREQ                       (WICENREQ),
          .WICDSACKn                      (wic_ds_ack_n));

   // ------------------------------------------------------------
   // Assign outputs
   // ------------------------------------------------------------

   assign      GATEHCLK      = gate_hclk;

   assign      SWDO          = cfg_dbg ? sw_do          : 1'b0;
   assign      SWDOEN        = cfg_dbg ? sw_do_en       : 1'b0;
   assign      TDO           = t_do;
   assign      nTDOEN        = cfg_dbg ? t_do_en_n      : 1'b1;
   assign      CDBGPWRUPREQ  = cfg_dbg ? cdbg_pwrup_req : 1'b0;

   assign      WICSENSE      = wic_sense[33:0];

//-----------------------------------------------------------------------------
// Vector Capture Module 
//-----------------------------------------------------------------------------

`ifdef ARM_CM0IK_VECTOR_CAPTURE
    generate
        if (CAPTUREVEC)
        cm0ik_cortexm0imp_capture u_capture
            (.HADDR                          (HADDR),
             .HBURST                         (HBURST),
             .HMASTLOCK                      (HMASTLOCK),
             .HPROT                          (HPROT),
             .HSIZE                          (HSIZE),
             .HTRANS                         (HTRANS),
             .HWDATA                         (HWDATA),
             .HWRITE                         (HWRITE),
             .HMASTER                        (HMASTER),
             .SLVRDATA                       (slv_rdata),
             .SLVREADY                       (slv_ready),
             .SLVRESP                        (slv_resp),
             .DBGRESTARTED                   (DBGRESTARTED),
             .HALTED                         (HALTED),
             .TXEV                           (TXEV),
             .LOCKUP                         (LOCKUP),
             .SYSRESETREQ                    (SYSRESETREQ),
             .CODENSEQ                       (CODENSEQ),
             .CODEHINTDE                     (CODEHINTDE),
             .SPECHTRANS                     (SPECHTRANS),
             .SLEEPING                       (SLEEPING),
             .SLEEPDEEP                      (SLEEPDEEP),
             .SLEEPHOLDACKn                  (SLEEPHOLDACKn),
             .WICDSACKn                      (wic_ds_ack_n),
             .WICMASKISR                     (wic_mask_isr),
             .WICMASKNMI                     (wic_mask_nmi),
             .WICMASKRXEV                    (wic_mask_rxev),
             .WICLOAD                        (wic_load),
             .WICCLEAR                       (wic_clear),
`ifdef ARM_CM0IK_SRPG
`ifdef ARM_CM0IK_PWRDOWNACK
             .SYSPWRDOWNACK                  (SYSPWRDOWNACK),
             .DBGPWRDOWNACK                  (DBGPWRDOWNACK),
`else
             .SYSPWRDOWNACK                  (1'bx),
             .DBGPWRDOWNACK                  (1'bx),
`endif // ARM_CM0IK_PWRDOWNACK
`else
             .SYSPWRDOWNACK                  (1'bx),
             .DBGPWRDOWNACK                  (1'bx),
`endif // ARM_CM0IK_SRPG
             .SCLK                           (SCLK),
             .HCLK                           (HCLK),
             .DCLK                           (DCLK),
             .DBGRESETn                      (timing_dbgresetn),
             .HRESETn                        (timing_hresetn),
             .HRDATA                         (timing_hrdata),
             .HREADY                         (timing_hready),
             .HRESP                          (timing_hresp),
             .SLVADDR                        (timing_slvaddr),
             .SLVSIZE                        (timing_slvsize),
             .SLVTRANS                       (timing_slvtrans),
             .SLVWDATA                       (timing_slvwdata),
             .SLVWRITE                       (timing_slvwrite),
             .DBGRESTART                     (timing_dbgrestart),
             .EDBGRQ                         (timing_edbgrq),
             .NMI                            (timing_nmi),
             .IRQ                            (timing_irq),
             .RXEV                           (timing_rxev),
             .STCALIB                        (timing_stcalib),
             .STCLKEN                        (timing_stclken),
             .IRQLATENCY                     (timing_irqlatency),
             .ECOREVNUM                      (20'b0),
             .SLEEPHOLDREQn                  (timing_sleepholdreqn),
             .WICDSREQn                      (timing_wicdsreqn),
`ifdef ARM_CM0IK_SRPG
             .SYSRETAINn                     (timing_sysretainn),
             .SYSISOLATEn                    (timing_sysisolaten),
             .SYSPWRDOWN                     (timing_syspwrdown),
             .DBGISOLATEn                    (timing_dbgisolaten),
             .DBGPWRDOWN                     (timing_dbgpwrdown),
`else
             .SYSRETAINn                     (1'b1),
             .SYSISOLATEn                    (1'b1),
             .SYSPWRDOWN                     (1'b0),
             .DBGISOLATEn                    (1'b1),
             .DBGPWRDOWN                     (1'b0),
`endif // ARM_CM0IK_SRPG
             .SE                             (timing_se)
          );
    endgenerate
`endif // ARM_CM0IK_VECTOR_CAPTURE

endmodule // cm0ik_cortexm0imp_timing

// ---------------------------------------------------------------
// EOF
// ---------------------------------------------------------------
