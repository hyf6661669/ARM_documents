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
// CORTEX-M0 CORE, NVIC, DEBUG, AND CLOCK-GATE INTERCONNECT LEVEL
//-----------------------------------------------------------------------------

module cm0_top
  #(parameter CBAW     =  0,
    parameter ACG      =  1,
    parameter AHBSLV   =  1,
    parameter BE       =  0,
    parameter BKPT     =  4,
    parameter DBG      =  1,
    parameter NUMIRQ   = 32,
    parameter RAR      =  0,
    parameter SMUL     =  0,
    parameter SYST     =  1,
    parameter WIC      =  1,
    parameter WICLINES = 34,
    parameter WPT      =  2)

   (// CLOCK AND RESETS
    input  wire        sclk,                // system clock
    input  wire        hclk,                // gated AHB clock
    input  wire        dclk,                // gated debug clock
    input  wire        hreset_n,            // system reset
    input  wire        dbg_reset_n,         // debug reset
    input  wire        SE,                  // scan enable

    // AHB-LITE MASTER PORT
    output wire [31:0] haddr_o,             // AHB address
    output wire [ 2:0] hburst_o,            // AHB burst (always 0)
    output wire        hmastlock_o,         // AHB locked transfer (always 0)
    output wire [ 3:0] hprot_o,             // AHB properties
    output wire [ 2:0] hsize_o,             // AHB size
    output wire [ 1:0] htrans_o,            // AHB transfer
    output wire [31:0] hwdata_o,            // AHB write data
    output wire        hwrite_o,            // AHB write not read
    input  wire [31:0] hrdata_i,            // AHB read data
    input  wire        hready_i,            // AHB ready
    input  wire        hresp_i,             // AHB error response

    output wire        hmaster_o,           // master signal (0=core, 1=debug)
    output wire        spec_htrans_o,       // speculative AHB HTRANS[1]

    // AHB-LITE SUB-SET SLAVE PORT
    input  wire [31:0] slv_addr_i,          // debug slave address
    input  wire [ 1:0] slv_size_i,          // debug slave size
    input  wire [ 1:0] slv_trans_i,         // debug slave trans
    input  wire [31:0] slv_wdata_i,         // debug slave write data
    input  wire        slv_write_i,         // debug slave write not read
    output wire [31:0] slv_rdata_o,         // debug slave read data
    output wire        slv_ready_o,         // debug slave port ready
    output wire        slv_resp_o,          // debug slave port error response

    // DEBUG
    input  wire        dbg_restart_i,       // cross-trigger unhalt request
    output wire        dbg_restarted_o,     // cross-trigger unhalt acknowledge
    input  wire        dbg_ext_req_i,       // external halt request
    output wire        halted_o,            // core is halted

    // MISC
    input  wire        nmi_i,               // non-maskable interrupt
    input  wire [31:0] irq_i,               // interrupt request lines
    output wire        txev_o,              // event output (SEV executed)
    input  wire        rxev_i,              // event input
    output wire        lockup_o,            // core is in LOCKUP
    output wire        sys_reset_req_o,     // system reset request
    input  wire [25:0] st_calib_i,          // SysTick calibration value
    input  wire        st_clk_en_i,         // SysTick SCLK count enable
    input  wire [ 7:0] irq_latency_i,       // interrupt request latency
    input  wire [19:0] eco_rev_num_i,       // change-order input fields

    // POWER MANAGEMENT
    output wire        sleeping_o,          // core and NVIC sleeping
    output wire        sleep_deep_o,        // sleep is deep
    input  wire        sleep_hold_req_n_i,  // sleep hold request
    output wire        sleep_hold_ack_n_o,  // sleep hold acknowledge
    input wire         wic_ds_req_n_i,      // WIC mode request
    output wire        wic_ds_ack_n_o,      // WIC mode acknowledge
    output wire [31:0] wic_mask_isr_o,      // WIC IRQ sensitivity
    output wire        wic_mask_nmi_o,      // WIC NMI sensitivity
    output wire        wic_mask_rxev_o,     // WIC RXEV sensitivity
    output wire        wic_load_o,          // NVIC to WIC upload
    output wire        wic_clear_o,         // NVIC to WIC clear request

    // CODE SEQUENTIALITY INFO
    output wire        code_nseq_o,         // fetch is non-sequential
    output wire [ 2:0] code_hint_de_o);     // fetching hints

   // ------------------------------------------------------------
   // Local wires
   // ------------------------------------------------------------

   // all core-system to debug-system inter-block communication
   // at this level is bundled into the following buses; this
   // provides easier re-partitioning for power domain
   // implementation where increased hierarchical separation
   // may be required

   wire [113:0] cm0_sys_to_dbg; // system to debug domain channel
   wire [ 77:0] cm0_dbg_to_sys; // debug to system domain channel

   // to allow clock gate cells to be instantiated in an always
   // powered domain, the enable terms and gated clocks also
   // get implemented here; all gated clocks at this level are
   // derived from the HCLK primary input

   wire         rclk0; // core register file r0-r4 gated clock
   wire         rclk1; // core register file r5-r14 gated clock
   wire         pclk;  // PPB space (NVIC) register clock

   wire         ctl_rclk0_en; // rclk0 enable term
   wire         ctl_rclk1_en; // rclk1 enable term
   wire         msl_pclk_en;  // pclk enable term

   // ------------------------------------------------------------
   // Core system instantiation
   // ------------------------------------------------------------

   cm0_top_sys
     #(.CBAW(CBAW), .AHBSLV(AHBSLV), .BE(BE), .BKPT(BKPT),
       .DBG(DBG), .NUMIRQ(NUMIRQ), .RAR(RAR), .SMUL(SMUL),
       .SYST(SYST), .WIC(WIC), .WICLINES(WICLINES), .WPT(WPT))
       u_sys
         (// external public interface

          .sclk                   (sclk),                   // SCLK
          .hclk                   (hclk),                   // HCLK
          .hreset_n               (hreset_n),               // HRESETn

          .code_nseq_o            (code_nseq_o),            // CODENSEQ
          .code_hint_de_o         (code_hint_de_o[2:0]),    // CODEHINTDE
          .haddr_o                (haddr_o[31:0]),          // HADDR
          .hburst_o               (hburst_o[2:0]),          // HBURST
          .hmastlock_o            (hmastlock_o),            // HMASTLOCK
          .hmaster_o              (hmaster_o),              // HMASTER
          .hprot_o                (hprot_o[3:0]),           // HPROT
          .hsize_o                (hsize_o[2:0]),           // HSIZE
          .htrans_o               (htrans_o[1:0]),          // HTRANS
          .hwdata_o               (hwdata_o[31:0]),         // HWDATA
          .hwrite_o               (hwrite_o),               // HWRITE
          .lockup_o               (lockup_o),               // LOCKUP
          .sleep_hold_ack_n_o     (sleep_hold_ack_n_o),     // SLEEPHOLDACKn
          .sys_reset_req_o        (sys_reset_req_o),        // SYSRESETREQ
          .txev_o                 (txev_o),                 // TXEV
          .wic_ds_ack_n_o         (wic_ds_ack_n_o),         // WICDSACKn
          .wic_clear_o            (wic_clear_o),            // WICCLEAR
          .wic_load_o             (wic_load_o),             // WICLOAD
          .wic_mask_isr_o         (wic_mask_isr_o[31:0]),   // WICMASKISR
          .wic_mask_nmi_o         (wic_mask_nmi_o),         // WICMASKNMI
          .wic_mask_rxev_o        (wic_mask_rxev_o),        // WICMASKRXEV

          .eco_rev_num_3_0_i      (eco_rev_num_i[3:0]),     // ECOREVNUM[3:0]
          .hrdata_i               (hrdata_i[31:0]),         // HRDATA
          .hready_i               (hready_i),               // HREADY
          .hresp_i                (hresp_i),                // HRESP
          .irq_i                  (irq_i[31:0]),            // IRQ
          .irq_latency_i          (irq_latency_i[7:0]),     // IRQLATENCY
          .nmi_i                  (nmi_i),                  // NMI
          .rxev_i                 (rxev_i),                 // RXEV
          .sleeping_o             (sleeping_o),             // SLEEPING
          .sleep_deep_o           (sleep_deep_o),           // SLEEPDEEP
          .sleep_hold_req_n_i     (sleep_hold_req_n_i),     // SLEEPHOLDREQn
          .spec_htrans_o          (spec_htrans_o),          // SPECHTRANS
          .st_calib_i             (st_calib_i[25:0]),       // STCALIB
          .st_clk_en_i            (st_clk_en_i),            // STCLKEN
          .wic_ds_req_n_i         (wic_ds_req_n_i),         // WICDSREQn

          // core-sub-system clock gate interfaces

          .rclk0                  (rclk0),        // r0-r4 clock input
          .rclk1                  (rclk1),        // r5-r14 clock input
          .pclk                   (pclk),         // PPB clock input

          .ctl_rclk0_en_o         (ctl_rclk0_en), // r0-r4 clock enable
          .ctl_rclk1_en_o         (ctl_rclk1_en), // r5-r14 clock enable
          .msl_pclk_en_o          (msl_pclk_en),  // PPB clock enable

          // core-sub-system to debug-sub-system interface

          .cm0_sys_to_dbg_o       (cm0_sys_to_dbg[113:0]),  // to debug
          .cm0_dbg_to_sys_i       (cm0_dbg_to_sys[77:0]));  // from debug

   // ------------------------------------------------------------
   // Debug system instantation
   // ------------------------------------------------------------

   cm0_top_dbg
     #(.CBAW(CBAW), .AHBSLV(AHBSLV), .BKPT(BKPT), .DBG(DBG),
       .RAR(RAR), .WPT(WPT))
       u_dbg
         (// external public interface

          .dclk                   (dclk),                   // DCLK
          .dbg_reset_n            (dbg_reset_n),            // DBGRESETn

          .dbg_restarted_o        (dbg_restarted_o),        // DBGRESTARTED
          .halted_o               (halted_o),               // HALTED
          .slv_rdata_o            (slv_rdata_o[31:0]),      // SLVRDATA
          .slv_ready_o            (slv_ready_o),            // SLVREADY
          .slv_resp_o             (slv_resp_o),             // SLVRESP

          .dbg_restart_i          (dbg_restart_i),          // DBGRESTART
          .dbg_ext_req_i          (dbg_ext_req_i),          // EDBGRQ
          .eco_rev_num_19_4_i     (eco_rev_num_i[19:4]),    // ECOREVNUM[19:4]
          .slv_addr_i             (slv_addr_i[31:0]),       // SLVADDR
          .slv_size_i             (slv_size_i[1:0]),        // SLVSIZE
          .slv_trans_i            (slv_trans_i[1:0]),       // SLVTRANS
          .slv_wdata_i            (slv_wdata_i[31:0]),      // SLVWDATA
          .slv_write_i            (slv_write_i),            // SLVWRITE

          // debug-sub-system to core-sub-system interface

          .cm0_dbg_to_sys_o       (cm0_dbg_to_sys[77:0]),   // to core
          .cm0_sys_to_dbg_i       (cm0_sys_to_dbg[113:0])); // from core

   // ------------------------------------------------------------
   // Core system clock gate level instantiation
   // ------------------------------------------------------------

   cm0_top_clk
     #(.CBAW(CBAW), .ACG(ACG))
       u_clk
         (.hclk                   (hclk),         // HCLK input

          .rclk0                  (rclk0),        // r0-r4 clock output
          .rclk1                  (rclk1),        // r5-r14 clock output
          .pclk                   (pclk),         // PPB space clock output

          .SE                     (SE),           // scan enable

          .ctl_rclk0_en_i         (ctl_rclk0_en), // r0-r4 clock enable
          .ctl_rclk1_en_i         (ctl_rclk1_en), // r5-r14 clock enable
          .msl_pclk_en_i          (msl_pclk_en)); // PPB space clock enable


   // ------------------------------------------------------------

endmodule // cm0_top

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
