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
//      Checked In          : $Date: 2009-03-16 19:48:51 +0000 (Mon, 16 Mar 2009) $
//
//      Revision            : $Revision: 104227 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

// Purpose : Cortex-M0 Wake-Up Interrupt Controller
// -----------------------------------------------------------------------------

module cortexm0_wic
  #(parameter WIC       = 0,   // WIC present if 1.
    parameter WICLINES  = 8)   // Number of WIC lines
   (input         FCLK,
    input         nRESET,
    input         WICLOAD,     // WIC mask load from core
    input         WICCLEAR,    // WIC mask clear from core
    input  [33:0] WICINT,      // Interrupt request from system
    input  [33:0] WICMASK,     // Mask from core
    input         WICENREQ,    // WIC enable request from PMU
    input         WICDSACKn,   // WIC enable ack from core
    output        WAKEUP,      // Wake up request to PMU
    output [33:0] WICSENSE,    //
    output [33:0] WICPEND,     // Pended interrupt request
    output        WICDSREQn,   // WIC enable request to core
    output        WICENACK);   // WIC enable ack to PMU

  // --------------------------------------------------------------------------
  // Regs
  // --------------------------------------------------------------------------
  reg  [33:0] mask;            // interrupt mask register
  reg  [33:0] pend;            // interrupt pend register
  reg         wic_actv;
  reg         wic_ds_req_r;
  reg         wic_en_ack_r;

  // --------------------------------------------------------------------------
  // Configurability
  // --------------------------------------------------------------------------

  wire        cfg_wic  = (WIC != 0) ? 1'b1 : 1'b0;

  wire [33:0] cfg_wiclines = { (WICLINES > 33), (WICLINES > 32),
                               (WICLINES > 31), (WICLINES > 30),
                               (WICLINES > 29), (WICLINES > 28),
                               (WICLINES > 27), (WICLINES > 26),
                               (WICLINES > 25), (WICLINES > 24),
                               (WICLINES > 23), (WICLINES > 22),
                               (WICLINES > 21), (WICLINES > 20),
                               (WICLINES > 19), (WICLINES > 18),
                               (WICLINES > 17), (WICLINES > 16),
                               (WICLINES > 15), (WICLINES > 14),
                               (WICLINES > 13), (WICLINES > 12),
                               (WICLINES > 11), (WICLINES > 10),
                               (WICLINES >  9), (WICLINES >  8),
                               (WICLINES >  7), (WICLINES >  6),
                               (WICLINES >  5), (WICLINES >  4),
                               (WICLINES >  3), (WICLINES >  2),
                               (WICLINES >  1), (WICLINES >  0) };

  //----------------------------------------------------------------------------
  // WIC enable handshake
  //----------------------------------------------------------------------------
  // Request WIC mode sleep if PMU request is asserted
  wire                wic_ds_req_set = WICENREQ & WICDSREQn;
  wire                wic_ds_req_clr = ~WICDSREQn & ~WICENREQ;

  always @(posedge FCLK or negedge nRESET)
    if(~nRESET)
      wic_ds_req_r <= 1'b0;
    else if (cfg_wic & (wic_ds_req_set | wic_ds_req_clr))
      wic_ds_req_r <= wic_ds_req_set;

  // Acknowledge PMU request if core accepts
  wire                wic_en_ack_set = ~WICDSACKn & ~WICENACK;
  wire                wic_en_ack_clr = WICENACK & WICDSACKn;

  always @(posedge FCLK or negedge nRESET)
    if(~nRESET)
      wic_en_ack_r <= 1'b0;
    else if (cfg_wic & (wic_en_ack_set | wic_en_ack_clr))
      wic_en_ack_r <= wic_en_ack_set;

  //----------------------------------------------------------------------------
  // LOAD/CLEAR WIC sensitivity
  //----------------------------------------------------------------------------

  // Set mask value depending on operation
  wire [33:0] nxt_mask = {34{WICLOAD}} & WICMASK;

  wire        mask_en  = cfg_wic & (WICCLEAR | WICLOAD);

  integer i0;

  always @(posedge FCLK or negedge nRESET)
    if (~nRESET)
      mask[33:0] <= {34{1'b0}};
    else
      for (i0=0;i0<34;i0=i0+1)
        if (cfg_wiclines[i0] ? mask_en : 1'b0)
          mask[i0] <= nxt_mask[i0];

  wire [33:0] wic_sense = mask;

  //----------------------------------------------------------------------------
  // Pend interrupts
  //----------------------------------------------------------------------------

  wire [33:0] nxt_pend  = {34{~WICCLEAR}} & (WICINT | pend);
  
  wire        pend_wr_en = cfg_wic & (WICLOAD | wic_actv) & (WICCLEAR | (|WICINT));

  integer i1;

  always @(posedge FCLK or negedge nRESET)
    if (~nRESET)
      pend[33:0] <= {34{1'b0}};
    else
      for (i1=0;i1<34;i1=i1+1)
        if (cfg_wiclines[i1] ? pend_wr_en : 1'b0)
          pend[i1] <= nxt_pend[i1];

  wire [33:0] wic_pend = pend;

  //----------------------------------------------------------------------------
  // Active status register
  //----------------------------------------------------------------------------
  always @(posedge FCLK or negedge nRESET)
    if (~nRESET)
      wic_actv <= 1'b0;
    else if (cfg_wic & (WICLOAD | WICCLEAR))
      wic_actv <= WICLOAD;

  //----------------------------------------------------------------------------
  // Request wake-up
  //----------------------------------------------------------------------------
  // Wake up if something has been pended that is observed
  wire        wake_up = (|(pend & mask));

  //----------------------------------------------------------------------------
  // Output assignments
  //----------------------------------------------------------------------------
  assign      WAKEUP    = wake_up & cfg_wic;
  assign      WICSENSE  = wic_sense & cfg_wiclines & {34{cfg_wic}};
  assign      WICPEND   = wic_pend & cfg_wiclines & {34{cfg_wic}};
  assign      WICDSREQn = (cfg_wic) ? ~wic_ds_req_r : 1'b1;
  assign      WICENACK  = (cfg_wic) ? wic_en_ack_r  : 1'b0;

endmodule
