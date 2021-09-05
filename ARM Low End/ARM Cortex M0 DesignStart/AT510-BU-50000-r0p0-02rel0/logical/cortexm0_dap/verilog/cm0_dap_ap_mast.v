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
//      Checked In          : $Date: 2009-03-18 09:59:11 +0000 (Wed, 18 Mar 2009) $
//
//      Revision            : $Revision: 104399 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_ap_mast (
    //Clock & Reset
    dclk, apreset_n, deviceen_i,
    //Internal DAP Signals
    dp_data_ap_i, ap_out_en_o, dp_regaddr_ap_i, dp_rnw_ap_i,
    ap_data_ap_o, ap_wr_en_o,
    ap_err_ap_o,
    ap_ack_ap_i, ap_ack_load_o, dp_req_ap_i,
    //External SLV Signals
    slvrdata_i, slvaddr_o,
    slvtrans_o, slvwrite_o, slvready_i, slvresp_i, slvsize_o,
    ap_base_reg_i,
    // Configuration Signals
    ecorevnum_i
  );

// ----------------------------------------------------------------------------
// `define's
// ----------------------------------------------------------------------------
  `include "cm0_dap_ap_mast_defs.v"

// ----------------------------------------------------------------------------
// Configurablility
// ----------------------------------------------------------------------------
  parameter PRESENT = 1;
  parameter RAR     = 0;

  wire        cfg_rar    = (RAR != 0);

// ----------------------------------------------------------------------------
// Port Definitions
// ----------------------------------------------------------------------------
  input         dclk;               //SLV Clock
  input         apreset_n;          //Power-On Reset
  input         deviceen_i;         //Debug Enabled (from core)

  input  [31:0] dp_data_ap_i;       //Internal DAP Data Input
  input   [3:0] dp_regaddr_ap_i;    //Encoded AP Register Address for Current Tx
  input         dp_rnw_ap_i;        //ReadNotWrite for Current Transaction
  input         dp_req_ap_i;        //Control Synchronisation Input from DP
  output        ap_err_ap_o;        //Error Response from Current Transaction
  input         ap_ack_ap_i;        //Control Synchronisation Output to DP
  output        ap_ack_load_o;      //Load Enable term for ap_ack_ap register
  output        ap_out_en_o;        //Enables Transitions on dp_data_ap
  output [31:0] ap_data_ap_o;       //Internal DAP Data Output
  output        ap_wr_en_o;         //Enable for ap_data_ap

  input  [31:0] slvrdata_i;         //Cortex-M0 Core Modified AHB Lite Signals
  input         slvready_i;
  input         slvresp_i;
  output [31:0] slvaddr_o;
  output  [1:0] slvtrans_o;
  output        slvwrite_o;
  output  [1:0] slvsize_o;

  input  [31:0] ap_base_reg_i;      // Exported pinout value for AP base reg
  input   [3:0] ecorevnum_i;        // Exported pinout revision field of APIDR

// ----------------------------------------------------------------------------
// Signal Declarations
// ----------------------------------------------------------------------------

  // Registers which do not usually have a reset term will use this reset
  // signal, connected to dpreset_n or tied high depending on whether Reset
  // All Registers (RAR) is required.
  wire          rar_reset_n = cfg_rar ? apreset_n : 1'b1;

  //Masked Top Level Signals
  wire          deviceen;

  wire   [31:0] dp_data_ap;
  wire          ap_out_en;
  reg    [31:0] ap_data_ap;
  wire          ap_wr_en;
  wire    [3:0] dp_regaddr_ap;
  wire    [3:0] dp_regaddr_ap_masked;
  wire          dp_rnw_ap;
  wire          ap_err_ap;
  wire          ap_ack_ap;        //ap_ack_ap comes from an instantiated CDC Reg
  wire          dp_req_ap;

  wire   [31:0] slvrdata;
  wire   [31:0] slvaddr;
  wire    [1:0] slvaddr_3_2;      //Bits[3:2] of SLVADDR (altered on BDx access)
  wire    [1:0] slvaddr_1_0;      //Bits[1:0] of SLVADDR (masked to aligned addr)
  wire    [1:0] slvaddr_1_0_mask; //Mask for SLVADDR[1:0]
  wire    [1:0] slvtrans;
  wire          slvwrite;
  wire          slvready;
  wire          slvresp;
  wire    [1:0] slvsize;

  //Programmers Model Registers
  // - Transfer Address Register (0x04)
  reg    [31:0] tar;
  wire   [31:0] next_tar;         //Input to TAR

  // - Control Status Word (0x00) is Composite of the following fields:
  reg           csw_addr_inc;     //|CSW[5:4] (Packed Tx's not supported)
  wire          csw_addr_inc_next;//Input to csw_addr_inc
  reg     [1:0] csw_size;         //CSW[1:0] CSW[2] is always b0
  wire    [1:0] csw_size_next;    //Input to csw_size
  wire   [31:0] csw;              //Combined CSW Register

  //Control Signals & Data
  // - State Machine
  reg     [1:0] ap_crnt_state;    //State Machine Register
  reg     [1:0] ap_next_state;    //Input to State Machine Register
  // - AP State Signals
  wire          ap_active;        //Set when the AP is performing any transaction
  wire          slv_tx;           //Set when the AP performs an SLV transaction
  wire    [2:0] tar_inc_amount;   //Amount which is added to TAR to increment it
  wire   [10:0] incrd_tar;        //Result of tar[9:0] + tar_inc_amount
  wire          bdx_acc;          //Set when a BDx register is being accessed

  // - Register Load Signals
  wire          load_regs;        //Set when an AP register should be loaded, used
                                  //to form xxx_load
  wire          csw_load;         //Load CSW Registers from dp_data_ap
  wire          tar_load;         //Load TAR from dp_data_ap
  wire          tar_inc;          //Increment the address in TAR
  wire          load_from_slv;    //Set when data should be loaded from SLV
  wire          load_from_ap_reg; //Set when data should be loaded from AP Reg
  wire          slv_tx_suppressed;//Set when SLV is disabled by !deviceen
  wire          ap_ack_load;      //Load enable for ap_ack_ap register

  wire   [31:0] ap_base_reg;      // AP Base Value for ROM Table
  wire    [3:0] ecorevnum;        // Configurable Revision Field for APIDR
  wire   [31:0] ap_idr;           // APIDR Register Value

//------------------------------------------------------------------------------
// Remove Module If AP Not Present
//------------------------------------------------------------------------------
  wire  cfg_presnt = (PRESENT != 0);

  //Mask Inputs
  assign deviceen       = cfg_presnt ? deviceen_i       : 1'b0;
  assign dp_data_ap     = cfg_presnt ? dp_data_ap_i     : {32{1'b0}};
  assign dp_regaddr_ap  = cfg_presnt ? dp_regaddr_ap_i  : 4'b0000;
  assign dp_rnw_ap      = cfg_presnt ? dp_rnw_ap_i      : 1'b0;
  assign dp_req_ap      = cfg_presnt ? dp_req_ap_i      : 1'b0;
  assign ap_ack_ap      = cfg_presnt ? ap_ack_ap_i      : 1'b0;
  assign slvrdata       = cfg_presnt ? slvrdata_i       : {32{1'b0}};
  assign slvready       = cfg_presnt ? slvready_i       : 1'b0;
  assign slvresp        = cfg_presnt ? slvresp_i        : 1'b0;
  assign ap_base_reg    = cfg_presnt ? ap_base_reg_i    : {32{1'b0}};
  assign ecorevnum      = cfg_presnt ? ecorevnum_i      : 4'b0000;

  //Mask Outputs
  assign ap_err_ap_o    = cfg_presnt ? ap_err_ap        : 1'b0;
  assign ap_ack_load_o  = cfg_presnt ? ap_ack_load      : 1'b0;
  assign ap_out_en_o    = cfg_presnt ? ap_out_en        : 1'b0;
  assign ap_data_ap_o   = cfg_presnt ? ap_data_ap       : {32{1'b0}};
  assign ap_wr_en_o     = cfg_presnt ? ap_wr_en         : 1'b0;
  assign slvaddr_o      = cfg_presnt ? slvaddr          : {32{1'b0}};
  assign slvtrans_o     = cfg_presnt ? slvtrans         : 2'b00;
  assign slvwrite_o     = cfg_presnt ? slvwrite         : 1'b0;
  assign slvsize_o      = cfg_presnt ? slvsize          : 2'b00;

// ----------------------------------------------------------------------------
// State Machine
// -------------
  //The AP State machine has 4 states: 2 for dealing with the interface to
  //the DP and 2 for performing SLV transactions. On a write to an AP
  //register which does not generate an SLV transaction, the state machine
  //transitions from IDLE to DONE, and in the done state loads the relevant
  //register and toggles the Ack signal to confirm that the transfer is
  //complete before going back into the IDLE state to wait for another
  //transaction.
  //Note that the SLV slvready signal is checked in both the Address and Data
  //states, which is not required by standard AHB, however this is required
  //by the Cortex-M0 DAP SLV interface to the core.
// ----------------------------------------------------------------------------
  //Determine Next State
  always @(ap_crnt_state or ap_active or slv_tx
    or slvready or deviceen)
    case (ap_crnt_state)
      //In IDLE if the AP is active then the SM will go either to ADDR if the
      //transaction is to the DRW or BDx and deviceen is asserted starting an
      //SLV transaction, or straight to DONE if the transaction is to an
      //internal AP register or if deviceen is not asserted.
      AP_IDLE :  ap_next_state = ap_active
                                  ? ((slv_tx & deviceen) ? AP_ADDR : AP_DONE)
                                  : AP_IDLE;
      //slvready is checked in the ADDR state as the modified cortexm0 core SLV
      //interface is not guarenteed to always accept an address from the DAP.
      AP_ADDR :  ap_next_state = slvready ? AP_DATA : AP_ADDR;
      //The SM stays in the DATA state until slvready indicates the bus
      //transaction has completed.
      AP_DATA :  ap_next_state = slvready ? AP_DONE : AP_DATA;
      //The AP always moves immediately from the DONE state back to IDLE, as
      //the actions required at the DONE state can always be performed in
      //a single cycle.
      AP_DONE :  ap_next_state = AP_IDLE;
      default : ap_next_state = 2'bxx; //X-Propagation
    endcase

  //Update Current State
  always @(posedge dclk or negedge apreset_n)
    if (!apreset_n)
      ap_crnt_state <= AP_IDLE;
    else
      ap_crnt_state <= ap_next_state;

// ----------------------------------------------------------------------------
// Control Signals
// ----------------------------------------------------------------------------
  //Control Synchronisation Signal
  // - ap_ack_ap is the handshake signal to the DP. It is sampled by
  // a synchroniser in the DP domain, so it must be driven from a CDC safe
  // register, i.e. one that will never glitch when it is not enabled.
  assign ap_ack_load = (ap_crnt_state == AP_DONE);

  //AP Status
  assign ap_active = (dp_req_ap ^ ap_ack_ap); //AP active when dp_req != ap_ack

  assign slv_tx = ( (dp_regaddr_ap == AP_REGADDR_DRW)  //Set on DRW
                    | bdx_acc);                         //or BDx Access

  assign bdx_acc = (dp_regaddr_ap[3:2] == 2'b01);  //BDx Regs are in Bank 1

  //tar_inc_amount is used to increment the TAR when address autoincrementing
  //is enabled. The amount by which the TAR is incremented depends on the
  //size of the current access:
  //  Byte  (b00) - 1
  //  HWord (b01) - 2
  //  Word  (b10) - 4
  assign tar_inc_amount = {csw_size, (~|csw_size)};

  //Register Enables
  //registers are loaded at the AP_DONE state, on write transactions
  assign load_regs = (ap_crnt_state == AP_DONE) & (~dp_rnw_ap);

  assign csw_load = load_regs & (dp_regaddr_ap == AP_REGADDR_CSW);
  assign tar_inc = (  (csw_addr_inc) &
                      //Increment at the end of the data phase
                      ((ap_crnt_state == AP_DATA) & slvready) &
                      //Only increment when accessing DRW register (not BDx)
                      (dp_regaddr_ap == AP_REGADDR_DRW) &
                      //Do not inc if tx resp was error
                      (~slvresp)
                   );
  assign tar_load = (load_regs & (dp_regaddr_ap==AP_REGADDR_TAR)) | tar_inc;

  //load_from_x do not take into account RnW, so the transfer data register
  //is always loaded, even on writes. This avoids the need for a separate
  //signal to load ap_err_ap, and does not affect functionality as the data
  //returned for a write transaction is defined as UNPREDICTABLE.
  assign load_from_slv = ((ap_crnt_state == AP_DATA) & slvready);
  assign load_from_ap_reg = ((ap_crnt_state == AP_DONE) & (~slv_tx));

  //attempted SLV transaction is suppressed by the de-assertion of deviceen
  assign slv_tx_suppressed = ((ap_crnt_state == AP_IDLE) & ap_active &
                              slv_tx & ~deviceen);

// ----------------------------------------------------------------------------
// AP Registers
// ----------------------------------------------------------------------------
  //CSW
  //a write of bx11 (a reserved value) into the Size field of the CSW will
  //result in 010 being stored (indicating word). This prevents SLV accesses
  //with an unsupported slvsize.
  assign csw_size_next = {dp_data_ap[1],
                          (dp_data_ap[0] & (~dp_data_ap[1]))};

  //Bit [1] of AddrInc (bit [5] of dp_data_ap) is not stored as it is used to
  //indicate packed transfers (b10), which are deprecated and should read
  //back as b00, or a reserved value (b11).
  assign csw_addr_inc_next = dp_data_ap[4];

  always @(posedge dclk or negedge apreset_n)
    if (!apreset_n) begin
      csw_size      <= 2'b00;
      csw_addr_inc  <= 1'b0;
    end
    else if (csw_load) begin
      csw_size      <= csw_size_next;
      csw_addr_inc  <= csw_addr_inc_next;
    end

  assign csw = {1'b0,                     //CSW[31]    DbgSwEnable
                5'b00000,2'b11,           //CSW[30:24] Prot
                1'b0,                     //CSW[23]    SPIDEN
                11'b00000000000,          //CSW[22:12] Reserved (RAZ)
                4'b0000,                  //CSW[11:8]  Mode
                1'b0,                     //CSW[7]     TrInProg
                deviceen,                 //CSW[6]     DeviceEn
                1'b0, csw_addr_inc,       //CSW[5:4]   AddrInc
                1'b0,                     //CSW[3]     Reserved (RAZ)
                1'b0, csw_size            //CSW[2:0]   Size
               };
  //TAR
  //If the TAR is to be incremented, then only the bottom 10 bits are acted
  //upon. Incrementing the TAR above a 10-bit boundary causes the address to
  //wrap to the start of the boundary.
  //
  //incrd_tar is an 11 bit vector to store the result of the addition of the
  //bottom 10 bits of the TAR with tar_inc_amount. The bottom 10 bits of this
  //result are then used when to form next_tar when tar_inc is set, ignoring
  //the carry out of the addition.
  assign incrd_tar = tar[9:0] + tar_inc_amount; //Generates an 11 bit result
  assign next_tar = (tar_inc  ? {tar[31:10], incrd_tar[9:0]} //Use lower 10 bits
                              : dp_data_ap);

  always @(posedge dclk or negedge rar_reset_n)
    if (!rar_reset_n)
      tar <= {32{1'b1}};
    else if (tar_load)
      tar <= next_tar;

// ----------------------------------------------------------------------------
// DAP IO
// ----------------------------------------------------------------------------
  // APIDR Value
  // The APIDR Value can be affected by revision changes so it is XOR'ed with
  // the ECOREVNUM value input from the pins.
  assign ap_idr = {(ecorevnum ^ AP_IDR_REG_VAL[31:28]), AP_IDR_REG_VAL[27:0]};


  //To ensure that X propogation does not occur from slvrdata or uninitialised
  //tar into ap_data_ap during a write transaction, force the top bit of the
  //address to map to one of CFG, BSE, IDR or RSVD registers
  //Checked by assert u_ap_data_ap_wr_unk
  assign dp_regaddr_ap_masked = {(dp_regaddr_ap[3] | ~dp_rnw_ap),
                                 dp_regaddr_ap[2:0]};

  always @(dp_regaddr_ap_masked or csw or tar or slvrdata or ap_base_reg or ap_idr)
    case (dp_regaddr_ap_masked)
      AP_REGADDR_CSW   : ap_data_ap = csw;
      AP_REGADDR_TAR   : ap_data_ap = tar;
      AP_REGADDR_CFG   : ap_data_ap = AP_CFG_REG_VAL;
      AP_REGADDR_BSE   : ap_data_ap = {ap_base_reg[31:12], 11'b0000_0000_001, ap_base_reg[0]};
      AP_REGADDR_IDR   : ap_data_ap = ap_idr;
      AP_REGADDR_DRW,
      AP_REGADDR_BD0,
      AP_REGADDR_BD1,
      AP_REGADDR_BD2,
      AP_REGADDR_BD3   : ap_data_ap = slvrdata;
      AP_REGADDR_RSVD1,
      AP_REGADDR_RSVD2,
      AP_REGADDR_RSVD3,
      AP_REGADDR_RSVD4,
      AP_REGADDR_RSVD5,
      AP_REGADDR_RSVD6 : ap_data_ap = 32'h0000_0000;  //Reserved Addrs are RAZ
      default : ap_data_ap = 32'hxxxx_xxxx;  //X Propagation
    endcase

  //ap_wr_en
  //This is the write enable for AP data and error response.
  assign ap_wr_en = load_from_ap_reg | load_from_slv | slv_tx_suppressed;

  //ap_out_en is the output enable for the AP side of the transfer
  //block. It is asserted whenever the AP is active so that the AP can read
  //the necessary data.
  assign ap_out_en = ap_active;

  //ap_err_ap Response from the AP Transaction is set if:
  assign ap_err_ap = slvresp |              //SLV Transaction Returned an Error
                     slv_tx_suppressed;     //or SLV Tx was attempted
                                            //with DEVICEEN low

// ----------------------------------------------------------------------------
// SLV IO
// ----------------------------------------------------------------------------
  //slvwrite
  assign slvwrite = ~dp_rnw_ap;

  //slvaddr
  // - slvaddr_3_2 - on a BDx access, slvaddr[3:2] is specified by regaddr
  assign slvaddr_3_2 = bdx_acc  ? dp_regaddr_ap[1:0]
                                : tar[3:2];
  // - slvaddr_1_0 - slvaddr[1:0] is masked so that slvaddr is always aligned
  // to slvsize
  assign slvaddr_1_0_mask = { ~(slvsize[1]),
                              ~(|slvsize[1:0]) };
  assign slvaddr_1_0 = tar[1:0] & slvaddr_1_0_mask;

  assign slvaddr = {tar[31:4], slvaddr_3_2, slvaddr_1_0};

  //slvtrans
  assign slvtrans = {(ap_crnt_state == AP_ADDR), 1'b0};

  //slvsize
  assign slvsize = {(csw_size[1] | bdx_acc), (csw_size[0] & ~bdx_acc)};

// ----------------------------------------------------------------------------
// Assertions
// ----------------------------------------------------------------------------
`ifdef ARM_ASSERT_ON
  `include "std_ovl_defines.h"

  // Checking that dp_rnw_ap, dp_regaddr_ap, and dp_data_ap are never X
  // This should be guaranteed and these assertions are a safety check
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "RnW bit for AP must not be Unknown")
    u_xcheck_dp_rnw_ap
    (
      .clk        (dclk),
      .reset_n    (apreset_n),
      .qualifier  (1'b1),
      .test_expr  (dp_rnw_ap)
    );

  assert_never_unknown
    #(`OVL_FATAL, 4, `OVL_ASSERT, "RegAddr for AP must not be Unknown")
    u_xcheck_dp_regaddr_ap
    (
      .clk        (dclk),
      .reset_n    (apreset_n),
      .qualifier  (1'b1),
      .test_expr  (dp_regaddr_ap_masked)
    );

  //X-Checking on Register Load Enables/Async Resets used in IF statements
  // - apreset_n is global async reset
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "Reset for AP Must not be Unknown")
    u_xcheck_apreset_n
      ( .clk        (dclk),
        .reset_n    (1'b1),
        .qualifier  (1'b1),
        .test_expr  (apreset_n) );

  // - csw_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "csw_load can never be x")
    u_xcheck_csw_load
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .qualifier  (1'b1),
        .test_expr  (csw_load) );

  // - tar_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "tar_load can never be x")
    u_xcheck_tar_load
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .qualifier  (1'b1),
        .test_expr  (tar_load) );

  //State Machine
  assert_never_unknown
    #(`OVL_FATAL, 2, `OVL_ASSERT, "AP State Unknown")
    u_ap_statemachine_unk
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .qualifier  (1'b1),
        .test_expr  (ap_crnt_state));

  // - X never spuriously returned to AP during a write transaction
  assert_never_unknown
    #(`OVL_FATAL, 32, `OVL_ASSERT,
      "X must not be passed to AP during write")
    u_ap_data_ap_wr_unk
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .qualifier  (ap_wr_en & (~dp_rnw_ap)),
        .test_expr  (ap_data_ap) );

  //Control Signals
  // - The AP should only ever be in IDLE when REQ == ACK
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT, "AP Must not be active when REQ != ACK")
    u_ap_active_not_in_control
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  ((ap_crnt_state != AP_IDLE) &
                     (ap_ack_ap == dp_req_ap)) );


  //slvsize should never be greater than b010
  assert_range
    #(`OVL_FATAL, 2, 2'b00, 2'b10, `OVL_ASSERT,
      "Unsupported SLV Transaction Size Specified")
    u_ap_slv_unsupported_size
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  (slvsize) );

  //csw_size should never be b11
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT, "csw_size can never be b11")
    u_csw_size_b11_check
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  ((csw_size == 2'b11)) );

  //Unaligned Transfers are not supported
  // - This is forced on SLVADDR by masking the relevant bits, so there are
  // two levels of checking for this: FATAL asserts to check that the address
  // of SLVADDR is never unaligned, and WARNING asserts if software attempts
  // an unaligned access

  // - Unaligned Word (i.e. bits [1:0] are not b00)
  assert_never  //On SLV Interface
    #(`OVL_FATAL, `OVL_ASSERT, "Unaligned Word Address on SLV Interface")
    u_ap_unaligned_word_slv
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  ((slvsize == 2'b10) & (|slvaddr[1:0])) );

  assert_never  //Attempted by software
    #(`OVL_WARNING, `OVL_ASSERT, "Unaligned Word Access Attempted")
    u_warning_ap_unaligned_word_tx
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  ((csw_size == 2'b10) & (|tar[1:0]) & slvtrans[1]) );


  // - Unaligned H-Word (i.e. bit [0] is not b0)
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT, "Unaligned Half Word Address on SLV Interface")
    u_ap_unaligned_hword_slv
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  ((slvsize == 2'b01) & slvaddr[0]) );

  assert_never  //Attempted by software
    #(`OVL_WARNING, `OVL_ASSERT, "Unaligned Half Word Access Attempted")
    u_warning_ap_unaligned_hword_tx
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  ((csw_size == 2'b01) & tar[0] & slvtrans[1]) );

  //Warnings for Illegal software accesses
  // - Accesses to BDx registers when size != word are UNP
  assert_never
    #(`OVL_WARNING, `OVL_ASSERT, "Accessing BDx with Size != Word is UNP")
    u_warning_bdx_subword_acc
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  (bdx_acc & (csw_size != 2'b10) & slvtrans[1]) );

  // - Attempt to set packed transfer/reserved addr inc value
  assert_never
    #(`OVL_WARNING, `OVL_ASSERT, "Attempt to set AddrInc to unsupported value")
    u_warning_addr_inc_resvd
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  (csw_load & dp_data_ap[5]) );

  // - Memory access attempted without initialising the TAR
  assert_never_unknown
    #(`OVL_WARNING, 32, `OVL_ASSERT, "Memory access attempted before TAR set")
    u_warning_uninit_tar
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .qualifier  (slvtrans[1]),
        .test_expr  (tar) );

  // - It is architecturally UNP to attempt to increment the TAR beyond
  // bit[9]
  assert_never
    #(`OVL_WARNING, `OVL_ASSERT, "TAR Incremented beyond bit [9]")
    u_warning_tar_inc_past_10
      (
        .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  (tar_inc & (|tar[9:2]) & ( //Wraps if tar[9:2] are set and:
                      (slvsize == 2'b10) |             //Word
                      ((slvsize == 2'b01) & tar[1]) |  //Hword and tar[1] set
                      (&tar[1:0]) ) )//Byte & tar is 3
      );

  // - The CSW must be initialised before a memory access is attempted
  reg csw_initialised;
  always @(posedge dclk or negedge apreset_n)
    if (!apreset_n)
      csw_initialised <= 1'b0;
    else if (csw_load)
      csw_initialised <= 1'b1;

  assert_never
    #(`OVL_WARNING, `OVL_ASSERT,
      "Memory accesses attempted before CSW initialised")
    u_warning_mem_acc_before_csw_init
      ( .clk        (dclk),
        .reset_n    (apreset_n),
        .test_expr  (~csw_initialised & slvtrans[1]) );

`endif

// ----------------------------------------------------------------------------
// UNDEF's
// ----------------------------------------------------------------------------


endmodule
