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

module cm0_dap_dp_sw
   (swclk, dpreset_n,
    swdi_i, swdo_o, swdoen_o,
    dp_data_dp_o, dp_regaddr_dp_o, dp_rnw_dp_o,
    dp_wr_en_o, dp_out_en_o, dp_err_out_en_o,
    ap_data_dp_i, ap_err_dp_i,
    dp_req_dp_load_o, dp_req_dp_next_o, dp_req_dp_i, ap_ack_dp_i,
    csyspwrupack_sync_i, dp_cs_cdbgpwrupack_i, cdbgrstack_sync_i,
    csyspwrupreq_o, dp_cs_cdbgpwrupreq_o, cdbgrstreq_o,
    reset_dp_ap_handshake_i,
    // Configuration
    ecorevnum_i,
    // Scan Enable for DFT
    SE
   );

// ----------------------------------------------------------------------------
// `define's
// ----------------------------------------------------------------------------
  `include "cm0_dap_dp_sw_defs.v"

// ----------------------------------------------------------------------------
// Configurablility
// ----------------------------------------------------------------------------
  parameter DBG     = 1;  //SW DP is Present when DBG==1 & JTAGnSW==0
  parameter JTAGnSW = 0;
  parameter RAR     = 0;

  //The SW DP is present if (DBG == 1) and (JTAGnSW == 0). A wire is derived
  //and used to perform the masking inside the module, and a parameter
  //derived to be passed to instantiated modules.
  localparam  PRESENT    = ((DBG != 0) && (JTAGnSW == 0)) ? 1 : 0;
  wire        cfg_presnt = ((DBG != 0) && (JTAGnSW == 0));
  wire        cfg_rar    = (RAR != 0);

// ----------------------------------------------------------------------------
// Port Definitions
// ----------------------------------------------------------------------------
  input         swclk;                //SW Clock
  input         dpreset_n;            //DP PO Reset

  //SW Connections
  input         swdi_i;               //SW Data In
  output        swdo_o;               //SW Data Out
  output        swdoen_o;             //SW Data Out Enable

  //Internal DAP Connections
  // - To Transfer Module
  output [31:0] dp_data_dp_o;         //Data from DP to AP for AP transaction
  output  [3:0] dp_regaddr_dp_o;      //AP Register Address for an AP Transaction
  output        dp_rnw_dp_o;          //RnW For AP Transaction
  output        dp_wr_en_o;           //Load transfer register with above data
  output        dp_out_en_o;          //Mask for ap_data_dp input
  output        dp_err_out_en_o;      //Mask for error flags from AP

  // - From Transfer Module
  input  [31:0] ap_data_dp_i;         //Returned data from result of AP transaction
  input         ap_err_dp_i;          //Error response from AP transaction

  // - Synchronisation Handshake Signals
  input         dp_req_dp_i;          //Request AP to complete a transaction
  output        dp_req_dp_next_o;     // Next value for dp_req_dp
  output        dp_req_dp_load_o;     // Load Enable for dp_req_dp register in CDC block
  input         ap_ack_dp_i;          //Transaction complete acknowledge from AP

  //Power Management Connections
  input         csyspwrupack_sync_i;  //Sync'd System Power Domain Power Up Ack
  input         dp_cs_cdbgpwrupack_i; //Software Power Up Ack
  input         cdbgrstack_sync_i;    //Sync'd Debug Reset Ack
  output        csyspwrupreq_o;       //System Power Domain Power Up Request
  output        dp_cs_cdbgpwrupreq_o; //Debug Power Domain Power Up Request
  output        cdbgrstreq_o;         //Debug Reset Request

  input         reset_dp_ap_handshake_i;

  input   [3:0] ecorevnum_i;          // Configurable DPIDR Revision Field

  // Scan Enable for DFT
  input         SE;

// ----------------------------------------------------------------------------
// Signal Declarations
// ----------------------------------------------------------------------------

  // Registers which do not usually have a reset term will use this reset
  // signal, connected to dpreset_n or tied high depending on whether Reset
  // All Registers (RAR) is required.
  wire          rar_reset_n = cfg_rar ? dpreset_n : 1'b1;

  //Masked Top Level Signals
  wire          swdi;
  wire          swdo;
  wire          swdoen;
  wire   [31:0] dp_data_dp;
  wire    [3:0] dp_regaddr_dp;
  wire          dp_rnw_dp;
  wire          dp_wr_en;
  wire          dp_out_en;
  wire          dp_err_out_en;
  wire   [31:0] ap_data_dp;
  wire          ap_err_dp;
  wire          csyspwrupack_sync;
  wire          cdbgrstack_sync;
  // - CxxxREQ signals are registered as they are set by writing to the
  // CTRL/STAT register
  reg           dp_cs_csyspwrupreq;
  reg           dp_cs_cdbgpwrupreq;
  reg           dp_cs_cdbgrstreq;
  wire          dp_req_dp;            //dp_req_dp comes from an instantiated CDC reg
  wire          ap_ack_dp;

  // Power Control Logic Signals
  wire          dp_cs_cdbgpwrupack;   // CDBGPWRUPACK in DP CTRL/STAT

  wire          reset_dp_ap_handshake;// Signal to indicate DP/AP handshake should be reset

  //Control For Top Level Internal Signals
  // - swdi_int is a registered version of swdi, to prevent a meta stable line
  // taking the state machine into an unknown state during turnaround if
  // synchronisation is lost.
  wire          swdi_int;             //Internal masked version of swdi
  wire          swdi_int_load;        //Enable for mask on swdi_int
  wire          i_swdi_int;           //Intermediate swdi_int to enable clamping

  reg           swdo_en_regd;         //Registered version of swdoen
  wire          swdo_en_regd_next;    //Input to swdo_en_regd

  // - dp_req_dp Control
  wire          dp_req_dp_next;       //Input to dp_req_dp register
  wire          dp_req_dp_load;       //Load enable for dp_req_dp register

  //State Machine
  reg     [6:0] sw_state;             //SW State Machine
  reg     [6:0] sw_next_state;        //Next state during non-count states
  wire    [6:0] sw_next_count;        //Next state during count states
  wire    [6:0] sw_next;              //Input to sw_state

  // - During the count states, the following signals are used to determine
  // the next state:
  wire          count_50;             //Set when Count reaches 50
  wire    [5:0] count_sum_ext;        //Extended count sum
  wire    [6:0] count_sum;            //Final Output of adder
  reg     [6:0] count_reset;          //Masked value of count_sum
  wire          count_reset_sel;

  //Packet Data
  reg     [3:0] packet;               //4 bit shift reg to store packet data
  wire          packet_shift;         //Shift enable for packet
  wire    [3:0] packet_next;          //Input to packet
  wire          packet_ap_ndp;        //APnDP
  wire          packet_r_nw;          //RnW
  wire    [1:0] packet_reg_addr;      //2 Bit A[3:2]

  wire          non_waitable_tx;      //Set when the current transaction cannot
                                      //generate a WAIT/FAULT response.
  wire          resend_acc;           //Set when RESEND register is being accessed
  wire          trn_write;            //Set when TRN field of DLCR is written

  //Parity Generation & Checking
  reg           parity;               //1 flop is used to generate parity in series
  wire          parity_next;          //Input to parity flop
  wire          parity_load;          //Load enable to parity flop
  wire          parity_generate;      //Parity OoA mux enable terms
  wire          parity_ack_ok_en;
  wire          parity_ack_wait_en;
  wire          parity_ack_fault_en;
  wire          parity_reset;         //Synchronous reset for parity flop
  wire          parity_source;        //Data stream from which parity is generated
  wire          sw_parity_err;        //Parity error indication
  wire          sw_data_end_ok;       //End of data phase in an OK-ACK transaction

  //SW Shift Register
  // - This register is loaded by an OoA multiplexer
  reg    [31:0] sw_data;
  // - Mux Control Signals
  wire          ap_acc;               //Set when AP data is addressed by tx
  wire          sw_header_valid;      //Set when a valid SW header is received
  wire          sw_reg_load;          //Load sw_data with DP register
  wire          sw_data_dpidr_en;     //DPIDR Register Term Enable
  wire          sw_data_ctrlstat_en;  //Ctrl/Stat Register Term Enable
  wire          sw_data_dlcr_en;      //DLCR Register Term Enable
  wire          sw_data_shift;        //Load shifted data into shift reg
  // - Mux Data Signals
  wire   [31:0] sw_data_shifted;      //Shift register input to sw_data
  wire   [31:0] sw_data_next;         //Mux Ouptut - Input to register
  // - Register Control Signals
  wire          sw_data_load;         //Load enable for shift reg

  //Control Signals
  wire          perform_tx;           //Set when a transaction should be initiated
  wire          dp_write;             //Set when a DP register should be written
  wire          start_ap_tx;          //Set when an AP transaction should be started
  wire          start_ap_tx_masked;
  wire          start_ap_req;         //Set when a request is to be made to the AP

  //DAP Status Signals
  wire          ap_interface_busy;    //AP is in control of DP/AP Interface
  wire          ap_busy_inst;         //AP transaction intiated
  reg           ap_busy_regd;         //Registered version of ap_busy_inst
  wire          ap_busy_regd_load;    //Load enable to ap_busy_regd
  wire          ap_pwr_on;            //AP power status flag

  //DP Registers
  // - dp_ctrlstat
  wire   [31:0] dp_ctrlstat;          //Composite CTRL/STAT register
  reg           dp_cs_wdataerr;       //Bit[7] of CTRL/STAT (WDATAERR)
  reg           dp_cs_readok;         //Bit[6] of CTRL/STAT (READOK)
  reg           dp_cs_stickyerr;      //Bit[5] of CTRL/STAT (STICKYERR)
  reg           dp_cs_stickyorun;     //Bit[1] of CTRL/STAT (STICKYORUN)
  reg           dp_cs_orundetect;     //Bit[0] of CTRL/STAT (ORUNDETECT)
  //dp_cs_load is used to load the CTRL/STAT fields which are set on
  //a write to the CTRL/STAT register, i.e. the CxxxREQ fields. The error
  //fields are loaded by the relevant error condition or flag reset.
  wire          dp_cs_load;
  //Control Status Register Error flag signals:
  wire          wdataerr_detected;
  wire          dp_cs_wdataerr_load;
  wire          dp_cs_wdataerr_next;
  wire          stickyerr_detected;
  wire          dp_cs_stickyerr_load;
  wire          dp_cs_stickyerr_next;
  wire          dp_cs_readok_load;
  wire          dp_cs_readok_next;
  wire          dp_cs_stickyorun_load;
  wire          dp_cs_stickyorun_next;
  wire          stickyorun_detected;

  // - dp_dlcr
  wire   [31:0] dp_dlcr;                  //RO Register
  // - dp_sel
  reg           dp_sel_apsel;             //Encoded [31:24] of Select Register
  wire          dp_sel_apsel_next;        //Input to dp_sel_apsel
  reg     [1:0] dp_sel_apbanksel;         //Encoded [7:4] of Select Register
  wire    [1:0] dp_sel_apbanksel_next;    //Input to dp_sel_apbanksel
  wire          dp_sel_apbanksel_next_1;  //Each bit is encoded separately
  wire          dp_sel_apbanksel_next_0;
  wire    [1:0] dp_sel_apbanksel_masked;
  reg           dp_sel_dpbanksel;         //Bit[0] of Select register
  wire          dp_sel_load;              //Enable for Select registers

  // - dp_abort
  wire          dp_abort_execute;         //Set on a write to the abort register
  wire          dp_abort_stkorun_clr;     //Bit[4] of Abort, clears sticky orun
  wire          dp_abort_wdataerr_clr;    //Bit[3] of Abort, clears wdataerr
  wire          dp_abort_stkerr_clr;      //Bit[2] of Abort, clears sticky error
  reg           dp_abort_dapabort;        //Bit[0] of Abort, indicates an abort
  wire          dp_abort_dapabort_next;   //Input to dp_abort_dapabort;
  wire          dp_abort_dapabort_load;   //Load enable for dp_abort_dapabort

  //Ack Signals
  wire          ack_ok_inst;          //ACK OK    during state  SW_7_PARK
  wire          ack_ok_ack0;          //ACK OK    during states SW_7_ACK0(_NODAT)
  wire          ack_ok_ack1;          //ACK OK    during states SW_7_ACK1(_NODAT)
  wire          ack_wait_inst;        //ACK WAIT  during state  SW_7_PARK
  wire          ack_fault;            //ACK FAULT valid at all times

  wire    [3:0] ecorevnum;            // Configurable DPIDR Revision Fields
  wire   [31:0] dp_idr;               // Value of DPIDR

//------------------------------------------------------------------------------
// Remove Module If DP Not Present
//------------------------------------------------------------------------------
  //Mask Inputs
  assign swdi                   = cfg_presnt ? swdi_i                   : 1'b0;
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
  assign swdo_o                 = cfg_presnt ? swdo                     : 1'b0;
  assign swdoen_o               = cfg_presnt ? swdoen                   : 1'b0;
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
// SW State Machine
// ----------------
  //There is a single state machine to control all the DP operations,
  //including decoding the SW protocol. The protocol requires that a line reset
  //is performed by holding swdi high for 50 cycles and that the first
  //transaction after the line reset is a read of the DPIDR.
  //To detect this, extra states are added which count through 50 consecutive
  //1's, and extra shadow states are used for the SW packet decoding to check
  //that the first transaction after this is a read of the DPIDR.
  //
  //Although the SW State Machine has 114 possible states, many of the states
  //simply progress from one state to the next as a counter. To save area in
  //the synthesis, rather than using a case statement to determine every
  //possible next state, a hybrid between case statement and counter is used.
  //The lower 5 bits of the state machine are still set using a case
  //statement during the "non-counting" states, however, when one of the
  //upper two bits is set, the next state is determined using an adder to
  //increment the state sequentially.
  //
  //Note that since SWDI is registered, when the debugger is driving the line
  //the SM is one state behind the line. To allow it to catch up after the
  //debugger finishes driving the line and the DAP starts driving it, the TRN
  //state is skipped. After the DAP has finished driving the line, and the
  //debugger resumes driving it, there are two TRN states instead of 1: one to
  //come back inline with the delayed debugger data, and one for the actual
  //TRN state driven on the line.
  //
// ----------------------------------------------------------------------------

  //Determine next state during non-counting states
  always @(sw_state or swdi_int or parity or resend_acc or packet or ack_ok_inst
    or packet_r_nw or dp_cs_orundetect or trn_write or sw_parity_err)
    case (sw_state[4:0])
      //Wait for start bit
      SW_5_START     : sw_next_state = swdi_int ? SW_7_APnDP : SW_7_START;
      //Advance through packet header
      SW_5_APnDP     : sw_next_state = SW_7_RnW;
      SW_5_RnW       : sw_next_state = SW_7_A0;
      SW_5_A0        : sw_next_state = SW_7_A1;
      SW_5_A1        : sw_next_state = SW_7_PARITY;
      //If a parity error is detected then the SM must determine how many
      //consecutive 1's there were up to the parity state, and skip the
      //appropriate number of reset counter states so that a count of 50 1's
      //starting before the parity error is detected is not missed.
      //Note that is the packet was all 1's, then there will have been an
      //extra 1 in addition to the ones counted (the start bit).
      SW_5_PARITY    : sw_next_state = (~(sw_parity_err | resend_acc))
                                        ? SW_7_STOP
                                        : (
    (swdi_int ? (packet[3] ? (packet[2] ? (packet[1] ? (packet[0] ?
                                                                   SW_7_RST_6 :
                                                       SW_7_RST_4) :
                                          SW_7_RST_3) :
                             SW_7_RST_2) :
                SW_7_RST_1) :
   SW_7_RST_0) );
      //If a stop bit error is detected, the correct entry state to the reset
        //count sequence is determined in the same way as for parity errors.
        //Note that at least one 1 will have been detected (the erroneous
        //parity bit).
      SW_5_STOP      : sw_next_state = (~swdi_int)
                                        ? SW_7_PARK
                                        : (
    (parity   ? (packet[3] ? (packet[2] ? (packet[1] ? (packet[0] ?
                                                                   SW_7_RST_7 :
                                                       SW_7_RST_5) :
                                          SW_7_RST_4) :
                             SW_7_RST_3) :
                SW_7_RST_2) :
   SW_7_RST_1) );
      //If a Park error is detected then the number of consecutive 1's must
      //be 0 (as this will have been the park bit error).
      //Otherwise generate an ACK with or without a data phase depending on
      //whether the ACK is OK or overrun detect mode is enabled
      SW_5_PARK      : sw_next_state = swdi_int
                                        ? ((ack_ok_inst | dp_cs_orundetect)
                                           ? SW_7_ACK0
                                           : SW_7_ACK0_NODAT)
                                        : SW_7_RST_0;
      //ACK States without data phase
      SW_5_ACK0_NODAT: sw_next_state = SW_7_ACK1_NODAT;
      SW_5_ACK1_NODAT: sw_next_state = SW_7_ACK2_NODAT;
      SW_5_ACK2_NODAT: sw_next_state = SW_7_ENDTRN0;
      //ACK States with data phase
      SW_5_ACK0      : sw_next_state = SW_7_ACK1;
      SW_5_ACK1      : sw_next_state = SW_7_ACK2;
      SW_5_ACK2      : sw_next_state = packet_r_nw
                                        ? SW_7_DATA0
                                        : SW_7_ACKTRN0;
      SW_5_ACKTRN0   : sw_next_state = SW_7_ACKTRN1;
      SW_5_ACKTRN1   : sw_next_state = SW_7_DATA0;
      //After the Data Parity state there will be a TRN for reads, and not
      //for writes. If a write of a non-zero value to the TRN field of the
      //DLCR is detected here then it causes an immediate protocol error.
      SW_5_DATAPARITY  : sw_next_state = trn_write
                                          ? SW_7_RST_0
                                          : (packet_r_nw ? SW_7_ENDTRN0
                                                         : SW_7_START);
      SW_5_ENDTRN0     : sw_next_state = SW_7_ENDTRN1;
      SW_5_ENDTRN1     : sw_next_state = SW_7_START;
      //Reset Shadow States
      // - Wait for start bit after line reset
      SW_5_RST_START   : sw_next_state = swdi_int  ? SW_7_RST_APnDP
                                                    : SW_7_RST_START;
      // - Check that the packet is a read of DPIDR. If not then as soon as
      // the error is detected, the state goes back to the appropriate reset
      // counter state.
      SW_5_RST_APnDP   : sw_next_state = swdi_int  ? SW_7_RST_2
                                                    : SW_7_RST_RnW;
      SW_5_RST_RnW     : sw_next_state = swdi_int  ? SW_7_RST_A0
                                                    : SW_7_RST_0;
      SW_5_RST_A0      : sw_next_state = swdi_int  ? SW_7_RST_1
                                                    : SW_7_RST_A1;
      //After the A1 state, if the packet was a DPIDR read, then the SM goes
      //back into its standard states to check the rest of the packet and
      //drive the data.
      SW_5_RST_A1      : sw_next_state = swdi_int  ? SW_7_RST_1
                                                    : SW_7_PARITY;
      //If the SM enters an unused state (e.g. due to meta-stability), then
      //the next state will always be the start of a line reset count,
      //forcing a line reset in this case.
      SW_5_UNUSED1,
      SW_5_UNUSED2,
      SW_5_UNUSED3,
      SW_5_UNUSED4,
      SW_5_UNUSED5,
      SW_5_UNUSED6,
      SW_5_UNUSED7,
      SW_5_UNUSED8      : sw_next_state = SW_7_RST_0;
      default : sw_next_state = 7'bxxxxxxx;   //X-Propagation
    endcase

  //Count States
  // - count_50 is set once 50 consecutive 1's have been counted. Note that
  // sw_state[5:0] can never exceed 50 in normal use when counting consecutive
  // values. The test has been optimized for area under this assumption.
  // If the state machine reaches states above 50, the behaviour is the same
  // as state 50 or one of the lower reset states for predictable operation.
  assign count_50 = sw_state[5] & sw_state[4] & sw_state[1];

  // The counter increments unconditionally and provides the next state for
  // sequential states; its output value is selected by the multiplexer if
  // required.
  assign count_sum_ext = sw_state[5:0] + 1'b1;
  assign count_sum = {sw_state[6], count_sum_ext[5:0]};

  // When in the reset states, count_50 and swdi_int determine the next
  // non-sequential state.
  always @(count_50, swdi_int)
    case({count_50, swdi_int})
      2'b00  : count_reset = SW_7_RST_0;
      2'b11  : count_reset = SW_7_RST_50;
      2'b10  : count_reset = SW_7_RST_START;
      default : count_reset = 7'bxxxxxxx;     // X propagation
    endcase

  // - sw_next_count is the next state input to the state register when
  // in counting states. This is multiplexed between count_sum for sequential
  // states and count_reset for non-sequential states.
  assign count_reset_sel = (sw_state[6] & (count_50 | (~swdi_int)));
  assign sw_next_count =  (count_reset_sel)
                          ? count_reset
                          : count_sum;

  //SW State Register
  // - sw_next is the muxed input to sw_state, selected between sw_next_count
  // and sw_next_state, depending on whether the SM is currently in
  // a counting state (if either of sw_state[6:5] are set)
  assign sw_next = (|sw_state[6:5]) ? sw_next_count : sw_next_state;

  // - sw_state
  // The reset state is RST_6, as a line reset is required after a reset, and
  // a 6-cycle margin allows for the use of reset synchronizers.
  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n)
      sw_state <= SW_7_RST_6;
    else
      sw_state <= sw_next;

// ----------------------------------------------------------------------------
// SW Packet Decode
// ----------------
  //Every SW Transaction is start by a packet, driven by the host, comprised
  //of the following data used to specify the transaction:
  //  APnDP  - Whether the Transaction is to an AP or DP Register
  //  RnW    - Whether the Transaction is a read or a write
  //  A[3:2] - The address of the register being accessed
  //
  //This data is stored in a 4 bit shift register, with the relevant bits
  //connected to wires for the different fields. These are then used to
  //control the DP operation for the rest of the packet. The RnW and A[3:2]
  //bits are also passed to the AP on AP transactions.
  //
  //The packet data is loaded during normal transactions, but also during the
  //DPIDR read as part of a line reset. This means the registers have to be
  //enabled by both the relevant main state machine states, and reset shadow
  //states.
// ----------------------------------------------------------------------------
  assign packet_shift = ( ( (sw_state >= SW_7_APnDP)     //Std Packet States
                          & (sw_state <= SW_7_A1) )
                        | ( (sw_state >= SW_7_RST_APnDP) //Rst Packet States
                          & (sw_state <= SW_7_RST_A1) )
                        );

  assign packet_next = {swdi_int, packet[3:1]};

  always @(posedge swclk or negedge rar_reset_n)
    if (!rar_reset_n)
      packet <= 4'b1111;
    else if (packet_shift)
      packet <= packet_next;

  assign packet_ap_ndp    = packet[0];
  assign packet_r_nw      = packet[1];
  assign packet_reg_addr  = packet[3:2];

// ----------------------------------------------------------------------------
// Parity Generation & Checking
// ----------------------------
  //Parity data is generated by serially shifting data through a register.
  //When the input to the register is 1, its value is flipped; when the input
  //is 0, it is preserved. This means that after the data has been shifted
  //through, the register will store the correct parity value which can
  //either be checked against the supplied parity bit (for data driven by
  //the host) or driven onto swdo (for data driven by the DAP).
  //
  //By resetting the parity register to either 1 or 0 at the start of the
  //serial data word, even or odd parity can be generated. Even parity is
  //used in SW, so the register is reset to 0.
  //
  //The DAP must be able to both generate and check parity, so the input to
  //the register must be able to be driven by either swdi or swdo.
  //
  //The parity register is also used to register the acknowledge responses in
  //the ACKx states, to reduce the combinatorial paths onto SWDO. The
  //multiplexing between the different inputs to the register is performed
  //using an OR-of-ANDs mux to reduce area.
// ----------------------------------------------------------------------------

  assign parity_source = (sw_data_shift & packet_r_nw) ? swdo
  //Parity is generated on data shifted out during a read transaction
                                                       : swdi_int;
  //and checked at all other times

  //The parity value is reset at the start of parity generation/checking
  //The value is reset for the 32 bit data word at the end of the ACK state,
  //which is necessary for read data, and at ACKTRN1 for writes.
  assign parity_reset = ( (sw_state == SW_7_START)
                        | (sw_state == SW_7_RST_START)
                        | ((sw_state & SW_7_ACK_MASK) == SW_7_ACK2)
                        | (sw_state == SW_7_ACKTRN1) );

  //A parity value is generated during the packet APnDP, RnW and A[3:2]
  //states, as well as when the 32 bit data word is being shifted in/out.
  assign parity_generate = (packet_shift | sw_data_shift);

  //OoA Mux Control Inputs
  // - Note ack inputs are loaded a cycle before they are to be driven onto
  // SWDO
  assign parity_ack_ok_en     = (sw_state == SW_7_PARK);
  assign parity_ack_wait_en   = ((sw_state & SW_7_ACK_MASK) == SW_7_ACK0);
  assign parity_ack_fault_en  = ((sw_state & SW_7_ACK_MASK) == SW_7_ACK1);

  //Parity next is the input to the parity register, i.e. the output of the
  //OoA mux
  assign parity_next =  (parity_generate      & (parity ^ parity_source))   |
                        (parity_ack_ok_en     & ack_ok_inst)                |
                        (parity_ack_wait_en   & ~(ack_ok_ack0 | ack_fault)) |
                        (parity_ack_fault_en  & ack_fault);

  //The parity register is loaded when parity is being generated or the
  //register is being synchronously reset, or any of the mux enable terms are
  //asserted
  assign parity_load =  parity_reset        |
                        parity_generate     |
                        parity_ack_ok_en    |
                        parity_ack_wait_en  |
                        parity_ack_fault_en;

  //Parity Register
  always @(posedge swclk or negedge rar_reset_n)
    if (!rar_reset_n)
      parity <= 1'b1;
    else if (parity_load)
      parity <= parity_next;

  // Parity Check
  // If the incoming bit is different from the generated parity bit, this
  // bit is asserted to signal a parity error.
  assign sw_parity_err = (swdi_int ^ parity);

// ----------------------------------------------------------------------------
// Logical DP Registers
// --------------------
  //The SW DP Programmers Model is:
  //A[3:2] DPBankSel RnW  Register
  // 0x0       X      R     DPIDR
  // 0x0       X      W     Abort
  // 0x4       0      X   Ctrl/Stat
  // 0x4       1      X     DLCR
  // 0x8       X      R    Resend
  // 0x8       X      W    Select
  // 0xC       X      R    RDBUFF
  // 0xC       X      W   Reserved
  //
  //All DP Logical Register names are preceded in the RTL by dp_. The
  //individual fields making up composite registers are preceded by
  //dp_regname_.
// ----------------------------------------------------------------------------
  //CONTROL SIGNALS
  //sw_data_end_ok is asserted at the end of the data phase of a transaction
  //which has returned an OK response.
  //ack_fault is only used to mask out data parity errors when writes are
  //ignored in overrun detection mode (outside overrun mode the data parity
  //state is unreachable in the case of a WAIT or FAULT). In overrun mode the
  //FAULT and WAIT (implicitly) are checked as ack_fault is asserted as soon
  //as the STICKYORUN error bit is set.
  assign sw_data_end_ok = (sw_state == SW_7_DATAPARITY) &
                          (~ack_fault);

  //perform_tx is asserted at the end of the data phase, and is used to form the
  //loads for DP registers, the abort signals and is used to generate the AP
  //synchronisation handshake signals to start an AP transaction. It is only
  //generated when correct parity is detected on data (this is guaranteed for
  //read data as the DAP generates the parity, and ensures that corrupted
  //data does not get written).
  assign perform_tx = sw_data_end_ok &
                      ( (~sw_parity_err) | packet_r_nw );

  //dp_write is asserted when a DP register should be written.
  assign dp_write = perform_tx & (~packet_ap_ndp) & (~packet_r_nw);

  //Non-Waitable Accesses are reads of the DPIDR or CTRL/STAT register, and
  //writes to the Abort Register. non_waitable_tx is used to indicate one of
  //these accesses.
  assign non_waitable_tx = (~packet_ap_ndp) &
                           ( //Abort & DPIDR are same address
                             (packet_reg_addr == SW_REGADDR_DPIDR) |
                             //Ctrl/Stat is only selected when dpbanksel is 0
                             ( (packet_reg_addr == SW_REGADDR_CTRLSTAT)
                               & (~dp_sel_dpbanksel) & packet_r_nw)
                           );

  //REGISTERS
  //Abort Register
  //The abort register is WO and its effects are immediate, so it is not
  //physically implemented.
  //The abort register is used to clear error flags, which is implemented via
  //the following signals
  assign dp_abort_execute = dp_write
                            & (packet_reg_addr == SW_REGADDR_ABORT);

  assign dp_abort_wdataerr_clr = dp_abort_execute & sw_data[3];
  assign dp_abort_stkerr_clr   = dp_abort_execute & sw_data[2];

  //A DAPABORT has be to stored, as it affects the subsequent operation of
  //the DP. In Cortex-M0DAP, a DAPABORT has no effect on the AP, however it
  //free's up access to all of the DP registers. It is only asserted when the AP
  //is busy, in case the AP naturally becomes free after an ABORT is issued
  //then this clears the abort.
  assign dp_abort_dapabort_next = ap_busy_regd;

  assign dp_abort_dapabort_load = (dp_abort_execute & sw_data[0]) |
                                  //Set on write to abort
                                  dp_abort_dapabort;  //Then loads until cleared

  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n)
      dp_abort_dapabort <= 1'b0;
    else if (dp_abort_dapabort_load)
      dp_abort_dapabort <= dp_abort_dapabort_next;

  //Control/Status Register
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
                          dp_cs_wdataerr,     //[7]     RO
                          dp_cs_readok,       //[6]     RO
                          dp_cs_stickyerr,    //[5]     RO
                          1'b0,               //[4]     StickyCmp (RAZ in MinDP)
                          2'b00,              //[3:2]   TRNMODE (RAZ in MinDP)
                          dp_cs_stickyorun,   //[1]     STICKYORUN
                          dp_cs_orundetect    //[0]     ORUNDETECT
                       };

  //NB The Error Flag fields are not loaded with the other ctrl/stat fields
  //as they are set and cleared by different signals.
  assign dp_cs_load = dp_write
                      & (~dp_sel_dpbanksel)
                      & (packet_reg_addr == SW_REGADDR_CTRLSTAT);

  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n) begin
      dp_cs_csyspwrupreq    <= 1'b0;
      dp_cs_cdbgpwrupreq    <= 1'b0;
      dp_cs_cdbgrstreq      <= 1'b0;
      dp_cs_orundetect      <= 1'b0;
    end
    else if (dp_cs_load) begin
      dp_cs_csyspwrupreq    <= sw_data[30];
      dp_cs_cdbgpwrupreq    <= sw_data[28];
      dp_cs_cdbgrstreq      <= sw_data[26];
      dp_cs_orundetect      <= sw_data[0];
    end

  //Datalink Control Register (DLCR) (Read Only)
  assign  dp_dlcr = { {22{1'b0}},     //[31:10] SBZ/RAZ
                      2'b00,          //[9:8]   TURNAROUND (RO), 00 => 1 Cycle
                      2'b01,          //[7:6]   Wiremode (RO), 01 => Synchronous
                      3'b000,         //[5:3]   SBZ/RAZ
                      3'b000          //[2:0]   Prescaler
                    };

  //The TURNAROUND field is deprecated, and writing a value other than b00 to
  //it must be treated as a protocol error.
  assign trn_write =  dp_write &
                      (dp_sel_dpbanksel) &
                      (packet_reg_addr == SW_REGADDR_DLCR) &
                      (|sw_data[9:8]);

  //Resend Register
  //The Resend register is not physically implemented, and accesses to it are
  //trapped into the SW protocol error state.
  assign resend_acc = (~packet_ap_ndp) & packet_r_nw &
                      (packet_reg_addr == SW_REGADDR_RESEND);

  //Select Register
  //This register is WO, and the data written is encoded to be stored in
  //a fewer number of bits.
  //The select register comprises the following fields:
  //  [31:24] APSEL     - Selects between the AP's connected to the DP
  //  [7:4]   APBANKSEL - Selects the bank within the current AP
  //  [0]     DPBANKSEL - Seelcts the bank within the DP

  //Since only 1 AP is present in this DAP, the APSEL field is encoded as
  //a single bit, which is set when the present AP is selected. This is
  //performed by a reduction-NOR on the APSEL value written, such that the
  //present AP is selected when APSEL is 0x00
  assign dp_sel_apsel_next = ~(|sw_data[31:24]);

  //There are 16 logical banks in the AP, however only three of them are
  //used: 0x0, 0x1 and 0xF. Therefore APBANKSEL is encoded as a 2 bit value
  //as follows:
  //  sw_data[7:4] == 4'b0000 -> 2'b00 (AP Bank 0x0)
  //  sw_data[7:4] == 4'b0001 -> 2'b01 (AP Bank 0x1)
  //  sw_data[7:4] == 4'b1111 -> 2'b11 (AP Bank 0xF)
  //                   Else   -> 2'b10 (Reserved, RAZ/WI)
  //If the DP/AP handshake needs to be reset in preparation for power down the
  //bank selection is forced to 2'b10 so any transaction caused is RAZ/WI.

  // Encoded Bit 1
  assign dp_sel_apbanksel_next_1 =  (|sw_data[7:5]);
  // Encoded Bit 0
  assign dp_sel_apbanksel_next_0 = ((~dp_sel_apbanksel_next_1 & sw_data[4])
                                   | (&sw_data[7:4]));
  assign dp_sel_apbanksel_next = {dp_sel_apbanksel_next_1,
                                  dp_sel_apbanksel_next_0};

  //The DPBANKSEL bit is a single bit which is stored as-is.

  assign dp_sel_load = dp_write
                       & (packet_reg_addr == SW_REGADDR_SELECT);

  //The APSEL and APBANKSEL fields of the Select register are architecturally
  //defined to be unpredictable after reset. However, the encoded APSEL
  //signal is reset (such that the AP is not selected) as this is used as
  //a control signal. This is different to resetting the architectural
  //equivalent to 0x00, as writing that value would set the encoded APSEL to
  //be b1. APBANKSEL is not reset as it is only used as a data signal to the
  //AP and cannot be used unless APSEL is set, implying that the register has
  //been initialised.
  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n) begin
      dp_sel_dpbanksel <= 1'b0;  //This field is 0 on PO Reset
      dp_sel_apsel     <= 1'b0;  //AP is not selected after reset
    end
    else if (dp_sel_load) begin
      dp_sel_dpbanksel <= sw_data[0];
      dp_sel_apsel     <= dp_sel_apsel_next;
    end

  always @(posedge swclk or negedge rar_reset_n)
    if (!rar_reset_n)
      dp_sel_apbanksel <= 2'b11;
    else if (dp_sel_load)
      dp_sel_apbanksel <= dp_sel_apbanksel_next;

// ----------------------------------------------------------------------------
// SW Shift Register
// -----------------
  //The SW Shift Register is loaded with data from either the current DP
  //transaction or the previous AP transaction at the PACKTRN0 state. It is
  //shifted right as swdi is shifted in, during the DATAx states. The data
  //stored in it is used to write into the relevant DP register, or start and
  //AP transaction in the START state.
  //
  //Data loaded into the Shift Register can come from three sources: a DP
  //register, the shifted form of itself, or from the external AP data
  //source. These are selected by an OR-of-AND multiplexer to save area, and
  //as it can be desirable to load zero.
// ----------------------------------------------------------------------------
  //Load Enable Terms
  //sw_header_valid is asserted at the PARK state, when the shift
  //register needs to be loaded with either the result of the previous AP
  //transaction or the selected DP register. Note that this is asserted even
  //on writes, as this makes the control logic simpler and has no effect on
  //functionality as the data already in sw_data is ignored on writes.
  //The signal is also asserted regardless of whether the AP is busy, as in
  //this case, the input is masked to 0 by dp_out_en, and on faults as there
  //is no data phase so the data loaded is not used.
  //swdi_int is used to mask this signal so that no transaction can occur if
  //the PARK bit is 0 (header invalid) and reflects the state machine
  //entering a reset state.
  assign sw_header_valid = ((sw_state == SW_7_PARK) & (swdi_int));

  //ap_acc is asserted when the current transaction addresses the AP
  //i.e. APnDP is asserted or the access is a RDBUFF read).
  assign ap_acc = packet_ap_ndp |
                  ((packet_reg_addr == SW_REGADDR_RDBUFF) &
                  packet_r_nw);

  // - DP Registers
  // DPIDR Value
  // The DPIDR revision field can be changed so the defined value is XOR'ed with
  // the ECOREVNUM value from the input
  assign dp_idr = {(ecorevnum ^ SW_DPIDR_REG_VAL[31:28]), SW_DPIDR_REG_VAL[27:0]};

  // - sw_reg_load is common to all DP register load enables
  assign sw_reg_load = sw_header_valid & (~packet_ap_ndp);
  assign sw_data_dpidr_en     = sw_reg_load &
                                (packet_reg_addr == SW_REGADDR_DPIDR);
  assign sw_data_ctrlstat_en  = sw_reg_load & (~dp_sel_dpbanksel) &
                                (packet_reg_addr == SW_REGADDR_CTRLSTAT);
  assign sw_data_dlcr_en      = sw_reg_load & dp_sel_dpbanksel &
                                (packet_reg_addr == SW_REGADDR_DLCR);

  // - The mask for the ap_data_dp and ap_err_dp inputs is external to
  //the DP and controlled by the dp_out_en and dp_err_out_en signals.
  assign dp_err_out_en = sw_header_valid &     //Header valid
                         ap_busy_regd &        //An AP transaction occured
                         (~ap_interface_busy) &//DP controls CDC block
                         dp_sel_apsel &        //AP is selected
                         (~dp_abort_dapabort); //AP has not been aborted

  //As dp_err_out_en but qualified by this being an AP or RDBUFF access
  assign dp_out_en     = dp_err_out_en &
                         ap_acc;               //Tx addresses AP

  // - Shift Register
  // sw_data_shift is asserted during the DATAx states
  assign sw_data_shift = (sw_state[6:5] == 2'b01);

  //OoA Multiplexer
  // - sw_data_shifted data input
  assign sw_data_shifted = {swdi_int, sw_data[31:1]};
  assign sw_data_next = ({32{sw_data_dpidr_en}}     & dp_idr)    |
                        ({32{sw_data_ctrlstat_en}}  & dp_ctrlstat)    |
                        ({32{sw_data_dlcr_en}}      & dp_dlcr)        |
                        ({32{sw_data_shift}}        & sw_data_shifted)|
                        ap_data_dp; //This is masked externally

  //Actual sw_data register
  //sw_data_load is used as the enable term to sw_data - note the register is
  //loaded even on writes (as the data loaded is ignored), and waited AP
  //accesses (as the register will load 0x00000000).
  assign sw_data_load = sw_data_shift | sw_header_valid;
  always @(posedge swclk or negedge rar_reset_n)
    if (!rar_reset_n)
      sw_data <= {32{1'b1}};
    else if (sw_data_load)
      sw_data <= sw_data_next;

// ----------------------------------------------------------------------------
// AP Synchronisation Handshaking
// ------------------------------
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

  //ap_interface_busy is true when the AP controls the CDC block, and is used
  //to mask the DP's output enables to avoid contention in the CDC block.
  assign ap_interface_busy = (dp_req_dp ^ ap_ack_dp);

  //ap_busy_inst is the instantaneous value of ap_busy, and indicates that
  //the AP is busy due to a transaction being in progress.
  assign ap_busy_inst = ap_interface_busy & ap_busy_regd;

  //ap_busy_regd indicates when an AP transaction is in progress and the
  //error or data response from the AP has not yet been sampled.
  //It is cleared whenever a new AP or RDBUFF read or any write is
  //started (with an OK ACK). All of these cases architecturally make
  //subsequent access to the read data either return a new value or make
  //the previous value UNPREDICTABLE. The write condition is used to ensure
  //that, for example, if the STICKYERR bit is cleared after the transaction
  //has completed that the error bit will not be re-sampled and set it again.
  assign ap_busy_regd_load =  start_ap_tx_masked |                // Set
                              (sw_header_valid & (~ap_busy_inst) &
                               (ap_acc | (~packet_r_nw)));        // Clear

  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n)
      ap_busy_regd <= 1'b0;
    else if (ap_busy_regd_load)
      ap_busy_regd <= start_ap_tx_masked;

  //start_ap_tx is asserted when an AP transaction is to be started. I.e.,
  //when perform_tx is asserted, APnDP for the transaction is
  //asserted and the AP is selected. The perform_tx signal checks that the
  //previous transaction did not give a wait or fault response, and that
  //write data parity is valid (if a write transaction).
  assign start_ap_tx = perform_tx & packet_ap_ndp & dp_sel_apsel;

  // start_ap_tx is masked so that the AP transaction is only started if the
  // AP is powered up.
  assign start_ap_tx_masked = start_ap_tx & ap_pwr_on;

  // start_ap_req indicates a request is to be made to the AP, for
  // a transaction or the handshake-reset sequence.
  assign start_ap_req = start_ap_tx_masked | reset_dp_ap_handshake;

  //dp_wr_en is used to load the transfer register with the DP
  //transaction data at the start of an AP transaction or when the handshake
  //reset sequence occurs to ensure the transaction has no effect.
  assign dp_wr_en = start_ap_req;

  //dp_req_dp is toggled to start an AP request. It is is cleared to 0
  //dp_req_dp can be set only if the AP is powered on - a power down request
  //will clear it to safeguard the handshaking logic.
  //The register is a CDC safe launch flop in the DP CDC block.
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
// SW Acknowledge
// --------------
  //As part of every transaction, the DAP drives a 3 bit acknowledge with the
  //following three bits (in the order they appear on the line):
  //ACK0  OK
  //ACK1  Wait
  //ACK2  Fault
  //
  //Fault is set when any of the sticky error flags or WDATAERR is set
  //ap_err_dp is included so ack_fault is valid during state SW_7_PARK
  //Wait is set when fault is not set and an AP transaction is outstanding
  //(if the AP is selected).
  //OK is set when wait and fault are not set
// ----------------------------------------------------------------------------

  assign ack_fault      = (~non_waitable_tx) &
                          ( dp_cs_wdataerr  |
                            ap_err_dp |        // STICKYERR will become set
                            dp_cs_stickyerr |
                            dp_cs_stickyorun);

  // Conditions for WAIT are:
  // Not a FAULT response, the AP is selected and busy, and neither a non-waitable
  // transaction (access to DPIDR, ABORT or CTRL/STAT) nor a DP (except RDBUFF)
  // access where an ABORT has occured.
  assign ack_wait_inst  = (~ack_fault) & dp_sel_apsel & ap_busy_inst &
                         // busy elsewhere
                         (~(non_waitable_tx | (dp_abort_dapabort & ~ap_acc)));
                         // conditions under which WAIT is NOT allowed

  assign ack_ok_inst    = ~(ack_fault | ack_wait_inst);

  // ACK OK is determined during states SW_7_ACK0/1(_NODAT) by looking at
  // parity (the OK or WAIT bit) and ack_fault
  assign ack_ok_ack0    = parity;
  assign ack_ok_ack1    = ~(parity | ack_fault);

// ----------------------------------------------------------------------------
// Error Flags
// -----------
  //Note that WDATAERR is sticky even though this is not mentioned in the name.
  //READOK is not sticky.
// ----------------------------------------------------------------------------
  //Write Data Error
  //Set when all the following criteria are met:
  //1. DP is in the data parity state
  //2. It is a write operation
  //3. There was no transaction error in overrun mode (Sticky Overrun bit is 0)
  //4. parity error is detected in write data
  assign wdataerr_detected =  (sw_data_end_ok) &
                              (~packet_r_nw) &
                              (sw_parity_err);

  assign dp_cs_wdataerr_load = (~dp_cs_wdataerr & wdataerr_detected)
                                     | dp_abort_wdataerr_clr;
  //Input to wdataerr selects 0 on clear operations and 1 at all other times
  assign dp_cs_wdataerr_next = ~dp_abort_wdataerr_clr;

  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n)
      dp_cs_wdataerr <= 1'b0;
    else if (dp_cs_wdataerr_load)
      dp_cs_wdataerr <= dp_cs_wdataerr_next;

  //Sticky Error
  //Set when an AP transaction returns an error, or when an illegal AP
  //transaction is attempted. In the case of a legal AP transaction the error
  //from the AP is masked by dp_err_out_en, which ensures the error is sampled
  //only when it is valid.
  assign stickyerr_detected = ap_err_dp | (start_ap_tx & (~ap_pwr_on));

  assign dp_cs_stickyerr_load = (~dp_cs_stickyerr &
                                        stickyerr_detected)
                                      | dp_abort_stkerr_clr;

  assign dp_cs_stickyerr_next = ~dp_abort_stkerr_clr;

  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n)
      dp_cs_stickyerr <= 1'b0;
    else if (dp_cs_stickyerr_load)
      dp_cs_stickyerr <= dp_cs_stickyerr_next;

  //Sticky Overrun
  //Set when ORUNDETECT is set and a transaction gives a wait or fault response,
  //or there is a protocol error.
  //Must be set later than state SW_7_ACK0(_NODAT) to ensure that ack_fault does
  //not become set in the ACK WAIT case and generate ACK FAULT bit as well.
  //But early enough to cause ack_fault to be used in state ACK2 to determine
  //whether SWDOEN should be generated for the read data phase.
  assign stickyorun_detected  = dp_cs_orundetect &
                                ( (((sw_state & SW_7_ACK_MASK) == SW_7_ACK1) &
                                   (~ack_ok_ack1)) |
                                  sw_state[6] ); //Set on protocol error

  //The Sticky Overrun flag is cleared by writing to the abort register
  assign dp_abort_stkorun_clr = (dp_abort_execute & sw_data[4]);

  assign dp_cs_stickyorun_load =  ( (~dp_cs_stickyorun)
                                          & stickyorun_detected )
                                        | dp_abort_stkorun_clr;

  assign dp_cs_stickyorun_next = ~dp_abort_stkorun_clr;

  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n)
      dp_cs_stickyorun <= 1'b0;
    else if (dp_cs_stickyorun_load)
      dp_cs_stickyorun <= dp_cs_stickyorun_next;

  //Read OK
  //This bit indicates whether the ACK for the most recent AP/RDBUFF read
  //was OK.
  assign dp_cs_readok_load =  sw_header_valid & //Valid header
                                    ap_acc &          //Tx addresses AP
                                    packet_r_nw;      //Transaction is Read
  //ack_ok_inst is used as the register is loaded when ack_ok_inst is sampled
  assign dp_cs_readok_next = ack_ok_inst;

  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n)
      dp_cs_readok <= 1'b0;
    else if (dp_cs_readok_load)
      dp_cs_readok <= dp_cs_readok_next;
// ----------------------------------------------------------------------------
// Top-Level IO
// ----------------------------------------------------------------------------

  //SWDO
  //swdoen is used both to mask swdo internally so that it is tied to 0 when
  //not in use, and is used at the top level to control the tri-stated swdio
  //line
  //The enable term is registered to prevent it from glitching and causing
  //errors in a system where swdio is controlled with a tri-state with a slow
  //turn on/off time. Because of this the load enable for the registered
  //signal is driven one cycle in advance.
  //In state SW_7_ACK2, the data phase will always be entered but if overrun
  //detect mode was enabled and the ACK was wait or fault then the
  //stickyoverrun bit will have become set so ack_fault will indicate whether
  //the output enable should be de-asserted during the read data phase.
  //In state SW_7_ACK2_NODAT there will be no data phase.
  assign swdo_en_regd_next = sw_header_valid |
                             ((sw_state & SW_7_ACK_MASK) == SW_7_ACK0) |
                             ((sw_state & SW_7_ACK_MASK) == SW_7_ACK1) |
                             ((sw_state == SW_7_ACK2) &
                              packet_r_nw & ~ack_fault) |
                             (swdo_en_regd & sw_data_shift);

  always @(posedge swclk or negedge dpreset_n)
    if (!dpreset_n)
      swdo_en_regd <= 1'b0; //After reset debugger drives lines
    else
      swdo_en_regd <= swdo_en_regd_next;

  assign swdoen = swdo_en_regd;

  //swdo is driven by a Multiplexer which selects between the bottom bit
  //of the data shift register, the three acknowledges and the data parity
  //bit. swdo is then masked by swdoen. Note that the acknowledges and parity
  //is sourced from the parity register, as this is used to register the
  //acknowledges to ease timing.
  assign swdo = sw_state[5] ? sw_data[0] : parity;

  //SWDI
  //swdi_int is a registered version of SWDI, used to reduce the probability
  //of a meta-stable value on SWDI propagating into the design.
  assign swdi_int_load =  (cfg_presnt ?
                          (
                          (sw_state == SW_7_START)     |
                          (sw_state == SW_7_RST_START) |
                          //packet_shift is asserted during standard and RST
                          //APnDP, RnW, A[1:0]
                          packet_shift                  |
                          (sw_state == SW_7_PARITY)    |
                          (sw_state == SW_7_STOP)      |
                          //Always sample in ACKTRN1 and ENDTRN1, as SM only
                          //enters these states when SWDI is to be sampled
                          (sw_state == SW_7_ACKTRN1)   |
                          (sw_state == SW_7_ENDTRN1)   |
                          //Sample during data shift and data parity on
                          //writes
                          ((~packet_r_nw) & (
                            sw_data_shift |
                            (sw_state == SW_7_DATAPARITY) )) |
                          //Need to sample during reset counter states as
                          //SWDI advances or resets the count
                          sw_state[6]
                          )
                          : 1'b0);

  // The capture flop for SWDI needs to be CDC-safe, i.e. its input must be
  // ignored when the load term is low.
  // The flop is a set flop to avoid missing a 1 from the initial line reset
  // after power-on.
  cm0_dap_sw_cdc_capt_reset
    #(.PRESENT (PRESENT))
    u_dp_sw_swdi_capture
    (
      .REGCLK     (swclk),
      .REGRESETn  (dpreset_n),
      .REGEN      (swdi_int_load),
      .REGDI      (swdi),
      .SE         (SE),
      .REGDO      (i_swdi_int)
    );

  assign swdi_int = (cfg_presnt ? i_swdi_int : 1'b0);

  //dp_data_dp is driven by the sw_data register. The data is loaded by
  //a separate control signal, dp_wr_en
  assign dp_data_dp = sw_data;

  // During the handshake reset sequence, 2'b10 is passed as the Bank Select
  // to the AP. All registers under this encoded banksel field are reserved
  // and RAZ/WI so this results in a null transaction.
  assign dp_sel_apbanksel_masked =  (reset_dp_ap_handshake ?
                                    2'b10 : dp_sel_apbanksel);

  //dp_regaddr_dp is the register address for an AP transaction. It is driven by
  //the supplied two bit address, and the two bit value loaded into the
  //SELECT register.
  assign dp_regaddr_dp = {dp_sel_apbanksel_masked, packet_reg_addr};

  //dp_rnw_dp is the direction for an AP transaction.
  assign dp_rnw_dp = packet_r_nw;

// ----------------------------------------------------------------------------
// Assertions
// ----------------------------------------------------------------------------
`ifdef ARM_ASSERT_ON
  `include "std_ovl_defines.h"

  assert_implication
    #(`OVL_FATAL, `OVL_ASSERT, "ap_busy_regd and ap_busy_inst must be consistent.")
    u_regd_inst_consistency
    (
      .clk              (swclk),
      .reset_n          (dpreset_n),
      .antecedent_expr  (~ap_busy_regd),
      .consequent_expr  (~ap_busy_inst)
    );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT, "An AP transaction must not cause a WAIT response after it has completed.")
    u_apacc_completed_wait
    (
      .clk          (swclk),
      .reset_n      (dpreset_n),
      .start_event  (sw_header_valid & (~ap_busy_inst) & (ap_acc | (~packet_r_nw))),
      .test_expr    (~(ap_busy_inst | ap_busy_regd))
    );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "Both ap_busy_inst and ap_busy_regd should be set when an AP transaction starts")
    u_regd_inst_simultaneous_at_start_aptx
    (
      .clk          (swclk),
      .reset_n      (dpreset_n),
      .start_event  (~ap_busy_regd),
      .test_expr    (ap_busy_regd == ap_busy_inst)
    );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "A transaction should be about to start when ap_busy_inst goes high, and ap_busy_inst should be low when the transaction's result is sampled.")
      u_regd_cleared_after_inst
      (
        .clk          (swclk),
        .reset_n      (dpreset_n),
        .start_event  (ap_busy_inst),
        .test_expr    (ap_busy_regd)
      );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "The DP must not report an AP transaction in progress when the dummy transaction as part of the handshake reset sequence is performed.")
      u_handshake_reset_never_ap_busy_regd
      (
        .clk          (swclk),
        .reset_n      (dpreset_n),
        .start_event  (reset_dp_ap_handshake & ~ap_busy_regd),
        .test_expr    (~ap_busy_regd)
      );

  // ap_err_dp cannot be sampled before it is written. The register has no
  // reset so this is detected by looking for X.
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "ap_err_dp must never be X")
    u_xcheck_ap_err_dp
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (ap_err_dp) );

  //X-Checking on Register Load Enables/Async Resets used in IF statements
  // - dpreset_n
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "Reset for DP Must not be Unknown")
    u_xcheck_dpreset_n
      ( .clk        (swclk),
        .reset_n    (1'b1),
        .qualifier  (1'b1),
        .test_expr  (dpreset_n) );

  // - packet_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "packet_shift can never be x")
    u_xcheck_packet_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (packet_shift) );

  // - parity_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "parity_load can never be x")
    u_xcheck_parity_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (parity_load) );

  // - dp_abort_dapabort_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_abort_dapabort_load can never be x")
    u_xcheck_dp_abort_dapabort_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_abort_dapabort_load) );

  // - dp_cs_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_cs_load can never be x")
    u_xcheck_dp_cs_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_cs_load) );

  // - dp_sel_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_sel_load can never be x")
    u_xcheck_dp_sel_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_sel_load) );

  // - sw_data_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "sw_data_load can never be x")
    u_xcheck_sw_data_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (sw_data_load) );

  // - ap_busy_regd_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "ap_busy_regd_load can never be x")
    u_xcheck_ap_busy_regd_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (ap_busy_regd_load) );

  // - dp_req_dp_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_req_dp_load can never be x")
    u_xcheck_dp_req_dp_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_req_dp_load) );

  // - dp_cs_wdataerr_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_cs_wdataerr_load can never be x")
    u_xcheck_dp_cs_wdataerr_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_cs_wdataerr_load) );

  // - dp_cs_stickyerr_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_cs_stickyerr_load can never be x")
    u_xcheck_dp_cs_stickyerr_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_cs_stickyerr_load) );

  // - dp_cs_stickyorun_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_cs_stickyorun_load can never be x")
    u_xcheck_dp_cs_stickyorun_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_cs_stickyorun_load) );

  // - dp_cs_readok_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "dp_cs_readok_load can never be x")
    u_xcheck_dp_cs_readok_load
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (dp_cs_readok_load) );

  // - swdi_int_load
  assert_never_unknown
    #(`OVL_FATAL, 1, `OVL_ASSERT, "swdi_int_load can never be x")
    u_swdi_int_load_x
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (1'b1),
        .test_expr  (swdi_int_load) );

  //swdi and swdo should never be enabled together
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT, "swdi and swdo should never be enabled together")
    u_swdi_swdo_en
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (swdi_int_load & swdoen) );

  //An AP transaction should not be started unless Select has been
  //initialised
  assert_never_unknown
    #(`OVL_FATAL, 2, `OVL_ASSERT,
      "An AP Transaction should not be started until SELECT initialised")
    u_started_aptx_while_banksel_x
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (start_ap_tx),
        .test_expr  (dp_sel_apbanksel) );

  //An AP request should not be started with an unknown APBANKSEL
  assert_never_unknown
    #(`OVL_FATAL, 2, `OVL_ASSERT,
      "An AP request should not be made with an unknown APBANKSEL")
    u_started_apreq_while_banksel_x
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (start_ap_req),
        .test_expr  (dp_sel_apbanksel_masked) );

  //Only 1 of Ack OK, Wait and False should ever be set (1 Hot)
  assert_one_hot
    #(`OVL_FATAL, 3, `OVL_ASSERT, "ACKx Should be One Hot")
    u_ack_one_hot
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (sw_header_valid
                     ? {ack_ok_inst, ack_wait_inst, ack_fault}
                     : 3'b001) );

  //ACK must be driven correctly on SWDOEN and SWDO
  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "ACK OK must not be driven after protocol error")
    u_no_ack_ok
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (((sw_state == SW_7_PARK) & (~swdi_int))),
        .test_expr   (~swdoen) );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "ACK ~OK must be generated correctly")
    u_ack_ok_0
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (sw_header_valid & ~ack_ok_inst),
        .test_expr   (swdoen & ~swdo) );

  assert_next
    #(`OVL_FATAL, 1, 1, 0, `OVL_ASSERT,
      "ACK OK must be generated correctly")
    u_ack_ok_1
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (sw_header_valid & ack_ok_inst),
        .test_expr   (swdoen & swdo) );

  assert_next
    #(`OVL_FATAL, 2, 1, 0, `OVL_ASSERT,
      "ACK WAIT must not be driven after protocol error")
    u_no_ack_wait
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (((sw_state == SW_7_PARK) & (~swdi_int))),
        .test_expr   (~swdoen) );

  assert_next
    #(`OVL_FATAL, 2, 1, 0, `OVL_ASSERT,
      "ACK ~WAIT must be generated correctly")
    u_ack_wait_0
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (sw_header_valid & ~ack_wait_inst),
        .test_expr   (swdoen & ~swdo) );

  assert_next
    #(`OVL_FATAL, 2, 1, 0, `OVL_ASSERT,
      "ACK WAIT must be generated correctly")
    u_ack_wait_1
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (sw_header_valid & ack_wait_inst),
        .test_expr   (swdoen & swdo) );

  assert_next
    #(`OVL_FATAL, 3, 1, 0, `OVL_ASSERT,
      "ACK FAULT must not be driven after protocol error")
    u_no_ack_fault
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (((sw_state == SW_7_PARK) & (~swdi_int))),
        .test_expr   (~swdoen) );

  assert_next
    #(`OVL_FATAL, 3, 1, 0, `OVL_ASSERT,
      "ACK ~FAULT must be generated correctly")
    u_ack_fault_0
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (sw_header_valid & ~ack_fault),
        .test_expr   (swdoen & ~swdo) );

  assert_next
    #(`OVL_FATAL, 3, 1, 0, `OVL_ASSERT,
      "ACK FAULT must be generated correctly")
    u_ack_fault_1
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (sw_header_valid & ack_fault),
        .test_expr   (swdoen & swdo) );

  //The enable inputs to the OoA mux on Parity must be one hot or zero
  assert_zero_one_hot
    #(`OVL_FATAL, 5, `OVL_ASSERT,
      "Control Inputs to Parity Input Must be Zero or One Hot")
    u_parity_ctrl_zero_one_hot
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  ({parity_reset, parity_generate,
                      parity_ack_ok_en, parity_ack_wait_en,
                      parity_ack_fault_en}) );

  //The enable inputs to the OoA mux on sw_data must be one hot or zero
  assert_zero_one_hot
    #(`OVL_FATAL, 5, `OVL_ASSERT,
      "Control Inputs to sw_data mux Must be Zero or One Hot")
    u_swdata_mux_ctrl_zero_one_hot
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  ({sw_data_dpidr_en, sw_data_ctrlstat_en,
                      sw_data_dlcr_en,  sw_data_shift,
                      dp_out_en}) );

  //If a legal AP transaction is started, the handshake should not be reset
  assert_zero_one_hot
    #(`OVL_FATAL, 2, `OVL_ASSERT,
      "Handshake Reset Sequence should not occur for a legal AP transaction")
    u_reset_handshake_ap_tx_zero_one_hot
      (
        .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  ({reset_dp_ap_handshake, start_ap_tx_masked})
      );

  //sticky_err_detected should never be set when dp_out_en is low
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT,
      "Sticky Err Detected should never be set when dp_err_out_en is low")
    u_stickyerr_det_mask
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (ap_err_dp & (~dp_err_out_en)) );

  //perform_tx should never be asserted if a parity error is detected
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT,
      "A Write should not be committed if there was a parity error")
    u_never_write_on_bad_parity
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (perform_tx & wdataerr_detected) );

  //The State Machine should never be in a dataphase unless ack_ok is set, or
  //the sticky overrun bit is set (implying DP is in overrun mode and an
  //error has been successfully detected).
  //6 cycles is enough to get into read or write data phases
  assert_next
    #(`OVL_FATAL, 6, 1, 0, `OVL_ASSERT,
      "Should not be in dataphase when ack != OK unless overrun error detected")
    u_illegally_in_dataphase
      ( .clk         (swclk),
        .reset_n     (dpreset_n),
        .start_event (sw_header_valid & (~ack_ok_inst)),
        .test_expr   ((~sw_data_shift) | dp_cs_stickyorun) );

  //Detect Illegal Software Sequences
  // - Debugger should not try and access AP when CDBGPWRUPACK is low.
  assert_never
    #(`OVL_WARNING, `OVL_ASSERT,
      "AP Transaction Attempted while AP powered down")
    u_warning_ap_access_while_powereddown
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  ( (start_ap_tx & (~dp_cs_cdbgpwrupack)) ));

  // - Accesses to the RESEND register cause a protocol error and therefore not
  //recommended
  assert_never
    #(`OVL_WARNING, `OVL_ASSERT, "Attempt to access RESEND register")
    u_warning_resend_access_attempted
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (resend_acc & (sw_state == SW_7_PARITY)) );

  // - Writing a non-zero value to TRN in the DLCR causes a protocol error
  // and therefore is not recommended
  assert_never
    #(`OVL_WARNING, `OVL_ASSERT, "Attempt to write TRN field")
    u_warning_trn_write_attempted
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (trn_write & (sw_state == SW_7_DATAPARITY)) );

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
      ( .clk        (swclk),
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
      ( .clk        (swclk),
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
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .req        (dp_cs_cdbgrstreq),
        .ack        (cdbgrstack_sync) );

  // - The effect of setting a Ctrl/Stat field not implemented on MinDP is UNP
  assert_never  //TRNCNT
    #(`OVL_WARNING, `OVL_ASSERT, "Setting TRNCNT to a non-zero value is UNP")
    u_warning_trncnt_set
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (dp_cs_load & (|sw_data[21:12])) );

  assert_never  //MASKLANE
    #(`OVL_WARNING, `OVL_ASSERT, "Setting MASKLANE to a non-zero value is UNP")
    u_warning_masklane_set
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (dp_cs_load & (|sw_data[11:8])) );

  assert_never  //TRNMODE
    #(`OVL_WARNING, `OVL_ASSERT, "Setting TRNMODE to a non-zero value is UNP")
    u_warning_trnmode_set
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (dp_cs_load & (|sw_data[3:2])) );

  // - Clearing the ORUNDETECT bit while STICKYORUN is set is unpredictable
  assert_never
    #(`OVL_FATAL, `OVL_ASSERT,
      "It is not possible to disable Overrun Detection when STICKYORUN is set")
    u_orundet_clear
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (dp_cs_stickyorun & (~dp_cs_orundetect)) );

  // - The Select register should be initialised before attempting an AP tx
  assert_never_unknown
    #(`OVL_WARNING, 2, `OVL_ASSERT,
      "Select register must be initialised before attempting an AP tx")
    u_warning_select_uninit
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .qualifier  (perform_tx & packet_ap_ndp),
        .test_expr  (dp_sel_apbanksel) );

  // - Encodings for SW_7_ACK_MASK and SW_7_ACK*(_NODAT) must be consistent
  // to allow the mask to be used for optimising the comparision
  assert_always
    #(`OVL_FATAL, `OVL_ASSERT, "SW_7_ACK_MASK and SW_7_ACK0s must be consistent")
    u_sw_state_ack0_valid
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (((sw_state & SW_7_ACK_MASK) == SW_7_ACK0) ==
                     ((sw_state == SW_7_ACK0) |
                      (sw_state == SW_7_ACK0_NODAT))) );

  assert_always
    #(`OVL_FATAL, `OVL_ASSERT, "SW_7_ACK_MASK and SW_7_ACK1s must be consistent")
    u_sw_state_ack1_valid
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (((sw_state & SW_7_ACK_MASK) == SW_7_ACK1) ==
                     ((sw_state == SW_7_ACK1) |
                      (sw_state == SW_7_ACK1_NODAT))) );

  assert_always
    #(`OVL_FATAL, `OVL_ASSERT, "SW_7_ACK_MASK and SW_7_ACK2s must be consistent")
    u_sw_state_ack2_valid
      ( .clk        (swclk),
        .reset_n    (dpreset_n),
        .test_expr  (((sw_state & SW_7_ACK_MASK) == SW_7_ACK2) ==
                     ((sw_state == SW_7_ACK2) |
                      (sw_state == SW_7_ACK2_NODAT))) );

`endif

// ----------------------------------------------------------------------------
// UNDEF's
// ----------------------------------------------------------------------------


endmodule
