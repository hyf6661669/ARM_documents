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
//      Checked In          : $Date: 2009-03-20 16:26:30 +0000 (Fri, 20 Mar 2009) $
//
//      Revision            : $Revision: 104820 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 DEBUG PPB DECODER
//-----------------------------------------------------------------------------

module cm0_dbg_sel
  #(parameter CBAW = 0,
    parameter DBG  = 1,
    parameter BKPT = 4,
    parameter WPT  = 2)

   (input  wire        dclk,               // gated debug clock
    input  wire        dbg_reset_n,        // debug reset

    output wire [ 1:0] dsl_cid_sels_o,     // core domain ID selects
    output wire [ 3:0] dsl_dbg_sels_o,     // debug control register selects
    output wire [ 4:0] dsl_bpu_sels_o,     // breakpoint unit register selects
    output wire [ 7:0] dsl_dwt_sels_o,     // watchpoint unit register selects
    output wire        dsl_ppb_write_o,    // write performed to PPB space
    output wire        dsl_ppb_active_o,   // PPB not AHB is current slave
    output wire [31:0] dsl_hrdata_o,       // debug component ID read-data

    input  wire        hready_i,           // AHB ready / core advance
    input  wire [15:0] eco_rev_num_19_4_i, // revision number ECOs

    input  wire        dif_size_1_i,       // transaction is word-sized
    input  wire        dif_trans_i,        // transaction
    input  wire [31:0] dif_addr_i,         // transaction address
    input  wire        dif_write_i,        // transaction is a write
    input  wire        mtx_dif_slot_i);    // matrix accepted transaction

   // ------------------------------------------------------------
   // Configurability
   // ------------------------------------------------------------

   wire        para_dwt = (DBG != 0) & (WPT  != 0);
   wire        para_bpu = (DBG != 0) & (BKPT != 0);

   wire        cfg_dbg  = (CBAW == 0) ? (DBG != 0)  : 1'bZ;
   wire        cfg_dwt  = (CBAW == 0) ? para_dwt    : 1'bZ;
   wire        cfg_bpu  = (CBAW == 0) ? para_bpu    : 1'bZ;

   // ------------------------------------------------------------
   // Mask inputs based on configuration
   // ------------------------------------------------------------

   wire        hready           = cfg_dbg ? hready_i           :  1'b0;
   wire [15:0] eco_rev_num_19_4 = cfg_dbg ? eco_rev_num_19_4_i : 16'b0;
   wire        dif_size_1       = cfg_dbg ? dif_size_1_i       :  1'b0;
   wire        dif_trans        = cfg_dbg ? dif_trans_i        :  1'b0;
   wire [31:0] dif_addr         = cfg_dbg ? dif_addr_i         : 32'b0;
   wire        dif_write        = cfg_dbg ? dif_write_i        :  1'b0;
   wire        mtx_dif_slot     = cfg_dbg ? mtx_dif_slot_i     :  1'b0;

   // ------------------------------------------------------------
   // PPB write, SCS selector, and CPU guard registers
   // ------------------------------------------------------------

   reg  [ 6:0] scs_sel;   // encoded PPB space register select
   reg         ppb_write; // access to PPB is a write

   // ------------------------------------------------------------
   // Create constants for PPB address decoding
   // ------------------------------------------------------------

   localparam [31:0] const_a_dwt_ctl    = 32'hE0001000;
   localparam [31:0] const_a_dwt_pcsr   = 32'hE000101C;
   localparam [31:0] const_a_dwt_comp0  = 32'hE0001020;
   localparam [31:0] const_a_dwt_mask0  = 32'hE0001024;
   localparam [31:0] const_a_dwt_func0  = 32'hE0001028;
   localparam [31:0] const_a_dwt_comp1  = 32'hE0001030;
   localparam [31:0] const_a_dwt_mask1  = 32'hE0001034;
   localparam [31:0] const_a_dwt_func1  = 32'hE0001038;
   localparam [31:0] const_a_dwt_pid4   = 32'hE0001FD0;
   localparam [31:0] const_a_dwt_pid0   = 32'hE0001FE0;
   localparam [31:0] const_a_dwt_pid1   = 32'hE0001FE4;
   localparam [31:0] const_a_dwt_pid2   = 32'hE0001FE8;
   localparam [31:0] const_a_dwt_pid3   = 32'hE0001FEC;
   localparam [31:0] const_a_dwt_cid0   = 32'hE0001FF0;
   localparam [31:0] const_a_dwt_cid1   = 32'hE0001FF4;
   localparam [31:0] const_a_dwt_cid2   = 32'hE0001FF8;
   localparam [31:0] const_a_dwt_cid3   = 32'hE0001FFC;

   localparam [31:0] const_a_bp_ctrl    = 32'hE0002000;
   localparam [31:0] const_a_bp_comp0   = 32'hE0002008;
   localparam [31:0] const_a_bp_comp1   = 32'hE000200C;
   localparam [31:0] const_a_bp_comp2   = 32'hE0002010;
   localparam [31:0] const_a_bp_comp3   = 32'hE0002014;
   localparam [31:0] const_a_bp_pid4    = 32'hE0002FD0;
   localparam [31:0] const_a_bp_pid0    = 32'hE0002FE0;
   localparam [31:0] const_a_bp_pid1    = 32'hE0002FE4;
   localparam [31:0] const_a_bp_pid2    = 32'hE0002FE8;
   localparam [31:0] const_a_bp_pid3    = 32'hE0002FEC;
   localparam [31:0] const_a_bp_cid0    = 32'hE0002FF0;
   localparam [31:0] const_a_bp_cid1    = 32'hE0002FF4;
   localparam [31:0] const_a_bp_cid2    = 32'hE0002FF8;
   localparam [31:0] const_a_bp_cid3    = 32'hE0002FFC;

   localparam [31:0] const_a_actlr      = 32'hE000E008;
   localparam [31:0] const_a_cpuid      = 32'hE000ED00;
   localparam [31:0] const_a_dfsr       = 32'hE000ED30;
   localparam [31:0] const_a_dhcsr      = 32'hE000EDF0;
   localparam [31:0] const_a_dcrsr      = 32'hE000EDF4;
   localparam [31:0] const_a_demcr      = 32'hE000EDFC;

   localparam [31:0] const_a_scs_pid4   = 32'hE000EFD0;
   localparam [31:0] const_a_scs_pid0   = 32'hE000EFE0;
   localparam [31:0] const_a_scs_pid1   = 32'hE000EFE4;
   localparam [31:0] const_a_scs_pid2   = 32'hE000EFE8;
   localparam [31:0] const_a_scs_pid3   = 32'hE000EFEC;
   localparam [31:0] const_a_scs_cid0   = 32'hE000EFF0;
   localparam [31:0] const_a_scs_cid1   = 32'hE000EFF4;
   localparam [31:0] const_a_scs_cid2   = 32'hE000EFF8;
   localparam [31:0] const_a_scs_cid3   = 32'hE000EFFC;

   localparam [31:0] const_a_rom_scs    = 32'hE00FF000;
   localparam [31:0] const_a_rom_dwt    = 32'hE00FF004;
   localparam [31:0] const_a_rom_bpu    = 32'hE00FF008;
   localparam [31:0] const_a_rom_eot    = 32'hE00FF00C;
   localparam [31:0] const_a_rom_csmt   = 32'hE00FFFCC;
   localparam [31:0] const_a_rom_pid4   = 32'hE00FFFD0;
   localparam [31:0] const_a_rom_pid0   = 32'hE00FFFE0;
   localparam [31:0] const_a_rom_pid1   = 32'hE00FFFE4;
   localparam [31:0] const_a_rom_pid2   = 32'hE00FFFE8;
   localparam [31:0] const_a_rom_pid3   = 32'hE00FFFEC;
   localparam [31:0] const_a_rom_cid0   = 32'hE00FFFF0;
   localparam [31:0] const_a_rom_cid1   = 32'hE00FFFF4;
   localparam [31:0] const_a_rom_cid2   = 32'hE00FFFF8;
   localparam [31:0] const_a_rom_cid3   = 32'hE00FFFFC;

   // ------------------------------------------------------------
   // Debug SCS hashing function
   // ------------------------------------------------------------
   // must generate a unique, non-zero value for valid selections,
   // the exclusive-OR pairs are: {C629533}, {0FD02C4}, with 0x7F
   // available as the unmatched PPB space hit

   function [6:0] scs_hash;
      input [31:0] i_key;
      begin
        scs_hash = { i_key[ 2] ^ i_key[ 5],
                     i_key[ 2] ^ i_key[13],
                     i_key[ 3] ^ i_key[ 4],
                     i_key[ 3] ^ i_key[12],
                     i_key[ 6] ^ i_key[15],
                     i_key[ 9],
                     i_key[12] };
        end
   endfunction

   // ------------------------------------------------------------
   // SCS matching functions
   // ------------------------------------------------------------
   // uses hash and a specific enable to determine one-hot select

   function scs_dwt_sel;
      input [ 9:0] i_key;
      input [31:0] i_raw_addr;
      begin
        scs_dwt_sel = i_key[7] & (i_key[6:0] == scs_hash(i_raw_addr));
      end
   endfunction

   function scs_bpu_sel;
      input [ 9:0] i_key;
      input [31:0] i_raw_addr;
      begin
        scs_bpu_sel = i_key[8] & (i_key[6:0] == scs_hash(i_raw_addr));
      end
   endfunction

   function scs_dbg_sel;
      input [ 9:0] i_key;
      input [31:0] i_raw_addr;
      begin
        scs_dbg_sel = i_key[9] & (i_key[6:0] == scs_hash(i_raw_addr));
      end
   endfunction

   // ------------------------------------------------------------
   // Address and debug master check functions
   // ------------------------------------------------------------
   // returns true if address[28:2] results in an SCS "hit"

   function scs_dbg_chk;
      input [26:0] i_m_addr;
      input [31:0] i_raw_addr;
      begin
        scs_dbg_chk = i_raw_addr[28:2] == i_m_addr[26:0];
      end
   endfunction

   // ------------------------------------------------------------
   // Factor debug transaction slot into ppb_trans
   // ------------------------------------------------------------

   wire        scs_prefix = dif_addr[31:28] == 4'hE;

   wire        ppb_trans  = dif_trans & mtx_dif_slot & scs_prefix;

   // ------------------------------------------------------------
   // Determine whether address hits in the SCS
   // ------------------------------------------------------------

   wire [26:0] scs_mad    = dif_addr[28:2];

   wire        scs_match  =
               ( // DEBUG ACCESSIBLE REGISTERS
                 scs_dbg_chk(scs_mad, const_a_scs_pid4)   |
                 scs_dbg_chk(scs_mad, const_a_scs_pid0)   |
                 scs_dbg_chk(scs_mad, const_a_scs_pid1)   |
                 scs_dbg_chk(scs_mad, const_a_scs_pid2)   |
                 scs_dbg_chk(scs_mad, const_a_scs_pid3)   |
                 scs_dbg_chk(scs_mad, const_a_scs_cid0)   |
                 scs_dbg_chk(scs_mad, const_a_scs_cid1)   |
                 scs_dbg_chk(scs_mad, const_a_scs_cid2)   |
                 scs_dbg_chk(scs_mad, const_a_scs_cid3)   |

                 scs_dbg_chk(scs_mad, const_a_dwt_ctl)    |
                 scs_dbg_chk(scs_mad, const_a_dwt_pcsr)   |
                 scs_dbg_chk(scs_mad, const_a_dwt_comp0)  |
                 scs_dbg_chk(scs_mad, const_a_dwt_mask0)  |
                 scs_dbg_chk(scs_mad, const_a_dwt_func0)  |
                 scs_dbg_chk(scs_mad, const_a_dwt_comp1)  |
                 scs_dbg_chk(scs_mad, const_a_dwt_mask1)  |
                 scs_dbg_chk(scs_mad, const_a_dwt_func1)  |
                 scs_dbg_chk(scs_mad, const_a_dwt_pid4)   |
                 scs_dbg_chk(scs_mad, const_a_dwt_pid0)   |
                 scs_dbg_chk(scs_mad, const_a_dwt_pid1)   |
                 scs_dbg_chk(scs_mad, const_a_dwt_pid2)   |
                 scs_dbg_chk(scs_mad, const_a_dwt_pid3)   |
                 scs_dbg_chk(scs_mad, const_a_dwt_cid0)   |
                 scs_dbg_chk(scs_mad, const_a_dwt_cid1)   |
                 scs_dbg_chk(scs_mad, const_a_dwt_cid2)   |
                 scs_dbg_chk(scs_mad, const_a_dwt_cid3)   |

                 scs_dbg_chk(scs_mad, const_a_bp_ctrl)    |
                 scs_dbg_chk(scs_mad, const_a_bp_comp0)   |
                 scs_dbg_chk(scs_mad, const_a_bp_comp1)   |
                 scs_dbg_chk(scs_mad, const_a_bp_comp2)   |
                 scs_dbg_chk(scs_mad, const_a_bp_comp3)   |
                 scs_dbg_chk(scs_mad, const_a_bp_pid4)    |
                 scs_dbg_chk(scs_mad, const_a_bp_pid0)    |
                 scs_dbg_chk(scs_mad, const_a_bp_pid1)    |
                 scs_dbg_chk(scs_mad, const_a_bp_pid2)    |
                 scs_dbg_chk(scs_mad, const_a_bp_pid3)    |
                 scs_dbg_chk(scs_mad, const_a_bp_cid0)    |
                 scs_dbg_chk(scs_mad, const_a_bp_cid1)    |
                 scs_dbg_chk(scs_mad, const_a_bp_cid2)    |
                 scs_dbg_chk(scs_mad, const_a_bp_cid3)    |

                 scs_dbg_chk(scs_mad, const_a_actlr)      |
                 scs_dbg_chk(scs_mad, const_a_cpuid)      |
                 scs_dbg_chk(scs_mad, const_a_dfsr)       |
                 scs_dbg_chk(scs_mad, const_a_dhcsr)      |
                 scs_dbg_chk(scs_mad, const_a_dcrsr)      |
                 scs_dbg_chk(scs_mad, const_a_demcr)      |

                 scs_dbg_chk(scs_mad, const_a_rom_scs)    |
                 scs_dbg_chk(scs_mad, const_a_rom_dwt)    |
                 scs_dbg_chk(scs_mad, const_a_rom_bpu)    |
                 scs_dbg_chk(scs_mad, const_a_rom_eot)    |
                 scs_dbg_chk(scs_mad, const_a_rom_csmt)   |
                 scs_dbg_chk(scs_mad, const_a_rom_pid4)   |
                 scs_dbg_chk(scs_mad, const_a_rom_pid0)   |
                 scs_dbg_chk(scs_mad, const_a_rom_pid1)   |
                 scs_dbg_chk(scs_mad, const_a_rom_pid2)   |
                 scs_dbg_chk(scs_mad, const_a_rom_pid3)   |
                 scs_dbg_chk(scs_mad, const_a_rom_cid0)   |
                 scs_dbg_chk(scs_mad, const_a_rom_cid1)   |
                 scs_dbg_chk(scs_mad, const_a_rom_cid2)   |
                 scs_dbg_chk(scs_mad, const_a_rom_cid3)   );

   // ------------------------------------------------------------
   // Construct compressed address
   // ------------------------------------------------------------

   // to reduce area, use the hashing function to compress the
   // PPB space into an 8-bit value; for transactions that hit
   // in the PPB space, but do not hit a decoded address it
   // is still required to place a non-zero value into the
   // hash registers so as to allow scs_active to direct zeros
   // from the PPB space rather than potentially X's from AHB
   // for core/debugger reads

   wire [ 6:0] scs_null      = 7'b1111111;

   wire [ 6:0] scs_addr      = scs_hash(dif_addr[31:0]);

   wire        scs_valid     = scs_match & dif_size_1;
   wire        scs_trans     = hready & ppb_trans &  scs_valid;
   wire        scs_zero      = hready & ppb_trans & ~scs_valid;

   wire [ 6:0] scs_sel_nxt   = ( {7{scs_trans}} & scs_addr |
                                 {7{scs_zero}}  & scs_null );

   wire        scs_active    = |scs_sel;

   // for power saving, a large number of the NVIC registers
   // are only clocked during a ppb_write phase (assuming ACGs
   // are implemented), this requires that ppb_write self clear
   // after any PPB transaction

   wire        ppb_write_nxt = ( hready &
                                 ppb_trans &
                                 dif_write );

   wire        ppb_write_en  = ( ppb_write_nxt |
                                 hready & ppb_trans |
                                 scs_active );

   wire        scs_sel_en    = hready;

   // ------------------------------------------------------------
   // Expand one-hot selects for data-phase
   // ------------------------------------------------------------

   wire [ 9:0] scs_key        = { cfg_dbg, cfg_bpu, cfg_dwt,
                                  scs_sel[6:0] };

   wire        sel_scs_pid4   = scs_dbg_sel(scs_key, const_a_scs_pid4);
   wire        sel_scs_pid0   = scs_dbg_sel(scs_key, const_a_scs_pid0);
   wire        sel_scs_pid1   = scs_dbg_sel(scs_key, const_a_scs_pid1);
   wire        sel_scs_pid2   = scs_dbg_sel(scs_key, const_a_scs_pid2);
   wire        sel_scs_pid3   = scs_dbg_sel(scs_key, const_a_scs_pid3);
   wire        sel_scs_cid0   = scs_dbg_sel(scs_key, const_a_scs_cid0);
   wire        sel_scs_cid1   = scs_dbg_sel(scs_key, const_a_scs_cid1);
   wire        sel_scs_cid2   = scs_dbg_sel(scs_key, const_a_scs_cid2);
   wire        sel_scs_cid3   = scs_dbg_sel(scs_key, const_a_scs_cid3);

   wire        sel_dwt_ctl    = scs_dwt_sel(scs_key, const_a_dwt_ctl);
   wire        sel_dwt_pcsr   = scs_dwt_sel(scs_key, const_a_dwt_pcsr);
   wire        sel_dwt_comp0  = scs_dwt_sel(scs_key, const_a_dwt_comp0);
   wire        sel_dwt_mask0  = scs_dwt_sel(scs_key, const_a_dwt_mask0);
   wire        sel_dwt_func0  = scs_dwt_sel(scs_key, const_a_dwt_func0);
   wire        sel_dwt_comp1  = scs_dwt_sel(scs_key, const_a_dwt_comp1);
   wire        sel_dwt_mask1  = scs_dwt_sel(scs_key, const_a_dwt_mask1);
   wire        sel_dwt_func1  = scs_dwt_sel(scs_key, const_a_dwt_func1);
   wire        sel_dwt_pid4   = scs_dwt_sel(scs_key, const_a_dwt_pid4);
   wire        sel_dwt_pid0   = scs_dwt_sel(scs_key, const_a_dwt_pid0);
   wire        sel_dwt_pid1   = scs_dwt_sel(scs_key, const_a_dwt_pid1);
   wire        sel_dwt_pid2   = scs_dwt_sel(scs_key, const_a_dwt_pid2);
   wire        sel_dwt_pid3   = scs_dwt_sel(scs_key, const_a_dwt_pid3);
   wire        sel_dwt_cid0   = scs_dwt_sel(scs_key, const_a_dwt_cid0);
   wire        sel_dwt_cid1   = scs_dwt_sel(scs_key, const_a_dwt_cid1);
   wire        sel_dwt_cid2   = scs_dwt_sel(scs_key, const_a_dwt_cid2);
   wire        sel_dwt_cid3   = scs_dwt_sel(scs_key, const_a_dwt_cid3);

   wire        sel_bp_ctrl    = scs_bpu_sel(scs_key, const_a_bp_ctrl);
   wire        sel_bp_comp0   = scs_bpu_sel(scs_key, const_a_bp_comp0);
   wire        sel_bp_comp1   = scs_bpu_sel(scs_key, const_a_bp_comp1);
   wire        sel_bp_comp2   = scs_bpu_sel(scs_key, const_a_bp_comp2);
   wire        sel_bp_comp3   = scs_bpu_sel(scs_key, const_a_bp_comp3);
   wire        sel_bp_pid4    = scs_bpu_sel(scs_key, const_a_bp_pid4);
   wire        sel_bp_pid0    = scs_bpu_sel(scs_key, const_a_bp_pid0);
   wire        sel_bp_pid1    = scs_bpu_sel(scs_key, const_a_bp_pid1);
   wire        sel_bp_pid2    = scs_bpu_sel(scs_key, const_a_bp_pid2);
   wire        sel_bp_pid3    = scs_bpu_sel(scs_key, const_a_bp_pid3);
   wire        sel_bp_cid0    = scs_bpu_sel(scs_key, const_a_bp_cid0);
   wire        sel_bp_cid1    = scs_bpu_sel(scs_key, const_a_bp_cid1);
   wire        sel_bp_cid2    = scs_bpu_sel(scs_key, const_a_bp_cid2);
   wire        sel_bp_cid3    = scs_bpu_sel(scs_key, const_a_bp_cid3);

   wire        sel_actlr      = scs_dbg_sel(scs_key, const_a_actlr);
   wire        sel_cpuid      = scs_dbg_sel(scs_key, const_a_cpuid);
   wire        sel_dfsr       = scs_dbg_sel(scs_key, const_a_dfsr);
   wire        sel_dhcsr      = scs_dbg_sel(scs_key, const_a_dhcsr);
   wire        sel_dcrsr      = scs_dbg_sel(scs_key, const_a_dcrsr);
   wire        sel_demcr      = scs_dbg_sel(scs_key, const_a_demcr);

   wire        sel_rom_scs    = scs_dbg_sel(scs_key, const_a_rom_scs);
   wire        sel_rom_dwt    = scs_dbg_sel(scs_key, const_a_rom_dwt);
   wire        sel_rom_bpu    = scs_dbg_sel(scs_key, const_a_rom_bpu);
   wire        sel_rom_eot    = scs_dbg_sel(scs_key, const_a_rom_eot);
   wire        sel_rom_csmt   = scs_dbg_sel(scs_key, const_a_rom_csmt);
   wire        sel_rom_pid4   = scs_dbg_sel(scs_key, const_a_rom_pid4);
   wire        sel_rom_pid0   = scs_dbg_sel(scs_key, const_a_rom_pid0);
   wire        sel_rom_pid1   = scs_dbg_sel(scs_key, const_a_rom_pid1);
   wire        sel_rom_pid2   = scs_dbg_sel(scs_key, const_a_rom_pid2);
   wire        sel_rom_pid3   = scs_dbg_sel(scs_key, const_a_rom_pid3);
   wire        sel_rom_cid0   = scs_dbg_sel(scs_key, const_a_rom_cid0);
   wire        sel_rom_cid1   = scs_dbg_sel(scs_key, const_a_rom_cid1);
   wire        sel_rom_cid2   = scs_dbg_sel(scs_key, const_a_rom_cid2);
   wire        sel_rom_cid3   = scs_dbg_sel(scs_key, const_a_rom_cid3);

   // ------------------------------------------------------------
   // Selector register
   // ------------------------------------------------------------

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       scs_sel <= {7{1'b0}};
     else if(scs_sel_en)
       scs_sel <= scs_sel_nxt[6:0];

   always @(posedge dclk or negedge dbg_reset_n)
     if(~dbg_reset_n)
       ppb_write <= 1'b0;
     else if(ppb_write_en)
       ppb_write <= ppb_write_nxt;

   // ------------------------------------------------------------
   // Construct ID values with implementor ECO bits
   // ------------------------------------------------------------

   // ECOREVNUM at the top-level provides the architectural and
   // design methodology recommended ability to patch a set of
   // revision/patch fields; typically these values will be zero
   // the core CPUID is generated within the core domain

   wire [31:0] eco_rom_pid3 = {24'b0, eco_rev_num_19_4[15:12], 4'b0};
   wire [31:0] eco_scs_pid3 = {24'b0, eco_rev_num_19_4[11: 8], 4'b0};
   wire [31:0] eco_dwt_pid3 = {24'b0, eco_rev_num_19_4[ 7: 4], 4'b0};
   wire [31:0] eco_bp_pid3  = {24'b0, eco_rev_num_19_4[ 3: 0], 4'b0};

   wire [31:0] val_rom_pid3 = 32'h00000000 ^ eco_rom_pid3;
   wire [31:0] val_scs_pid3 = 32'h00000000 ^ eco_scs_pid3;
   wire [31:0] val_dwt_pid3 = 32'h00000000 ^ eco_dwt_pid3;
   wire [31:0] val_bp_pid3  = 32'h00000000 ^ eco_bp_pid3;

   // ------------------------------------------------------------
   // Modify ROM table for presence of DWT/BPU
   // ------------------------------------------------------------

   // when a breakpoint or watchpoint unit is present, its
   // presence is recorded by setting bit[0] of each units
   // respective ROM table entry

   wire [31:0] val_rom_dwt  = 32'hFFF02002 | {31'b0, cfg_dwt};
   wire [31:0] val_rom_bpu  = 32'hFFF03002 | {31'b0, cfg_bpu};

   // ------------------------------------------------------------
   // Construct ID value bus locally to benefit from minimisation
   // ------------------------------------------------------------

   // a large number of the decoded addresses contain hardcoded
   // read-only values, to benefit from area reduction through
   // commonality, the bulk of these values are implemented as a
   // single logic cone here, the exceptions being the fields
   // indicating the number of implemented comparators in both
   // the breakpoint and watchpoint units

   wire [31:0] hrdata = ( {32{sel_scs_pid4}} & 32'h00000004 |
                          {32{sel_scs_pid0}} & 32'h00000008 |
                          {32{sel_scs_pid1}} & 32'h000000B0 |
                          {32{sel_scs_pid2}} & 32'h0000000B |
                          {32{sel_scs_pid3}} & val_scs_pid3 |
                          {32{sel_scs_cid0}} & 32'h0000000D |
                          {32{sel_scs_cid1}} & 32'h000000E0 |
                          {32{sel_scs_cid2}} & 32'h00000005 |
                          {32{sel_scs_cid3}} & 32'h000000B1 |

                          {32{sel_dwt_pid4}} & 32'h00000004 |
                          {32{sel_dwt_pid0}} & 32'h0000000A |
                          {32{sel_dwt_pid1}} & 32'h000000B0 |
                          {32{sel_dwt_pid2}} & 32'h0000000B |
                          {32{sel_dwt_pid3}} & val_dwt_pid3 |
                          {32{sel_dwt_cid0}} & 32'h0000000D |
                          {32{sel_dwt_cid1}} & 32'h000000E0 |
                          {32{sel_dwt_cid2}} & 32'h00000005 |
                          {32{sel_dwt_cid3}} & 32'h000000B1 |

                          {32{sel_bp_pid4}}  & 32'h00000004 |
                          {32{sel_bp_pid0}}  & 32'h0000000B |
                          {32{sel_bp_pid1}}  & 32'h000000B0 |
                          {32{sel_bp_pid2}}  & 32'h0000000B |
                          {32{sel_bp_pid3}}  & val_bp_pid3  |
                          {32{sel_bp_cid0}}  & 32'h0000000D |
                          {32{sel_bp_cid1}}  & 32'h000000E0 |
                          {32{sel_bp_cid2}}  & 32'h00000005 |
                          {32{sel_bp_cid3}}  & 32'h000000B1 |

                          {32{sel_rom_scs}}  & 32'hFFF0F003 |
                          {32{sel_rom_dwt}}  & val_rom_dwt  |
                          {32{sel_rom_bpu}}  & val_rom_bpu  |
                          {32{sel_rom_eot}}  & 32'h00000000 |

                          {32{sel_rom_csmt}} & 32'h00000001 |
                          {32{sel_rom_pid4}} & 32'h00000004 |
                          {32{sel_rom_pid0}} & 32'h00000071 |
                          {32{sel_rom_pid1}} & 32'h000000B4 |
                          {32{sel_rom_pid2}} & 32'h0000000B |
                          {32{sel_rom_pid3}} & val_rom_pid3 |
                          {32{sel_rom_cid0}} & 32'h0000000D |
                          {32{sel_rom_cid1}} & 32'h00000010 |
                          {32{sel_rom_cid2}} & 32'h00000005 |
                          {32{sel_rom_cid3}} & 32'h000000B1 );

   // ------------------------------------------------------------
   // Construct output busses
   // ------------------------------------------------------------

   // the selects are split into two groups, one intended for
   // the NVIC (vic) and the other set intended for the debug
   // components (dbg, bpu and dwt)

   wire [ 3:0] dbg_sels = { sel_dfsr,       sel_dhcsr,
                            sel_dcrsr,      sel_demcr };

   wire [ 4:0] bpu_sels = { sel_bp_ctrl,    sel_bp_comp0,
                            sel_bp_comp1,   sel_bp_comp2,
                            sel_bp_comp3 };

   wire [ 7:0] dwt_sels = { sel_dwt_ctl,    sel_dwt_pcsr,
                            sel_dwt_comp0,  sel_dwt_mask0,
                            sel_dwt_func0,  sel_dwt_comp1,
                            sel_dwt_mask1,  sel_dwt_func1 };

   wire [ 1:0] cid_sels = { sel_actlr, sel_cpuid };

   // ------------------------------------------------------------
   // Assign outputs
   // ------------------------------------------------------------

   assign dsl_dbg_sels_o   = cfg_dbg ? dbg_sels   :  4'b0;
   assign dsl_bpu_sels_o   = cfg_bpu ? bpu_sels   :  5'b0;
   assign dsl_dwt_sels_o   = cfg_dwt ? dwt_sels   :  8'b0;
   assign dsl_cid_sels_o   = cfg_dbg ? cid_sels   :  2'b0;
   assign dsl_hrdata_o     = cfg_dbg ? hrdata     : 32'b0;
   assign dsl_ppb_write_o  = cfg_dbg ? ppb_write  :  1'b0;
   assign dsl_ppb_active_o = cfg_dbg ? scs_active :  1'b0;

   // ------------------------------------------------------------

`ifdef ARM_ASSERT_ON
   // ------------------------------------------------------------
   // Assertions
   // ------------------------------------------------------------

`include "std_ovl_defines.h"

   // register enable X check
   assert_never_unknown
     #(`OVL_FATAL,2,`OVL_ASSERT,"Register enables must never be X")
       u_asrt_reg_en_x
         (.clk       (dclk),
          .reset_n   (dbg_reset_n),
          .qualifier (1'b1),
          .test_expr ({ scs_sel_en,
                        ppb_write_en }));

   // scs_addr must not be zero if the address is valid
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"Valid SCS hashes must be non-zero")
   u_asrt_hash_safe
     (.clk(dclk), .reset_n(dbg_reset_n),
      .antecedent_expr(scs_trans),
      .consequent_expr(|scs_addr) );

   // scs_addr must not coincide with zero select value
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"Valid SCS hash clashes with NULL")
   u_asrt_hash_not_null
     (.clk(dclk), .reset_n(dbg_reset_n),
      .antecedent_expr(scs_zero),
      .consequent_expr(~scs_trans) );

   // Expanded PPB and debug selects must be zero if encoding zero
   assert_implication
     #(`OVL_FATAL,`OVL_ASSERT,"All outputs must be zero if no sels")
   u_asrt_sels_no_out
     (.clk(dclk), .reset_n(dbg_reset_n),
      .antecedent_expr(~|scs_sel),
      .consequent_expr(~|{dsl_dbg_sels_o,
                          dsl_bpu_sels_o,
                          dsl_dwt_sels_o,
                          dsl_cid_sels_o,
                          dsl_hrdata_o,
                          dsl_ppb_write_o,
                          dsl_ppb_active_o}) );

   // No transaction must result in no select in the next cycle
   assert_next
     #(`OVL_FATAL,1,1,0,`OVL_ASSERT,"Idle cycle cannot produce a sel")
   u_asrt_notx_nosel
     (.clk(dclk), .reset_n(dbg_reset_n),
      .start_event(~ppb_trans | ~hready),
      .test_expr(~|scs_sel) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,32,`OVL_ASSERT,"CBAW config unknown")
   u_asrt_cfg_cbaw
     ( .clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(CBAW) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"DBG config unknown")
   u_asrt_cfg_dbg
     ( .clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_dbg) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"DWT config unknown")
   u_asrt_cfg_dwt
     ( .clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_dwt) );

   // Parameterisable configuration check
   assert_never_unknown
     #(`OVL_FATAL,1,`OVL_ASSERT,"BPU config unknown")
   u_asrt_cfg_bpu
     ( .clk(dclk), .reset_n(1'b1), .qualifier(1'b1),
       .test_expr(cfg_bpu) );

`endif

endmodule // cm0_dbg_sel

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
