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
//      Checked In          : $Date: 2009-05-06 17:13:50 +0100 (Wed, 06 May 2009) $
//
//      Revision            : $Revision: 107717 $
//
//      Release Information : Cortex-M0-AT510-r0p0-01rel0
//-----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// CORTEX-M0 AMBA-3 AHB-LITE TO EMBEDDED SRAM INTERFACE
// ----------------------------------------------------------------------------

module cm0ik_ahb_sram_bridge
  #(parameter AWIDTH = 12)
   (// AHB INTERFACE --------------------------------------------
    input  wire        HCLK,
    input  wire        HRESETn,
    input  wire [31:0] HADDR,
    input  wire [ 2:0] HBURST,
    input  wire        HMASTLOCK,
    input  wire [ 3:0] HPROT,
    input  wire [ 2:0] HSIZE,
    input  wire [ 1:0] HTRANS,
    input  wire [31:0] HWDATA,
    input  wire        HWRITE,
    input  wire        HSEL,
    input  wire        HREADY,

    output wire [31:0] HRDATA,
    output wire        HREADYOUT,
    output wire        HRESP,

    // EMBEDDED SRAM INTERFACE ----------------------------------
    input  wire [31:0] RAMRD,           // Read Data Bus
    output wire [AWIDTH-3:0] RAMAD,     // Address Bus
    output wire [31:0] RAMWD,           // Write Data Bus
    output wire        RAMCS,           // Chip Select
    output wire [ 3:0] RAMWE            // Write Enable
    );

   // ----------------------------------------------------------
   // Internal state
   // ----------------------------------------------------------

   reg [AWIDTH-3:0] buf_ad;
   reg [ 3:0]  buf_we;
   wire [31:0] ram_wd;
   reg [31:0]  hwdata_r;

   reg         ram_wd_en;
   reg         buf_hit;
   reg         buf_we_en_r;

   // ----------------------------------------------------------
   // Read/write control logic
   // ----------------------------------------------------------

   wire        buf_active   = |buf_we;
   wire        ahb_access   = HTRANS[1] & HSEL & HREADY;
   wire        ahb_write    = ahb_access &  HWRITE;
   wire        ahb_read     = ahb_access & ~HWRITE;
   wire        ram_write    = HWRITE & buf_active;
   wire        ram_cs       = ahb_read | ram_write;
   wire [ 3:0] ram_we       = {4{HWRITE}} & buf_we[3:0];
   wire [AWIDTH-3:0] ram_ad = HWRITE ? buf_ad : HADDR[AWIDTH-1:2];

   // ----------------------------------------------------------
   // Byte lane decoder and next state logic
   // ----------------------------------------------------------

   wire       tx_byte    = ~HSIZE[1] & ~HSIZE[0];
   wire       tx_half    = ~HSIZE[1] &  HSIZE[0];
   wire       tx_word    =  HSIZE[1];

   wire       byte_at_00 = tx_byte & ~HADDR[1] & ~HADDR[0];
   wire       byte_at_01 = tx_byte & ~HADDR[1] &  HADDR[0];
   wire       byte_at_10 = tx_byte &  HADDR[1] & ~HADDR[0];
   wire       byte_at_11 = tx_byte &  HADDR[1] &  HADDR[0];

   wire       half_at_00 = tx_half & ~HADDR[1];
   wire       half_at_10 = tx_half &  HADDR[1];

   wire       word_at_00 = tx_word;

   wire       byte_sel_0 = word_at_00 | half_at_00 | byte_at_00;
   wire       byte_sel_1 = word_at_00 | half_at_00 | byte_at_01;
   wire       byte_sel_2 = word_at_00 | half_at_10 | byte_at_10;
   wire       byte_sel_3 = word_at_00 | half_at_10 | byte_at_11;

   wire [3:0] buf_we_nxt = { byte_sel_3 & ahb_write,
                             byte_sel_2 & ahb_write,
                             byte_sel_1 & ahb_write,
                             byte_sel_0 & ahb_write };

   wire       buf_we_en  = ahb_write | ram_write;

   // ----------------------------------------------------------
   // Buf_hit detection logic
   // ----------------------------------------------------------

   wire       buf_hit_nxt = (HADDR[AWIDTH-1:2] == buf_ad[AWIDTH-3:0]);

   // ----------------------------------------------------------
   // Read data merge
   // ----------------------------------------------------------

   wire [ 3:0] merge       = {4{buf_hit}} & buf_we;

   wire [31:0] ahb_rdata   =
              { merge[3] ? hwdata_r[31:24] : RAMRD[31:24],
                merge[2] ? hwdata_r[23:16] : RAMRD[23:16],
                merge[1] ? hwdata_r[15: 8] : RAMRD[15: 8],
                merge[0] ? hwdata_r[ 7: 0] : RAMRD[ 7: 0] };

   // ----------------------------------------------------------
   // Synchronous state update
   // ----------------------------------------------------------

   always @(posedge HCLK)
     if(ahb_read)
       buf_hit <= buf_hit_nxt;

   always @(posedge HCLK)
     ram_wd_en <= ahb_write;

   always @(posedge HCLK)
     if(ahb_write)
       buf_ad <= HADDR[AWIDTH-1:2];

   always @(posedge HCLK)
     if(ram_wd_en)
       hwdata_r <= HWDATA[31:0];

   always @(posedge HCLK)
     buf_we_en_r <= buf_we_en;

   assign ram_wd = (buf_we_en & ~buf_we_en_r) ? hwdata_r : HWDATA[31:0];

   always @(posedge HCLK or negedge HRESETn)
     if(~HRESETn)
       buf_we <= 4'b0000;
     else if(buf_we_en)
       buf_we <= buf_we_nxt;

   // ----------------------------------------------------------
   // Assign outputs
   // ----------------------------------------------------------

   assign HRDATA    = ahb_rdata;
   assign HREADYOUT = 1'b1;
   assign HRESP     = 1'b0;

   assign RAMWD     = ram_wd;
   assign RAMCS     = ram_cs;
   assign RAMWE     = ram_we;
   assign RAMAD     = ram_ad;


endmodule

// ----------------------------------------------------------------------------
// EOF
// ----------------------------------------------------------------------------
