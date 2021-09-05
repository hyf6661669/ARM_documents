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
//      Checked In          : $Date: 2009-03-09 09:58:54 +0000 (Mon, 09 Mar 2009) $
//
//      Revision            : $Revision: 103214 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 CORE INSTRUCTION PREFETCH UNIT
//-----------------------------------------------------------------------------

module cm0_core_pfu
  #(parameter CBAW = 0,
    parameter DBG  = 1,
    parameter RAR  = 0)

   (input  wire        sclk,                // system clock
    input  wire        hclk,                // gated AHB clock
    input  wire        hreset_n,            // system reset

    output wire        code_nseq_o,         // fetch non-sequential

    output wire [15:0] pfu_opcode_o,        // opcode for decoder
    output wire        pfu_op_special_o,    // opcode is special
    output wire [30:0] pfu_fe_addr_o,       // half-word fetch address
    output wire        pfu_iaex_rfi_o,      // IAEX value is an EXC_RETURN
    output wire        pfu_itrans_req_o,    // prefetch transaction request
    output wire        pfu_rfi_on_psp_o,    // EXC_RETURN selects PSP
    output wire        pfu_sleep_rfi_o,     // returning to Thread with SoE
    output wire        pfu_tbit_o,          // architectural T-bit
    output wire [30:0] pfu_iaex_val_o,      // instruction address of execute
    output wire [30:0] pfu_dwt_iaex_o,      // PCSR value for watchpoint unit
    output wire [ 5:0] pfu_int_num_o,       // registered exception number
    output wire        pfu_int_delay_o,     // delay for jitter suppression
    output wire        pfu_pipefull_o,      // pipeline is full

    input  wire        hready_i,            // AHB ready / core advance
    input  wire [31:0] hrdata_i,            // AHB read-data
    input  wire [ 7:0] irq_latency_i,       // interrupt latency value
    input  wire        lockup_i,            // core is in LOCKUP

    input  wire [31:0] alu_agu_i,           // address for ALU
    input  wire        alu_itrans_ack_i,    // fetch transaction acknowledge
    input  wire        alu_xn_region_i,     // fetch is to execute-never region
    input  wire [ 1:0] bpu_match_i,         // breakpoint unit matches fetch
    input  wire        ctl_ex_last_i,       // core retiring
    input  wire        ctl_iaex_en_i,       // enable update of IAEX (PC)
    input  wire        ctl_xpsr_en_i,       // write to xPSR (including T-bit)
    input  wire        ctl_dbg_xpsr_en_i,   // debug xPSR access
    input  wire        ctl_nmi_lockup_i,    // inject LOCKUP on NMI fetch
    input  wire        ctl_hdf_lockup_i,    // inject LOCKUP on HardFault fetch
    input  wire        ctl_halt_ack_i,      // core has halted
    input  wire        dec_bus_idle_i,      // core forces bus to idle
    input  wire        dec_interwork_i,     // interworking update, sets T-bit
    input  wire        dec_iaex_sel_agu_i,  // update IAEX from ALU address
    input  wire        dec_iaex_sel_spu_i,  // update IAEX from load-data
    input  wire        dec_xpsr_sel_spu_i,  // update T-bit from load-data
    input  wire        dec_int_taken_i,     // interrupt taken
    input  wire        dif_wdata_16_i,      // DCRSR write data
    input  wire [ 4:0] dif_wdata_4_0_i,     // DCRSR write data
    input  wire        gpr_dcrdr_data_24_i, // T-bit from previous DCRDR write
    input  wire        msl_dbg_op_en_i,     // load opcode on DCRSR
    input  wire        mtx_cpu_resp_i,      // AHB error response
    input  wire        nvm_int_pend_i,      // interrupt pending
    input  wire [ 5:0] nvm_int_pend_num_i,  // pending interrupt number
    input  wire        nvr_sleep_on_exit_i, // NVIC SLEEPONEXIT bit
    input  wire        psr_nmi_active_i,    // IPSR is NMI
    input  wire        psr_hdf_active_i,    // IPSR is HardFault
    input  wire [31:0] spu_res_i);          // load data from SPU

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire       cfg_dbg = (CBAW == 0) ? (DBG != 0) : 1'bZ;
   wire       cfg_rar = (CBAW == 0) ? (RAR != 0) : 1'bZ;

   // ------------------------------------------------------------
   // Local prefetch control and buffer state
   // ------------------------------------------------------------

   reg         tbit;       // architectural Thumb-state bit

   reg  [30:0] iaex;       // address of instruction in execute
   reg  [ 1:0] delta;      // gap between fetch address and iaex

   reg  [16:0] ibuf_de;    // opcode buffer
   reg  [16:0] ibuf_hi;    // primary opcode holding buffer
   reg  [16:0] ibuf_lo;    // secondary opcode holding buffer

   reg         data_phase; // I-side data-phase tracker
   reg         lo_valid;   // contents of ibuf_lo valid flag
   reg         xn_fault;   // data-phase for XN fetch
   reg         delay_mode; // IRQ jitter suppression active flag

   // ------------------------------------------------------------
   // Mask inputs based upon configuration
   // ------------------------------------------------------------

   wire        halt_ack      = cfg_dbg ? ctl_halt_ack_i    : 1'b0;
   wire        dbg_xpsr_en   = cfg_dbg ? ctl_dbg_xpsr_en_i : 1'b0;
   wire [ 4:0] dif_wdata_4_0 = cfg_dbg ? dif_wdata_4_0_i   : 5'b0;
   wire        dif_wdata_16  = cfg_dbg ? dif_wdata_16_i    : 1'b0;

   // ------------------------------------------------------------
   // Generate extra reset signal for reset-all-registers config
   // ------------------------------------------------------------

   wire        rar_reset_n   = cfg_rar ? hreset_n : 1'b1;

   // ------------------------------------------------------------
   // IAEX looks like a return-from-interrupt
   // ------------------------------------------------------------

   // exception return is invoked by either POP {...,PC} or BX
   // instructions updating the PC with a value of the form
   // 0xF???????

   wire        iaex_rfi  = &iaex[30:27];

   // determine should it be a return whether we should unstack
   // from the PSP or not

   wire        rfi_on_psp = iaex[1];

   // ------------------------------------------------------------
   // Sleep-on-exit return type
   // ------------------------------------------------------------

   // once performing the return, iaex[2] indicates whether we
   // are returning to Thread-mode or not; if we are, and the
   // SLEEPONEXIT bit within the NVIC is set, then the execute
   // state-machine should enter sleep at the earliest
   // opportunity

   wire        sleep_rfi = iaex[2] & nvr_sleep_on_exit_i;

   // ------------------------------------------------------------
   // Identify bus load and AGU move to the PC
   // ------------------------------------------------------------

   // execute can request updates to the PC either via a move
   // type operation, or via a load type operation; move type
   // operations are required to have performed the address
   // phase for the PFU, where as load type operations will
   // result in the PFU issuing an address phase in the following
   // cycle

   wire        load_to_pc = dec_iaex_sel_spu_i & ctl_iaex_en_i;
   wire        move_to_pc = dec_iaex_sel_agu_i & ctl_iaex_en_i;

   // ------------------------------------------------------------
   // IAEX delta control
   // ------------------------------------------------------------

   // on an program flow change, e.g. branch or PC load, the
   // iaex register contains the address of the instruction we
   // would *like* to be in execute, at that moment in time it
   // is also the fetch address, suitable for placing on the bus;
   // on each subsequent HREADY cycle, the delta count is advanced
   // until the iaex instruction really is in execute, at which
   // point the fetch-address and iaex value are at there normal
   // distances apart

   // delta is effectively a saturating 2-bit up counter:
   //   00 -> 01 -> 10 -> 11 -> 11

   wire        delta_msk = move_to_pc & ~halt_ack;
   wire [ 1:0] delta_val = delta & {2{~delta_msk}};

   wire [ 1:0] delta_nxt = ( { |delta_val, delta_val != 2'b01 } &
                             {2{~load_to_pc}} );

   // ------------------------------------------------------------
   // Generate fetch addr / decode-time-PC or masked return-PC
   // ------------------------------------------------------------

   // this is generated as a 2-bit full adder with carry-out
   // chained to a 30-bit half adder to provide optimal synthesis
   // results; this is equivalent to:

   //    wire [30:0] fe_addr = iaex + delta_val;

   wire [ 2:0] fe_f_add = iaex[1:0] + delta_val[1:0];
   wire [29:0] fe_h_add = { iaex[30:2], fe_f_add[2] } + 1'b1;

   wire [30:0] fe_addr  = { fe_h_add[29:1],   // top from half-add
                            fe_f_add[ 1:0] }; // bot from full-add

   // ------------------------------------------------------------
   // Advance IAEX
   // ------------------------------------------------------------

   // for simply sequential execution, the instruction address in
   // execute (iaex) is incremented everytime an instruction
   // retires from execute, this is signalled via iaex_en without
   // an accompanying iaex_agu or iaex_spu signal

   // for branches and MOV to PC, the value from the core_alu is
   // provided with iaex_agu

   // for POP {...,PC}, vector loads and return from exception,
   // the value from core_spu is provided with iaex_spu

   // in addition to these three normal behaviours, the ARMv6-M
   // architecture defines a LOCKUP scenario, whereby the PC is
   // set to 0xFFFFFFFF; Cortex-M0 implements this via an execute
   // time lockup signal (lockup_i) and via a defered lock-on
   // signals for both HardFault and NMI; the execute signal
   // takes immediate effect, whilst the HardFault and NMI
   // deferred LOCKUPs function by overriding the vector fetch, or
   // first PC fetched on entry, or return to NMI and HardFault
   // level respectively

   wire [30:0] iaex_inc = iaex + 1'b1;

   wire        iaex_seq = ~(dec_iaex_sel_agu_i | dec_iaex_sel_spu_i);

   wire        late_lock = ( ctl_nmi_lockup_i & psr_nmi_active_i |
                             ctl_hdf_lockup_i & psr_hdf_active_i );

   wire [30:0] iaex_nxt = ( {31{iaex_seq}} & iaex_inc |
                            {31{dec_iaex_sel_spu_i}} & spu_res_i[31:1] |
                            {31{dec_iaex_sel_agu_i}} & alu_agu_i[31:1] |
                            {31{lockup_i | late_lock}} );

   wire        iaex_en  = hready_i & ctl_iaex_en_i;

   // ------------------------------------------------------------
   // T-bit control
   // ------------------------------------------------------------

   // the Thumb State bit (T-bit) can be updated via any
   // interworking instruction (POP {..,PC}, BX, BLX), exception
   // entry (based upon bit[0] of the vector value), on
   // exception return (based upon bit[24] of the stacked xPSR),
   // or via a direct xPSR write in debug (again on bit[24]); it
   // is not possible to modify the T-bit using an MSR instruction

   // the T-bit update cycle during exception return is the
   // same cycle that the exception-number gets loaded from
   // memory; the interworking cases are identical to the iaex
   // rules, but only applied when signalled as being from an
   // interworking instruction by execute, and not a transition
   // to LOCKUP

   wire        xpsr_load    = ctl_xpsr_en_i & dec_xpsr_sel_spu_i;

   wire        tbit_nxt_raw = ( dec_iaex_sel_agu_i & alu_agu_i[0] |
                                dec_iaex_sel_spu_i & spu_res_i[0] |
                                xpsr_load & spu_res_i[24] );

   wire        tbit_nxt     = dbg_xpsr_en ? gpr_dcrdr_data_24_i : tbit_nxt_raw;

   wire        interwork    = ( dec_interwork_i &
                                ~lockup_i &
                                iaex_en &
                                ~iaex_seq );

   wire        tbit_en      = ( interwork   |
                                xpsr_load   |
                                dbg_xpsr_en ) & hready_i;

   // ------------------------------------------------------------
   // Generate debug opcode
   // ------------------------------------------------------------

   // the ARMv6-M debug architecture defines the DCRSR, which
   // is used to provoke the core to accept or return the current
   // values of the register file and/or status flags; to reduce
   // gate count, this is implemented simply by allowing the
   // debugger to write into the opcode register whilst the core
   // is halted; the operation is driven on dif_wdata, with
   // bit[16] being 0 indicating a read request, and 1 indicating
   // a write request, the register mappings are as follows:

   //          +++++-- dif_wdata[4:0]
   //          |||||
   //   r0     00000
   //   r1     00001
   //          0....
   //   r13    01101
   //   r14    01110
   //   PC     01111
   //   xPSR   10000
   //   MSP    10001
   //   PSP    10010
   //   misc   10100 {CONTROL, PRIMASK}

   wire        dbg_op_en_ok = msl_dbg_op_en_i & halt_ack;
   wire        dbg_op_en    = cfg_dbg ? dbg_op_en_ok : 1'b0;

   wire [16:0] dcrsr_op_raw = { 1'b1,               // special
                                dif_wdata_16,       // 15
                                {7{1'b0}},          // 14:8
                                dif_wdata_4_0[3],   // 7
                                {3{1'b0}},          // 6:4
                                dif_wdata_4_0[4],   // 3
                                dif_wdata_4_0[2],   // 2
                                dif_wdata_4_0[1],   // 1
                                dif_wdata_4_0[0] }; // 0

   wire [16:0] dcrsr_op = cfg_dbg ? dcrsr_op_raw : {17{1'b0}};

   // ------------------------------------------------------------
   // Generate debug pipefull
   // ------------------------------------------------------------

   // in order to implement PC watchpoints in the DWT, it is also
   // necessary to determine when the PC should be sampled so
   // as to generate an asynchronous event; in order to prevent
   // triggering during a PFU re-fill following a branch type
   // operation (which would result in a synchronous halt on
   // final decode of the target instruction), it is necessary
   // to determine whether or not the re-fill is complete

   wire        pipefull = delta[1:0] == 2'b11;

   // ------------------------------------------------------------
   // Generate read data values with special bits for faults/BKPTs
   // ------------------------------------------------------------

   // HRESP errors, execute never (XN) faults, and execution with
   // the T-bit clear are all handled in an identical manner as
   // ARMv6-M does not provide any status information to allow
   // programmer model differentiation between the respective
   // causes; the granularity of these exceptions is the entire
   // fetch

   wire        fe_fault = mtx_cpu_resp_i | xn_fault | ~tbit;

   // in addition to faults, breakpoints are also implemented
   // via the fetch mechanism, however, the granularity is
   // half-word, with each of the BPU match signals from the BPU
   // indicating whether the top or bottom half of the fetched
   // word triggered a hit

   wire        debug_hi = bpu_match_i[1];
   wire        debug_lo = bpu_match_i[0];

   // in addition to a 16-bit opcode, the core decoder also
   // accepts a 17th "special" bit; this bit indicates that
   // the opcode is not an ARMv6-M instruction, and is instead
   // either a breakpointed or a faulting instruction, each of
   // the two final special+opcode combinations is either:

   //                SPECIAL  OPCODE
   //   instruction  0        <opcode>
   //   breakpoint   1        010....0
   //   fault        1        000....0

   // with breakpoints having priority over faults, the lower
   // 14-bits are not used, but are masked as for XN faults
   // no-address phase was actually issued, so HRDATA may
   // contain X's

   wire        special_hi = fe_fault | debug_hi;
   wire        special_lo = fe_fault | debug_lo;

   wire [16:0] rdata_hi =
               { special_hi,
                 hrdata_i[31]    & ~fe_fault & ~debug_hi,
                 hrdata_i[30]    & ~fe_fault |  debug_hi,
                 hrdata_i[29:16] & {14{~special_hi}} };

   wire [16:0] rdata_lo =
               { special_lo,
                 hrdata_i[15]    & ~fe_fault & ~debug_lo,
                 hrdata_i[14]    & ~fe_fault |  debug_lo,
                 hrdata_i[13: 0] & {14{~special_lo}} };

   // ------------------------------------------------------------
   // Data-phase tracker generation
   // ------------------------------------------------------------

   // data_phase_nxt derives whether this cycle is an address
   // phase for an instruction fetch, either as the result of
   // a fetch issued by the PFU, or as the result of a transaction
   // issued by execute's AGU

   // transactions are issued so as to ensure that the opcode
   // buffer will be populated in time to ensure that no stall
   // cycles are introduced in execute due to starvation,
   // this requires a fetch every other cycle for single cycle
   // operations, or fetches back-to-back following a branch
   // to a non-word aligned target

   wire        itrans_req_raw =
               (  iaex[0] & ctl_ex_last_i & ~data_phase & ~lo_valid |
                  iaex[0] & ~load_to_pc & ~delta_val[1] |
                 ~iaex[0] & ~load_to_pc & ~delta_val[0] |
                  move_to_pc );

   wire        itrans_req     = itrans_req_raw & ~dec_bus_idle_i;
   wire        data_phase_nxt = alu_itrans_ack_i;

   // CODENSEQ is provided as a performance hint to the memory
   // system, it guarantees that the current instruction fetch
   // is sequential to the previous instruction fetch unless it
   // signals otherwise; note that CODENSEQ is pessimistic in
   // implementation so as to ensure correct behaviour at minimal
   // gate cost

   wire        code_nseq     = ( ~|delta_val  |
                                  ibuf_de[16] |
                                  ibuf_hi[16] |
                                  ibuf_lo[16] & lo_valid |
                                  xn_fault );

   // ------------------------------------------------------------
   // Instruction buffer enable generation
   // ------------------------------------------------------------

   // ibuf_de holds the opcode currently in decode; this requires
   // updating on a pipe-refill following a branch/load-PC
   // (detected by the current IAEX delta value), on retirement
   // of a real-instruction, or via an instruction forced in via
   // the debug DCRSR

   // in order to reduce power due to unnecessary enables, and to
   // prevent potential loading of 'X' data from validation,
   // enabling needs suppressing if the address/data phase of the
   // transaction gets retracted, or if a program flow change
   // occurs, i.e. the subsequent instructions will not get
   // executed

   wire        ibuf_refill = (delta_val == 2'b01) & data_phase;
   wire        ibuf_retire = ctl_ex_last_i | ibuf_refill;

   wire        ibuf_hold   = ( dec_bus_idle_i | lockup_i |
                               load_to_pc | move_to_pc);

   wire        ibuf_de_en  = ( hready_i & ibuf_retire & ~ibuf_hold |
                               dbg_op_en );

   // ibuf_hi is used to hold the upper 16-bits of each 32-bit
   // AHB fetch request; as such its enable is simply based on
   // an instruction side data-phase being underway; this results
   // in the frequency of ibuf_hi_en being roughly half that of
   // ibuf_de_en

   wire        ibuf_hi_en = hready_i & data_phase;

   // ibuf_lo serves two purposes; the first is to temporarily
   // store the lower 16-bits of an AHB fetch in the cases where
   // the opcode in ibuf_de is stalled by a multi-cycle operation
   // in execute; the second is to perform cycle counting for
   // interrupt jitter suppression

   // the interrupt jitter suppression task takes precedence
   // over opcode buffering as the resultant interrupt will
   // result in the opcode being redundant

   wire        int_pend   = nvm_int_pend_i & ~halt_ack;
   wire        int_mode   = int_pend | delay_mode;

   wire        fe_third    = ( ibuf_hi_en & ~ctl_ex_last_i &
                              delta_val[1] & delta_val[0] );

   wire        ibuf_lo_en = fe_third | int_mode;

   // normally the next value for ibuf_de is taken either from
   // ibuf_hi or from AHB, however, in the case where a fetch
   // has been stored in ibuf_lo, we must take the opcode from
   // there; the validity of ibuf_lo is tracked in an additional
   // register which is set whenever ibuf_lo is loaded, and
   // cleared when it is either consumed, or when a branch/load-PC
   // makes ibuf_lo obsolete

   wire        lo_flush     = lo_valid & (ibuf_de_en | ~delta_val[0]);
   wire        lo_valid_nxt = ibuf_lo_en & ~int_mode;
   wire        lo_valid_en  = ibuf_lo_en | lo_flush;

   // ------------------------------------------------------------
   // Interrupt jitter suppression logic
   // ------------------------------------------------------------

   // to remove interrupt jitter, the PFU maintains a count of
   // SCLK cycles since either the NVIC int-pend input became
   // set, or the priority of the highest pending interrupt
   // changed

   // the 8-bit cycle count is stored in bits[13:6] of the ibuf_lo
   // register, whilst the last 6-bit interrupt (IPSR) number is
   // retained in bits[5:0]; these are masked with being in
   // delay_mode in order to reduce dynamic power

   wire [ 5:0] int_num       = {6{delay_mode}} & ibuf_lo[5:0];
   wire [ 7:0] int_count     = {8{delay_mode}} & ibuf_lo[13:6];

   wire        int_num_diff  = nvm_int_pend_num_i != int_num;
   wire        reset_count   = int_pend & (int_num_diff | ~delay_mode);
   wire        count_active  = |int_count;

   // int_count_dec is implemented in a similar way to fe_addr,
   // infering a half-subtract chain rather than a full-subtractor,
   // this is equivalent to:

   //    wire [ 7:0] int_count_dec = int_count - (count_active);

   wire [ 8:0] int_count_sub = { int_count, ~count_active } - 1'b1;
   wire [ 7:0] int_count_dec = int_count_sub[8:1];

   wire [ 7:0] int_count_nxt = reset_count ? irq_latency_i : int_count_dec;

   wire        delay_mode_set = reset_count;
   wire        delay_mode_clr = dec_int_taken_i | halt_ack;
   wire        delay_mode_en  = delay_mode_set | delay_mode_clr;
   wire        delay_mode_nxt = delay_mode_set;

   wire        int_delay      = delay_mode & count_active;

   wire [ 5:0] pend_num_nxt   = int_pend ? nvm_int_pend_num_i : ibuf_lo[5:0];
   wire [16:0] ibuf_lo_delay  = {3'b110, int_count_nxt, pend_num_nxt};

   // ------------------------------------------------------------
   // Instruction buffer selection update logic
   // ------------------------------------------------------------

   // the decode opcode buffer, ibuf_de, has five potential
   // sources for its next opcode; either of the other two
   // instruction buffers, either half of the AHB bus, or
   // directly from the debug write-data for DCRSR operations

   // if not in debug, then:
   //
   //   - select ibuf_hi if IAEX is word aligned and we are
   //     not in a data-phase and ibuf_lo isn't valid,
   //     or, we are refilling and not in a data-phase
   //
   //   - select ibuf_lo if it is valid
   //
   //   - select the upper half of the AHB if IAEX is unaligned
   //     and we are not yet executing any instruction, e.g.
   //     as the result of a branch to a half-word aligned
   //     address
   //
   //   - select the lower half of the AHB IAEX is aligned and
   //     we are in a data-phase, i.e. normal fetch behaviour
   //
   // else, if debug and a DCRSR write is performed
   //
   //   - use the DCRSR generated opcode

   wire        use_buf_hi = ( iaex[0] & ~data_phase & ~lo_valid |
                              ~delta_val[0] & ~data_phase );

   wire        use_buf_lo = lo_valid;

   wire        use_bus_hi = iaex[0] & ~ctl_ex_last_i;

   wire        use_bus_lo = ( ctl_ex_last_i & data_phase |
                              data_phase & ~iaex[0] );

   // factor in halt acknowledge

   wire        sel_buf_hi = use_buf_hi & ~halt_ack;
   wire        sel_buf_lo = use_buf_lo & ~halt_ack;
   wire        sel_bus_hi = use_bus_hi & ~halt_ack;
   wire        sel_bus_lo = use_bus_lo & ~halt_ack;
   wire        sel_dbg_op = dbg_op_en;

   // use select signals to multiplex between the five options
   // for ibuf_de; ibuf_hi is only ever loaded from AHB, whilst
   // ibuf_lo has the option of either being loaded from the
   // lower half of AHB, or from the delay timer logic

   wire [16:0] ibuf_de_nxt = ( {17{sel_buf_hi}} & ibuf_hi  |
                               {17{sel_buf_lo}} & ibuf_lo  |
                               {17{sel_bus_hi}} & rdata_hi |
                               {17{sel_bus_lo}} & rdata_lo |
                               {17{sel_dbg_op}} & dcrsr_op );

   wire [16:0] ibuf_hi_nxt = rdata_hi;
   wire [16:0] ibuf_lo_nxt = int_mode ? ibuf_lo_delay : rdata_lo;

   // ------------------------------------------------------------
   // Execute never (XN) early HRESP fault generation
   // ------------------------------------------------------------

   // the ALU determines whether or not an instruction fetch is
   // to an execute never (XN) region during its address phase;
   // this must be registered for use in the opcode fetch
   // data-phase

   wire        xn_fault_nxt = alu_xn_region_i;
   wire        xn_fault_en  = hready_i & data_phase_nxt;

   // ------------------------------------------------------------
   // Synchronous state update
   // ------------------------------------------------------------

   // delay_mode needs to run of SCLK in order to provide the
   // correct response even if HCLK is being gated via SLEEPING

   always @(posedge sclk or negedge hreset_n)
     if(~hreset_n)
       delay_mode <= 1'b0;
     else if(delay_mode_en)
       delay_mode <= delay_mode_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       delta <= 2'b11;
     else if(hready_i)
       delta <= delta_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       iaex <= {31{1'b1}};
     else if(iaex_en)
       iaex <= iaex_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       data_phase <= 1'b0;
     else if(hready_i)
       data_phase <= data_phase_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       lo_valid <= 1'b0;
     else if(lo_valid_en)
       lo_valid <= lo_valid_nxt;

   // ibuf_lo contains the interrupt jitter counter so, like
   // delay_mode, also requires clocking using SCLK

   always @(posedge sclk or negedge hreset_n)
     if(~hreset_n)
       ibuf_lo[16] <= 1'b1;
     else if(ibuf_lo_en)
       ibuf_lo[16] <= ibuf_lo_nxt[16];

   always @(posedge sclk or negedge rar_reset_n)
     if(~rar_reset_n)
       ibuf_lo[15:0] <= {16{1'b1}};
     else if(ibuf_lo_en)
       ibuf_lo[15:0] <= ibuf_lo_nxt[15:0];

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       ibuf_hi[16] <= 1'b1;
     else if(ibuf_hi_en)
       ibuf_hi[16] <= ibuf_hi_nxt[16];

   always @(posedge hclk or negedge rar_reset_n)
     if(~rar_reset_n)
       ibuf_hi[15:0] <= {16{1'b1}};
     else if(ibuf_hi_en)
       ibuf_hi[15:0] <= ibuf_hi_nxt[15:0];

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       ibuf_de <= {17{1'b1}};
     else if(ibuf_de_en)
       ibuf_de <= ibuf_de_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       tbit <= 1'b1;
     else if(tbit_en)
       tbit <= tbit_nxt;

   always @(posedge hclk or negedge hreset_n)
     if(~hreset_n)
       xn_fault <= 1'b1;
     else if(xn_fault_en)
       xn_fault <= xn_fault_nxt;

   // ------------------------------------------------------------
   // Output assignments
   // ------------------------------------------------------------

   assign      code_nseq_o      = code_nseq;
   assign      pfu_opcode_o     = ibuf_de[15:0];
   assign      pfu_op_special_o = ibuf_de[16];
   assign      pfu_fe_addr_o    = fe_addr;
   assign      pfu_iaex_rfi_o   = iaex_rfi;
   assign      pfu_rfi_on_psp_o = rfi_on_psp;
   assign      pfu_itrans_req_o = itrans_req;
   assign      pfu_sleep_rfi_o  = sleep_rfi;
   assign      pfu_tbit_o       = tbit;
   assign      pfu_iaex_val_o   = iaex[30:0];
   assign      pfu_int_num_o    = int_num;
   assign      pfu_int_delay_o  = int_delay;
   assign      pfu_dwt_iaex_o   = cfg_dbg ? iaex[30:0] : 31'b0;
   assign      pfu_pipefull_o   = cfg_dbg ? pipefull   :  1'b0;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

 `include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,10,`OVL_ASSERT,"Register enables must never be X")
   u_asrt_reg_en_x
     (.clk       (hclk),
      .reset_n   (hreset_n),
      .qualifier (1'b1),
      .test_expr ({ delay_mode_en,
                    hready_i,
                    iaex_en,
                    hready_i,
                    lo_valid_en,
                    ibuf_lo_en,
                    ibuf_hi_en,
                    ibuf_de_en,
                    tbit_en,
                    xn_fault_en }));

   // check that a consistent source is choosen for next IAEX
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"Next IAEX value must be consistent")
   u_asrt_iaex_next
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(iaex_en),
      .consequent_expr(lockup_i | late_lock |
                       ((iaex_nxt == alu_agu_i[31:1]) | ~dec_iaex_sel_agu_i) &
                       ((iaex_nxt == spu_res_i[31:1]) | ~dec_iaex_sel_spu_i) &
                       ((iaex_nxt == iaex_inc) | ~iaex_seq)));

   // check that a consistent source is choosen for next T-bit
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"Next T-bit value must be consistent")
   u_asrt_tbit_next
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(tbit_en),
      .consequent_expr(dbg_xpsr_en |
                       ((tbit_nxt == alu_agu_i[0])  | ~dec_iaex_sel_agu_i) &
                       ((tbit_nxt == spu_res_i[0])  | ~dec_iaex_sel_spu_i) &
                       ((tbit_nxt == spu_res_i[24]) | ~xpsr_load)));

   // check implementation optimised fe_addr matches behavioural
   wire [30:0] asrt_fe_addr = iaex + delta_val;

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,
       "Implemented fe_addr must equal iaex + delta_val")
   u_asrt_fe_addr_ok
     (.clk(hclk),
      .reset_n(hreset_n),
      .test_expr( fe_addr == asrt_fe_addr ));

   // check implementation optimised int_count_dec matches behavioural
   wire [ 7:0] asrt_int_count_dec = int_count - (count_active);

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,
       "Implemented int_count_dec must equal int_count - count_active")
   u_asrt_int_dec_count_ok
     (.clk(hclk),
      .reset_n(hreset_n),
      .test_expr( int_count_dec == asrt_int_count_dec ));

   // Check that a single source is chosen when updating opcode
   wire [4:0]  asrt_op_src = { sel_buf_hi, sel_buf_lo,
                               sel_bus_hi, sel_bus_lo,
                               sel_dbg_op };

   assert_one_hot
     #(`OVL_FATAL,5,`OVL_ASSERT,
       "Exactly one source must be selected for next opcode")
   u_asrt_next_op
     (.clk(hclk), .reset_n(hreset_n),
      .test_expr((ibuf_de_en & ~int_mode) ? asrt_op_src : 5'b00001));

   // T-bit known check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"T-bit must never be X")
   u_asrt_tbit_x
     (.clk(hclk), .reset_n(hreset_n), .qualifier(1'b1),
      .test_expr(tbit));

   // Programming error warning
   assert_never
     #(`OVL_INFO,`OVL_ASSERT,"Executing outside of Thumb state")
      u_info_tbit
        (.clk(hclk), .reset_n(hreset_n),
         .test_expr(ctl_ex_last_i & ~pfu_tbit_o));

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,32,`OVL_ASSERT,"CBAW config unknown")
   u_asrt_cfg_cbaw
     ( .clk(hclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(CBAW) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"DBG config unknown")
   u_asrt_cfg_dbg
     ( .clk(hclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_dbg) );

`endif

endmodule // cm0_core_pfu

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
