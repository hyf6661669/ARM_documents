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
//      Checked In          : $Date: 2009-03-19 14:11:42 +0000 (Thu, 19 Mar 2009) $
//
//      Revision            : $Revision: 104573 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

module cm0_dap_dp_jtag
  (
    tck, dpreset_n, n_trst,
    tdi_i, tdo_o, n_tdoen_o, tms_i,
    dp_data_dp_o, dp_regaddr_dp_o, dp_rnw_dp_o,
    dp_wr_en_o, dp_out_en_o, dp_err_out_en_o,
    ap_data_dp_i, ap_err_dp_i,
    dp_req_dp_load_o, dp_req_dp_next_o, dp_req_dp_i, ap_ack_dp_i,
    csyspwrupack_sync_i, dp_cs_cdbgpwrupack_i, cdbgrstack_sync_i,
    csyspwrupreq_o, dp_cs_cdbgpwrupreq_o, cdbgrstreq_o,
    reset_dp_ap_handshake_i,
    // Configure DPIDR Revision field
    ecorevnum_i
  );

// ----------------------------------------------------------------------------
// `define's
// ----------------------------------------------------------------------------
  `include "cm0_dap_dp_jtag_defs.v"

// ----------------------------------------------------------------------------
// Configurablility
// ----------------------------------------------------------------------------
  parameter DBG     = 1;  //JTAG DP is Present when DBG==1 & JTAGnSW==1
  parameter JTAGnSW = 0;
  parameter RAR     = 0;

  //The JTAG DP is present if (DBG == 1) and (JTAGnSW != 0). A wire is derived
  //and used to perform the masking inside the module, and a parameter
  //derived to be passed to instantiated modules.
  localparam  PRESENT    = ((DBG != 0) && (JTAGnSW != 0)) ? 1 : 0;
  wire        cfg_presnt = ((DBG != 0) && (JTAGnSW != 0));
  wire        cfg_rar    = (RAR != 0);

// ----------------------------------------------------------------------------
// Port Definitions
// ----------------------------------------------------------------------------
  input         tck;              //JTAG Clock
  input         dpreset_n;        //DP PO Reset

  //JTAG Connections
  input         n_trst;           //JTAG State Machine Reset
  input         tdi_i;            //JTAG Data In
  input         tms_i;            //JTAG Test Mode Select
  output        tdo_o;            //JTAG Data Out
  output        n_tdoen_o;        //TDO Output Enable

  //Internal DAP Connections
  // - To Transfer Module
  output [31:0] dp_data_dp_o;     //Data from DP to AP for AP transaction
  output  [3:0] dp_regaddr_dp_o;  //AP Register Address for an AP Transaction
  output        dp_rnw_dp_o;      //RnW For AP Transaction
  output        dp_wr_en_o;       //Load transfer register with above data
  output        dp_out_en_o;      //Mask for ap_data_dp input
  output        dp_err_out_en_o;  //Mask for ap_data_dp input

  // - From Transfer Module
  input  [31:0] ap_data_dp_i;     //Returned data from result of AP transaction
  input         ap_err_dp_i;      //Error response from AP transaction

  // - Synchronisation Handshake Signals
  input         ap_ack_dp_i;      //Transaction complete acknowledge from AP
  input         dp_req_dp_i;      //Request AP to complete a transaction
  output        dp_req_dp_next_o; // Next value for dp_req_dp
  output        dp_req_dp_load_o; // Load Enable for dp_req_dp register in CDC block

  //Power Management Connections
  input         csyspwrupack_sync_i;  //Sync'd System Power Domain Power Up Ack
  input         dp_cs_cdbgpwrupack_i; //Debug Power Domain Power Up Ack for CSR
  input         cdbgrstack_sync_i;    //Sync'd Debug Reset Ack
  output        csyspwrupreq_o;       //System Power Domain Power Up Request
  output        dp_cs_cdbgpwrupreq_o; //Debug Power Domain Power Up Request
  output        cdbgrstreq_o;         //Debug Reset Request

  input         reset_dp_ap_handshake_i;

  input   [3:0] ecorevnum_i;          // Configurable Revision field of DPIDR

// ----------------------------------------------------------------------------
// Signal Declarations
// ----------------------------------------------------------------------------
  // Registers which do not usually have a reset term will use this reset
  // signal, connected to dpreset_n or tied high depending on whether Reset
  // All Registers (RAR) is required.
  wire          rar_reset_n = cfg_rar ? dpreset_n : 1'b1;

  //Masked Top Level Signals
  wire          tdi;
  wire          tms;
  wire   [31:0] ap_data_dp;
  wire          ap_err_dp;
  wire          ap_ack_dp;
  wire          csyspwrupack_sync;
  wire          dp_cs_cdbgpwrupack;
  wire          cdbgrstack_sync;
  reg           tdo;              //TDO is registered and driven off tckn
  wire          n_tdoen;
  wire   [31:0] dp_data_dp;
  wire    [3:0] dp_regaddr_dp;
  wire          dp_rnw_dp;
  wire          dp_wr_en;
  wire          dp_out_en;
  wire          dp_err_out_en;
  wire          dp_req_dp;        //dp_req_dp comes from an instantiated CDC reg
  reg           dp_cs_csyspwrupreq;     //Cxxx signals come directly from Ctrl/Status
  reg           dp_cs_cdbgpwrupreq;
  reg           dp_cs_cdbgrstreq;

  wire          reset_dp_ap_handshake;

  //Control For Top Level Internal Signals
  wire          tck_n;            //tck_n is inverted tck
  reg           tdo_next_data;    //Muxed input to TDO register in SDR states
  wire          tdo_next;         //Muxed Input to TDO register
  wire          tdo_load;         //Load enable for TDO register
  reg           tdoen;            //Active High n_tdoen signal

  wire          tdi_masked;       // TDI passed through a CDC AND gate
  wire          tdi_masked_i;     // intermediate value to permit isolation

  wire          dp_req_dp_next;   //Input to dp_req_dp reg
  wire          dp_req_dp_load;   //Load enable for dp_req_dp reg

  //JTAG State Machine
  reg     [3:0] jtag_state;       //JTAG Current State
  reg     [3:0] jtag_state_next;  //Input to jtag_state

  //JTAG Scan Chain
  //The scan chains are split into the upper 32 bits (top) and the lower 3 bits
  //(bottom)
  reg    [31:0] jtag_sc_top;      //Bits [34:3] of JTAG Scan Chain
  reg     [2:0] jtag_sc_btm;      //Bits [2:0] of JTAG Scan Chain
  //jtag_sc_top is loaded from an OR-of-AND mux, with extra logic to set the
  //value loaded to 0x10000000 at CIR.
  wire   [31:0] jtag_sc_top_next; //Input to jtag_sc_top (after CIR logic)
  wire   [31:0] jtag_sc_mux;      //Output of OoA mux (before CIR logic)
  wire   [31:0] jtag_sc_shifted;  //Shifted data input to mux
  // - Signals for mux enable terms
  wire          state_cir;        //Set when JTAG SM is in CIR state
  wire          state_cdr;        //Set when JTAG SM is in CDR state
  wire          state_udr;        //Set when JTAG SM is in UDR state
  wire          shifted_en;       //Enable for shifted data input
  wire          tap_id_en;        //Enable for TAP ID Input
  wire          dpidr_en;         //Enable for DPIDR input
  wire          ctrlstat_en;      //Enable for Ctrl/Stat reg input
  // - Control Signals for SC Registers
  wire          jtag_sc_top_load;     //Load enable for jtag_sc_top
  wire    [2:0] jtag_sc_btm_next;     //Input to jtag_sc[2:0]
  wire          jtag_sc_btm_load;     //Load enable for jtag_sc_btm

  //JTAG Instruction Register
  reg     [2:0] jtag_inst;        //Stored 3 Bit Encoded JTAG Instruction
  reg     [2:0] jtag_inst_enc;    //3 Bit Encoded Instruction Derived from SC
  wire    [2:0] jtag_inst_next;   //Input to jtag_inst
  wire          jtag_inst_load;   //Load enable for jtag_inst

  // JTAG Instruction Decodes
  wire          ir_apacc;         // DPACC Scan Chain in IR
  wire          ir_dpacc;         // APACC    "     "
  wire          ir_dpapacc;       // DPACC or APACC Scan Chain in IR
  wire          ir_abort;         // ABORT Scan Chain
  wire          ir_idcode;        // IDCODE Scan Chain

  //DP State
  reg           ap_ndp;             //Set if the last tx was to the AP
  wire          ap_ndp_next;        //Input to ap_ndp
  wire          ap_ndp_load;        //Load enable for ap_ndp
  reg           ap_busy_regd;       //Set if the ack was wait at the CDR state
  wire          ap_busy_regd_load;  //Load for ap_busy_regd
  wire          ap_busy_inst;       //AP transaction initiated
  wire          ap_interface_busy;  //AP is in control of DP/AP interface
  wire    [2:0] ack;                //3 Bit Tx Acknowledge
  wire          ack_wait;           //Used to form ack
  wire          ap_pwr_on;          //AP power status flag

  //Transaction Control
  wire          perform_tx_ap;
  wire          perform_tx_dp;
  wire          dp_write;
  wire          start_ap_tx;
  wire          start_ap_tx_masked;
  wire          start_ap_req;
  wire    [1:0] tx_regaddr;       //Register addr for tx (in jtag_sc_btm[2:1])
  wire          tx_rnw;           //RnW for tx (in jtag_sc_btm[0])

  //DP Registers
  // - dp_ctrlstat
  wire   [31:0] dp_ctrlstat;      //Composite CTRL/STAT register
  reg           dp_cs_stickyerr;  //Bit[5] of CTRL/STAT
  reg           dp_cs_stickyorun; //Bit[1] of CTRL/STAT
  reg           dp_cs_orundetect; //Bit[0] of CTRL/STAT
  //dp_cs_load is used to load the CTRL/STAT fields which are set on
  //a write to the CTRL/STAT register, i.e. the CxxxREQ fields. The error
  //fields are loaded by the relevant error condition or flag reset.
  wire          dp_cs_load;
  //Control Status Register Error flag signals:
  wire          stickyerr_detected;
  wire          dp_cs_stickyerr_load;
  wire          dp_cs_stickyerr_next;
  wire          dp_stkerr_clr;
  wire          dp_cs_stickyorun_load;
  wire          dp_cs_stickyorun_next;
  wire          dp_stkorun_clr;
  wire          stickyorun_detected;

  // - dp_sel
  reg           dp_sel_apsel;           //Encoded Bits[31:24] of Select Register
  wire          dp_sel_apsel_next;      //Input to dp_sel_apsel
  reg     [1:0] dp_sel_apbanksel;       //Encoded Bits[7:4] of Select Register
  wire    [1:0] dp_sel_apbanksel_next;  //Input to dp_sel_apbanksel
  wire    [1:0] dp_sel_apbanksel_masked;
  wire          dp_sel_apbanksel_next_1;//Each bit is encoded separately
  wire          dp_sel_apbanksel_next_0;
  wire          dp_sel_load;            //Enable for Select registers

  // - dp_abort
  wire          dp_abort_execute;       //Set on a write to the abort register
  reg           dp_abort_dapabort;      //Bit[0] of Abort, indicates an abort
  wire          dp_abort_dapabort_next; //Input to dp_abort_dapabort;
  wire          dp_abort_dapabort_load; //Load enable for dp_abort_dapabort

  wire    [3:0] ecorevnum;              // Configurable DPIDR Revison Field
  wire   [31:0] dp_idr;                 // DPIDR Register Value
  wire   [31:0] jtag_tap_id;            // JTAG TAP Identification Code

//------------------------------------------------------------------------------
// Remove Module If DP Not Present
//------------------------------------------------------------------------------
  //Mask Inputs
  assign tdi                    = cfg_presnt ? tdi_i                    : 1'b0;
  assign tms                    = cfg_presnt ? tms_i                    : 1'b0;
  assign ap_data_dp             = cfg_presnt ? ap_data_dp_i             : {32{1'b0}};
  assign ap_err_dp              = cfg_presnt ? ap_err_dp_i              : 1'b0;
  assign ap_ack_dp              = cfg_presnt ? ap_ack_dp_i              : 1'b0;
  assign csyspwrupack_sync      = cfg_presnt ? csyspwrupack_sync_i      : 1'b0;
  assign dp_cs_cdbgpwrupack     = cfg_presnt ? dp_cs_cdbgpwrupack_i     : 1'b0;
  assign cdbgrstack_sync        = cfg_presnt ? cdbgrstack_sync_i        : 1'b0;
  assign dp_req_dp              = cfg_presnt ? dp_req_dp_i              : 1'b0;
  assign reset_dp_ap_handshake  = cfg_presnt ? reset_dp_ap_handshake_i  : 1'b0;
  assign ecorevnum              = cfg_presnt ? ecorevnum_i              : 4'b0000;

  //Mask Outputs
  assign tdo_o                  = cfg_presnt ? tdo                      : 1'b0;
  assign n_tdoen_o              = cfg_presnt ? n_tdoen                  : 1'b0;
  assign dp_data_dp_o           = cfg_presnt ? dp_data_dp               : {32{1'b0}};
  assign dp_regaddr_dp_o        = cfg_presnt ? dp_regaddr_dp            : 4'b0000;
  assign dp_rnw_dp_o            = cfg_presnt ? dp_rnw_dp                : 1'b0;
  assign dp_wr_en_o             = cfg_presnt ? dp_wr_en                 : 1'b0;
  assign dp_out_en_o            = cfg_presnt ? dp_out_en                : 1'b0;
  assign dp_err_out_en_o        = cfg_presnt ? dp_err_out_en            : 1'b0;
  assign dp_req_dp_load_o       = cfg_presnt ? dp_req_dp_load           : 1'b0;
  assign dp_req_dp_next_o       = cfg_presnt ? dp_req_dp_next           : 1'b0;
  assign csyspwrupreq_o         = cfg_presnt ? dp_cs_csyspwrupreq       : 1'b0;
  assign dp_cs_cdbgpwrupreq_o   = cfg_presnt ? dp_cs_cdbgpwrupreq       : 1'b0;
  assign cdbgrstreq_o           = cfg_presnt ? dp_cs_cdbgrstreq         : 1'b0;

// ============================================================================
// Start of Main Code
// ============================================================================

// ----------------------------------------------------------------------------
// JTAG State Machine
// ------------------
  //This is the standard 16 State JTAG TAP State Machine.
// ----------------------------------------------------------------------------
  //Determine Next State
  always @(jtag_state or tms)
    case (jtag_state)
      JTAG_TLR : jtag_state_next = (tms ? JTAG_TLR : JTAG_RTI);
      JTAG_RTI : jtag_state_next = (tms ? JTAG_SDS : JTAG_RTI);
      //DR States
      JTAG_SDS : jtag_state_next = (tms ? JTAG_SIS : JTAG_CDR);
      JTAG_CDR : jtag_state_next = (tms ? JTAG_E1D : JTAG_SDR);
      JTAG_SDR : jtag_state_next = (tms ? JTAG_E1D : JTAG_SDR);
      JTAG_E1D : jtag_state_next = (tms ? JTAG_UDR : JTAG_PDR);
      JTAG_PDR : jtag_state_next = (tms ? JTAG_E2D : JTAG_PDR);
      JTAG_E2D : jtag_state_next = (tms ? JTAG_UDR : JTAG_SDR);
      JTAG_UDR : jtag_state_next = (tms ? JTAG_SDS : JTAG_RTI);
      //IR States
      JTAG_SIS : jtag_state_next = (tms ? JTAG_TLR : JTAG_CIR);
      JTAG_CIR : jtag_state_next = (tms ? JTAG_E1I : JTAG_SIR);
      JTAG_SIR : jtag_state_next = (tms ? JTAG_E1I : JTAG_SIR);
      JTAG_E1I : jtag_state_next = (tms ? JTAG_UIR : JTAG_PIR);
      JTAG_PIR : jtag_state_next = (tms ? JTAG_E2I : JTAG_PIR);
      JTAG_E2I : jtag_state_next = (tms ? JTAG_UIR : JTAG_SIR);
      JTAG_UIR : jtag_state_next = (tms ? JTAG_SDS : JTAG_RTI);
      default : jtag_state_next = 4'bxxxx;
    endcase

  //State Machine Register
  always @(posedge tck or negedge n_trst)
    if (!n_trst)
      jtag_state <= JTAG_TLR;
    else
      jtag_state <= jtag_state_next;

// ----------------------------------------------------------------------------
// JTAG Instructions
// -----------------
  //The JTAG DP has a 4 bit instruction scan chain with 5 defined
  //instructions:
  //
  //Inst. S/C   Instruction
  //  1000         Abort
  //  1010         DPACC
  //  1011         APACC
  //  1110        IDCODE
  //  1111        BYPASS
  //
  //All undefined instructions default to the BYPASS instruction.
  //
  //The instructions are encoded to 3 bits as there are 5 possible
  //instructions and this DP does not implement or support boundary scan
  //instructions. The encoding simply removes the common top bit from the
  //instructions.
  //
  //The encoded instruction is reset to IDCODE on dpreset_n or when the state
  //machine is in TLR, and is loaded with the encoded value in the
  //Instruction Scan Chain when the state machine is in UIR
// ----------------------------------------------------------------------------
  //Determine Encoded Instruction based on Instruction Scan Chain
  always @(jtag_sc_top)
    case (jtag_sc_top[31:28]) //Instruction SC is top 4 bits of jtag_sc
      JTAG_ABORT   : jtag_inst_enc = JTAG_3_ABORT;
      JTAG_DPACC   : jtag_inst_enc = JTAG_3_DPACC;
      JTAG_APACC   : jtag_inst_enc = JTAG_3_APACC;
      JTAG_IDCODE  : jtag_inst_enc = JTAG_3_IDCODE;
      JTAG_BYPASS  : jtag_inst_enc = JTAG_3_BYPASS;
      //Default is used to force unsupported transactions to BYPASS. This
      //also causes x-termination in simulation, so this is checked for
      //explicitly in an OVL.
      default : jtag_inst_enc = JTAG_3_BYPASS;
    endcase

  //Determine input & enable for jtag_inst register
  assign jtag_inst_next = (jtag_state == JTAG_TLR)  ? JTAG_3_IDCODE
                                                     : jtag_inst_enc;

  assign jtag_inst_load = (jtag_state == JTAG_TLR) | (jtag_state == JTAG_UIR);

  //Updated Encoded Instruction
  //Asynchronously reset to IDCODE by DPRESETn for safety and by state TLR
  //following synchronous TMS or asynchronous nTRST reset
  always @(posedge tck or negedge dpreset_n)
    if (!dpreset_n)
      jtag_inst <= JTAG_3_IDCODE;
    else if (jtag_inst_load)
      jtag_inst <= jtag_inst_next;

  // Instruction Decodes
  // These wires are used to clearly indicate the selected scan chain, in
  // logic elsewhere in the code which depends on the IR contents.
  assign ir_apacc = (jtag_inst == JTAG_3_APACC);
  assign ir_dpacc = (jtag_inst == JTAG_3_DPACC);
  assign ir_dpapacc = (jtag_inst == JTAG_3_DPACC) | (jtag_inst == JTAG_3_APACC);
  assign ir_abort = (jtag_inst == JTAG_3_ABORT);
  assign ir_idcode = (jtag_inst == JTAG_3_IDCODE);

// ----------------------------------------------------------------------------
// tdo Output
// ----------
  //The data on tdo is required to change on the falling edge of tck. To
  //acheive this, the signal tck_n is set to the inverted clock, and tdo is
  //registered and driven off the rising edge of tck_n (the falling edge of
  //tck).
  //
  //tdo is driven in the SDR and SIR states, such that the data for
  //a particular bit is available on the falling edge AFTER the rising edge
  //at which the value on tdi was sampled for the respective bit. For example
  //with a 35 bit data scan chain, on the first rising clock edge in SDR the
  //value on tdi is sampled by the DAP and loaded into bit [34] of the scan
  //chain. On the NEXT falling edge, the debugger can sample tdo and will
  //read the value which was in bit [0] of the scan chain at the CDR state.
  //
  //The source of tdo depends on the length of the currently selected scan
  //chain. A single 35 bit shift register is used for all scan chains, and
  //tdi is always connected to its MSB. tdo is then connected to:
  //
  // Scan Chain    Length    tdo Source
  //  BYPASS         1      jtag_sc[34]
  //Instruction      4      jtag_sc[31]
  //  IDCODE        32      jtag_sc[3]
  //   DPACC        35      jtag_sc[0]
  //   APACC        35      jtag_sc[0]
// ----------------------------------------------------------------------------
  //The input to the TDO register is selected by an OR-of-AND mux
  // - enable terms
  //tdo Source
  // - Source when in SDR
  always @(jtag_inst or jtag_sc_top or jtag_sc_btm)
    case (jtag_inst)
      JTAG_3_BYPASS  : tdo_next_data = jtag_sc_top[31]; //1 Bit SC
      JTAG_3_IDCODE  : tdo_next_data = jtag_sc_top[0];  //32 Bit SC
      JTAG_3_ABORT,
      JTAG_3_DPACC,
      JTAG_3_APACC   : tdo_next_data = jtag_sc_btm[0];  //35 Bit SC
      default : tdo_next_data = 1'bx;  //X Propagation
    endcase

  // - Source when in SDR or SIR
  assign tdo_next = (jtag_state == JTAG_SDR) ? tdo_next_data    //Data SC
                                              : jtag_sc_top[28]; //Inst SC=4 Bit

  //Inverted Clock
  assign tck_n = ~tck;

  //tdo Load Enable
  assign tdo_load = (jtag_state == JTAG_SDR) | (jtag_state == JTAG_SIR);

  //tdo Register
  always @(posedge tck_n or negedge dpreset_n)
    if (!dpreset_n)
      tdo <= 1'b0;
    else if (tdo_load)
      tdo <= tdo_next;

  //nTDOEN is used to allow TDO to be tri-stated externally.
  always @(posedge tck_n or negedge dpreset_n)
    if (!dpreset_n)
      tdoen <= 1'b0;
    else
      tdoen <= tdo_load; //TDO is enabled whenever it is being loaded

  assign n_tdoen = ~tdoen;

// ----------------------------------------------------------------------------
// JTAG Scan Chain
// ---------------
  //All JTAG scan chains are comprised of a single 35 bit shift register.
  //This is split into two parts: jtag_sc_top, which is the top 32 bits, and
  //jtag_sc_btm, which is the bottom 3 bits. TDI is always shifted into the
  //MSB of jtag_sc_top - the different length scan chains are created by
  //sourcing TDO from different bits.
  //By splitting the scan chain up into two parts, the top part can be
  //shifted without affecting the data stored in the bottom part. This allows
  //scans through the BYPASS and IDCODE scan chains to be performed in
  //between two DP or APACC transactions without needing to buffer the
  //register address and RnW bits (which are the bottom 3 bits of the DPAPACC
  //scan chain).
  //The register is loaded by an OR-of-AND multiplexer structure, as the data
  //loaded depends on a number of orthogonal signals, and it is often
  //required to load the register with 0x00000000.
// ----------------------------------------------------------------------------
  //Mux Enable Terms
  // - Interim terms
  assign state_cir = (jtag_state == JTAG_CIR);
  assign state_cdr = (jtag_state == JTAG_CDR);
  assign state_udr = (jtag_state == JTAG_UDR);

  // - Shifted Data
  assign shifted_en = ~(state_cir | state_cdr); //Shifted is default output

  // - TAP IDCODE Enable
  assign tap_id_en = state_cdr & ir_idcode; // Capture IDCODE

  // TAP IDCODE Value
  assign jtag_tap_id = {(ecorevnum ^ JTAG_DEVICE_ID[31:28]), JTAG_DEVICE_ID[27:0]};

  // - AP Data Output Enable
  // This is a top-level output to a mask in a separate block (ap_cdc).
  assign dp_out_en = dp_err_out_en;

  // - AP Error Output Enable
  // This is a top-level output to a mask in a separate block (ap_cdc).
  assign dp_err_out_en =  state_cdr &            // CDR State
                          ir_dpapacc &           // DPACC or APACC
                          ap_ndp &               // last transaction was APACC
                          ap_busy_regd &         // an AP transaction occured
                          (~ap_interface_busy) & // DP controls CDC block
                          dp_sel_apsel &         // AP is selected
                          (~dp_abort_dapabort);  // AP has not been aborted

  // - DPIDR Enable
  assign dpidr_en = state_cdr & ir_dpapacc & (~(ap_ndp | (|tx_regaddr)));

  // DPIDR Value
  // The DPIDR revision field can be changed so the defined value is XOR'ed with
  // the ECOREVNUM value from the input
  assign dp_idr = {(ecorevnum ^ JTAG_DPIDR_REG_VAL[31:28]), JTAG_DPIDR_REG_VAL[27:0]};

  assign ctrlstat_en = state_cdr & (~(ap_ndp | tx_regaddr[1]))
                       & tx_regaddr[0] & ir_dpapacc;

  // The IEEE spec allows TDI to be undriven outside the shift states.
  // To avoid loading metastable values TDI is passed through a CDC AND mask.
  cm0_dap_jt_cdc_comb_and
    #(.PRESENT (PRESENT))
    u_tdi_and_gate
    (
      .DATAIN   (tdi),
      .MASKn    (shifted_en),
      .DATAOUT  (tdi_masked_i)
    );

  // Tie off the output if the JTAG DP is not used
  assign tdi_masked = cfg_presnt ? tdi_masked_i : 1'b0;

  //OR-of-AND Mux
  // - shifted data input
  assign jtag_sc_shifted = {tdi_masked, (jtag_sc_top[31:1] & {31{shifted_en}})};

  // - Mux
  assign jtag_sc_mux =  (jtag_sc_shifted)      |  // already masked
                        ({32{tap_id_en}}    & jtag_tap_id)      |
                        ({32{dpidr_en}}     & dp_idr)  |
                        ({32{ctrlstat_en}}  & dp_ctrlstat)          |
                        ap_data_dp; //This is masked externally

  //Set Value to 0x10000000 at CIR
  // - This is achieved by ORing bit[28] of jtag_sc_mux with state_cir (when
  // state_cir is asserted, jtag_sc_mux is 0x00000000).
  assign jtag_sc_top_next = { jtag_sc_mux[31:29],
                              (jtag_sc_mux[28] | state_cir),
                              jtag_sc_mux[27:0] };

  //Load Enable for jtag_sc_top register
  assign jtag_sc_top_load = //Always load in CDR (loading for BYPASS is benign)
                            (jtag_state == JTAG_CDR) |
                            //Always load in CIR
                            (jtag_state == JTAG_CIR) |
                            //Always load in SDR
                            (jtag_state == JTAG_SDR) |
                            //Always load in SIR
                            (jtag_state == JTAG_SIR);

  //Input to jtag_sc_bottom (JTAG Scan Chain [2:0]). This can either be the
  //current value shifted right, with the LSB of jtag_sc_top shifted in, or
  //the 3 bit transaction acknowledge.

  // This is used to generate the final ACK response for the transaction.
  // Since ACK is either OK/FAULT or WAIT only one requires logic.
  assign ack_wait = ir_dpapacc              // DPACC/APACC
                    & ap_ndp                // Previous accepted Tx is APACC
                    & dp_sel_apsel          // AP is selected
                    & (ir_apacc |           // APACC
                      (~dp_abort_dapabort)) // DPACC after non-aborted APACC
                    & (state_cdr
                       ? ap_busy_inst       // AP busy at CDR
                       : ap_busy_regd);     // AP was busy at last CDR

  assign ack = {1'b0, (~ack_wait), ack_wait};

  assign jtag_sc_btm_next = (jtag_state == JTAG_SDR)
                              ? ({jtag_sc_top[0], jtag_sc_btm[2:1]}) //Shift
                              : ack;                                 //Load Par.

  //Load Enable for jtag_sc_btm
  assign jtag_sc_btm_load = ( //Load in CDR or SDR
                              (jtag_state == JTAG_CDR) |
                              (jtag_state == JTAG_SDR)
                            ) &
                            ( //When the current instruction is DPACC or APACC
                              ir_dpapacc | ir_abort
                            );

  //JTAG Scan Chain Registers
  // - jtag_sc_top
  always @(posedge tck or negedge rar_reset_n)
    if (!rar_reset_n)
      jtag_sc_top <= {32{1'b1}};
    else if (jtag_sc_top_load)
      jtag_sc_top <= jtag_sc_top_next;

  // - jtag_sc_btm
  // This register is reset as the data is used in control signals.
  always @(posedge tck or negedge dpreset_n)
    if (!dpreset_n)
      jtag_sc_btm <= 3'b000;
    else if (jtag_sc_btm_load)
      jtag_sc_btm <= jtag_sc_btm_next;

  //The data in jtag_sc_btm specifies the register address and RnW direction
  //for the current transaction
  assign tx_regaddr = jtag_sc_btm[2:1];
  assign tx_rnw     = jtag_sc_btm[0];

// ----------------------------------------------------------------------------
// DP State
// --------
  //At the CDR state when the current instruction is DPACC or APACC, the
  //value loaded depends on whether the instruction was APACC at the previous
  //UDR state on the previous DPACC or APACC transaction. Scans through the
  //BYPASS or IDCODE scan chains may have happened in the mean time so this
  //data is not available, so a separate bit is used to capture this.
// ----------------------------------------------------------------------------
  //ap_ndp is set at UDR when the current instruction is APACC or DPACC
  //(therefore the bit is not overwritten during IDCODE or BYPASS scans, so
  //these operations do not affect the pipelining of DP & AP transactions.
  assign ap_ndp_load = state_udr & ir_dpapacc & (~ack_wait);

  assign ap_ndp_next = ir_apacc;

  always @(posedge tck or negedge dpreset_n)
    if (!dpreset_n)
      ap_ndp <= 1'b0; //Reset as used in control signals
    else if (ap_ndp_load)
      ap_ndp <= ap_ndp_next;

// ----------------------------------------------------------------------------
// AP Synchronisation Handshaking
// -----------------------------
  //A simple two phase handshaking mechanism is used to synchronise between
  //the DP and AP, and to initiate AP transactions. The DP can only start
  //a transaction when the AP is idle. The DP can see that the AP is idle
  //when the DP driven REQ handshake signal is the same value as the AP driven
  //ACK. When the AP is idle, the DP has control over the shared transfer
  //module, which is used to pass transaction data back and forth between the
  //AP and DP.
  //
  //To initiate an AP transaction, the DP first writes the transaction data
  //to the transfer module, then toggles the REQ signal, so that REQ != ACK,
  //which signals to the AP that it should complete a transaction. When the
  //AP transaction is complete, it toggles ACK, so that REQ == ACK, and the
  //DP again sees that the AP is idle. It can then read the result of the
  //transaction from the transfer register.
  //
  //Note that REQ and ACK are synchronised into the destination clock domains
  //at the DAP top level.
// ----------------------------------------------------------------------------
  //AP Status
  //ap_interface_busy is true when the AP controls the CDC block,
  //and is used at the PARK state to determine whether to load the result
  //of an AP transaction.
  assign ap_interface_busy = (dp_req_dp ^ ap_ack_dp);

  //ap_busy_inst is the instantaneous value of ap_busy, and indicates that
  //the AP is busy due to a transaction being initiated.
  assign ap_busy_inst = ap_interface_busy & ap_busy_regd;

  //Registered AP Status - Clear at CDR
  assign ap_busy_regd_load =  start_ap_tx_masked |
                              (state_cdr & (ir_dpapacc) & (~ap_busy_inst));

  always @(posedge tck or negedge dpreset_n)
    if (!dpreset_n)
      ap_busy_regd <= 1'b0;
    else if (ap_busy_regd_load)
      ap_busy_regd <= start_ap_tx_masked;

  //AP Transactions
  assign start_ap_tx =  perform_tx_ap &   // Tx allowed
                        dp_sel_apsel;     // AP selected
    // start_ap_tx is masked so that the AP transaction is only started if the
  // AP is powered up.
  assign start_ap_tx_masked = start_ap_tx & ap_pwr_on;

  // start_ap_req indicates a request is to be made to the AP, for
  // a transaction or the handshake-reset sequence.
  assign start_ap_req = start_ap_tx_masked | reset_dp_ap_handshake;

  //dp_wr_en is used to load the transfer register with the DP
  //transaction data at the start of an AP transaction.
  assign dp_wr_en = start_ap_req;

  //dp_req_dp is toggled to start an AP transaction. It is is cleared to 0
  //when the AP is reset, as an AP reset forces ap_ack_x to 0.
  //dp_req_dp can be set only if the AP is powered on - a power down request
  //will clear it to safeguard the handshaking logic.
  //The register itself is in the DP CDC block.
  assign dp_req_dp_next = (~dp_req_dp);
  assign dp_req_dp_load = start_ap_req;
// ----------------------------------------------------------------------------
// Power Up/Power Down Handshaking
// ----------------------------------------------------------------------------

  //ap_pwr_on indicates that the AP is powered on by looking at the
  //CDBGPWRUPREQ and CDBGPWRUPACK signals, and is used to allow transasctions
  //only if both are high, i.e. the AP has been powered up and no power down
  //request has been made, and to keep dp_req_dp synchronized to the AP (it
  //assumes ap_ack is 0 after an AP reset).
  assign ap_pwr_on = (dp_cs_cdbgpwrupreq & dp_cs_cdbgpwrupack);

// ----------------------------------------------------------------------------
// Logical DP Registers
// --------------------
  //The JTAG DP Programmers Model is:
  //A[3:2] RnW  Register
  // 0x0    R     DPIDR
  // 0x0    W     Abort   (accesses to the ABORT scan chain are treated as
  //                      acceses to this register)
  // 0x4    X   Ctrl/Stat
  // 0x8    R   Reserved
  // 0x8    W    Select
  // 0xC    X    RDBUFF
  //
  //All DP Logical Register names are preceded in the RTL by dp_. The
  //individual fields making up composite registers are preceded by
  //dp_regname_.
// ----------------------------------------------------------------------------
  //CONTROL SIGNALS
  assign perform_tx_dp =  state_udr &         // Update-DR
                          ir_dpacc &          // DPACC
                          (~ack_wait);        // OK/FAULT response

  assign perform_tx_ap =  state_udr &             // Update DR
                          ir_apacc &              // APACC
                          (~(ap_busy_regd |       // AP is not busy
                             dp_cs_stickyorun |   // No Sticky Overrun
                             dp_cs_stickyerr));   // No Sticky Error

  assign dp_write = perform_tx_dp & (~tx_rnw);

  //REGISTERS
  //Abort
  //The abort register is WO and its effects are immediate, so it is not
  //physically implemented.
  //The abort register is used to clear error flags, which is done with the
  //following signals
  //As ABORT is in its own scan chain the address and the RnW bits are
  //disregarded - it is UNP if they are wrong
  assign dp_abort_execute = state_udr &     // Execute at UDR
                            ir_abort;       // ABORT Scan Chain

  //A DAPABORT has be to stored, as it affects the subsequent operation of
  //the DP. In CM0DAP, a DAPABORT has no effect on the AP, however it
  //free's up access to all of the DP registers. It is only asserted when the AP
  //is busy, in case the AP naturally becomes free after an ABORT is issued
  //then this clears the abort.
  assign dp_abort_dapabort_next = ap_busy_regd;

  assign dp_abort_dapabort_load = (dp_abort_execute & jtag_sc_top[0]) |
                                  //Set on write to abort
                                  dp_abort_dapabort;  //Then loads until cleared

  always @(posedge tck or negedge dpreset_n)
    if (!dpreset_n)
      dp_abort_dapabort <= 1'b0;
    else if (dp_abort_dapabort_load)
      dp_abort_dapabort <= dp_abort_dapabort_next;

  //Control/Status
  //This register is a composite of a number of different fields
  assign dp_ctrlstat = {  csyspwrupack_sync,  //[31]    RO
                          dp_cs_csyspwrupreq, //[30]    RW
                          dp_cs_cdbgpwrupack, //[29]    RO
                          dp_cs_cdbgpwrupreq, //[28]    RW
                          cdbgrstack_sync,    //[27]    RO
                          dp_cs_cdbgrstreq,   //[26]    RW
                          1'b0,               //[25]    RAZ
                          1'b0,               //[24]    RAZ
                          12'b0000_0000_0000, //[23:12] TRNCNT (RAZ in MinDP)
                          4'b0000,            //[11:8]  MASKLANE (RAZ in MinDP)
                          1'b0,               //[7]     RAZ in JTAG
                          1'b0,               //[6]     RAZ in JTAG
                          dp_cs_stickyerr,    //[5] RO
                          1'b0,               //[4]     StickyCmp (RAZ in MinDP)
                          2'b00,              //[3:2]   TRNMODE (RAZ in MinDP)
                          dp_cs_stickyorun,   //[1]     STICKYORUN
                          dp_cs_orundetect    //[0]     ORUNDETECT
                       };

  assign dp_cs_load = dp_write
                      & (tx_regaddr == JTAG_REGADDR_CTRLSTAT);

  always @(posedge tck or negedge dpreset_n)
    if (!dpreset_n) begin
      dp_cs_csyspwrupreq        <= 1'b0;
      dp_cs_cdbgpwrupreq        <= 1'b0;
      dp_cs_cdbgrstreq          <= 1'b0;
      dp_cs_orundetect          <= 1'b0;
    end
    else if (dp_cs_load) begin
      dp_cs_csyspwrupreq        <= jtag_sc_top[30];
      dp_cs_cdbgpwrupreq        <= jtag_sc_top[28];
      dp_cs_cdbgrstreq          <= jtag_sc_top[26];
      dp_cs_orundetect          <= jtag_sc_top[0];
    end

  //Select
  //This register is WO, and the data written is encoded to be stored in
  //a fewer number of bits.
  //The select register comprises the following fields:
  //  [31:24] APSEL     - Selects between the AP's connected to the DP
  //  [7:4]   APBANKSEL - Selects the bank within the current AP

  //Since only 1 AP is present in this DAP, the APSEL field is encoded as
  //a single bit, which is set when the present AP is selected. This is
  //performed by a reduction-NOR on the APSEL value written, such that the
  //present AP is selected when APSEL is 0x00
  assign dp_sel_apsel_next = ~(|jtag_sc_top[31:24]);

  //There are 16 logical banks in the AP, however only three of them are
  //used: 0x0, 0x1 and 0xF. Therefore APBANKSEL is encoded as a 2 bit value
  //as follows:
  //  jtag_sc_top[7:4] == 4'b0000 -> 2'b00 (AP Bank 0x0)
  //  jtag_sc_top[7:4] == 4'b0001 -> 2'b01 (AP Bank 0x1)
  //  jtag_sc_top[7:4] == 4'b1111 -> 2'b11 (AP Bank 0xF)
  //                       Else   -> 2'b10 (RAZ/WI)
  //If the DP/AP handshake needs to be reset in preparation for power down the
  //bank selection is forced to 2'b10 so any transaction caused is RAZ/WI.

  //Encoded Bit 0
  assign dp_sel_apbanksel_next_1 =  (|jtag_sc_top[7:5]);
  //Encoded Bit 1
  assign dp_sel_apbanksel_next_0 = ((~dp_sel_apbanksel_next_1 & jtag_sc_top[4])
                                   | (&jtag_sc_top[7:4]));
  assign dp_sel_apbanksel_next = {dp_sel_apbanksel_next_1,
                                  dp_sel_apbanksel_next_0};

  assign dp_sel_load = dp_write
                       & (tx_regaddr == JTAG_REGADDR_SELECT);

  //The APSEL and APBANKSEL fields of the Select register are architecturally
  //defined to be unpredictable after reset. However, the encoded APSEL
  //signal is reset (such that the AP is not selected) as this is used as
  //a control signal. This is different to resetting the architectural
  //equivalent to 0x00, as writing that value would set the encoded APSEL to
  //be b1. APBANKSEL is not reset as it is only used as a data signal to the
  //AP and cannot be used unless APSEL is set, implying that the register has
  //been initialised.
  always @(posedge tck or negedge dpreset_n)
    if (!dpreset_n)
      dp_sel_apsel     <= 1'b0; //AP is not selected after reset
    else if (dp_sel_load)
      dp_sel_apsel     <= dp_sel_apsel_next;

  always @(posedge tck or negedge rar_reset_n)
    if (!rar_reset_n)
      dp_sel_apbanksel <= 2'b11;
    else if (dp_sel_load)
      dp_sel_apbanksel <= dp_sel_apbanksel_next;

// ----------------------------------------------------------------------------
// Error Flags
// -----------
  //These are architecturally part of the Control/Status register, however
  //are set by external error conditions. They can be cleared by either
  //writing to the abort register, or by writing 1 to the relevant bit in the
  //Control/Status register.
// ----------------------------------------------------------------------------
  //Sticky Error
  //Set when an AP transaction returns an error, or when an illegal AP
  //transaction is attempted. In the case of a legal AP transaction the error
  //from the AP is masked by dp_err_out_en, which ensures the error is sampled
  //only when it is valid.
  assign stickyerr_detected = ap_err_dp | (start_ap_tx & (~ap_pwr_on));

  //The Sticky Error Flag can be cleared by writing to the Abort register, or
  //by writing 1 to the actual error flag in the Control/Status register
  assign dp_stkerr_clr =  (dp_abort_execute & jtag_sc_top[2]) | //Abt Reg
                          (dp_cs_load & jtag_sc_top[5]);  //W1C

  assign dp_cs_stickyerr_load = ( (~dp_cs_stickyerr)
                                        & stickyerr_detected )
                                      | dp_stkerr_clr;

  assign dp_cs_stickyerr_next = ~dp_stkerr_clr;

  always @(posedge tck or negedge dpreset_n)
    if (!dpreset_n)
      dp_cs_stickyerr <= 1'b0;
    else if (dp_cs_stickyerr_load)
      dp_cs_stickyerr <= dp_cs_stickyerr_next;

  //Sticky Overrun
  //Set when ORUNDETECT is set and a transaction gives a wait response.
  assign stickyorun_detected  = state_cdr &
                                //Wait only set in CDR on DPACC or APACC
                                ack_wait &        //Error Condition
                                dp_cs_orundetect; //Detection enabled

  //The Sticky Overrun flag is cleared by writing to the abort register,
  // or by writing 1 to the actual error flag in the Control/Status register.
  assign dp_stkorun_clr = (dp_abort_execute & jtag_sc_top[4])
                          | (dp_cs_load & jtag_sc_top[1] );

  assign dp_cs_stickyorun_load =  ( (~dp_cs_stickyorun)
                                          & stickyorun_detected )
                                        | dp_stkorun_clr;

  assign dp_cs_stickyorun_next = ~dp_stkorun_clr;

  always @(posedge tck or negedge dpreset_n)
    if (!dpreset_n)
      dp_cs_stickyorun <= 1'b0;
    else if (dp_cs_stickyorun_load)
      dp_cs_stickyorun <= dp_cs_stickyorun_next;

// ----------------------------------------------------------------------------
// Top Level IO
// ----------------------------------------------------------------------------
  assign dp_data_dp = jtag_sc_top;
  assign dp_rnw_dp = tx_rnw;

  // During the handshake reset sequence, 2'b10 is passed as the Bank Select
  // to the AP. All registers under this encoded banksel field are reserved
  // and RAZ/WI so this results in a null transaction.
  assign dp_sel_apbanksel_masked =  (reset_dp_ap_handshake ?
                                    2'b10 : dp_sel_apbanksel);

  assign dp_regaddr_dp = {dp_sel_apbanksel_masked, tx_regaddr};

// ----------------------------------------------------------------------------
// Assertions
// ----------------------------------------------------------------------------
`ifdef ARM_ASSERT_ON
  `include "std_ovl_defines.h"

  assert_implication
    #(`OVL_FATAL, `OVL_ASSERT, "ap_busy_regd and ap_busy_inst must be consistent.")
    u_regd_inst_consistency
    (
      .clk              (tck),
      .reset_n          (dpreset_n),
      .antecedent_expr  (~ap_busy_regd),
      .consequent_expr  (~ap_busy_inst)
    );

  assert_implication
    #(`OVL_FATAL, `OVL_ASSERT, "The JTAG Instruction Register should contain a valid instruction at SDR")
    u_valid_jtag_inst
    (
      .clk              (tck),
      .reset_n          (dpreset_n),
      .antecedent_expr  (jtag_state == JTAG_SDR),
      .consequent_expr  ((jtag_inst == JTAG_3_BYPASS) | ir_dpapacc | ir_idcode | ir_abort)
    );


  assert_implication
    #(`OVL_FATAL, `OVL_ASSERT, "The AP can be busy without being aborted only if it is selected and APACC was the last accepted transaction.")
    u_ap_busy_and_selected
    (
      .clk              (tck),
      .reset_n          (dpreset_n),
      .antecedent_expr  ((ap_busy_inst | ap_busy_regd) & (~dp_abort_dapabort)),
      .consequent_expr  (dp_sel_apsel & ap_ndp)
    );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "Both ap_busy_inst and ap_busy_regd should be set when an AP transaction starts")
    u_regd_inst_simultaneous_at_start_aptx
    (
      .clk          (tck),
      .reset_n      (dpreset_n),
      .start_event  (~ap_busy_regd),
      .test_expr    (ap_busy_regd == ap_busy_inst)
    );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "A transaction should be about to start when ap_busy_inst goes high, and ap_busy_inst should be low when the transaction's result is sampled.")
      u_regd_cleared_after_inst
      (
        .clk          (tck),
        .reset_n      (dpreset_n),
        .start_event  (ap_busy_inst),
        .test_expr    (ap_busy_regd)
      );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "The DP must not report an AP transaction in progress when the dummy transaction as part of the handshake reset sequence is performed.")
      u_handshake_reset_never_ap_busy_regd
      (
        .clk          (tck),
        .reset_n      (dpreset_n),
        .start_event  (reset_dp_ap_handshake & ~ap_busy_regd),
        .test_expr    (~ap_busy_regd)
      );


  // DPRESETn is a synchronised reset that may not be deasserted for up to 3
  // TCK cycles after nTRST is de-asserted (for example if the unsynchronised
  // source of DPRESETn and nTRST are both asserted and released before the
  // first TCK)
  // In this situation, check that the synchronised DPRESETn does not prevent
  // the DP from behaving correctly. By inspection, there is no DP state that
  // is reset by DPRESETn that is sensitive to the jtag state machine in states
  // TLR, RTI or SDS (apart from jtag_inst) so simply assert that the state
  // machine will be in one of these three states for at least three cycles
  // following an nTRST.
  // For jtag_inst, check that it is reset to IDCODE on the 4th cycle after
  // nTRST (to ensure it is unaffected by a synchronised DPRESETn)

  wire jtag_state_safe = ((jtag_state == JTAG_TLR) |
                          (jtag_state == JTAG_RTI) |
                          (jtag_state == JTAG_SDS));

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "JTAG state machine must not leave TLR, RTI or SIR for 1 of 3 cycles after nTRST")
      u_jtag_safe_1_after_ntrst
      (
        .clk          (tck),
        .reset_n      (1'b1),
        .start_event  (~n_trst),
        .test_expr    (jtag_state_safe)
      );

  assert_next
    #(`OVL_FATAL, 2, 1, 0, `OVL_ASSERT,
      "JTAG state machine must not leave TLR, RTI or SIR for 2 of 3 cycles after nTRST")
      u_jtag_safe_2_after_ntrst
      (
        .clk          (tck),
        .reset_n      (1'b1),
        .start_event  (~n_trst),
        .test_expr    (jtag_state_safe)
      );

  assert_next
    #(`OVL_FATAL, 3, 1, 0, `OVL_ASSERT,
      "JTAG state machine must not leave TLR, RTI or SIR for 3 of 3 cycles after nTRST")
      u_jtag_safe_3_after_ntrst
      (
        .clk          (tck),
        .reset_n      (1'b1),
        .start_event  (~n_trst),
        .test_expr    (jtag_state_safe)
      );

  assert_next
    #(`OVL_FATAL, 4, 1, 0, `OVL_ASSERT,
      "nTRST must reset leave jtag_inst in state JTAG_3_IDCODE regardless of DPRESETn")
      u_jtag_idcode_after_ntrst
      (
        .clk          (tck),
        .reset_n      (1'b1),
        .start_event  (~n_trst),
        .test_expr    (jtag_inst == JTAG_3_IDCODE)
      );

  //This is a usage warning as it may occur in a system where the debugger uses TMS to
  //reset the JTAG state machine rather than nTRST
  assert_implication
    #(`OVL_WARNING, `OVL_ASSERT,
      "DPRESETn asserted when JTAG not in safe state")
    u_warning_jtag_unsafe
    (
      .clk              (tck),
      .reset_n          (n_trst),
      .antecedent_expr  (~dpreset_n),
      .consequent_expr  (jtag_state_safe)
    );

  // ap_err_dp cannot be sampled before it is written. The register has no
  // reset so this is detected by looking for X.
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "ap_err_dp must never be X")
    u_xcheck_ap_err_dp
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (ap_err_dp) );

  //Check for X in Register load enables
  // - jtag_inst_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "jtag_inst_load can never be x")
    u_jtag_inst_load_x
      ( .clk        (tck),
        .reset_n    (n_trst),
        .qualifier  (1'b1),
        .test_expr  (jtag_inst_load) );

  // - tdo_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "tdo_load can never be x")
    u_tdo_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (tdo_load) );

  // - jtag_c_top_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "jtag_sc_top_load can never be x")
    u_jtag_sc_top_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (jtag_sc_top_load) );

  // - jtag_sc_btm_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "jtag_sc_btm_load can never be x")
    u_jtag_sc_btm_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (jtag_sc_btm_load) );

  // - ap_busy_regd_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "ap_busy_regd_load can never be x")
    u_ap_busy_regd_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (ap_busy_regd_load) );

  // - ap_ndp_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "ap_ndp_load can never be x")
    u_ap_ndp_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (ap_ndp_load) );

  // - dp_req_dp_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_req_dp_load can never be x")
    u_dp_req_dp_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_req_dp_load) );

  // - dp_abort_dapabort_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_abort_dapabort_load can never be x")
    u_dp_abort_dapabort_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_abort_dapabort_load) );

  // - dp_cs_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_cs_load can never be x")
    u_dp_cs_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_cs_load) );

  // - dp_sel_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_sel_load can never be x")
    u_dp_sel_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_sel_load) );

  // - dp_cs_stickyerr_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_cs_stickyerr_load can never be x")
    u_dp_cs_stickyerr_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_cs_stickyerr_load) );

  // - dp_cs_stickyorun_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_cs_stickyorun_load can never be x")
    u_dp_cs_stickyorun_load_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_cs_stickyorun_load) );

  //jtag_state should never be X
  assert_never_unknown
    #(`OVL_FATAL, 4, `OVL_ASSERT, "jtag_state can never be x")
    u_jtag_state_x_check
      ( .clk        (tck),
        .reset_n    (n_trst),
        .qualifier  (1'b1),
        .test_expr  (jtag_state) );

  //jtag_sc[34:31] should never be x during UIR
  assert_never_unknown
    #(`OVL_FATAL, 4, `OVL_ASSERT,
      "Instruction Scan Chain should never be x at UIR")
    u_jtag_inst_sc_x_check
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (jtag_state == JTAG_UIR),
        .test_expr  (jtag_sc_top[31:28]) );

  //stickyorun should never be set when orundetect is low
  assert_never
    #(`OVL_WARNING, `OVL_ASSERT,
      "It is UNP for STICKYORUN to be set while Overrun Detection is disabled")
    u_warning_stickyorun_when_detect_low
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .test_expr  (dp_cs_stickyorun & (~dp_cs_orundetect)) );

  //An AP transaction should not be started unless Select has been
  //initialised
  assert_never_unknown
    #(`OVL_FATAL, 2, `OVL_ASSERT,
      "An AP Transaction should not be started until SELECT initialised")
    u_started_aptx_while_banksel_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (start_ap_tx),
        .test_expr  (dp_sel_apbanksel) );

  //An AP request should not be started with an unknown APBANKSEL
  assert_never_unknown
    #(`OVL_FATAL, 2, `OVL_ASSERT,
      "An AP request should not be made with an unknown APBANKSEL")
    u_started_apreq_while_banksel_x
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (start_ap_req),
        .test_expr  (dp_sel_apbanksel_masked) );

  //Enable terms to OR of AND mux must be zero or 1 hot
  assert_zero_one_hot
    #(`OVL_FATAL, 5, `OVL_ASSERT,
      "Input enables to OoA mux must be 1 hot (or zero)")
    u_jtag_sc_mux_zero_one_hot
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .test_expr  ({dp_out_en, shifted_en,
                      tap_id_en, dpidr_en, ctrlstat_en}) );

  //If a legal AP transaction is started, the handshake should not be reset
  assert_zero_one_hot
    #(`OVL_FATAL, 2, `OVL_ASSERT,
      "Handshake Reset Sequence should not occur for a legal AP transaction")
    u_reset_handshake_ap_tx_zero_one_hot
      (
        .clk        (tck),
        .reset_n    (dpreset_n),
        .test_expr  ({reset_dp_ap_handshake, start_ap_tx_masked})
      );

 //Detect Illegal Software Sequences
  // - Debugger should not try and access AP when CDBGPWRUPACK is low.
  assert_never
    #(`OVL_WARNING, `OVL_ASSERT,
      "AP Transaction Attempted while AP powered down")
    u_warning_ap_access_while_powereddown
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .test_expr  ( (start_ap_tx & (~dp_cs_cdbgpwrupack)) ));

  // - CxxxREQ can not be deasserted until the corresponding CxxxACK is seen,
  // nor can it be asserted unless the corresponding CxxxACK is low
  assert_handshake  //DBGPWRUP
    #(`OVL_WARNING,
      0, //Min Ack Cycle Checking Off
      0, //Max Ack Cycle Checking Off
      1, //Req Drop Checking On
      0, //Deassert Count Checking Off
      0, //Max Ack Length Checking Off
      `OVL_ASSERT, "Illegal CDBGPWRUPREQ behaviour")
    u_warning_cdbgpwrupreq_handshake
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .req        (dp_cs_cdbgpwrupreq),
        .ack        (dp_cs_cdbgpwrupack) );

  assert_handshake  //SYSPWRUP
    #(`OVL_WARNING,
      0, //Min Ack Cycle Checking Off
      0, //Max Ack Cycle Checking Off
      1, //Req Drop Checking On
      0, //Deassert Count Checking Off
      0, //Max Ack Length Checking Off
      `OVL_ASSERT, "Illegal CSYSPWRUPREQ behaviour")
    u_warning_csyspwrupreq_handshake
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .req        (dp_cs_csyspwrupreq),
        .ack        (csyspwrupack_sync) );

  assert_handshake  //DBGRST
    #(`OVL_WARNING,
      0, //Min Ack Cycle Checking Off
      0, //Max Ack Cycle Checking Off
      1, //Req Drop Checking On
      0, //Deassert Count Checking Off
      0, //Max Ack Length Checking Off
      `OVL_ASSERT, "Illegal CDBGRSTREQ behaviour")
    u_warning_cdbgrstreq_handshake
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .req        (dp_cs_cdbgrstreq),
        .ack        (cdbgrstack_sync) );

  // - The effect of setting a Ctrl/Stat field not implemented on MinDP is UNP
  assert_never  //TRNCNT
    #(`OVL_WARNING, `OVL_ASSERT, "Setting TRNCNT to a non-zero value is UNP")
    u_warning_trncnt_set
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .test_expr  (dp_cs_load & (|jtag_sc_top[21:12])) );

  assert_never  //MASKLANE
    #(`OVL_WARNING, `OVL_ASSERT, "Setting MASKLANE to a non-zero value is UNP")
    u_warning_masklane_set
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .test_expr  (dp_cs_load & (|jtag_sc_top[11:8])) );

  assert_never  //TRNMODE
    #(`OVL_WARNING, `OVL_ASSERT, "Setting TRNMODE to a non-zero value is UNP")
    u_warning_trnmode_set
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .test_expr  (dp_cs_load & (|jtag_sc_top[3:2])) );

  // The effect of clearing ORUNDETECT while STICKYORUN is 1 is UNP
  assert_never
    #(`OVL_WARNING, `OVL_ASSERT, "Switching out of overrun detect mode while STICKYORUN is set is UNP")
    u_warning_stickyorun_set
    (
      .clk          (tck),
      .reset_n      (dpreset_n),
      .test_expr    (dp_cs_load & (~jtag_sc_top[0]) & (~jtag_sc_top[1]) & dp_cs_stickyorun)
    );

  //sticky_err_detected should never be set when dp_out_en is low
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT,
      "Sticky Err Detected should never be set when dp_out_en is low")
    u_stickyerr_det_mask
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .test_expr  (ap_err_dp & (~dp_err_out_en)) );

  // - The Select register should be initialised before attempting an AP tx
  assert_never_unknown
    #(`OVL_FATAL, 2, `OVL_ASSERT,
      "Select register must be initialised before attempting an AP tx")
    u_warning_select_uninit
      ( .clk        (tck),
        .reset_n    (dpreset_n),
        .qualifier  (start_ap_tx),
        .test_expr  (dp_sel_apbanksel) );

`endif

// ----------------------------------------------------------------------------
// UNDEF's
// ----------------------------------------------------------------------------


endmodule

