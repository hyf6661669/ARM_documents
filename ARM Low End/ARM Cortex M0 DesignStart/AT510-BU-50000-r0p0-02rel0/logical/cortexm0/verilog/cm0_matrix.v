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
//      Checked In          : $Date: 2009-03-11 17:30:08 +0000 (Wed, 11 Mar 2009) $
//
//      Revision            : $Revision: 103669 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 MATRIX ARBITRATION BETWEEN CORE AND DEBUG SLAVE PORT
//-----------------------------------------------------------------------------

module cm0_matrix
  #(parameter CBAW   = 0,
    parameter AHBSLV = 1,
    parameter DBG    = 1,
    parameter SYST   = 1)

   (input  wire        hclk,              // gated AHB clock
    input  wire        hreset_n,          // system reset

    output wire        spec_htrans_o,     // speculative HTRANS[1] output
    output wire [31:0] haddr_o,           // AHB address
    output wire [ 2:0] hburst_o,          // AHB burst type (always 0)
    output wire        hmastlock_o,       // AHB locked transfer (always 0)
    output wire [ 3:0] hprot_o,           // AHB transaction protection
    output wire [ 2:0] hsize_o,           // AHB transaction size
    output wire [ 1:0] htrans_o,          // AHB transaction
    output wire [31:0] hwdata_o,          // AHB write-data
    output wire        hwrite_o,          // AHB write not read
    output wire        hmaster_o,         // bus master (0=core, 1=debug)

    output wire        msl_dbg_aux_en_o,  // load core AUX (DCRDR write)
    output wire        msl_dbg_op_en_o,   // load core PFU (DCRSR write)
    output wire        msl_pclk_en_o,     // PPB space clock enable
    output wire [22:0] msl_nvic_sels_o,   // register selects for NVIC

    output wire [31:0] mtx_ppb_wdata_o,   // write-data to NVIC PPB space
    output wire        mtx_cpu_resp_o,    // AHB error response to core
    output wire [31:0] mtx_ppb_hrdata_o,  // PPB space read-data for core
    output wire [31:0] mtx_dif_rdata_o,   // all read-data for debugger
    output wire        mtx_dif_resp_o,    // AHB error response to debug I/F
    output wire        mtx_dif_slot_o,    // address slot available to debug
    output wire        mtx_ppb_write_o,   // PPB data-phase access is a write
    output wire        mtx_ppb_active_o,  // PPB data-phase

    input  wire [31:0] hrdata_i,          // AHB read-data
    input  wire        hready_i,          // AHB ready / core advance
    input  wire        hresp_i,           // AHB error response
    input  wire [ 3:0] eco_rev_num_3_0_i, // change-order revision bits

    input  wire        alu_spec_htrans_i, // core speculative trans
    input  wire        alu_ppb_trans_i,   // core access to PPB
    input  wire        alu_ext_trans_i,   // core access to AHB
    input  wire [31:0] alu_haddr_i,       // core transaction address
    input  wire [ 1:0] alu_hsize_i,       // core transaction size
    input  wire        ctl_hprot_i,       // core data not fetch
    input  wire        ctl_hwrite_i,      // core write not read
    input  wire [31:0] dif_addr_i,        // debugger transaction address
    input  wire [ 1:0] dif_size_i,        // debugger transaction size
    input  wire        dif_trans_i,       // debugger transaction
    input  wire [31:0] dif_wdata_i,       // debugger write-data
    input  wire        dif_write_i,       // debugger write not read
    input  wire        dif_dphase_i,      // debugger data-phase active
    input  wire        dbg_halt_req_i,    // debugger halt request
    input  wire [ 1:0] dsl_cid_sels_i,    // debug selects for CPUID and ACTLR
    input  wire        dsl_ppb_active_i,  // debugger access to PPB (mask AHB)
    input  wire [31:0] gpr_hwdata_i,      // core write-data
    input  wire [31:0] gpr_dcrdr_data_i,  // core DCRDR read-data
    input  wire [31:0] nvm_hrdata_i);     // NVIC PPB space read-data

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire        cfg_ahbslv = (CBAW == 0) ? (AHBSLV != 0) : 1'bZ;
   wire        cfg_dbg    = (CBAW == 0) ? (DBG != 0)    : 1'bZ;

   wire        dif_en     = cfg_ahbslv | cfg_dbg;

   // ------------------------------------------------------------
   // Local wire declarations
   // ------------------------------------------------------------

   wire [31:0] cid_rdata;      // ID registers from matrix_dec
   wire        msl_ppb_active; // system domain PPB data-phase
   wire        ppb_write;      // system domain PPB data-phase write
   wire        sel_dcrdr;      // expose DCRDR value

   // ------------------------------------------------------------
   // Mask inputs based upon configuration
   // ------------------------------------------------------------

   // prune debug-interface if not present

   wire        dif_trans      = dif_en ? dif_trans_i      :  1'b0;
   wire        dif_dphase     = dif_en ? dif_dphase_i     :  1'b0;
   wire [31:0] dif_addr       = dif_en ? dif_addr_i       : 32'b0;
   wire [ 1:0] dif_size       = dif_en ? dif_size_i       :  2'b0;
   wire        dif_write      = dif_en ? dif_write_i      :  1'b0;
   wire [31:0] dif_wdata      = dif_en ? dif_wdata_i      : 32'b0;
   wire        dsl_ppb_active = dif_en ? dsl_ppb_active_i :  1'b0;

   // only implement DCRDR if debug is present

   wire [31:0] dcrdr_data = cfg_dbg ? gpr_dcrdr_data_i : 32'b0;

   // ------------------------------------------------------------
   // Combine debug and system domain terms
   // ------------------------------------------------------------

   wire        ppb_active = dsl_ppb_active | msl_ppb_active;

   // ------------------------------------------------------------
   // Constrain slave port to non-speculative CPU idle cycles
   // ------------------------------------------------------------

   // the slave port only has its transaction presented on the
   // AHB port whenever the core is not performing a transaction;
   // to aid timing, this is simplified to whenever the core
   // might be doing a transaction

   wire        dif_slot = ~alu_spec_htrans_i;

   // one complexity is that whilst it is permissible for a
   // transaction to be retracted in light of an AHB HRESP error
   // response, it is not permissible to start a new one;
   // in order to prevent this scenario occuring as a result of
   // the slave port performing a transaction in the core's
   // retracted cycle, the HREADY cycle following the first
   // error cycle is enforced as not being usable by the slave
   // port also - this is implemented within the debug blocks

   wire        dif_aphase = dif_trans & dif_slot;

   // slave port transactions may route either external or to
   // the PPB for debug/NVIC accesses; the PPB space occupies
   // addresses 0xE0000000 to 0xFFFFFFFF

   wire        dif_ppb_sel   = dif_addr[31:28] == 4'hE;
   wire        dif_ext_sel   = ~dif_ppb_sel;
   wire        dif_ext_trans = dif_aphase & dif_ext_sel;
   wire        dif_ppb_trans = dif_aphase & dif_ppb_sel;

   // ------------------------------------------------------------
   // Protect CPU from slave port hresp_i errors
   // ------------------------------------------------------------

   wire        cpu_resp = hresp_i & ~dif_dphase;

   // ------------------------------------------------------------
   // Generate final primary AHB signals
   // ------------------------------------------------------------

   // SPECHTRANS provides a means of allowing read invariant
   // memories to speculatively prepare data without waiting for
   // all of the address checks and port decoding to have been
   // performed, i.e. SPECHTRANS may get set without a
   // corresponding HTRANS, but this is the rare-case

   wire        spec_htrans = dif_trans | alu_spec_htrans_i;

   // core transactions to the PPB space are thrown away to
   // prevent NVIC/SCS/debug state corruption, this is faster
   // than having the core AGU factor XN into the ppb_trans
   // traffic; the incoming core HTRANS already has XN factored
   // in, and can therefore simply be OR'd with any slave-trans

   wire        ppb_trans   = (alu_ppb_trans_i & ctl_hprot_i) | dif_ppb_trans;
   wire        ahb_trans   = alu_ext_trans_i | dif_ext_trans;

   // slave-port transactions are always marked as DATA, core
   // transactions can be either DATA or INSTRUCTION

   wire        ahb_prot    = ctl_hprot_i | dif_aphase;

   // select between slave-port values and core values

   wire [ 1:0] ahb_size    = dif_aphase ? dif_size  : alu_hsize_i;
   wire [31:0] ahb_wdata   = dif_dphase ? dif_wdata : gpr_hwdata_i;
   wire        ahb_write   = dif_aphase ? dif_write : ctl_hwrite_i;
   wire [31:0] ahb_addr    = dif_aphase ? dif_addr  : alu_haddr_i;

   // ------------------------------------------------------------
   // Construct slave port read data
   // ------------------------------------------------------------

   // the system control space (SCS) consist of the non-debug
   // parts of the PPB, and is constructed from the ID values and
   // NVIC read data; the core takes PPB data independently from
   // AHB read data due to the requirement to optinally perform
   // endian swizzling on AHB, which is not required on PPB due
   // to it architecturally always being little-endian

   wire [31:0] scs_rdata = nvm_hrdata_i | cid_rdata;

   // the SCS values are merged with the debug read-data and
   // AHB data ready for the slave port; the values of the
   // SCS and debug read-data are guaranteed to be zero if not
   // the active data-path

   wire [31:0] dif_rdata = ( {32{~ppb_active}} & hrdata_i |
                             {32{sel_dcrdr}} & dcrdr_data |
                             scs_rdata );

   // ------------------------------------------------------------
   // Generate AHB cacheable and bufferable sideband
   // ------------------------------------------------------------

   // the ARMv6-M defined memory map is mapped to HPROT as
   // follows:

   //   PREFIX     ARMv6-M     CACHEABLE   BUFFERABLE
   //  -------- ------------- ----------- ------------
   //  0/1 000x  Normal-WT       yes          no
   //  2/3 001x  Normal-WBWA     yes          yes
   //  4/5 010x  Device          no           yes
   //  6/7 011x  Normal-WBWA     yes          yes
   //  8/9 100x  Normal-WT       yes          no
   //  A/B 101x  Device          no           yes
   //  C/D 110x  Device          no           yes
   //  E   1110  SO (PPB)        n/a          n/a
   //  F   1111  Device          no           yes

   wire        ahb_c = ( ~ahb_addr[31] &  ahb_addr[29] |
                         ~ahb_addr[30] & ~ahb_addr[29] );

   wire        ahb_b = ahb_addr[30] | ahb_addr[29];

   // ------------------------------------------------------------
   // PPB hwdata_o masking for power conservation
   // ------------------------------------------------------------

   // writes to the PPB space are expected to be very infrequent
   // compared with writes to the AHB bus; to prevent unnecessary
   // toggling within the PPB domain, the write-data is masked
   // unless there is an active write-transaction to the PPB

   wire [31:0] ppb_wdata = ( {32{ppb_active & ppb_write}} &
                             ahb_wdata[31:0] );

   // ------------------------------------------------------------
   // Instantiate system-control-space decoder
   // ------------------------------------------------------------

   // the decoder module generates one-hot selects for each of
   // the addressable registers in the PPB space; in addition,
   // it also generates the core-ID (CID) read-data for all
   // non-configurable value registers in the design

   cm0_matrix_sel
     #(.CBAW(CBAW), .AHBSLV(AHBSLV), .DBG(DBG),. SYST(SYST))
       u_sel (.hclk               (hclk),
              .hreset_n           (hreset_n),

              .msl_pclk_en_o      (msl_pclk_en_o),

              .msl_ppb_active_o   (msl_ppb_active),
              .msl_ppb_write_o    (ppb_write),
              .msl_nvic_sels_o    (msl_nvic_sels_o[22:0]),
              .msl_sel_dcrdr_o    (sel_dcrdr),
              .msl_dbg_aux_en_o   (msl_dbg_aux_en_o),
              .msl_dbg_op_en_o    (msl_dbg_op_en_o),
              .msl_cid_rdata_o    (cid_rdata[31:0]),

              .hready_i           (hready_i),
              .dsl_cid_sels_i     (dsl_cid_sels_i[1:0]),
              .ppb_trans_i        (ppb_trans),
              .ahb_size_1_i       (ahb_size[1]),
              .dbg_halt_req_i     (dbg_halt_req_i),
              .dif_aphase_i       (dif_aphase),
              .ahb_addr_i         (ahb_addr[31:0]),
              .ahb_write_i        (ahb_write),
              .eco_rev_num_3_0_i  (eco_rev_num_3_0_i[3:0]));

   // ------------------------------------------------------------
   // Output assignments
   // ------------------------------------------------------------

   // HMASTER is used to identify whether the source of an AHB
   // transaction was the core (1'b0) or the slave-port (1'b1)

   assign      spec_htrans_o    = spec_htrans;
   assign      hmaster_o        = dif_en ? dif_slot  : 1'b0;

   assign      mtx_ppb_active_o = msl_ppb_active;
   assign      mtx_ppb_write_o  = ppb_write;
   assign      mtx_ppb_wdata_o  = ppb_wdata;

   assign      mtx_dif_slot_o   = dif_en ? dif_slot  :  1'b0;
   assign      mtx_dif_rdata_o  = dif_en ? dif_rdata : 32'b0;
   assign      mtx_dif_resp_o   = dif_en ? hresp_i   :  1'b0;

   assign      mtx_cpu_resp_o    = cpu_resp;
   assign      mtx_ppb_hrdata_o  = scs_rdata;

   // the following AHB-Lite transactions are generated:

   //                          ++-- HTRANS[1:0]
   //                          || ++++-- HPROT[3:0]
   //                          || |||| +-- HMASTER
   //                          || |||| | +++-- HSIZE[2:0]
   //                          || |||| | |||
   //  bus idle                00 CB1X X 0XX
   //  core 32-bit fetch       10 CB10 0 010
   //  core word load/store    10 CB11 0 010
   //  core half load/store    10 CB11 0 001
   //  core byte load/store    10 CB11 0 000
   //  debug word read/write   10 CB11 1 010
   //  debug half read/write   10 CB11 1 001
   //  debug byte read/write   10 CB11 1 000

   assign      haddr_o          = ahb_addr;
   assign      hburst_o         = 3'b000;
   assign      hmastlock_o      = 1'b0;
   assign      hprot_o          = { ahb_c, ahb_b, 1'b1, ahb_prot };
   assign      hsize_o          = { 1'b0, ahb_size };
   assign      htrans_o         = { ahb_trans, 1'b0 };
   assign      hwdata_o         = ahb_wdata;
   assign      hwrite_o         = ahb_write;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,32,`OVL_ASSERT,"CBAW config unknown")
   u_asrt_cfg_cbaw
     ( .clk(hclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(CBAW) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"AHBSLV config unknown")
   u_asrt_cfg_ahbslv
     ( .clk(hclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_ahbslv) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"DBG config unknown")
   u_asrt_cfg_dbg
     ( .clk(hclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_dbg) );

`endif

endmodule // cm0_matrix

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
