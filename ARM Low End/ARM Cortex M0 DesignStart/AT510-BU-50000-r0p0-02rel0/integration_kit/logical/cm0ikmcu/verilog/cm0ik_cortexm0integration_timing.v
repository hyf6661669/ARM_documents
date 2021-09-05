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
//      Checked In          : $Date: 2009-01-27 14:57:02 +0000 (Tue, 27 Jan 2009) $
//
//      Revision            : $Revision: 99568 $
//
//      Release Information : Cortex-M0-AT510-r0p0-01rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Cortex-M0 Integration Timing Wrapper
//-----------------------------------------------------------------------------
//
// This block instantiates 
// o u_int_imp  -   Cortex-M0 Integration Implementation Wrapper
// Also optionally instantiates
// o u_capture  -   Vector Capture for Cortex-M0 Integration Implementation
//
// Also applies SDF to u_int_imp and delays inputs to u_int_imp
//-----------------------------------------------------------------------------
`include "cm0ik_defs.v" 

module cm0ik_cortexm0integration_timing
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
     
//Wire declarations
    wire        timing_poresetn;
    wire        timing_dbgresetn;
    wire        timing_hresetn;
    wire        timing_dbgrestart;
    wire        timing_nmi;
    wire [31:0] timing_irq;
    wire        timing_rxev;
    wire        timing_se;
    wire        timing_rstbypass;
    wire [ 7:0] timing_irqlatency;
    wire        timing_swclktck;
    wire        timing_ntrst;
    wire [31:0] timing_hrdata;
    wire        timing_hready;
    wire        timing_hresp;
    wire        timing_swditms;
    wire        timing_tdi;
    wire        timing_edbgrq;
    wire [25:0] timing_stcalib;
    wire        timing_stclken;
    wire        timing_sleepholdreqn;
    wire        timing_wicenreq;
    wire        timing_cdbgpwrupack;
`ifdef ARM_CM0IK_SRPG
    wire        timing_sysretainn;
    wire        timing_sysisolaten;
    wire        timing_syspwrdown;
    wire        timing_dbgisolaten;
    wire        timing_dbgpwrdown;
`endif // ARM_CM0IK_SRPG

   //-----------------------------------------------------------------------------
   // SDF Timing Annotation
   //-----------------------------------------------------------------------------
`ifdef ARM_CM0IK_SDF
   initial
     begin
       $sdf_annotate("../CORTEXM0INTEGRATIONIMP.sdf.gz", u_int_imp);
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

cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_PORESETn      (.dataout(timing_poresetn), .datain(PORESETn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_DBGRESETn     (.dataout(timing_dbgresetn), .datain(DBGRESETn));   
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_HRESETn       (.dataout(timing_hresetn), .datain(HRESETn));   
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_DBGRESTART    (.dataout(timing_dbgrestart), .datain(DBGRESTART));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_NMI           (.dataout(timing_nmi), .datain(NMI));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(32)) u_dl_IRQ           (.dataout(timing_irq), .datain(IRQ));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_RXEV          (.dataout(timing_rxev), .datain(RXEV));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SE            (.dataout(timing_se), .datain(SE));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_RSTBYPASS     (.dataout(timing_rstbypass), .datain(RSTBYPASS));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(8))  u_dl_IRQLATENCY    (.dataout(timing_irqlatency), .datain(`ARM_CM0IK_IRQLATENCY));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SWCLKTCK      (.dataout(timing_swclktck), .datain(SWCLKTCK));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_nTRST         (.dataout(timing_ntrst), .datain(nTRST));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(32)) u_dl_HRDATA        (.dataout(timing_hrdata), .datain(HRDATA));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_HREADY        (.dataout(timing_hready), .datain(HREADY));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_HRESP         (.dataout(timing_hresp), .datain(HRESP));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SWDITMS       (.dataout(timing_swditms), .datain(SWDITMS));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_TDI           (.dataout(timing_tdi), .datain(TDI));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_EDBGRQ        (.dataout(timing_edbgrq), .datain(EDBGRQ));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(26)) u_dl_STCALIB       (.dataout(timing_stcalib), .datain(`ARM_CM0IK_STCALIB));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_STCLKEN       (.dataout(timing_stclken), .datain(STCLKEN));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SLEEPHOLDREQn (.dataout(timing_sleepholdreqn), .datain(SLEEPHOLDREQn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_WICENREQ      (.dataout(timing_wicenreq), .datain(WICENREQ));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_CDBGPWRUPACK  (.dataout(timing_cdbgpwrupack), .datain(CDBGPWRUPACK));
`ifdef ARM_CM0IK_SRPG
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SYSRETAINn    (.dataout(timing_sysretainn), .datain(SYSRETAINn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SYSISOLATEn   (.dataout(timing_sysisolaten), .datain(SYSISOLATEn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_SYSPWRDOWN    (.dataout(timing_syspwrdown), .datain(SYSPWRDOWN));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_DBGISOLATEn   (.dataout(timing_dbgisolaten), .datain(DBGISOLATEn));
cm0ik_input_delay #(.DELAY(`ARM_CM0IK_DELAY), .BUSWIDTH(1))  u_dl_DBGPWRDOWN    (.dataout(timing_dbgpwrdown), .datain(DBGPWRDOWN));
`endif // ARM_CM0IK_SRPG

  //-----------------------------------------------------------------------------
  // CORTEX-M0 Integration Implementation Wrapper instantiation
  //-----------------------------------------------------------------------------

  CORTEXM0INTEGRATIONIMP
  u_int_imp
    (// Inputs
     .HCLK                              (HCLK),
     .DCLK                              (DCLK),
     .FCLK                              (FCLK),
     .SCLK                              (SCLK),
     .PORESETn                          (timing_poresetn),
     .DBGRESETn                         (timing_dbgresetn),
     .HRESETn                           (timing_hresetn),
     .DBGRESTART                        (timing_dbgrestart),
     .NMI                               (timing_nmi),
     .IRQ                               (timing_irq),
     .RXEV                              (timing_rxev),
     .ECOREVNUM                         (28'b0),
     .SE                                (timing_se),
     .RSTBYPASS                         (timing_rstbypass),
     .IRQLATENCY                        (timing_irqlatency[7:0]),
     .SWCLKTCK                          (timing_swclktck),
     .nTRST                             (timing_ntrst),
     .HRDATA                            (timing_hrdata[31:0]),
     .HREADY                            (timing_hready),
     .HRESP                             (timing_hresp),
     .SWDITMS                           (timing_swditms),
     .TDI                               (timing_tdi),
     .EDBGRQ                            (timing_edbgrq),
     .STCALIB                           (timing_stcalib[25:0]),
     .STCLKEN                           (timing_stclken),
     .SLEEPHOLDREQn                     (timing_sleepholdreqn),
     .WICENREQ                          (timing_wicenreq),
     .CDBGPWRUPACK                      (timing_cdbgpwrupack),
`ifdef ARM_CM0IK_SRPG
     .SYSRETAINn                        (timing_sysretainn),
     .SYSISOLATEn                       (timing_sysisolaten),
     .SYSPWRDOWN                        (timing_syspwrdown),
     .DBGISOLATEn                       (timing_dbgisolaten),
     .DBGPWRDOWN                        (timing_dbgpwrdown),
`endif // ARM_CM0IK_SRPG
     // Outputs
     .HMASTER                           (HMASTER),
     .DBGRESTARTED                      (DBGRESTARTED),
     .HALTED                            (HALTED),
     .TXEV                              (TXEV),
     .LOCKUP                            (LOCKUP),
     .CODENSEQ                          (CODENSEQ),
     .CODEHINTDE                        (CODEHINTDE[2:0]),
     .SPECHTRANS                        (SPECHTRANS),
     .HADDR                             (HADDR[31:0]),
     .HBURST                            (HBURST[2:0]),
     .HMASTLOCK                         (HMASTLOCK),
     .HPROT                             (HPROT[3:0]),
     .HSIZE                             (HSIZE[2:0]),
     .HTRANS                            (HTRANS[1:0]),
     .HWDATA                            (HWDATA[31:0]),
     .HWRITE                            (HWRITE),
     .SWDO                              (SWDO),
     .SWDOEN                            (SWDOEN),
     .TDO                               (TDO),
     .nTDOEN                            (nTDOEN),
     .SYSRESETREQ                       (SYSRESETREQ),
     .GATEHCLK                          (GATEHCLK),
     .SLEEPING                          (SLEEPING),
     .SLEEPDEEP                         (SLEEPDEEP),
     .WAKEUP                            (WAKEUP),
     .SLEEPHOLDACKn                     (SLEEPHOLDACKn),
     .WICENACK                          (WICENACK),
     .WICSENSE                          (WICSENSE),
`ifdef ARM_CM0IK_SRPG
     .SYSPWRDOWNACK                     (SYSPWRDOWNACK),
     .DBGPWRDOWNACK                     (DBGPWRDOWNACK),
`endif // ARM_CM0IK_SRPG
     .CDBGPWRUPREQ                      (CDBGPWRUPREQ)
     );

//-----------------------------------------------------------------------------
// Vector Capture Module 
//-----------------------------------------------------------------------------

`ifdef ARM_CM0IK_VECTOR_CAPTURE
    generate
        if (CAPTUREVEC)
        cm0ik_cortexm0integrationimp_capture u_capture
            (.PORESETn                          (timing_poresetn),
             .DBGRESETn                         (timing_dbgresetn),
             .HRESETn                           (timing_hresetn),
             .HCLK                              (HCLK),
             .DCLK                              (DCLK),
             .FCLK                              (FCLK),
             .SCLK                              (SCLK),
             .DBGRESTART                        (timing_dbgrestart),
             .NMI                               (timing_nmi),
             .IRQ                               (timing_irq),
             .RXEV                              (timing_rxev),
             .ECOREVNUM                         (28'b0),
             .SE                                (timing_se),
             .RSTBYPASS                         (timing_rstbypass),
             .IRQLATENCY                        (timing_irqlatency),
             .HMASTER                           (HMASTER),
             .DBGRESTARTED                      (DBGRESTARTED),
             .HALTED                            (HALTED),
             .TXEV                              (TXEV),
             .LOCKUP                            (LOCKUP),
             .CODENSEQ                          (CODENSEQ),
             .CODEHINTDE                        (CODEHINTDE),
             .SPECHTRANS                        (SPECHTRANS),
             .HADDR                             (HADDR),
             .HBURST                            (HBURST),
             .HMASTLOCK                         (HMASTLOCK),
             .HPROT                             (HPROT),
             .HSIZE                             (HSIZE),
             .HTRANS                            (HTRANS),
             .HWDATA                            (HWDATA),
             .HWRITE                            (HWRITE),
             .SWDO                              (SWDO),
             .SWDOEN                            (SWDOEN),
             .TDO                               (TDO),
             .nTDOEN                            (nTDOEN),
             .SYSRESETREQ                       (SYSRESETREQ),
             .GATEHCLK                          (GATEHCLK),
             .SLEEPING                          (SLEEPING),
             .SLEEPDEEP                         (SLEEPDEEP),
             .WAKEUP                            (WAKEUP),
             .SLEEPHOLDACKn                     (SLEEPHOLDACKn),
             .WICENACK                          (WICENACK),
             .WICSENSE                          (WICSENSE),
             .CDBGPWRUPREQ                      (CDBGPWRUPREQ),
`ifdef ARM_CM0IK_SRPG
`ifdef ARM_CM0IK_PWRDOWNACK
             .SYSPWRDOWNACK                     (SYSPWRDOWNACK),
             .DBGPWRDOWNACK                     (DBGPWRDOWNACK),
`else
             .SYSPWRDOWNACK                     (1'bx),
             .DBGPWRDOWNACK                     (1'bx),
`endif // ARM_CM0IK_PWRDOWNACK
`else
             .SYSPWRDOWNACK                     (1'bx),
             .DBGPWRDOWNACK                     (1'bx),
`endif // ARM_CM0IK_SRPG
             .SWCLKTCK                          (timing_swclktck),
             .nTRST                             (timing_ntrst),
             .HRDATA                            (timing_hrdata),
             .HREADY                            (timing_hready),
             .HRESP                             (timing_hresp),
             .SWDITMS                           (timing_swditms),
             .TDI                               (timing_tdi),
             .EDBGRQ                            (timing_edbgrq),
             .STCALIB                           (timing_stcalib),
             .STCLKEN                           (timing_stclken),
             .SLEEPHOLDREQn                     (timing_sleepholdreqn),
             .WICENREQ                          (timing_wicenreq),
`ifdef ARM_CM0IK_SRPG
             .SYSRETAINn                        (timing_sysretainn),
             .SYSISOLATEn                       (timing_sysisolaten),
             .SYSPWRDOWN                        (timing_syspwrdown),
             .DBGISOLATEn                       (timing_dbgisolaten),
             .DBGPWRDOWN                        (timing_dbgpwrdown),
`else
             .SYSRETAINn                        (1'b1),
             .SYSISOLATEn                       (1'b1),
             .SYSPWRDOWN                        (1'b0),
             .DBGISOLATEn                       (1'b1),
             .DBGPWRDOWN                        (1'b0),
`endif // ARM_CM0IK_SRPG
             .CDBGPWRUPACK                      (timing_cdbgpwrupack)
     );
    endgenerate
`endif // ARM_CM0IK_VECTOR_CAPTURE

endmodule // cm0ik_cortexm0integrationimp_timing

// ---------------------------------------------------------------
// EOF
// ---------------------------------------------------------------
