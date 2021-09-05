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
//      Checked In          : $Date: 2009-03-26 12:59:55 +0000 (Thu, 26 Mar 2009) $
//
//      Revision            : $Revision: 105221 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 NVIC REGISTERS AND SYSTICK FUNCTIONALITY BLOCK
//-----------------------------------------------------------------------------

module cm0_nvic_reg
  #(parameter CBAW   = 0,
    parameter DBG    = 1,
    parameter NUMIRQ = 32,
    parameter RAR    = 0,
    parameter SYST   = 1,
    parameter WIC    = 1)

   (input  wire        sclk,                // system clock
    input  wire        hclk,                // AHB clock
    input  wire        pclk,                // gated PPB write clock
    input  wire        hreset_n,            // AHB reset

    output wire        sys_reset_req_o,     // reset request via AIRCR
    output wire        sleeping_o,          // core is sleeping
    output wire        sleep_deep_o,        // core is deep sleeping
    output wire        wic_ds_ack_n_o,      // acknowledge for WIC-deep sleep
    output wire        wic_load_o,          // load signal for WIC mask
    output wire        wic_clear_o,         // clear signal for WIC mask

    output wire        nvr_wfe_advance_o,   // core should retire WFE
    output wire        nvr_pend_svc_o,      // SVC pend bit
    output wire        nvr_pend_psv_o,      // PSV pend bit
    output wire        nvr_pend_tck_o,      // TCK pend bit
    output wire [31:0] nvr_pend_irq_o,      // IRQ pend bits
    output wire        nvr_pend_hdf_o,      // HardFault pend bit
    output wire        nvr_pend_nmi_o,      // NMI pend bit
    output wire [1:0]  nvr_tck_lvl_o,       // SysTick interrupt priority level
    output wire [1:0]  nvr_psv_lvl_o,       // PendSV interrupt priority level
    output wire [1:0]  nvr_svc_lvl_o,       // SVCall interrupt priority level
    output wire [63:0] nvr_irq_lvl_o,       // priority level for interrupts
    output wire [31:0] nvr_irq_en_o,        // IRQ enable bits
    output wire        nvr_vect_clr_actv_o, // VECTCLRACTIVE set via AIRCR
    output wire        nvr_deep_sleep_o,    // DEEPSLEEP set via SCR
    output wire        nvr_sev_on_pend_o,   // SEVONPEND bit in SCR
    output wire        nvr_sleep_on_exit_o, // SLEEPONEXIT bit in SCR
    output wire        nvr_tck_en_o,        // SysTick Enable
    output wire        nvr_tck_int_en_o,    // SysTick TickInt
    output wire        nvr_tck_clk_src_o,   // SysTick ClockSource
    output wire        nvr_tck_cnt_flag_o,  // SysTick CountFlag
    output wire [23:0] nvr_tck_reload_o,    // SysTick Reload register
    output wire [23:0] nvr_tck_count_o,     // SysTick Count register

    input  wire        hready_i,            // AHB ready / core advance
    input  wire [31:0] irq_i,               // external interrupts
    input  wire        nmi_i,               // non-maskable interrupt
    input  wire        rxev_i,              // RXEV
    input  wire        st_clk_en_i,         // SysTick clock enable
    input  wire        st_calib_25_i,       // STCALIB[25]
    input  wire        txev_i,              // set event register from core

    input  wire        ctl_int_ready_i,     // core has registered interrupt
    input  wire        ctl_hdf_request_i,   // fault detected by core
    input  wire        ctl_ex_idle_i,       // core idle/sleeping indicato
    input  wire        ctl_wfi_execute_i,   // core executing WFI
    input  wire        ctl_wfe_execute_i,   // core executing WFE
    input  wire        ctl_wfi_adv_raw_i,   // core WFI will retire
    input  wire        dec_int_taken_i,     // core has been entered ISR
    input  wire        dec_int_return_i,    // core is returning from ISR
    input  wire        dec_svc_request_i,   // SVCall request from core (SVC)
    input  wire        dbg_halt_req_i,      // debug halt request
    input  wire        dbg_s_halt_i,        // core is halted for debug
    input  wire        dsl_ppb_active_i,    // PPB master is debugger
    input  wire [22:0] msl_nvic_sels_i,     // PPB NVIC select bus
    input  wire        mtx_ppb_write_i,     // PPB write
    input  wire [31:0] mtx_ppb_wdata_i,     // PPB write data
    input  wire        nvm_int_pend_i,      // interrupt pending from tree
    input  wire [36:0] nvm_actv_bit_i,      // active exception (one-hot)
    input  wire        wic_ds_req_n_i);     // request for WIC-deep sleep

   // ------------------------------------------------------------
   // Local register state
   // ------------------------------------------------------------

   reg         deep_sleep;    // SLEEPDEEP
   reg         sev_on_pend;   // SEVONPEND
   reg         sleep_on_exit; // SLEEPONEXIT
   reg         sleeping_raw;  // SLEEPING
   reg         sys_reset_req; // SYSRESETREQ
   reg [31:0]  mask_irq_r;    // IRQ level mode mask
   reg         mask_nmi;      // NMI level mode mask
   reg [31:0]  irq_en_r;      // IRQ enables
   reg [31:0]  pend_irq_r;    // IRQ pending bits
   reg         pend_svc;      // SVCall pending bit
   reg         pend_psv;      // PendSV pending bit
   reg         pend_tck_r;    // SysTick pending bit (opt)
   reg         pend_hdf;      // HardFault pending bit
   reg         pend_nmi;      // NMI pending bit
   reg [1:0]   psv_lvl;       // PendSV priority level
   reg [1:0]   svc_lvl;       // SVCall priority level
   reg [63:0]  irq_lvl_r;     // IRQ priority levels (opt)
   reg [1:0]   tck_lvl_r;     // SysTick priority level (opt)
   reg         tck_enable_r;  // SysTick ENABLE control (opt)
   reg         tck_tickint_r; // SysTick TICKIRQ control (opt)
   reg         tck_clk_src_r; // SysTick CLKSOURCE control (opt)
   reg         tck_flag_r;    // SysTick COUNTFLAG control (opt)
   reg [23:0]  tck_rvr_r;     // SysTick Reload Value (opt)
   reg [23:0]  tck_cvr_r;     // SysTick Current Value  (opt)
   reg         event_reg;     // Event register
   reg         wic_ds_ack_r;  // WICDSACK sleep-mode select (opt)

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire       cfg_syst    = (CBAW == 0) ? (SYST != 0) : 1'bZ;
   wire       cfg_dbg     = (CBAW == 0) ? (DBG != 0)  : 1'bZ;
   wire       cfg_wic     = (CBAW == 0) ? (WIC != 0)  : 1'bZ;
   wire       cfg_rar     = (CBAW == 0) ? (RAR != 0)  : 1'bZ;

   wire [31:0] cfg_numirq  = (CBAW == 0) ?
                               { (NUMIRQ > 31), (NUMIRQ > 30),
                                 (NUMIRQ > 29), (NUMIRQ > 28),
                                 (NUMIRQ > 27), (NUMIRQ > 26),
                                 (NUMIRQ > 25), (NUMIRQ > 24),
                                 (NUMIRQ > 23), (NUMIRQ > 22),
                                 (NUMIRQ > 21), (NUMIRQ > 20),
                                 (NUMIRQ > 19), (NUMIRQ > 18),
                                 (NUMIRQ > 17), (NUMIRQ > 16),
                                 (NUMIRQ > 15), (NUMIRQ > 14),
                                 (NUMIRQ > 13), (NUMIRQ > 12),
                                 (NUMIRQ > 11), (NUMIRQ > 10),
                                 (NUMIRQ >  9), (NUMIRQ >  8),
                                 (NUMIRQ >  7), (NUMIRQ >  6),
                                 (NUMIRQ >  5), (NUMIRQ >  4),
                                 (NUMIRQ >  3), (NUMIRQ >  2),
                                 (NUMIRQ >  1), (NUMIRQ >  0) } : 32'bZ;

   // ------------------------------------------------------------
   // Mask input values based on configuration
   // ------------------------------------------------------------

   wire [31:0] irq          = cfg_numirq & irq_i;

   wire [36:0] actv_bit     = ({cfg_numirq, cfg_syst, 4'b1111} &
                               nvm_actv_bit_i );

   wire        s_halt       = cfg_dbg  ? dbg_s_halt_i     : 1'b0;
   wire        ppb_master   = cfg_dbg  ? dsl_ppb_active_i : 1'b0;
   wire        wic_ds_req_n = cfg_wic  ? wic_ds_req_n_i   : 1'b1;
   wire        tck_no_ref   = cfg_syst ? st_calib_25_i    : 1'b0;
   wire        st_clk_en    = cfg_syst ? st_clk_en_i      : 1'b0;

   // ------------------------------------------------------------
   // Generate extra reset signal for reset-all-registers config
   // ------------------------------------------------------------

   wire        rar_reset_n  = cfg_rar ? hreset_n : 1'b1;

   // ------------------------------------------------------------
   // Mask configurable width registers
   // ------------------------------------------------------------

   // mask interrupt priority level registers

   reg [63:0]  irq_lvl;
   integer     i0;

   always @(cfg_numirq or irq_lvl_r)
     for (i0=0;i0<32;i0=i0+1) begin
       irq_lvl[(2*i0)+0] = cfg_numirq[i0] ? irq_lvl_r[(2*i0)+0] : 1'b0;
       irq_lvl[(2*i0)+1] = cfg_numirq[i0] ? irq_lvl_r[(2*i0)+1] : 1'b0;
     end

   // mask interrupt registers to number of implemented IRQs

   wire [31:0] mask_irq = cfg_numirq & mask_irq_r;
   wire [31:0] pend_irq = cfg_numirq & pend_irq_r;
   wire [31:0] irq_en   = cfg_numirq & irq_en_r;

   // mask optional SysTick registers

   wire        pend_tck    = cfg_syst ? pend_tck_r    :  1'b0;
   wire [23:0] tck_rvr     = cfg_syst ? tck_rvr_r     : 24'b0;
   wire [23:0] tck_cvr     = cfg_syst ? tck_cvr_r     : 24'b0;
   wire        tck_enable  = cfg_syst ? tck_enable_r  :  1'b0;
   wire        tck_tickint = cfg_syst ? tck_tickint_r :  1'b0;
   wire        tck_clk_src = cfg_syst ? tck_clk_src_r :  1'b0;
   wire        tck_flag    = cfg_syst ? tck_flag_r    :  1'b0;
   wire [ 1:0] tck_lvl     = cfg_syst ? tck_lvl_r     :  2'b0;

   // mask optional WIC interface register

   wire        wic_ds_ack  = cfg_wic ? wic_ds_ack_r : 1'b0;

   // ------------------------------------------------------------
   // PPB register decode logic
   // ------------------------------------------------------------

   wire        ppb_syst_csr_rd = msl_nvic_sels_i[22] & ~mtx_ppb_write_i;

   wire        ppb_syst_csr_wr = msl_nvic_sels_i[22] & mtx_ppb_write_i;
   wire        ppb_syst_rvr_wr = msl_nvic_sels_i[21] & mtx_ppb_write_i;
   wire        ppb_syst_cvr_wr = msl_nvic_sels_i[20] & mtx_ppb_write_i;
   wire        ppb_iser_wr     = msl_nvic_sels_i[18] & mtx_ppb_write_i;
   wire        ppb_icer_wr     = msl_nvic_sels_i[17] & mtx_ppb_write_i;
   wire        ppb_ispr_wr     = msl_nvic_sels_i[16] & mtx_ppb_write_i;
   wire        ppb_icpr_wr     = msl_nvic_sels_i[15] & mtx_ppb_write_i;

   wire [ 7:0] ppb_ipr_wr      = { msl_nvic_sels_i[ 7] & mtx_ppb_write_i,
                                   msl_nvic_sels_i[ 8] & mtx_ppb_write_i,
                                   msl_nvic_sels_i[ 9] & mtx_ppb_write_i,
                                   msl_nvic_sels_i[10] & mtx_ppb_write_i,
                                   msl_nvic_sels_i[11] & mtx_ppb_write_i,
                                   msl_nvic_sels_i[12] & mtx_ppb_write_i,
                                   msl_nvic_sels_i[13] & mtx_ppb_write_i,
                                   msl_nvic_sels_i[14] & mtx_ppb_write_i };

   wire        ppb_icsr_wr     = msl_nvic_sels_i[ 6] & mtx_ppb_write_i;
   wire        ppb_aircr_wr    = msl_nvic_sels_i[ 5] & mtx_ppb_write_i;
   wire        ppb_scr_wr      = msl_nvic_sels_i[ 4] & mtx_ppb_write_i;
   wire        ppb_shpr2_wr    = msl_nvic_sels_i[ 2] & mtx_ppb_write_i;
   wire        ppb_shpr3_wr    = msl_nvic_sels_i[ 1] & mtx_ppb_write_i;
   wire        ppb_shcsr_wr    = msl_nvic_sels_i[ 0] & mtx_ppb_write_i;

   // abbreviate write-data signal name

   wire [31:0] ppb_wdata      = mtx_ppb_wdata_i;

   // ------------------------------------------------------------
   // System reset request and vect-clear-active
   // ------------------------------------------------------------

   // SYSRESETREQ is driven by a register that is reset back
   // to zero, it is set by a write to the AIRCR; VECTCLRACTIVE
   // clears all active and pending state in the core and NVIC,
   // and is only settable by the debugger whilst the core is
   // halted

   // both fields are protected by a key in the upper halfword
   // of the write-data

   wire       aircr_key_ok     = ppb_wdata[31:16] == 16'h05FA;
   wire       legal_aircr_wr   = ppb_aircr_wr & aircr_key_ok;

   wire       sys_reset_req_en = legal_aircr_wr & ppb_wdata[2];

   wire       vect_clr_raw     = legal_aircr_wr & ppb_wdata[1];
   wire       vect_clr_actv    = ppb_master & s_halt & vect_clr_raw;

   // ------------------------------------------------------------
   // IRQ and NMI pend logic
   // ------------------------------------------------------------

   // software may manually set or clear the pending bits for
   // configurable priority IRQs, but may only set the pending
   // bit for NMI

   wire [31:0] irq_pend_set = ppb_wdata[31:0] & {32{ppb_ispr_wr}};
   wire [31:0] irq_pend_clr = ppb_wdata[31:0] & {32{ppb_icpr_wr}};

   wire        nmi_pend_set = ppb_icsr_wr & ppb_wdata[31];

   // the NVIC automatically clears the pend bit of the relevant
   // exception on entry to its handler, signalled by the core
   // int_taken signal

   wire [36:0] entry_pend_clr = actv_bit & {37{dec_int_taken_i}};

   // interrupt pend bits are set either as a result of the
   // external pin being high when mask isn't set, or via
   // software pend when not being cleared; ARMv6-M also
   // requires the NMI pend bit to be cleared by VECTCLRACTIVE;
   // entering the exception always clears the internal pend bit

   wire [31:0] external_irq = irq & ~(mask_irq | entry_pend_clr[36:5]);

   wire [31:0] internal_irq = ( irq_pend_set |
                                pend_irq & ~irq_pend_clr );

   wire [31:0] pend_irq_nxt = ( external_irq |
                                internal_irq & ~entry_pend_clr[36:5]);

   // NMI functions similarly to the interrupts, however ARMv6-M
   // also requires the NMI pend bit to be cleared by VECTCLRACTIVE

   wire        external_nmi = nmi_i & ~(mask_nmi | entry_pend_clr[0]);

   wire        internal_nmi = ( nmi_pend_set |
                                pend_nmi & ~vect_clr_actv );

   wire        pend_nmi_nxt = ( external_nmi |
                                internal_nmi & ~entry_pend_clr[0] );

   // ------------------------------------------------------------
   // Generate level-sensitive masking
   // ------------------------------------------------------------

   // mask bits are used to track when the NVIC should treat
   // interrupt pins as pulse-sensitive only; this is required
   // when an exception handler has been taken but the interrupt
   // pin has not returned to zero yet, or before a return from
   // the same exception has occured

   // mask bits need clearing on return from an exception

   wire [31:0] exit_irq_mask_clr = actv_bit[36:5] & {32{dec_int_return_i}};
   wire        exit_nmi_mask_clr = actv_bit[0] & dec_int_return_i;

   // mask is used to store the sensitivity operating mode:
   //
   //    0 = level sensitive mode
   //    1 = edge sensitive mode
   //
   // the mask is set on entry to a specific interrupt handler,
   // the mask is cleared if:
   //
   //    - the interrupt line goes low
   //    - the interrupt handler is returned from
   //    - VECTCLRACTIVE is operated
   //    - software performs a manual pend if the interrupt

   wire [31:0] mask_irq_nxt = ( irq &
                                ~exit_irq_mask_clr &
                                {32{~vect_clr_actv}} &
                                ~irq_pend_set &
                                (entry_pend_clr[36:5] | mask_irq));

   wire        mask_nmi_nxt = ( nmi_i &
                                ~exit_nmi_mask_clr &
                                ~vect_clr_actv &
                                ~nmi_pend_set &
                                (entry_pend_clr[0] | mask_nmi));

   // to enable the inference of a common clock-gate cell for
   // the mask registers, the registers are enabled only when
   // an interrupt is taken, or whilst any mask bit is set

   wire        mask_en = |{mask_irq, mask_nmi, dec_int_taken_i};

   // ------------------------------------------------------------
   // SysTick timer logic
   // ------------------------------------------------------------

   // the ARMv6-M optional SysTick timer implements a 24-bit
   // towards zero counter implemented from a 24-bit current
   // count value, tck_cvr[23:0] which gets repopulated when
   // zero using the 24-bit reload value tck_rvr[23:0]; on
   // transitioning from 1-to-0 an event is triggered which,
   // based upon configuration, may cause the SysTick interrupt
   // handler to be pended

   // the various parts of the SYST_CSR configuration register
   // can only be updated via a PPB write; the actual value
   // of CLKSOURCE is overriden if the SYST_CALIB register
   // indicates that no external reference is provided

   wire        tck_control_en  = ppb_syst_csr_wr;

   wire        tck_enable_nxt  = cfg_syst ? ppb_wdata[0] : 1'b0;
   wire        tck_tickint_nxt = cfg_syst ? ppb_wdata[1] : 1'b0;
   wire        tck_clk_src_nxt = cfg_syst ? ppb_wdata[2] : 1'b0;

   wire        tck_use_sclk    = tck_no_ref | tck_clk_src;

   // the tck_rvr reload value can only be modified by a PPB
   // write access

   wire        tck_rvr_en  = ppb_syst_rvr_wr;
   wire [23:0] tck_rvr_nxt = cfg_syst ? ppb_wdata[23:0] : 24'b0;

   // the tck_cvr current value decrements either on each SCLK
   // edge, or an edge where st_clk_en is provided if configured
   // for an external reference clock; tck_cvr is cleared only
   // by a PPB write to itself, and is frozen whilst the core is
   // in debug halt

   wire        tck_clk_en    = tck_use_sclk | st_clk_en;

   wire        tck_cvr_clr   = ppb_syst_cvr_wr;
   wire        tck_cvr_adv   = tck_enable & tck_clk_en & ~s_halt;
   wire        tck_cvr_en    = tck_cvr_adv | tck_cvr_clr;

   wire        tck_cvr_top_z = ~|tck_cvr[23:1];
   wire        tck_cvr_zero  = tck_cvr_top_z & ~tck_cvr[0];
   wire        tck_sel_dec   = ~tck_cvr_zero & ~tck_cvr_clr;
   wire        tck_sel_rvr   =  tck_cvr_zero & ~tck_cvr_clr;

   wire [23:0] tck_cvr_dec   = tck_cvr[23:0] - 1'b1;

   wire [23:0] tck_cvr_nxt   = ( {24{tck_sel_dec}} & tck_cvr_dec |
                                 {24{tck_sel_rvr}} & tck_rvr     );

   // ARMv6-M specifies that the event point is a transition from
   // 1-to-0, so detect this event - note that this logic treats
   // a write in parallel with a transition to zero as an event

   wire        tck_to_zero = tck_cvr_adv & tck_cvr_top_z & tck_cvr[0];

   // when enabled, the count from 1-to-0 sets both the COUNTFLAG
   // and optionally triggers a pend of the SysTick interrupt;
   // the COUNTFLAG is cleared either by reading the flag, or by
   // a write to the current value register (SYST_CVR); set takes
   // precedence over clear so that a read in parallel with the
   // SysTick underflow doesn't cause the COUNTFLAG to be lost

   // debug is prevented from performing read-clear, and can
   // only perform a write-clear in order to prevent memory
   // window reads dead-locking a COUNTFLAG poll loop

   wire        tck_flag_clr = ( ppb_syst_csr_rd & ~ppb_master |
                                ppb_syst_cvr_wr );

   wire        tck_flag_set = tck_to_zero;

   wire        tck_flag_en  = tck_flag_set | tck_flag_clr;
   wire        tck_flag_nxt = tck_flag_set;

   // the SysTick interrupt is only pended if enabled

   wire        tck_irq      = tck_tickint & tck_to_zero;

   // ------------------------------------------------------------
   // IRQ enable register logic
   // ------------------------------------------------------------

   // individual IRQs may be enabled or disabled by writing to
   // the PPB ISER and ICER respectively, a "1" on the write
   // data indicates that the IRQ enable should be set/cleared,
   // thus 32 distinct enable terms are generated

   wire        irq_en_set = ppb_iser_wr;
   wire        irq_en_clr = ppb_icer_wr;
   wire        irq_en_any = irq_en_set | irq_en_clr;

   wire [31:0] irq_en_en  = {32{irq_en_any}} & ppb_wdata[31:0];

   wire        irq_en_nxt = irq_en_set;

   // ------------------------------------------------------------
   // Priority level register logic
   // ------------------------------------------------------------

   // the interrupt priority of the SVCall, SysTick, PendSV and
   // IRQ handlers are only updated as a result of a PPB write
   // to either the SHPR2, SHPR3 or IPR[7:0] registers

   wire        svc_lvl_en  = ppb_shpr2_wr;
   wire        tck_lvl_en  = ppb_shpr3_wr;
   wire        psv_lvl_en  = ppb_shpr3_wr;
   wire [ 7:0] irq_lvl_en  = ppb_ipr_wr;

   wire [ 1:0] svc_lvl_nxt = ppb_wdata[31:30];
   wire [ 1:0] tck_lvl_nxt = ppb_wdata[31:30];
   wire [ 1:0] psv_lvl_nxt = ppb_wdata[23:22];

   wire [ 7:0] irq_lvl_nxt = { ppb_wdata[31:30],
                               ppb_wdata[23:22],
                               ppb_wdata[15:14],
                               ppb_wdata[ 7: 6] };

   // ------------------------------------------------------------
   // System handler pend logic
   // ------------------------------------------------------------

   // HardFault can only be pending via a request from the core,
   // and cleared by either entry to the HardFault handler or
   // use of VECTCLRACTIVE

   wire        pend_hdf_set = ctl_hdf_request_i;
   wire        pend_hdf_clr = vect_clr_actv | entry_pend_clr[1];

   wire        pend_hdf_en  = pend_hdf_set | pend_hdf_clr;
   wire        pend_hdf_nxt = pend_hdf_set;

   // SVCall can be pended either by a request from an SVC
   // instruction in the core, or via a debugger set, and
   // cleared by entry to SVCall, or via a debugger clear;
   // ppb_shcsr_wr is masked by matrix_sel to only be valid
   // for debug accesses

   wire        dbg_svc_pend_set = ppb_shcsr_wr &  ppb_wdata[15];
   wire        dbg_svc_pend_clr = ppb_shcsr_wr & ~ppb_wdata[15];

   wire        pend_svc_set = dec_svc_request_i | dbg_svc_pend_set;
   wire        pend_svc_clr = dbg_svc_pend_clr | entry_pend_clr[2];

   wire        pend_svc_en  = pend_svc_set | pend_svc_clr;
   wire        pend_svc_nxt = pend_svc_set;

   // PendSV has a memory mapped set and clear, and is
   // automatically cleared on entry to PendSV

   wire        pend_psv_set = ppb_icsr_wr & ppb_wdata[28];
   wire        pend_psv_clr = ppb_icsr_wr & ppb_wdata[27] | entry_pend_clr[3];

   wire        pend_psv_en  = pend_psv_set | pend_psv_clr;
   wire        pend_psv_nxt = pend_psv_set;

   // SysTick can be pended manually, or as the result of a
   // timer derived interrupt, and can be either manually
   // cleared or is cleared automatically on entry to SysTick

   wire        pend_tck_set = ppb_icsr_wr & ppb_wdata[26] | tck_irq;
   wire        pend_tck_clr = ppb_icsr_wr & ppb_wdata[25] | entry_pend_clr[4];

   wire        pend_tck_en  = pend_tck_set | pend_tck_clr;
   wire        pend_tck_nxt = pend_tck_set;

   // ------------------------------------------------------------
   // System control register
   // ------------------------------------------------------------

   // the SCR is only updated by a PPB write, and contains the
   // SEVONPEND, DEEPSLEEP and SLEEPONEXIT bits

   wire        scr_en            = ppb_scr_wr;

   wire        sev_on_pend_nxt   = ppb_wdata[4];
   wire        deep_sleep_nxt    = ppb_wdata[2];
   wire        sleep_on_exit_nxt = ppb_wdata[1];

   // ------------------------------------------------------------
   // Event register logic
   // ------------------------------------------------------------

   // ARMv6-M defines an event register for use with the WFE
   // (wait-for-event) instruction; this register gets set either
   // via the RXEV input pin, the core executing an SEV
   // instruction, entering or returning from an interrupt,
   // if SEVONPEND is set as a result of a new interrupt
   // becoming pended, or as a result of entering debug

   // detect whether a new interrupt has just become pended by
   // comparing the next/set signals with the current pend
   // registers, and qualify with SEVONPEND

   wire        irq_new_pend = |(pend_irq_nxt & ~pend_irq);

   wire        pend_change  = ( pend_nmi_nxt & ~pend_nmi |
                                pend_hdf_set & ~pend_hdf |
                                pend_svc_set & ~pend_svc |
                                pend_psv_set & ~pend_psv |
                                pend_tck_set & ~pend_tck |
                                irq_new_pend );

   wire        sev_new_pend = sev_on_pend & pend_change;

   // merge SEVONPEND with all the other possible event setting
   // inputs; the event register is cleared by the core having
   // a WFE instruction in execute whilst *not* asleep

   wire        event_new =
               ( rxev_i           |  // RXEV input pin
                 txev_i           |  // SEV executed by core
                 sev_new_pend     |  // SEVONPEND and new pend
                 dec_int_taken_i  |  // interrupt entry
                 dec_int_return_i |  // interrupt return
                 s_halt           ); // debug entry/exit

   wire        event_reg_set = event_new & ~event_reg;

   wire        event_reg_clr = ( event_reg &
                                 ctl_wfe_execute_i &
                                 ~ctl_ex_idle_i );

   wire        event_reg_en  = event_reg_set | event_reg_clr;
   wire        event_reg_nxt = event_reg_set;

   // ------------------------------------------------------------
   // SLEEPING and SLEEPDEEP generation
   // ------------------------------------------------------------

   // if core has registered an interrupt then override sleeping;
   // this can only occur through unpredictable use of the
   // debugger in conjunction with SLEEPHOLDREQn usage

   wire        sleeping = sleeping_raw & ~ctl_int_ready_i;

   // determine whether the core will wake up or not; wake
   // conditions are:
   //
   //   - event register set whilst core executing WFE
   //   - PRIMASK'ed interrupt whilst core executing WFI
   //   - non-masked pending interrupt that should preempt
   //   - debug halt request

   wire        wake_up = ( ctl_wfe_execute_i & event_reg |
                           ctl_wfi_execute_i & ctl_wfi_adv_raw_i |
                           nvm_int_pend_i |
                           dbg_halt_req_i );

   // determine whether the core will remain sleeping in the
   // next cycle; core can only advance on HREADY, so factor
   // this into sleeping enable term

   wire        sleeping_nxt = ctl_ex_idle_i & ~wake_up;

   // SLEEPDEEP output is simply the logical-AND of SLEEPING
   // and the DEEPSLEEP register

   wire        sleep_deep   = sleeping & deep_sleep;

   // ------------------------------------------------------------
   // Wake-up Interrupt Controller interface
   // ------------------------------------------------------------

   // WICDSACKn handshakes with WICDSREQn to indicate that
   // the NVIC is ready to operate in WIC based deep-sleep mode;
   // WIC sleep mode can only be changed whilst the core is not
   // already sleeping

   wire        wic_ds_ack_clr = ( wic_ds_req_n &
                                  wic_ds_ack &
                                  ~sleeping );

   wire        wic_ds_ack_set = ( ~wic_ds_req_n &
                                  ~wic_ds_ack &
                                  ~sleeping &
                                  ~sleeping_nxt );

   wire        wic_ds_ack_en  = wic_ds_ack_set | wic_ds_ack_clr;
   wire        wic_ds_ack_nxt = wic_ds_ack_set;

   // load the WIC whenever we are in WIC mode and we are
   // about to go to sleep

   wire        wic_load = wic_ds_ack & ctl_ex_idle_i & ~sleeping;

   // clear the WIC whenever the core isn't sleeping whilst it
   // is executing either a WFE or WFI (including SLEEPONEXIT)

   wire        wic_clear = ( ~ctl_ex_idle_i &
                             (ctl_wfe_execute_i | ctl_wfi_execute_i));

   // ------------------------------------------------------------
   // Sequential update logic for PPB modifiable only registers
   // ------------------------------------------------------------

   // use pclk which is only driven during a PPB write to minimize
   // dynamic power consumption

   always @(posedge pclk or negedge hreset_n)
     if (~hreset_n)
       sys_reset_req <= 1'b0;
     else if (sys_reset_req_en)
       sys_reset_req <= 1'b1;

   always @(posedge pclk or negedge rar_reset_n)
     if (~rar_reset_n)
       tck_rvr_r[23:0] <= {24{1'b1}};
     else if (cfg_syst ? tck_rvr_en : 1'b0)
       tck_rvr_r[23:0] <= tck_rvr_nxt[23:0];

   always @(posedge pclk or negedge hreset_n)
     if (~hreset_n) begin
       tck_enable_r  <= 1'b0;
       tck_tickint_r <= 1'b0;
       tck_clk_src_r <= 1'b0;
     end else if (cfg_syst ? tck_control_en : 1'b0) begin
       tck_enable_r  <= tck_enable_nxt;
       tck_tickint_r <= tck_tickint_nxt;
       tck_clk_src_r <= tck_clk_src_nxt;
     end

   always @(posedge pclk or negedge hreset_n)
     if (~hreset_n)
       tck_lvl_r <= {2{1'b0}};
     else if(cfg_syst ? tck_lvl_en : 1'b0)
       tck_lvl_r <= tck_lvl_nxt;

   always @(posedge pclk or negedge hreset_n)
     if (~hreset_n)
       psv_lvl <= {2{1'b0}};
     else if (psv_lvl_en)
       psv_lvl <= psv_lvl_nxt;

   always @(posedge pclk or negedge hreset_n)
     if (~hreset_n)
       svc_lvl <= {2{1'b0}};
     else if (svc_lvl_en)
       svc_lvl <= svc_lvl_nxt;

   always @(posedge pclk or negedge hreset_n)
     if (~hreset_n) begin
       sev_on_pend   <= 1'b0;
       deep_sleep    <= 1'b0;
       sleep_on_exit <= 1'b0;
     end else if (scr_en) begin
       sev_on_pend   <= sev_on_pend_nxt;
       deep_sleep    <= deep_sleep_nxt;
       sleep_on_exit <= sleep_on_exit_nxt;
     end

   integer i1;

   always @(posedge pclk or negedge hreset_n)
     if (~hreset_n)
       irq_en_r[31:0] <= {32{1'b0}};
     else
       for (i1=0;i1<32;i1=i1+1)
         if (cfg_numirq[i1] ? irq_en_en[i1] : 1'b0)
           irq_en_r[i1] <= irq_en_nxt;

   integer i2, i3, i4;

   always @(posedge pclk or negedge hreset_n)
     if (~hreset_n)
       irq_lvl_r[63:0] <= {64{1'b0}};
     else
       for (i2=0;i2<8;i2=i2+1) // for each IPR[0..7]
         if (irq_lvl_en[i2])      // if IPR enabled
           for (i3=0;i3<4;i3=i3+1)   // for each IRQ[0..3]
             if (cfg_numirq[(i2*4)+i3]) // if IRQ implemented
               for (i4=0;i4<2;i4=i4+1)     // for each priority bit
                 irq_lvl_r[(i2*8)+(i3*2)+i4] <= irq_lvl_nxt[(i3*2)+i4];

   // ------------------------------------------------------------
   // Sequential update logic for system-clock registers
   // ------------------------------------------------------------

   always @(posedge sclk or negedge rar_reset_n)
     if(~rar_reset_n)
       tck_cvr_r <= {24{1'b1}};
     else if (cfg_syst ? tck_cvr_en : 1'b0)
       tck_cvr_r <= tck_cvr_nxt;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       tck_flag_r  <= 1'b0;
     else if (cfg_syst ? tck_flag_en : 1'b0)
       tck_flag_r <= tck_flag_nxt;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       pend_tck_r <= 1'b0;
     else if (cfg_syst ? pend_tck_en : 1'b0)
       pend_tck_r <= pend_tck_nxt;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       event_reg <= 1'b0;
     else if (event_reg_en)
       event_reg <= event_reg_nxt;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       sleeping_raw <= 1'b0;
     else if(hready_i)
       sleeping_raw <= sleeping_nxt;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       wic_ds_ack_r <= 1'b0;
     else if (cfg_wic ? wic_ds_ack_en : 1'b0)
       wic_ds_ack_r <= wic_ds_ack_nxt;

   integer i5;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       pend_irq_r[31:0] <= {32{1'b0}};
     else
       for (i5=0;i5<32;i5=i5+1)
         if (cfg_numirq[i5])
           pend_irq_r[i5] <= pend_irq_nxt[i5];

   integer i6;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       mask_irq_r[31:0] <= {32{1'b0}};
     else
       for (i6=0;i6<32;i6=i6+1)
         if (cfg_numirq[i6] ? mask_en : 1'b0)
           mask_irq_r[i6] <= mask_irq_nxt[i6];

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       pend_nmi <= 1'b0;
     else
       pend_nmi <= pend_nmi_nxt;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       mask_nmi <= 1'b0;
     else if (mask_en)
       mask_nmi <= mask_nmi_nxt;

   // ------------------------------------------------------------
   // Sequential update logic for core-clocked registers
   // ------------------------------------------------------------

   always @(posedge hclk or negedge hreset_n)
     if (~hreset_n)
       pend_hdf <= 1'b0;
     else if (pend_hdf_en)
       pend_hdf <= pend_hdf_nxt;

   always @(posedge hclk or negedge hreset_n)
     if (~hreset_n)
       pend_svc <= 1'b0;
     else if (pend_svc_en)
       pend_svc <= pend_svc_nxt;

   always @(posedge hclk or negedge hreset_n)
     if (~hreset_n)
       pend_psv <= 1'b0;
     else if (pend_psv_en)
       pend_psv <= pend_psv_nxt;

   // ------------------------------------------------------------
   // Output assignments
   // ------------------------------------------------------------

   assign      sleeping_o          = sleeping;
   assign      sleep_deep_o        = sleep_deep;
   assign      wic_ds_ack_n_o      = ~wic_ds_ack;
   assign      wic_load_o          = cfg_wic ? wic_load      : 1'b0;
   assign      wic_clear_o         = cfg_wic ? wic_clear     : 1'b0;
   assign      sys_reset_req_o     = sys_reset_req;

   assign      nvr_vect_clr_actv_o = cfg_dbg ? vect_clr_actv : 1'b0;
   assign      nvr_irq_en_o        = irq_en;
   assign      nvr_pend_irq_o      = pend_irq;
   assign      nvr_pend_nmi_o      = pend_nmi;
   assign      nvr_tck_reload_o    = tck_rvr;
   assign      nvr_tck_count_o     = tck_cvr;
   assign      nvr_tck_en_o        = tck_enable;
   assign      nvr_tck_int_en_o    = tck_tickint;
   assign      nvr_tck_clk_src_o   = cfg_syst ? tck_use_sclk : 1'b0;
   assign      nvr_tck_cnt_flag_o  = tck_flag;
   assign      nvr_tck_lvl_o       = tck_lvl;
   assign      nvr_psv_lvl_o       = psv_lvl;
   assign      nvr_svc_lvl_o       = svc_lvl;
   assign      nvr_irq_lvl_o       = irq_lvl;
   assign      nvr_pend_tck_o      = pend_tck;
   assign      nvr_pend_svc_o      = pend_svc;
   assign      nvr_pend_psv_o      = pend_psv;
   assign      nvr_pend_hdf_o      = pend_hdf;
   assign      nvr_sev_on_pend_o   = sev_on_pend;
   assign      nvr_deep_sleep_o    = deep_sleep;
   assign      nvr_sleep_on_exit_o = sleep_on_exit;
   assign      nvr_wfe_advance_o   = event_reg;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,54,`OVL_ASSERT,"Register enables must never be X")
   u_asrt_reg_en_x
     (.clk       (sclk),
      .reset_n   (hreset_n),
      .qualifier (1'b1),
      .test_expr ({ sys_reset_req_en,
                    tck_control_en,
                    tck_lvl_en,
                    psv_lvl_en,
                    svc_lvl_en,
                    scr_en,
                    irq_en_en[31:0],
                    irq_lvl_en[7:0],
                    pend_tck_en,
                    event_reg_en,
                    hready_i,
                    wic_ds_ack_en,
                    mask_en,
                    pend_hdf_en,
                    pend_svc_en,
                    pend_psv_en }));

   // core accesses to the SHCSR are UNPREDICTABLE
   assert_implication
     #(`OVL_INFO,`OVL_ASSERT,"SHCSR access by core is UNPREDICTABLE")
   u_info_shcsr_dbg_only
     (.clk(hclk),
      .reset_n(hreset_n),
      .antecedent_expr(ppb_shcsr_wr),
      .consequent_expr(ppb_master));

   // core can never make a pend requests if halted
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"Core must never request pend whilst halted")
   u_asrt_svc_valid_halt
     (.clk(hclk), .reset_n(hreset_n),
      .antecedent_expr(dec_svc_request_i | ctl_hdf_request_i),
      .consequent_expr(~dbg_s_halt_i));

   // ------------------------------------------------------------

   // build delayed version of interrupt pending signals for use
   // in assertions

   reg  [31:0] irq_r;
   reg  [31:0] irq_pend_set_pulse;
   reg  [31:0] irq_pend_remain_not_taken;
   reg  [31:0] irq_pend_remain;
   reg  [31:0] irq_pend_remain_clear;

   wire [31:0] irq_actv_bit = nvm_actv_bit_i[36:5];
   wire [31:0] irq_taken = irq_actv_bit & {32{dec_int_taken_i}};
   wire [31:0] nxt_irq_pend_set_pulse = irq & ~irq_r & ~irq_taken;
   wire [31:0] nxt_irq_pend_remain_not_taken = pend_irq & irq & ~irq_taken;
   wire [31:0] nxt_irq_pend_remain = pend_irq & ~(irq_taken | irq_pend_clr);
   wire [31:0] nxt_irq_pend_remain_clear =(~pend_irq) & (~(irq | irq_pend_set));

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n) begin
       irq_r                     <= {32{1'b0}};
       irq_pend_set_pulse        <= {32{1'b0}};
       irq_pend_remain_not_taken <= {32{1'b0}};
       irq_pend_remain           <= {32{1'b0}};
       irq_pend_remain_clear     <= {32{1'b0}};
     end else begin
       irq_r                     <= irq;
       irq_pend_set_pulse        <= nxt_irq_pend_set_pulse;
       irq_pend_remain_not_taken <= nxt_irq_pend_remain_not_taken;
       irq_pend_remain           <= nxt_irq_pend_remain;
       irq_pend_remain_clear     <= nxt_irq_pend_remain_clear;
     end

   // These assertions are effectively assert_implication on each
   // bit but since the number of bits is greater than one, they have
   // been written as assert_always with "a => b" as "(~a) | b"

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,
       "IRQ must pend if line pulsed and not simultaneously taken")
   u_asrt_irq_pend_set_pulse
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(&((~irq_pend_set_pulse) | nvr_pend_irq_o)));

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,"IRQ pend must remain set unless taken")
   u_asrt_irq_pend_remain_not_taken
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(&((~irq_pend_remain_not_taken) | nvr_pend_irq_o)));

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,
       "IRQ pend must remain set unless taken or cleared by software")
   u_asrt_irq_pend_remain
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(&((~irq_pend_remain) | nvr_pend_irq_o)));

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,
       "IRQ pend must remain clear unless stimulated or set by software")
   u_asrt_irq_pend_remain_clear
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(&((~irq_pend_remain_clear) | (~nvr_pend_irq_o))));

   // software clear of level-sensitive IRQ pend bits must not lose the
   // interrupt request so clearing when the IRQ pin is asserted and not
   // active  has defined behaviour (must not leave the pend bit set
   // - encapsulated in the asserts above); however, clearing when the
   // IRQ pin is asserted and active need not leave the pend bit set
   // since it would become set immediately after exception return if
   // the IRQ was still asserted. So we warn about software excercising
   // this behaviour since it may differ from other ARMv6-M or ARMv7-M
   // implementations

   assert_never
     #(`OVL_INFO,`OVL_ASSERT,
       "Software clear of IRQ pend while stimulated and active is IMPDEF")
   u_info_irq_pend_clear_impdef
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(|(irq_pend_clr & irq & irq_actv_bit)));

   // ------------------------------------------------------------

   // replicated IRQ logic for NMI equivalents

   reg    nmi_r;
   reg    nmi_pend_set_pulse;
   reg    nmi_pend_remain_not_taken;
   reg    nmi_pend_remain;
   reg    nmi_pend_remain_clear;

   wire   nmi_actv = nvm_actv_bit_i[0];
   wire   nmi_taken = nmi_actv & dec_int_taken_i;
   wire   nxt_nmi_pend_set_pulse = nmi_i & ~nmi_r & ~nmi_taken;
   wire   nxt_nmi_pend_remain_not_taken = nvr_pend_nmi_o & nmi_i & ~nmi_taken;
   wire   nxt_nmi_pend_remain = nvr_pend_nmi_o & ~(nmi_taken | nvr_vect_clr_actv_o);
   wire   nxt_nmi_pend_remain_clear = (~nvr_pend_nmi_o) & (~(nmi_i | nmi_pend_set));

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n) begin
       nmi_r                      <= 1'b0;
       nmi_pend_set_pulse         <= 1'b0;
       nmi_pend_remain_not_taken  <= 1'b0;
       nmi_pend_remain            <= 1'b0;
       nmi_pend_remain_clear      <= 1'b0;
     end else begin
       nmi_r                      <= nmi_i;
       nmi_pend_set_pulse         <= nxt_nmi_pend_set_pulse;
       nmi_pend_remain_not_taken  <= nxt_nmi_pend_remain_not_taken;
       nmi_pend_remain            <= nxt_nmi_pend_remain;
       nmi_pend_remain_clear      <= nxt_nmi_pend_remain_clear;
     end

   // these assertions could have been written more directly using
   // assert_next but have been written this way to match the IRQ
   // asserts above for consistency

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,
       "NMI pend must be set if line pulsed and not taken")
   u_asrt_nmi_pend_set_pulse
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr((~nmi_pend_set_pulse) | nvr_pend_nmi_o));

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,"NMI pend must remain set unless taken")
   u_asrt_nmi_pend_remain_not_taken
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr((~nmi_pend_remain_not_taken) | nvr_pend_nmi_o));

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,
       "NMI pend must remain set unless taken or cleared by VECTCLRACTIVE")
   u_asrt_nmi_pend_remain
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr((~nmi_pend_remain) | nvr_pend_nmi_o));

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,
       "NMI pend must remain clear unless stimulated or set by software")
   u_asrt_nmi_pend_remain_clear
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr((~nmi_pend_remain_clear) | (~nvr_pend_nmi_o)));

   // ------------------------------------------------------------

   // WIC interface assertions

   assert_zero_one_hot
     #(`OVL_ERROR, 2,`OVL_ASSERT,
       "WICLOAD and WICCLEAR must never be coincident")
   u_asrt_wicload_wicclear
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr({wic_load_o,wic_clear_o}));

   reg  sleeping_r;
   reg  wic_load_r;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n) begin
       sleeping_r <= 1'b0;
       wic_load_r <= 1'b0;
     end else begin
       sleeping_r <= sleeping_o;
       wic_load_r <= wic_load_o;
     end

   assert_never
     #(`OVL_ERROR,`OVL_ASSERT,"WICLOAD must occur before SLEEPING")
   u_wicload_check
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(sleeping_o & ~sleeping_r & ~wic_ds_ack_n_o & ~wic_load_r));

   // ------------------------------------------------------------

   // SysTick timer usage assertions

   reg tck_cvr_valid;
   reg tck_rvr_valid;

   always @(posedge sclk or negedge hreset_n)
     if(~hreset_n) begin
       tck_cvr_valid <= 1'b0;
       tck_rvr_valid <= 1'b0;
     end else begin
       tck_cvr_valid <= tck_cvr_valid | tck_rvr_valid & tck_cvr_clr;
       tck_rvr_valid <= tck_rvr_valid | tck_rvr_en;
     end

   assert_never
     #(`OVL_INFO,`OVL_ASSERT,
       "Software should configure SYST_RVR before clearing SYST_CVR (SYST_CVR loaded with UNKNOWN value)")
   u_info_syst_cvr_order
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(~tck_rvr_valid & tck_cvr_clr));

   assert_never
     #(`OVL_INFO,`OVL_ASSERT,
       "Software should reset SYST_CVR before setting SYST_CSR.ENABLE (TICKINT and COUNTFLAG are UNKNOWN)")
   u_info_syst_csr_order
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(~tck_cvr_valid & tck_control_en & tck_enable_nxt));

   // ------------------------------------------------------------

`endif

endmodule

// ----------------------------------------------------------------------------
// EOF
// ----------------------------------------------------------------------------
