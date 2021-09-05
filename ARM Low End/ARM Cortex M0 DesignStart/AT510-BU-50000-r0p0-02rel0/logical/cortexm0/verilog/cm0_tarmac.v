//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM limited.
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
//      Checked In          : $Date: 2009-01-06 21:46:18 +0000 (Tue, 06 Jan 2009) $
//
//      Revision            : $Revision: 97792 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// SIMULATION INSTRUCTION EXECUTION TRACE MODULE FOR CORTEX-M0 PROCESSOR
//-----------------------------------------------------------------------------

// ---------------------------------------------------------------
// Reference instantiation
// ---------------------------------------------------------------
/*

 // Replace `CM0_INST with CORTEXM0 instantiation path

 cm0_tarmac #(.LOGFILENAME("tarmac.log"))
   u_tarmac
     (.enable_i      (1'b1),

      .hclk_i        (`CM0_INST.HCLK),
      .hready_i      (`CM0_INST.HREADY),
      .haddr_i       (`CM0_INST.HADDR[31:0]),
      .hprot_i       (`CM0_INST.HPROT[3:0]),
      .hsize_i       (`CM0_INST.HSIZE[2:0]),
      .hwrite_i      (`CM0_INST.HWRITE),
      .htrans_i      (`CM0_INST.HTRANS[1:0]),
      .hresetn_i     (`CM0_INST.HRESETn),
      .hresp_i       (`CM0_INST.HRESP),
      .hrdata_i      (`CM0_INST.HRDATA[31:0]),
      .hwdata_i      (`CM0_INST.HWDATA[31:0]),
      .lockup_i      (`CM0_INST.LOCKUP),
      .halted_i      (`CM0_INST.HALTED),
      .codehintde_i  (`CM0_INST.CODEHINTDE[2:0]),
      .codenseq_i    (`CM0_INST.CODENSEQ),

      .hdf_req_i     (`CM0_INST.u_top.u_sys.ctl_hdf_request),
      .int_taken_i   (`CM0_INST.u_top.u_sys.dec_int_taken_o),
      .int_return_i  (`CM0_INST.u_top.u_sys.dec_int_return_o),
      .int_pend_i    (`CM0_INST.u_top.u_sys.nvm_int_pend),
      .pend_num_i    (`CM0_INST.u_top.u_sys.nvm_int_pend_num[5:0]),
      .ipsr_i        (`CM0_INST.u_top.u_sys.psr_ipsr[5:0]),

      .ex_last_i     (`CM0_INST.u_top.u_sys.u_core.ctl_ex_last),
      .iaex_en_i     (`CM0_INST.u_top.u_sys.u_core.ctl_iaex_en),
      .reg_waddr_i   (`CM0_INST.u_top.u_sys.u_core.ctl_wr_addr[3:0]),
      .reg_write_i   (`CM0_INST.u_top.u_sys.u_core.ctl_wr_en),
      .xpsr_en_i     (`CM0_INST.u_top.u_sys.u_core.ctl_xpsr_en),
      .fe_addr_i     (`CM0_INST.u_top.u_sys.u_core.pfu_fe_addr[30:0]),
      .int_delay_i   (`CM0_INST.u_top.u_sys.u_core.pfu_int_delay),
      .special_i     (`CM0_INST.u_top.u_sys.u_core.pfu_op_special),
      .opcode_i      (`CM0_INST.u_top.u_sys.u_core.pfu_opcode[15:0]),
      .reg_wdata_i   (`CM0_INST.u_top.u_sys.u_core.psr_gpr_wdata[31:0]),

      .atomic_i      (`CM0_INST.u_top.u_sys.u_core.u_ctl.atomic),
      .atomic_nxt_i  (`CM0_INST.u_top.u_sys.u_core.u_ctl.atomic_nxt),
      .dabort_i      (`CM0_INST.u_top.u_sys.u_core.u_ctl.data_abort),
      .ex_last_nxt_i (`CM0_INST.u_top.u_sys.u_core.u_ctl.ex_last_nxt),
      .int_preempt_i (`CM0_INST.u_top.u_sys.u_core.u_ctl.int_preempt),

      .psp_sel_i     (`CM0_INST.u_top.u_sys.u_core.u_gpr.psp_sel),
      .xpsr_i        (`CM0_INST.u_top.u_sys.u_core.u_gpr.xpsr[31:0]),

      .iaex_i        (`CM0_INST.u_top.u_sys.u_core.u_pfu.iaex[30:0]),
      .iaex_nxt_i    (`CM0_INST.u_top.u_sys.u_core.u_pfu.iaex_nxt[30:0]),
      .opcode_nxt_i  (`CM0_INST.u_top.u_sys.u_core.u_pfu.ibuf_de_nxt[15:0]),
      .delay_count_i (`CM0_INST.u_top.u_sys.u_core.u_pfu.ibuf_lo[13:6]),
      .tbit_en_i     (`CM0_INST.u_top.u_sys.u_core.u_pfu.tbit_en),

      .cflag_en_i    (`CM0_INST.u_top.u_sys.u_core.u_psr.cflag_ena),
      .ipsr_en_i     (`CM0_INST.u_top.u_sys.u_core.u_psr.ipsr_ena),
      .nzflag_en_i   (`CM0_INST.u_top.u_sys.u_core.u_psr.nzflag_ena),
      .vflag_en_i    (`CM0_INST.u_top.u_sys.u_core.u_psr.vflag_ena) );

 */

`define TarmacSTDOUT 32'h00000001
`ifdef DSM
  `define PRINTTS_FORMAT_TARMAC "%11d cyc "
  `define PRINTTS_VALUE_TARMAC dsm_clk_count_o
`else
  `define PRINTTS_FORMAT_TARMAC "%t "
  `define PRINTTS_VALUE_TARMAC $time
`endif

module cm0_tarmac
  #(parameter LOGFILENAME = "tarmac.log",
    parameter WATCHDOG    = 0,
    parameter TUBEADDRESS = 32'h40400000)
   (
`ifdef DSM
     input  wire [ 2:0] dsm_id_i,
     input  wire        dsm_echo_to_stdout_i,
     input  wire        dsm_no_tarmac_i,
     output reg  [31:0] dsm_clk_count_o,
`endif

     input  wire        enable_i,

     input  wire        hclk_i,
     input  wire        hready_i,
     input  wire [ 1:0] htrans_i,
     input  wire [31:0] haddr_i,
     input  wire [ 3:0] hprot_i,
     input  wire [ 2:0] hsize_i,
     input  wire        hwrite_i,
     input  wire        hresetn_i,
     input  wire        hresp_i,
     input  wire [31:0] hrdata_i,
     input  wire [31:0] hwdata_i,

     input  wire        lockup_i,
     input  wire        halted_i,
     input  wire [ 2:0] codehintde_i,
     input  wire        codenseq_i,
     input  wire        hdf_req_i,
     input  wire        int_pend_i,
     input  wire [ 5:0] pend_num_i,
     input  wire [ 5:0] ipsr_i,
     input  wire        xpsr_en_i,
     input  wire [ 3:0] reg_waddr_i,
     input  wire        reg_write_i,
     input  wire [31:0] reg_wdata_i,
     input  wire        ex_last_i,
     input  wire        ex_last_nxt_i,
     input  wire        int_preempt_i,
     input  wire        dabort_i,

     input  wire        special_i,
     input  wire [15:0] opcode_i,
     input  wire [15:0] opcode_nxt_i,

     input  wire [30:0] fe_addr_i,
     input  wire        int_taken_i,
     input  wire        int_return_i,
     input  wire        int_delay_i,

     input  wire        atomic_i,
     input  wire        atomic_nxt_i,

     input  wire [31:0] xpsr_i,

     input  wire        nzflag_en_i,
     input  wire        cflag_en_i,
     input  wire        vflag_en_i,
     input  wire        ipsr_en_i,
     input  wire        tbit_en_i,
     input  wire [ 7:0] delay_count_i,
     input  wire        psp_sel_i,

     input  wire        iaex_en_i,
     input  wire [30:0] iaex_i,
     input  wire [30:0] iaex_nxt_i

     );

   // ---------------------------------------------------------------
   // Do not attempt to use this module during synthesis
   // ---------------------------------------------------------------
   //synthesis translate_off


   // ---------------------------------------------------------------
   // Include disassembler functions
   // ---------------------------------------------------------------
`include "ualdis.v"

   // ---------------------------------------------------------------
   // Implement local registers
   // ---------------------------------------------------------------

   integer        mcd;       // channel descriptor for log file output
   reg [40*8-1:0] log_file;  // File name can't be > *40* characters

   reg [31:0]     haddr_r;   // registered AHB address
   reg [ 3:0]     hprot_r;   // registered AHB protection
   reg [ 2:0]     hsize_r;   // registered AHB size
   reg [ 1:0]     htrans_r;  // registered AHB trans
   reg            hwrite_r;  // registered AHB write

   reg            xpsr_up_r; // xPSR modified

   reg            halted_r;  // registered halted_i
   reg            lockup_r;  // registered halted_i
   reg            hresetn_r; // registered hresetn_i
   reg            e_codenseq;// enable for codenseq printing
   integer        wdog = 0;  // watchdog timer


`ifdef DSM
   reg            dsm_tarmac_en;

   // ---------------------------------------------------------------
   // Function to select DSM log file
   // ---------------------------------------------------------------
   function [40*8-1:0] get_dsm_filename;
      input      [2:0] logctrl;
      reg   [40*8-1:0] logfile;
      begin
               case (logctrl)
                  0      : logfile = "tarmac.log";
                  1      : logfile = "tarmac.log1";
                  2      : logfile = "tarmac.log2";
                  3      : logfile = "tarmac.log3";
                  4      : logfile = "tarmac.log4";
                  5      : logfile = "tarmac.log5";
                  6      : logfile = "tarmac.log6";
                  7      : logfile = "tarmac.log7";
                 default : logfile = "tarmac.log";
               endcase // case (logctrl)

         get_dsm_filename = logfile;
      end
   endfunction // get_dsm_filename

  // Keep an accurate cycle count in terms of CLK
  initial
    dsm_clk_count_o = 0;

  always @(posedge hclk_i)
    begin
      #2 dsm_clk_count_o = dsm_clk_count_o + 1;
    end

`endif

`ifdef DSM
   wire tarmac_en = enable_i | dsm_tarmac_en;
`else
   wire tarmac_en = enable_i;
`endif

   // ---------------------------------------------------------------
   // Open log file and configure time-stamping format
   // ---------------------------------------------------------------

   initial
     begin
       $timeformat(-9, 0, " ns", 14);
`ifdef DSM
       wait (dsm_no_tarmac_i !== 1'bx);
       if (dsm_no_tarmac_i)
            dsm_tarmac_en = 1'b0;
       else
            dsm_tarmac_en = 1'b1;

          wait ((^dsm_id_i) !== 1'bx) log_file = get_dsm_filename (dsm_id_i);
`else
       log_file = LOGFILENAME;
`endif
       mcd = $fopen(log_file);
`ifdef DSM
          if (dsm_echo_to_stdout_i)
              mcd = mcd | `TarmacSTDOUT;
`endif
       if(mcd == 0) begin
         $write("tarmac: Error, zero returned in response to $fopen\n");
         $finish(2);
       end
       $write("tarmac: Generating trace file %0s using MCD %x @ %m\n",
              log_file, mcd);
       $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E CORTEXM0_TARMAC_LOG %m\n");
       hresetn_r = 1;
       e_codenseq = 0;    // enable for tarmac printing of CODENSEQ
     end

   // ---------------------------------------------------------------
   // Construct local versions of core signals
   // ---------------------------------------------------------------

   wire [31:0] opcode32     = {opcode_i, opcode_nxt_i};
   wire [31:0] iaddr        = {fe_addr_i, 1'b0} - 4;

   wire        xpsr_up      = ( nzflag_en_i |
                                cflag_en_i  |
                                vflag_en_i  |
                                tbit_en_i   |
                                ipsr_en_i   );

   wire        tbit         = xpsr_i[24];

   wire        bcc          = |codehintde_i[1:0];

   // ---------------------------------------------------------------
   // Simulation watchdog timer
   // ---------------------------------------------------------------

   // disabled if WATCHDOG parameter set to zero

   always @(posedge hclk_i)
     begin
       if(WATCHDOG != 0) begin
         wdog = wdog + 1;
         if(wdog > WATCHDOG) begin
           $write("%t Watchdog count exceed %d @ %m\n", $time, WATCHDOG);
           $finish(2);
         end
       end
     end

   // ---------------------------------------------------------------
   // Signal registration
   // ---------------------------------------------------------------

   always @(posedge hclk_i)
     if(hready_i) begin
       haddr_r[31:0] <= haddr_i[31:0];
       hprot_r[3:0]  <= hprot_i[3:0];
       hsize_r[2:0]  <= hsize_i[2:0];
       htrans_r[1:0] <= htrans_i[1:0];
       hwrite_r      <= hwrite_i;
       xpsr_up_r     <= xpsr_up;
       halted_r      <= halted_i;
       lockup_r      <= lockup_i;
       hresetn_r     <= hresetn_i;
     end

   // ---------------------------------------------------------------
   // File output generation
   // ---------------------------------------------------------------
   always @(posedge hclk_i)
     if(tarmac_en) begin
       if(~hresetn_i & hresetn_r)
         $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E RESET\n");
       else
         if(hready_i) begin
           if(xpsr_up_r) $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R psr %x\n", xpsr_i);
           if(int_pend_i & ~int_preempt_i)
             $fwrite(mcd, `PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E INT_NEW_PEND %x\n", pend_num_i);
           if(htrans_r[1] & hwrite_r)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"MW%d%sD %x %x\n",
                     3'b001 << hsize_r,
                     hresp_i ? "E" : "_",
                     haddr_r, hwdata_i[31:0]);
           if(htrans_r[1] & ~hwrite_r)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"MR%d%s%s %x %x\n",
                     3'b001 << hsize_r,
                     hresp_i ? "E" : "_",
                     hprot_r[0] ? "D" : "I", haddr_r,
                     hrdata_i[31:0]);
           if(htrans_r[1] & hwrite_r & haddr_r == TUBEADDRESS)
             $fwrite(mcd,
                     `PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E %s TUBE : %c\n",
                     {50{" "}}, hwdata_i[7:0]);
           if(codenseq_i & e_codenseq)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E CODENSEQ\n");
           if(int_delay_i & atomic_i & xpsr_en_i)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E JITTER_SUPPRESSION_ACTIVE %x\n", delay_count_i);
           if(hdf_req_i)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E HARDFAULT_REQ\n");
           if(halted_i & ~halted_r)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E HALTED\n");
           if(halted_r & ~halted_i)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E UNHALTED\n");
           if(iaex_en_i & halted_i)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R pc %x\n",{iaex_nxt_i,1'b0});
           if(lockup_i & ~lockup_r)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E LOCKUP\n");
           if(reg_write_i)
             case(reg_waddr_i)
               4'h0: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r0 %x\n", reg_wdata_i);
               4'h1: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r1 %x\n", reg_wdata_i);
               4'h2: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r2 %x\n", reg_wdata_i);
               4'h3: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r3 %x\n", reg_wdata_i);
               4'h4: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r4 %x\n", reg_wdata_i);
               4'h5: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r5 %x\n", reg_wdata_i);
               4'h6: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r6 %x\n", reg_wdata_i);
               4'h7: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r7 %x\n", reg_wdata_i);
               4'h8: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r8 %x\n", reg_wdata_i);
               4'h9: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r9 %x\n", reg_wdata_i);
               4'hA: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r10 %x\n", reg_wdata_i);
               4'hB: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r11 %x\n", reg_wdata_i);
               4'hC: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r12 %x\n", reg_wdata_i);
               4'hD: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r13 %x (%0s)\n", reg_wdata_i,
                             psp_sel_i ? "PSP":"MSP");
               4'hE: $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R r14 %x\n", reg_wdata_i);
             endcase

           if(int_taken_i) $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E INT_TAKEN %x\n", ipsr_i);
           if(int_return_i) $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E INT_RETURN %x\n", ipsr_i);
           if(atomic_i & ~atomic_nxt_i) begin
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E LEAVE_ATOMIC\n");
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"R psr %x\n", xpsr_i);
           end
           if(atomic_nxt_i & ~atomic_i)
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E ENTER_ATOMIC\n");
           if(int_preempt_i & ~atomic_i) begin
             $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E INT_PREEMPT %x\n", pend_num_i);
             if(~ex_last_i) begin
               $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E INT_MULTICYCLE\n");
               if(~iaex_en_i)
                 $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E PC_NOT_ADVANCED %x\n", {iaex_i,1'b0});
               if(iaex_en_i)
                 $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E PC_ADVANCED %x\n", {iaex_nxt_i,1'b0});
             end
           end
           else
             if(ex_last_i)
               if(special_i)
                 $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E SPECIAL_OP %x %x\n", iaddr, opcode_i);
               else if(dabort_i)
                 $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E DATA_OR_ALIGNMENT_ABORT\n");
               else if(~tbit)
                 $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"E NOT_IN_THUMB_STATE %x %x\n",
                         iaddr, opcode_i);
               else if(bcc & ex_last_nxt_i)
                 $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"IS %x %x        %0s\n", iaddr,
                         opcode_i, ual_dec_t16(opcode_i,iaddr));
               else if(opcode_i[15:11] == 5'b11110)
                 $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"IT %x %x    %0s\n", iaddr,
                         opcode32, ual_dec_t32(opcode32,iaddr));
               else
                 $fwrite(mcd,`PRINTTS_FORMAT_TARMAC,`PRINTTS_VALUE_TARMAC,"IT %x %x        %0s\n", iaddr,
                         opcode_i, ual_dec_t16(opcode_i,iaddr));
         end
     end // if (tarmac_en)

//synthesis translate_on

endmodule // cm0_tarmac

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
