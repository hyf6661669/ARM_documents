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
//      Checked In          : $Date: 2009-03-11 08:37:06 +0000 (Wed, 11 Mar 2009) $
//
//      Revision            : $Revision: 103546 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 NESTED VECTORED INTERRUPT CONTROLLER MAIN FUNCTIONALITY
//-----------------------------------------------------------------------------

module cm0_nvic_main
  #(parameter CBAW     = 0,
    parameter DBG      = 1,
    parameter BE       = 0,
    parameter NUMIRQ   = 32,
    parameter SYST     = 1,
    parameter WIC      = 1,
    parameter WICLINES = 34)

   (input wire         sclk,                // system clock
    input wire         hclk,                // AHB clock
    input wire         hreset_n,            // AHB reset

    output wire        nvm_int_pend_o,      // new exception is pending
    output wire [ 5:0] nvm_int_pend_num_o,  // new exception's number
    output wire        nvm_svc_escalate_o,  // priority too low for SVC
    output wire        nvm_wfi_advance_o,   // WFI instruction should retire
    output wire [36:0] nvm_actv_bit_o,      // active exception (one-hot)
    output wire [31:0] nvm_hrdata_o,        // NVIC PPB read data
    output wire        wic_mask_rxev_o,     // RXEV WIC mask
    output wire        wic_mask_nmi_o,      // NMI WIC mask
    output wire [31:0] wic_mask_isr_o,      // IRQ WIC mask

    input wire [25:0]  st_calib_i,          // SysTick calibration value

    input wire         ctl_wfe_execute_i,   // WFE instruction in execute
    input wire         ctl_wfi_execute_i,   // WFI instruction in execute
    input wire         dbg_c_maskints_i,    // debug interrupt masking
    input wire [22:0]  msl_nvic_sels_i,     // PPB NVIC register selects
    input wire         nvr_pend_nmi_i,      // NMI pend bit
    input wire         nvr_pend_hdf_i,      // HardFault pend bit
    input wire         nvr_pend_svc_i,      // SVCall pend bit
    input wire         nvr_pend_psv_i,      // PendSV pend bit
    input wire         nvr_pend_tck_i,      // SysTick pend bit
    input wire [31:0]  nvr_pend_irq_i,      // IRQ pend bits
    input wire [ 1:0]  nvr_tck_lvl_i,       // SysTick interrupt priority level
    input wire [ 1:0]  nvr_psv_lvl_i,       // PendSV interrupt priority level
    input wire [ 1:0]  nvr_svc_lvl_i,       // SVCall interrupt priority level
    input wire [63:0]  nvr_irq_lvl_i,       // level for each interrupt
    input wire         nvr_tck_en_i,        // SysTick enable
    input wire         nvr_tck_int_en_i,    // SysTick tick-int
    input wire         nvr_tck_clk_src_i,   // SysTick clock-cource
    input wire         nvr_tck_cnt_flag_i,  // SysTick count-flag
    input wire [23:0]  nvr_tck_reload_i,    // SysTick reload register
    input wire [23:0]  nvr_tck_count_i,     // SysTick count register
    input wire         nvr_deep_sleep_i,    // SLEEPDEEP bit in SCR
    input wire         nvr_sleep_on_exit_i, // SLEEPONEXIT bit in SCR
    input wire         nvr_sev_on_pend_i,   // SEVONPEND bit in SCR
    input wire [31:0]  nvr_irq_en_i,        // IRQ enable bits
    input wire [ 5:0]  psr_ipsr_i,          // current exception number
    input wire         psr_primask_ex_i,    // forwarded version of PRIMASK
    input wire         psr_primask_i,       // registered version of PRIMASK
    input wire         psr_nmi_active_i,    // current exception is NMI
    input wire         psr_hdf_active_i,    // current exception is HardFault
    input wire         psr_n_or_h_active_i);// current is NMI or HardFault

   // ------------------------------------------------------------
   // Local constants
   // ------------------------------------------------------------

   // generate constants for each of the system-exception vector
   // numbers, and the base for the IRQ vector numbers

   localparam [5:0] const_nmi_vec  = 6'h02; // NMI
   localparam [5:0] const_hdf_vec  = 6'h03; // HardFault
   localparam [5:0] const_svc_vec  = 6'h0B; // SVCall
   localparam [5:0] const_psv_vec  = 6'h0E; // PendSV
   localparam [5:0] const_tck_vec  = 6'h0F; // SysTick
   localparam [5:0] const_irq0_vec = 6'h10; // IRQ[0]

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire    cfg_syst     = (CBAW == 0) ? (SYST != 0) : 1'bZ;
   wire    cfg_be       = (CBAW == 0) ? (BE   != 0) : 1'bZ;
   wire    cfg_dbg      = (CBAW == 0) ? (DBG  != 0) : 1'bZ;
   wire    cfg_wic      = (CBAW == 0) ? (WIC  != 0) : 1'bZ;

   wire [31:0] cfg_numirq   = (CBAW == 0) ?
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

   wire [33:0] cfg_wiclines = (CBAW == 0) ?
                                { (WICLINES > 33), (WICLINES > 32),
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
                                  (WICLINES >  1), (WICLINES >  0) } : 34'bZ;

   // ------------------------------------------------------------
   // Mask input values based on configuration
   // ------------------------------------------------------------

   // mask interrupt inputs and enables to implemented IRQs

   wire [31:0] pend_irq = cfg_numirq & nvr_pend_irq_i;
   wire [31:0] irq_en   = cfg_numirq & nvr_irq_en_i;

   // mask interrupt priority levels to only implemented IRQs

   reg [63:0]  irq_lvl;
   integer     i0;

   always @(cfg_numirq or nvr_irq_lvl_i)
     for (i0=0;i0<32;i0=i0+1) begin
       irq_lvl[(2*i0)+0] = cfg_numirq[i0] ? nvr_irq_lvl_i[(2*i0)+0] : 1'b0;
       irq_lvl[(2*i0)+1] = cfg_numirq[i0] ? nvr_irq_lvl_i[(2*i0)+1] : 1'b0;
     end

   // mask out optional SysTick timer components

   wire        pend_tck     = cfg_syst ? nvr_pend_tck_i     :  1'b0;
   wire [ 1:0] tck_lvl      = cfg_syst ? nvr_tck_lvl_i      :  2'b0;
   wire        tck_cnt_flag = cfg_syst ? nvr_tck_cnt_flag_i :  1'b0;
   wire        tck_clk_src  = cfg_syst ? nvr_tck_clk_src_i  :  1'b0;
   wire        tck_int_en   = cfg_syst ? nvr_tck_int_en_i   :  1'b0;
   wire        tck_en       = cfg_syst ? nvr_tck_en_i       :  1'b0;
   wire [23:0] tck_reload   = cfg_syst ? nvr_tck_reload_i   : 24'b0;
   wire [23:0] tck_count    = cfg_syst ? nvr_tck_count_i    : 24'b0;
   wire [25:0] st_calib     = cfg_syst ? st_calib_i         : 26'b0;

   // ------------------------------------------------------------
   // Find active interrupt / handler
   // ------------------------------------------------------------

   // determine which ISR is active (if any), the core has already
   // decoded NMI and HardFault, so simply import these

   wire        nmi_actv   = psr_nmi_active_i;
   wire        hdf_actv   = psr_hdf_active_i;
   wire        svc_actv   = (psr_ipsr_i[5:0] == const_svc_vec);
   wire        psv_actv   = (psr_ipsr_i[5:0] == const_psv_vec);
   wire        tck_actv_r = (psr_ipsr_i[5:0] == const_tck_vec);

   wire        tck_actv   = cfg_syst ? tck_actv_r : 1'b0;

   wire [31:0] irq_actv_bit_r =
               { psr_ipsr_i[5:0] == (const_irq0_vec + 6'h1F),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h1E),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h1D),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h1C),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h1B),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h1A),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h19),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h18),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h17),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h16),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h15),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h14),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h13),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h12),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h11),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h10),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h0F),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h0E),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h0D),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h0C),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h0B),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h0A),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h09),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h08),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h07),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h06),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h05),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h04),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h03),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h02),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h01),
                 psr_ipsr_i[5:0] == (const_irq0_vec + 6'h00) };

   wire [31:0] irq_actv_bit = cfg_numirq & irq_actv_bit_r;

   // ------------------------------------------------------------
   // Determine priority of active IRQ
   // ------------------------------------------------------------

   // apply the IRQ active mask to each of the IRQ priority bits,
   // then reductive-OR these to produce the MSB and LSB of the
   // current active IRQ priority

   reg [31:0]  irq_lvl_hi;
   reg [31:0]  irq_lvl_lo;
   integer     i1;

   always @(irq_actv_bit or irq_lvl)
     for (i1=0;i1<32;i1=i1+1) begin
       irq_lvl_hi[i1] = irq_actv_bit[i1] & irq_lvl[(2*i1)+1];
       irq_lvl_lo[i1] = irq_actv_bit[i1] & irq_lvl[(2*i1)+0];
     end

   wire [ 1:0] irq_actv_lvl = { |irq_lvl_hi, |irq_lvl_lo };

   // ------------------------------------------------------------
   // Resolve whether anything actually is active and its priority
   // ------------------------------------------------------------

   // determine whether any prioritizable exception or interrupt
   // is active

   wire        irq_actv = |irq_actv_bit;
   wire        int_actv = irq_actv | tck_actv | psv_actv | svc_actv;

   // extract the priority of the currently active exception;
   // irq_actv_lvl doesn't need masking with irq_actv as the
   // 31:1 muxing will result in zero if no IRQ is active

   wire [1:0]  int_actv_lvl = ( irq_actv_lvl                  |
                                {2{tck_actv}} & tck_lvl       |
                                {2{psv_actv}} & nvr_psv_lvl_i |
                                {2{svc_actv}} & nvr_svc_lvl_i );

   // generate one-hot active exception list for use in nvic_reg

   wire [36:0] actv_bit = { irq_actv_bit[31:0],
                            tck_actv,
                            psv_actv,
                            svc_actv,
                            hdf_actv,
                            nmi_actv };

   // ------------------------------------------------------------
   // Generate escalation signals for core
   // ------------------------------------------------------------

   // architecture requires any fault at or above HardFault
   // priority to LockUp, and any SVC instruction at or above
   // SVCall priority (including PRIMASK) to be treated as an
   // UNDEF; generate hdf_escalate and svc_escalate signals for
   // core

   wire        svc_ge_actv  = nvr_svc_lvl_i >= int_actv_lvl;

   wire        svc_escalate = svc_ge_actv & int_actv;

   // ------------------------------------------------------------
   // Define NVIC pend tree selection function
   // ------------------------------------------------------------

   // the function takes two 9-bit vectors, each defining an
   // interrupt vector number, its priority and whether it is
   // enabled and pending; the function returns which ever of
   // the two vectors is the highest priority enabled one,
   // favouring "first" over "second"; the function must always
   // be called with "first" having a lower vector number than
   // "second" as "first" is the favoured choice and the
   // architecture requires the lowest vector to win when all
   // other things are equal

   function [8:0] winner;
      input [8:0] first;
      input [8:0] second;

      reg [1:0] i_lvl_1st;
      reg       i_enp_1st;
      reg [1:0] i_lvl_2nd;
      reg       i_enp_2nd;
      reg       i_2nd_lt_1st;
      reg       i_sel_2nd;

      begin
        i_lvl_1st = first[7:6];  // unpack first priority level
        i_enp_1st = first[8];    // unpack first enabled+pending
        i_lvl_2nd = second[7:6]; // unpack second priority level
        i_enp_2nd = second[8];   // unpack second enabled+pending

        // second should win if it is higher priority (lower value)
        // than first and it is enabled; alternatively if first is
        // enabled then automatically choose second

        i_2nd_lt_1st = i_lvl_2nd < i_lvl_1st;
        i_sel_2nd    = i_enp_2nd & i_2nd_lt_1st | ~i_enp_1st;
        winner       = i_sel_2nd ? second : first;
      end
   endfunction // winner

   // ------------------------------------------------------------
   // Generate vectors ready for pend tree
   // ------------------------------------------------------------

   // create the pending+enable terms for all IRQs and system
   // interrupts; for system interrupts, which are applied late
   // in the tree, also factor in debugs C_MASKINTS which
   // prevents prioritisable interrupts being taken; for IRQs,
   // C_MASKINTS is applied at the later on to minimize timing
   // and area impact; SVCall must not be masked otherwise
   // deadlock will occur should the core execute an SVC
   // instruction

   wire [31:0] en_pend_irq = pend_irq & irq_en;

   wire [ 2:0] en_pend_sys = { pend_tck & ~dbg_c_maskints_i,
                               nvr_pend_psv_i & ~dbg_c_maskints_i,
                               nvr_pend_svc_i};

   // generate all of the pend tree input vectors for IRQs

   wire [ 8:0] ptree_i00 = {en_pend_irq[ 0], irq_lvl[( 0*2)+1: 0*2], const_irq0_vec+6'h00};
   wire [ 8:0] ptree_i01 = {en_pend_irq[ 1], irq_lvl[( 1*2)+1: 1*2], const_irq0_vec+6'h01};
   wire [ 8:0] ptree_i02 = {en_pend_irq[ 2], irq_lvl[( 2*2)+1: 2*2], const_irq0_vec+6'h02};
   wire [ 8:0] ptree_i03 = {en_pend_irq[ 3], irq_lvl[( 3*2)+1: 3*2], const_irq0_vec+6'h03};
   wire [ 8:0] ptree_i04 = {en_pend_irq[ 4], irq_lvl[( 4*2)+1: 4*2], const_irq0_vec+6'h04};
   wire [ 8:0] ptree_i05 = {en_pend_irq[ 5], irq_lvl[( 5*2)+1: 5*2], const_irq0_vec+6'h05};
   wire [ 8:0] ptree_i06 = {en_pend_irq[ 6], irq_lvl[( 6*2)+1: 6*2], const_irq0_vec+6'h06};
   wire [ 8:0] ptree_i07 = {en_pend_irq[ 7], irq_lvl[( 7*2)+1: 7*2], const_irq0_vec+6'h07};
   wire [ 8:0] ptree_i08 = {en_pend_irq[ 8], irq_lvl[( 8*2)+1: 8*2], const_irq0_vec+6'h08};
   wire [ 8:0] ptree_i09 = {en_pend_irq[ 9], irq_lvl[( 9*2)+1: 9*2], const_irq0_vec+6'h09};
   wire [ 8:0] ptree_i10 = {en_pend_irq[10], irq_lvl[(10*2)+1:10*2], const_irq0_vec+6'h0A};
   wire [ 8:0] ptree_i11 = {en_pend_irq[11], irq_lvl[(11*2)+1:11*2], const_irq0_vec+6'h0B};
   wire [ 8:0] ptree_i12 = {en_pend_irq[12], irq_lvl[(12*2)+1:12*2], const_irq0_vec+6'h0C};
   wire [ 8:0] ptree_i13 = {en_pend_irq[13], irq_lvl[(13*2)+1:13*2], const_irq0_vec+6'h0D};
   wire [ 8:0] ptree_i14 = {en_pend_irq[14], irq_lvl[(14*2)+1:14*2], const_irq0_vec+6'h0E};
   wire [ 8:0] ptree_i15 = {en_pend_irq[15], irq_lvl[(15*2)+1:15*2], const_irq0_vec+6'h0F};
   wire [ 8:0] ptree_i16 = {en_pend_irq[16], irq_lvl[(16*2)+1:16*2], const_irq0_vec+6'h10};
   wire [ 8:0] ptree_i17 = {en_pend_irq[17], irq_lvl[(17*2)+1:17*2], const_irq0_vec+6'h11};
   wire [ 8:0] ptree_i18 = {en_pend_irq[18], irq_lvl[(18*2)+1:18*2], const_irq0_vec+6'h12};
   wire [ 8:0] ptree_i19 = {en_pend_irq[19], irq_lvl[(19*2)+1:19*2], const_irq0_vec+6'h13};
   wire [ 8:0] ptree_i20 = {en_pend_irq[20], irq_lvl[(20*2)+1:20*2], const_irq0_vec+6'h14};
   wire [ 8:0] ptree_i21 = {en_pend_irq[21], irq_lvl[(21*2)+1:21*2], const_irq0_vec+6'h15};
   wire [ 8:0] ptree_i22 = {en_pend_irq[22], irq_lvl[(22*2)+1:22*2], const_irq0_vec+6'h16};
   wire [ 8:0] ptree_i23 = {en_pend_irq[23], irq_lvl[(23*2)+1:23*2], const_irq0_vec+6'h17};
   wire [ 8:0] ptree_i24 = {en_pend_irq[24], irq_lvl[(24*2)+1:24*2], const_irq0_vec+6'h18};
   wire [ 8:0] ptree_i25 = {en_pend_irq[25], irq_lvl[(25*2)+1:25*2], const_irq0_vec+6'h19};
   wire [ 8:0] ptree_i26 = {en_pend_irq[26], irq_lvl[(26*2)+1:26*2], const_irq0_vec+6'h1A};
   wire [ 8:0] ptree_i27 = {en_pend_irq[27], irq_lvl[(27*2)+1:27*2], const_irq0_vec+6'h1B};
   wire [ 8:0] ptree_i28 = {en_pend_irq[28], irq_lvl[(28*2)+1:28*2], const_irq0_vec+6'h1C};
   wire [ 8:0] ptree_i29 = {en_pend_irq[29], irq_lvl[(29*2)+1:29*2], const_irq0_vec+6'h1D};
   wire [ 8:0] ptree_i30 = {en_pend_irq[30], irq_lvl[(30*2)+1:30*2], const_irq0_vec+6'h1E};
   wire [ 8:0] ptree_i31 = {en_pend_irq[31], irq_lvl[(31*2)+1:31*2], const_irq0_vec+6'h1F};

   // ------------------------------------------------------------
   // Construct IRQ pending tree
   // ------------------------------------------------------------

   // first level of IRQ pend tree compressing 32-to-16

   wire [ 8:0] ptree_0_0 = winner(ptree_i00, ptree_i01);
   wire [ 8:0] ptree_0_1 = winner(ptree_i02, ptree_i03);
   wire [ 8:0] ptree_0_2 = winner(ptree_i04, ptree_i05);
   wire [ 8:0] ptree_0_3 = winner(ptree_i06, ptree_i07);
   wire [ 8:0] ptree_0_4 = winner(ptree_i08, ptree_i09);
   wire [ 8:0] ptree_0_5 = winner(ptree_i10, ptree_i11);
   wire [ 8:0] ptree_0_6 = winner(ptree_i12, ptree_i13);
   wire [ 8:0] ptree_0_7 = winner(ptree_i14, ptree_i15);
   wire [ 8:0] ptree_0_8 = winner(ptree_i16, ptree_i17);
   wire [ 8:0] ptree_0_9 = winner(ptree_i18, ptree_i19);
   wire [ 8:0] ptree_0_a = winner(ptree_i20, ptree_i21);
   wire [ 8:0] ptree_0_b = winner(ptree_i22, ptree_i23);
   wire [ 8:0] ptree_0_c = winner(ptree_i24, ptree_i25);
   wire [ 8:0] ptree_0_d = winner(ptree_i26, ptree_i27);
   wire [ 8:0] ptree_0_e = winner(ptree_i28, ptree_i29);
   wire [ 8:0] ptree_0_f = winner(ptree_i30, ptree_i31);

   // second level of IRQ pend tree compressing 16-to-8

   wire [ 8:0] ptree_1_0 = winner(ptree_0_0, ptree_0_1);
   wire [ 8:0] ptree_1_1 = winner(ptree_0_2, ptree_0_3);
   wire [ 8:0] ptree_1_2 = winner(ptree_0_4, ptree_0_5);
   wire [ 8:0] ptree_1_3 = winner(ptree_0_6, ptree_0_7);
   wire [ 8:0] ptree_1_4 = winner(ptree_0_8, ptree_0_9);
   wire [ 8:0] ptree_1_5 = winner(ptree_0_a, ptree_0_b);
   wire [ 8:0] ptree_1_6 = winner(ptree_0_c, ptree_0_d);
   wire [ 8:0] ptree_1_7 = winner(ptree_0_e, ptree_0_f);

   // third level of IRQ pend tree compressing 8-to-4

   wire [ 8:0] ptree_2_0 = winner(ptree_1_0, ptree_1_1);
   wire [ 8:0] ptree_2_1 = winner(ptree_1_2, ptree_1_3);
   wire [ 8:0] ptree_2_2 = winner(ptree_1_4, ptree_1_5);
   wire [ 8:0] ptree_2_3 = winner(ptree_1_6, ptree_1_7);

   // fourth level of IRQ pend tree compressing 4-to-2

   wire [ 8:0] ptree_3_0 = winner(ptree_2_0, ptree_2_1);
   wire [ 8:0] ptree_3_1 = winner(ptree_2_2, ptree_2_3);

   // fifth level of IRQ pend tree compressing 2-to-1
   // yielding the winner of the IRQ pending tournament

   wire [ 8:0] ptree_4_0 = winner(ptree_3_0, ptree_3_1);

   // ------------------------------------------------------------
   // Generate vectors for system handlers and final IRQ vector
   // ------------------------------------------------------------

   // construct SVCall, PendSV and SysTick vectors

   wire [ 8:0] ptree_svc = {en_pend_sys[0], nvr_svc_lvl_i, const_svc_vec};
   wire [ 8:0] ptree_psv = {en_pend_sys[1], nvr_psv_lvl_i, const_psv_vec};
   wire [ 8:0] ptree_tck = {en_pend_sys[2], tck_lvl,       const_tck_vec};

   // produce final IRQ vector and apply C_MASKINTS

   wire [ 8:0] ptree_irq = { ptree_4_0[8] & ~dbg_c_maskints_i,
                             ptree_4_0[7:0]};

   // ------------------------------------------------------------
   // Extend pending tournament to include system handler
   // ------------------------------------------------------------

   // first level of SYS+IRQ pending tree compressing 4-to-1

   wire [ 8:0] ptree_5_0 = winner(ptree_svc, ptree_psv);
   wire [ 8:0] ptree_5_1 = winner(ptree_tck, ptree_irq);

   // second level of SYS+IRQ pending tree compressing 2-to-1
   // producing result of all configurable exceptions, leaving
   // just NMI and HardFault to factor in

   wire [8:0]  ptree_6_0 = winner(ptree_5_0, ptree_5_1);

   // ------------------------------------------------------------
   // Derive control values from pend tree result
   // ------------------------------------------------------------

   // bit[8] of the output vector indicates that the tree has
   // at least one interrupt/exception that is both pending and
   // enabled, bits[7:6] contain the priority level of the
   // interrupt/exception whilst bits[5:0] contain the number/
   // vector of the interrupt; for use in the architected VECTPEND
   // fields, this value needs forcing to zero if no interupt is
   // pending

   wire        pend_tree     = ptree_6_0[8];
   wire [ 1:0] pend_tree_lvl = ptree_6_0[7:6];
   wire [ 5:0] pend_tree_num = ptree_6_0[5:0] & {6{pend_tree}};

   // ------------------------------------------------------------
   // Derive final prioritisation results
   // ------------------------------------------------------------

   // determine whether an NMI or HardFault should attempt to
   // preempt current execution; NMI always preempts if it isn't
   // already active; HardFault always preempts if neither it or
   // NMI is active

   wire        nmi_preempt = nvr_pend_nmi_i & ~nmi_actv;
   wire        hdf_preempt = nvr_pend_hdf_i & ~psr_n_or_h_active_i;

   // determine whether an IRQ or system exception is pending
   // which is higher priority than the current active level
   // ignoring PRIMASK; this is required as if an exception is
   // only masked by PRIMASK it still causes a WFI instruction
   // to retire

   wire        int_lvl_ok  = (pend_tree_lvl < int_actv_lvl) | ~int_actv;
   wire        int_pending = int_lvl_ok & pend_tree & ~psr_n_or_h_active_i;

   // generate WFI advance and interrupt preempt signals for
   // core

   wire        primask_set = psr_primask_ex_i;
   wire        wfi_advance = int_pending | nmi_preempt | hdf_preempt;

   wire        int_pend    = ( int_pending & ~primask_set |
                               nmi_preempt |
                               hdf_preempt );

   // derive vector number from highest pending

   wire [ 5:0] int_pend_low = nvr_pend_hdf_i ? const_hdf_vec : pend_tree_num;
   wire [ 5:0] int_pend_num = nvr_pend_nmi_i ? const_nmi_vec : int_pend_low;

   // ------------------------------------------------------------
   // Expand register fields to architectural layouts
   // ------------------------------------------------------------

   // SysTick control and status register

   wire [31:0] syst_csr_val = { {15{1'b0}},
                                tck_cnt_flag,
                                {13{1'b0}},
                                tck_clk_src,
                                tck_int_en,
                                tck_en };

   // SysTick ceload register

   wire [31:0] syst_rvr_val = {8'h00, tck_reload};

   // SysTick current value register

   wire [31:0] syst_cvr_val = {8'h00, tck_count};

   // SysTick calibration register

   wire [31:0] syst_cal_val = { st_calib[25],     //    31 NOREF
                                st_calib[24],     //    30 SKEW
                                {6{1'b0}},        // 29:24 Reserved
                                st_calib[23:0] }; // 23: 0 TENMS

   // application interrupt and reset control register

   wire [31:0] aircr_val    = { 16'hfa05,
                                cfg_be,
                                {15{1'b0}} };

   // system control register

   wire [31:0] scr_val      = { {27{1'b0}},
                                nvr_sev_on_pend_i,
                                1'b0,
                                nvr_deep_sleep_i,
                                nvr_sleep_on_exit_i,
                                1'b0 };

   // configuration control register

   wire [31:0] ccr_val      = { {22{1'b0}},
                                1'b1,
                                {5{1'b0}},
                                1'b1,
                                {3{1'b0}} };

   // system handler priority register 2

   wire [31:0] shpr2_val    = { nvr_svc_lvl_i,
                                {30{1'b0}} };

   // system handler priority register 3

   wire [31:0] shpr3_val    = { tck_lvl,
                                {6{1'b0}},
                                nvr_psv_lvl_i,
                                {22{1'b0}} };

   // system handler control and status register;
   // the PPB select for SHCSR is already masked for debug
   // access only

   wire [31:0] shcsr_val    = { {16{1'b0}},
                                nvr_pend_svc_i,
                                {15{1'b0}} };

   // interrupt control and status register

   wire [31:0] icsr_val = { nvr_pend_nmi_i,
                            {2{1'b0}},
                            nvr_pend_psv_i,
                            1'b0,
                            pend_tck,
                            {2{1'b0}},
                            cfg_dbg ? int_pend : 1'b0,
                            cfg_dbg ? (|(pend_irq))  : 1'b0,
                            {4{1'b0}},
                            int_pend_num,
                            {6{1'b0}},
                            cfg_dbg ? psr_ipsr_i : {6{1'b0}} };

   // interrupt priority level registers, these require the
   // 64-bits of IRQ priority to be unpacked with 2-bits in
   // every 8-bits aligned to the most-significant bits

   reg [255:0] ipr_array;
   integer     i2;

   always @(cfg_numirq or irq_lvl)
     begin
       ipr_array = {256{1'b0}};
       for (i2=0;i2<32;i2=i2+1)
         if (cfg_numirq[i2]) begin
           ipr_array[(i2*8)+6] = irq_lvl[(i2*2)+0];
           ipr_array[(i2*8)+7] = irq_lvl[(i2*2)+1];
         end
     end

   wire [31:0] ipr0_val = ipr_array[(0*32)+31:(0*32)];
   wire [31:0] ipr1_val = ipr_array[(1*32)+31:(1*32)];
   wire [31:0] ipr2_val = ipr_array[(2*32)+31:(2*32)];
   wire [31:0] ipr3_val = ipr_array[(3*32)+31:(3*32)];
   wire [31:0] ipr4_val = ipr_array[(4*32)+31:(4*32)];
   wire [31:0] ipr5_val = ipr_array[(5*32)+31:(5*32)];
   wire [31:0] ipr6_val = ipr_array[(6*32)+31:(6*32)];
   wire [31:0] ipr7_val = ipr_array[(7*32)+31:(7*32)];

   // ------------------------------------------------------------
   // NVIC PPB read-data mux
   // ------------------------------------------------------------

   wire [31:0] nvm_hrdata =
               ( {32{msl_nvic_sels_i[22] & cfg_syst}} & syst_csr_val |
                 {32{msl_nvic_sels_i[21] & cfg_syst}} & syst_rvr_val |
                 {32{msl_nvic_sels_i[20] & cfg_syst}} & syst_cvr_val |
                 {32{msl_nvic_sels_i[19] & cfg_syst}} & syst_cal_val |
                 {32{msl_nvic_sels_i[18]}}            & irq_en       |
                 {32{msl_nvic_sels_i[17]}}            & irq_en       |
                 {32{msl_nvic_sels_i[16]}}            & pend_irq     |
                 {32{msl_nvic_sels_i[15]}}            & pend_irq     |
                 {32{msl_nvic_sels_i[14]}}            & ipr0_val     |
                 {32{msl_nvic_sels_i[13]}}            & ipr1_val     |
                 {32{msl_nvic_sels_i[12]}}            & ipr2_val     |
                 {32{msl_nvic_sels_i[11]}}            & ipr3_val     |
                 {32{msl_nvic_sels_i[10]}}            & ipr4_val     |
                 {32{msl_nvic_sels_i[ 9]}}            & ipr5_val     |
                 {32{msl_nvic_sels_i[ 8]}}            & ipr6_val     |
                 {32{msl_nvic_sels_i[ 7]}}            & ipr7_val     |
                 {32{msl_nvic_sels_i[ 6]}}            & icsr_val     |
                 {32{msl_nvic_sels_i[ 5]}}            & aircr_val    |
                 {32{msl_nvic_sels_i[ 4]}}            & scr_val      |
                 {32{msl_nvic_sels_i[ 3]}}            & ccr_val      |
                 {32{msl_nvic_sels_i[ 2]}}            & shpr2_val    |
                 {32{msl_nvic_sels_i[ 1]}}            & shpr3_val    |
                 {32{msl_nvic_sels_i[ 0] & cfg_dbg}}  & shcsr_val    );

   // ------------------------------------------------------------
   // WIC mask generation
   // ------------------------------------------------------------

   // for RXEV, the mask simply reflects that the core went to
   // sleep on a WFE rather than a WFI

   wire        wic_mask_rxev = ctl_wfe_execute_i;

   // for NMI, the mask reflects either that we are not in NMI,
   // and are therefore capable of taking an NMI interrupt, or
   // it reflects that we are sleeping on a WFE and have
   // SEVONPEND set and the NMI pend bit is currently clear

   wire        wfe_s_on_p   = nvr_sev_on_pend_i & ctl_wfe_execute_i;

   wire        wic_mask_nmi = ( ~nmi_actv |
                                wfe_s_on_p & ~nvr_pend_nmi_i);

   // for IRQs, the mask reflects that the priority of the IRQ
   // is higher than the current active priority (irrespective
   // of PRIMASK, as a PRIMASK'ed interrupt will wake WFI even
   // if it doesn't preempt) and that it is enabled; for WFE
   // with SEVONPEND, that the interrupt is not currently pending
   // or WFE will be preempted

   integer     i3;
   reg [31:0]  irq_lvl_ok;

   always @(irq_lvl or int_actv_lvl)
     for(i3=0;i3<32;i3=i3+1)
       irq_lvl_ok[i3] = {irq_lvl[(2*i3)+1],irq_lvl[2*i3]} < int_actv_lvl;

   // we use the WFI mask even if executing a WFE, as long as
   // PRIMASK is not set i.e. an IRQ would preempt the WFE

   wire        use_wfi_mask = ctl_wfi_execute_i | ~psr_primask_i;

   wire [31:0] wfi_mask     = ( irq_en &
                                {32{~psr_n_or_h_active_i}} &
                                (irq_lvl_ok | {32{~int_actv}}) &
                                {32{use_wfi_mask}} );

   wire [31:0] wfe_mask     = {32{wfe_s_on_p}} & ~pend_irq;

   wire [31:0] wic_mask_isr = wfi_mask | wfe_mask;


   // ------------------------------------------------------------
   // Output assignments
   // ------------------------------------------------------------

   assign     nvm_actv_bit_o     = actv_bit;
   assign     nvm_svc_escalate_o = svc_escalate;
   assign     nvm_hrdata_o       = nvm_hrdata;
   assign     nvm_wfi_advance_o  = wfi_advance;
   assign     nvm_int_pend_o     = int_pend;
   assign     nvm_int_pend_num_o = int_pend_num;

   assign     wic_mask_isr_o  = wic_mask_isr & cfg_wiclines[33:2] & {32{cfg_wic}};
   assign     wic_mask_nmi_o  = wic_mask_nmi & cfg_wiclines[1] & cfg_wic;
   assign     wic_mask_rxev_o = wic_mask_rxev & cfg_wiclines[0] & cfg_wic;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   // generate 6-bit equivalent of one-hot configuration value
   reg [ 5:0] num_irqs;
   integer    i4;

   always @(cfg_numirq)
     begin
       num_irqs = {6{1'b0}};
       for(i4=0;i4<32;i4=i4+1)
         if(cfg_numirq[i4])
           num_irqs = num_irqs + 1'b1;
     end

   // check this is a valid implementation
   assert_always
     #(`OVL_FATAL,`OVL_ASSERT,
       "Cortex-M0 NVIC only supports 1, 2, 4, 8, 16, 24 or 32 IRQs")
   u_asrt_num_irq
     (.clk(hclk),
      .reset_n(hreset_n),
      .test_expr((num_irqs ==  1) |
                 (num_irqs ==  2) |
                 (num_irqs ==  4) |
                 (num_irqs ==  8) |
                 (num_irqs == 16) |
                 (num_irqs == 24) |
                 (num_irqs == 32)));

   assert_always // can only be INFO as not enforced by hardware
     #(`OVL_INFO,`OVL_ASSERT,
       "IPSR must be an implemented exception unless software makes it UNPREDICTABLE")
   u_info_int_curr_num_unpred
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr((psr_ipsr_i == {6{1'b0}}) | // thread
                 (psr_ipsr_i == {6{1'b1}}) | // faulted xPSR load
                 (psr_ipsr_i == const_nmi_vec) |
                 (psr_ipsr_i == const_hdf_vec) |
                 ( ((psr_ipsr_i == const_svc_vec) |
                    (psr_ipsr_i == const_psv_vec) |
                    (cfg_syst & (psr_ipsr_i == const_tck_vec)) )) |
                 ((psr_ipsr_i >= const_irq0_vec) & (psr_ipsr_i < (const_irq0_vec + num_irqs)))
                 ));

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,
       "C_MASKINTS must not be assserted without Debug extensions")
   u_asrt_c_maskints_i_no_dbg
     (.clk(sclk), .reset_n(hreset_n),
      .antecedent_expr(cfg_dbg==0),
      .consequent_expr(~dbg_c_maskints_i));

   assert_implication
     #(`OVL_ERROR,`OVL_ASSERT,
       "nvm_int_pend_num_o must be valid when nvm_int_pend_o asserted")
   u_asrt_nvm_int_pend_num_o_valid
     (.clk(sclk), .reset_n(hreset_n),
      .antecedent_expr(nvm_int_pend_o),
      .consequent_expr((nvm_int_pend_num_o == const_nmi_vec) |
                       (nvm_int_pend_num_o == const_hdf_vec) |
                       ( ((nvm_int_pend_num_o == const_svc_vec) |
                          (nvm_int_pend_num_o == const_psv_vec) |
                          (cfg_syst & (nvm_int_pend_num_o == const_tck_vec))) ) |
                       ((nvm_int_pend_num_o >= const_irq0_vec) &
                        (nvm_int_pend_num_o < (const_irq0_vec + num_irqs)))));

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,"Interrupt active decode from psr_ipsr_i")
   u_asrt_int_actv
     (.clk(hclk), .reset_n(hreset_n),
      .test_expr(int_actv == ((
                               ((psr_ipsr_i == const_svc_vec) |
                                (psr_ipsr_i == const_psv_vec) |
                                (cfg_syst & (psr_ipsr_i == const_tck_vec)))) |
                              ((psr_ipsr_i >= const_irq0_vec) &
                               (psr_ipsr_i < (const_irq0_vec + num_irqs))))));

   wire      unpredictable_actv_lvl_chg;
   reg [5:0] int_curr_num_reg;
   reg [1:0] int_actv_lvl_reg;

   always @(posedge sclk or negedge hreset_n)
     if (~hreset_n)
       begin
         int_curr_num_reg    <= {6{1'b0}};
         int_actv_lvl_reg    <= {2{1'b0}};
       end
     else
       begin
         int_curr_num_reg    <= psr_ipsr_i;
         int_actv_lvl_reg    <= int_actv_lvl;
       end

   // Indicates a change to the priority of the currently active exception
   assign unpredictable_actv_lvl_chg = ((int_actv_lvl != int_actv_lvl_reg) &
                                        (psr_ipsr_i == int_curr_num_reg));
   assert_never
     #(`OVL_INFO,`OVL_ASSERT,"Dynamic reprioritisation - UNPREDICTABLE")
   u_info_unpredictable_actv_lvl_chg
     (.clk(sclk), .reset_n(hreset_n), .test_expr(unpredictable_actv_lvl_chg));

   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"pend_tree must be known")
   u_asrt_pend_tree_unknown
     (.clk(sclk), .reset_n(hreset_n), .qualifier(1'b1),
      .test_expr(pend_tree));

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"pend_tree_num should be valid when pending")
   u_asrt_pend_num_valid
     (.clk(sclk), .reset_n(hreset_n),
      .antecedent_expr(pend_tree),
      .consequent_expr((pend_tree_num  == const_svc_vec) |
                       (pend_tree_num  == const_psv_vec) |
                       (pend_tree_num  == const_tck_vec) |
                       ((pend_tree_num >= const_irq0_vec) &
                        (pend_tree_num < (const_irq0_vec + num_irqs)))));

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"pend_tree_num should be 0 when not pending")
   u_asrt_pend_num_not_pend
     (.clk(sclk), .reset_n(hreset_n),
      .antecedent_expr(~pend_tree),
      .consequent_expr(pend_tree_num == {6{1'b0}}));

   assert_zero_one_hot
     #(`OVL_FATAL,37,`OVL_ASSERT,"At most one decoded active exception")
   u_asrt_nvm_actv_bit_o
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(nvm_actv_bit_o));

   assert_one_hot // Can only be INFO as hardware does not prevent this
     #(`OVL_INFO,39,`OVL_ASSERT,
       "IPSR must indicate thread mode, fault, or an implemented exception")
   u_info_psr_ipsr_inactive
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr({psr_ipsr_i == {6{1'b0}},
                  {psr_ipsr_i == {6{1'b1}}},
                  nvm_actv_bit_o}));

   assert_always
     #(`OVL_ERROR,`OVL_ASSERT,"irq_actv must be correct decode of psr_ipsr_i")
   u_asrt_irq_actv
     (.clk(sclk), .reset_n(hreset_n),
      .test_expr(irq_actv == ((psr_ipsr_i >= const_irq0_vec) &
                              (psr_ipsr_i < (const_irq0_vec + num_irqs)))));

   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,
       "SysTick exception must not be pending without SYST configuration")
   u_asrt_pend_state_no_os
     (.clk(sclk), .reset_n(hreset_n),
      .antecedent_expr(cfg_syst==0),
      .consequent_expr(~nvr_pend_tck_i));

`endif

endmodule // cm0_nvic_main

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
