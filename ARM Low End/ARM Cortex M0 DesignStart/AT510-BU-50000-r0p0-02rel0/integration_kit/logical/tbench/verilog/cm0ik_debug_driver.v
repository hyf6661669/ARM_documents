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
//      Checked In          : $Date: 2008-12-08 12:21:19 +0000 (Mon, 08 Dec 2008) $
//
//      Revision            : $Revision: 96209 $
//
//      Release Information : Cortex-M0-AT510-r0p0-01rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//      Debug Driver 
//-----------------------------------------------------------------------------
//
// This block is used to control the DAP in the MCU by wiggling the JTAG/SW 
// signals appropriately.
// The most significant 8 bits of EXTGPIO from the MCU is used to program the
// "debug driver" system which consists of either a CORTEXM0 or CORTEXM0INTEGRATION
// timing wrapper, memory and GPIO. This arrangement enables the JTAG/SW signals to
// be controlled even when the processor (in the MCU) is sleeping.
//
// This block instantiates the following:
//  o u_timing           - Timing Wrapper - CORTEXM0 / CORTEXM0INTEGRATION
//  o u_rom              - AHB ROM Memory
//  o u_ahb2sram         - AHB to SRAM Bridge
//  o u_ram              - RAM Memory
//  o u_ahb_interconnect - AHB Bus Interconnect Block
//  o u_ahb_def_slv      - AHB Default Slave
//  o u_gpio             - GPIO
//-----------------------------------------------------------------------------
`include "cm0ik_defs.v"

module cm0ik_debug_driver
  (input  wire      CLK,
   input  wire      PORESETn,
   input  wire      EXTSIGNAL29,
   input  wire      EXTSIGNAL28,
   input  wire      EXTSIGNAL27,
   input  wire      EXTSIGNAL26,
   input  wire      EXTSIGNAL25,
   input  wire      EXTSIGNAL24,
   input  wire      TDO,
   output wire      EXTSIGNAL31,
   output wire      EXTSIGNAL30,
   output wire      nTRST,
   output reg       SWCLKTCK,
   output wire      TDI,
   inout  wire      SWDIOTMS);
   
//-----------------------------------------------------------------------------
// Signal declarations
//-----------------------------------------------------------------------------

  wire [31:0]           haddr;                   
  wire [2:0]            hburst;                  
  wire [3:0]            hprot;                   
  wire [2:0]            hsize;                   
  wire [1:0]            htrans;                  
  wire [31:0]           hwdata;
  wire                  hwrite;                  
  wire [31:0]           hrdata_mux, hrdata_rom, hrdata_ram, hrdata_gpio, hrdata_def_slv;
  wire                  hresp_mux, hresp_rom, hresp_ram, hresp_gpio, hresp_def_slv;
  wire                  hready_mux, hready_out_rom, hready_out_ram, hready_out_gpio, hready_out_def_slv;
  wire                  hsel_rom, hsel_ram, hsel_gpio, hsel_def_slv;
  wire                  hsel_s3, hsel_s4, hsel_s5;
  wire [31:0]           GPIOOUT;
  wire [31:0]           GPIOIN;
  wire [31:0]           GPIOEN;
  wire [31:0]           extgpio;
  wire [31:0]           sram_rdata, sram_wdata;
  wire [17:0]           sram_addr;
  wire                  sram_cs;
  wire [3:0]            sram_we;
  wire                  swclktck_i;

//-----------------------------------------------------------------------------
// Timing wrapper - CORTEXM0 or CORTEXM0INTEGRATION
//-----------------------------------------------------------------------------

`ifdef ARM_CM0IK_DSM
`ifdef ARM_CM0IK_INTEGRATION_LEVEL
defparam u_timing.u_int_imp.u_cortexm0integration.u_cortexm0.ID = 7;
`else
defparam u_timing.u_imp.u_cortexm0.ID = 7;
`endif // ARM_CM0IK_INTEGRATION_LEVEL
`endif // ARM_CM0IK_DSM

`ifdef ARM_CM0IK_INTEGRATION_LEVEL
  cm0ik_cortexm0integration_timing
`else
  cm0ik_cortexm0_timing
`endif // ARM_CM0IK_INTEGRATION_LEVEL
   #(.CAPTUREVEC                        (0))
  u_timing
    (// Inputs
     .PORESETn                          (PORESETn),
     .DBGRESETn                         (PORESETn),
     .HRESETn                           (PORESETn),
     .FCLK                              (CLK),
     .SCLK                              (CLK),
     .HCLK                              (CLK),
     .DCLK                              (CLK),
     .DBGRESTART                        (1'b0),
     .NMI                               (1'b0),
     .IRQ                               ({32{1'b0}}),
     .RXEV                              (1'b0),
     .SE                                (1'b0),
     .RSTBYPASS                         (1'b0),
     // Outputs
     .HMASTER                           (),
     .DBGRESTARTED                      (),
     .HALTED                            (),
     .TXEV                              (),
     .LOCKUP                            (),
     .CODENSEQ                          (),
     .CODEHINTDE                        (),
     .SPECHTRANS                        (),
     // Outputs
     .HADDR                             (haddr[31:0]),
     .HBURST                            (hburst[2:0]),
     .HMASTLOCK                         (),
     .HPROT                             (hprot[3:0]),
     .HSIZE                             (hsize[2:0]),
     .HTRANS                            (htrans[1:0]),
     .HWDATA                            (hwdata[31:0]),
     .HWRITE                            (hwrite),
     .SWDO                              (),
     .SWDOEN                            (),
     .TDO                               (),
     .nTDOEN                            (),
     .SYSRESETREQ                       (),
     .GATEHCLK                          (),
     .SLEEPING                          (),
     .SLEEPDEEP                         (),
     .WAKEUP                            (),
     .SLEEPHOLDACKn                     (),
     .WICENACK                          (),
     .WICSENSE                          (),
     .CDBGPWRUPREQ                      (),
     .SYSPWRDOWNACK                     (),
     .DBGPWRDOWNACK                     (),
     // Inputs
     .SWCLKTCK                          (1'b0),
     .nTRST                             (1'b1),
     .HRDATA                            (hrdata_mux[31:0]),
     .HREADY                            (hready_mux),
     .HRESP                             (hresp_mux),
     .SWDITMS                           (1'b0),
     .TDI                               (1'b0),
     .EDBGRQ                            (1'b0),
     .STCLKEN                           (1'b0),
     .SLEEPHOLDREQn                     (1'b1),
     .WICENREQ                          (1'b0),
     .CDBGPWRUPACK                      (1'b0),
     .SYSRETAINn                        (1'b1),
     .SYSISOLATEn                       (1'b1),
     .SYSPWRDOWN                        (1'b0),
     .DBGISOLATEn                       (1'b1),
     .DBGPWRDOWN                        (1'b0)
     );

//-----------------------------------------------------------------------------
// AHB Read-Only Memory
//-----------------------------------------------------------------------------

  cm0ik_rom
   #(.MEMNAME                           ("DEBUG DRIVER ROM"),
     .MEMFILE                           ("debugdriver.bin"),
     .DATAWIDTH                         (32),
     .ADDRWIDTH                         (18),
     .MEMBASE                           (32'h00000000),
     .MEMTOP                            (32'h000FFFFF),
     .POWERDOWN                         (0))
    u_rom
    (//Outputs
     .HRDATA                            (hrdata_rom[31:0]),
     .HREADYOUT                         (hready_out_rom),
     .HRESP                             (hresp_rom),
     //Inputs
     .HCLK                              (CLK),
     .HSEL                              (hsel_rom),
     .HADDR                             (haddr[31:0]),
     .HTRANS                            (htrans[1:0]),
     .HREADY                            (hready_mux));
     
//-----------------------------------------------------------------------------
// AHB to SRAM Bridge
//-----------------------------------------------------------------------------

  cm0ik_ahb_sram_bridge #(20) u_ahb2sram
    (//Outputs
    .RAMAD                              (sram_addr),
    .RAMWD                              (sram_wdata),
    .RAMCS                              (sram_cs),
    .RAMWE                              (sram_we),
    .HRDATA                             (hrdata_ram[31:0]),
    .HREADYOUT                          (hready_out_ram),
    .HRESP                              (hresp_ram),
    //Inputs
    .HCLK                               (CLK),
    .HRESETn                            (PORESETn),
    .HADDR                              (haddr[31:0]),
    .HBURST                             (hburst[2:0]),
    .HMASTLOCK                          (1'b0),
    .HPROT                              (hprot[3:0]),
    .HSIZE                              (hsize[2:0]),
    .HTRANS                             (htrans[1:0]),
    .HWDATA                             (hwdata[31:0]),
    .HWRITE                             (hwrite),
    .HSEL                               (hsel_ram),
    .HREADY                             (hready_mux),
    .RAMRD                              (sram_rdata));
 
//-----------------------------------------------------------------------------
// SRAM Memory
//-----------------------------------------------------------------------------

  cm0ik_sram
   #(.MEMNAME                           ("DEBUG DRIVER SRAM"),
     .DATAWIDTH                         (32),
     .ADDRWIDTH                         (18),
     .MEMBASE                           (32'h20000000),
     .MEMTOP                            (32'h200FFFFF))
    u_ram
    (//Output
     .RDATA                             (sram_rdata),
     //Inputs 
     .CLK                               (CLK),
     .ADDRESS                           (sram_addr),
     .CS                                (sram_cs),
     .WE                                (sram_we),
     .WDATA                             (sram_wdata));

//-----------------------------------------------------------------------------
// AHB Interconnect
//-----------------------------------------------------------------------------

 cm0ik_ahb_interconnect u_ahb_interconnect
   (// Outputs
    .HREADY                             (hready_mux),
    .HRESP                              (hresp_mux),
    .HRDATA                             (hrdata_mux[31:0]),
    .HSELS0                             (hsel_rom),
    .HSELS1                             (hsel_ram),
    .HSELS2                             (hsel_gpio),
    .HSELS3                             (hsel_s3),
    .HSELS4                             (hsel_s4),
    .HSELS5                             (hsel_s5),
    .HSELS6                             (hsel_s6),
    // Inputs
    .HCLK                               (CLK),
    .HRESETn                            (PORESETn),
    .HADDR                              (haddr[31:0]),
    .HRDATAS0                           (hrdata_rom[31:0]),
    .HRDATAS1                           (hrdata_ram[31:0]),
    .HRDATAS2                           (hrdata_gpio[31:0]),
    .HRDATAS3                           (hrdata_def_slv[31:0]),
    .HRDATAS4                           (hrdata_def_slv[31:0]),
    .HRDATAS5                           (hrdata_def_slv[31:0]),
    .HRDATAS6                           (hrdata_def_slv[31:0]),
    .HREADYOUTS0                        (hready_out_rom),
    .HREADYOUTS1                        (hready_out_ram),
    .HREADYOUTS2                        (hready_out_gpio),
    .HREADYOUTS3                        (hready_out_def_slv),
    .HREADYOUTS4                        (hready_out_def_slv),
    .HREADYOUTS5                        (hready_out_def_slv),
    .HREADYOUTS6                        (hready_out_def_slv),
    .HRESPS0                            (hresp_rom),
    .HRESPS1                            (hresp_ram),
    .HRESPS2                            (hresp_gpio),
    .HRESPS3                            (hresp_def_slv),
    .HRESPS4                            (hresp_def_slv),
    .HRESPS5                            (hresp_def_slv),
    .HRESPS6                            (hresp_def_slv));

//-----------------------------------------------------------------------------
// AHB Default Slave
//-----------------------------------------------------------------------------

  assign  hsel_def_slv = hsel_s3 | hsel_s4 | hsel_s5 | hsel_s6;

  cm0ik_ahb_def_slv u_ahb_def_slv
    (// Outputs
     .HREADYOUT                         (hready_out_def_slv),
     .HRDATA                            (hrdata_def_slv[31:0]),
     .HRESP                             (hresp_def_slv),
     // Inputs
     .HCLK                              (CLK),
     .HRESETn                           (PORESETn),
     .HSEL                              (hsel_def_slv),
     .HTRANS                            (htrans),
     .HREADY                            (hready_mux));

//-----------------------------------------------------------------------------
// GPIO
//-----------------------------------------------------------------------------

  cm0ik_gpio u_gpio
    (// Outputs
     .HREADYOUT                         (hready_out_gpio),
     .HRESP                             (hresp_gpio),
     .HRDATA                            (hrdata_gpio[31:0]),
     .GPIOOUT                           (GPIOOUT[31:0]),
     .GPIOEN                            (GPIOEN[31:0]),
     .GPIOINT                           (),
     // Inputs
     .HCLK                              (CLK),
     .HRESETn                           (PORESETn),
     .HSEL                              (hsel_gpio),
     .HREADY                            (hready_mux),
     .HADDR                             (haddr[10:0]),
     .HWRITE                            (hwrite),
     .HTRANS                            (htrans[1:0]),
     .HSIZE                             (hsize[2:0]),
     .HWDATA                            (hwdata[31:0]),
     .GPIOIN                            (GPIOIN[31:0]));  

//-----------------------------------------------------------------------------
// GPIO connections
//-----------------------------------------------------------------------------
//
// Internal GPIO signal mappings
//
// Interrupt:
//        GPIOINT               - Not Used
// Outputs:
//        GPIOOUT[31]           - Drives EXTSIGNAL31 - Running
//        GPIOOUT[30]           - Drives EXTSIGNAL30 - Error
//        GPIOOUT[29:23]        - Not Used
//        GPIOOUT[22]           - Drives SWDIOTMS enable
//        GPIOOUT[21]           - Drives SWDIOTMS
//        GPIOOUT[20:19]        - Not Used
//        GPIOOUT[18]           - Drives TDI
//        GPIOOUT[17]           - Drives swclktck_i
//        GPIOOUT[16]           - Drives nTRST
//        GPIOOUT[15:0]         - Not Used
// Inputs:
//        GPIOIN[31:30]         - Not Used
//        GPIOIN[29]            - Reads EXTSIGNAL29 - Function Strobe
//        GPIOIN[28]            - Reads EXTSIGNAL28 \
//        GPIOIN[27]            - Reads EXTSIGNAL27  \
//        GPIOIN[26]            - Reads EXTSIGNAL26   > Function Select
//        GPIOIN[25]            - Reads EXTSIGNAL25  /
//        GPIOIN[24]            - Reads EXTSIGNAL24 /
//        GPIOIN[23:21]         - Not Used
//        GPIOIN[20]            - Reads SWDIOTMS
//        GPIOIN[19]            - Reads TDO
//        GPIOIN[18:0]          - Not Used
// Enables:
//        GPIOEN[31:0]          - Drives bufif1's

  //
  // Pull down inputs from ARMIKMCU to avoid capturing X at start of simulation
  //
  
  pulldown (EXTSIGNAL29);
  pulldown (EXTSIGNAL28);
  pulldown (EXTSIGNAL27);
  pulldown (EXTSIGNAL26);
  pulldown (EXTSIGNAL25);
  pulldown (EXTSIGNAL24);
  
  bufif1 (extgpio[ 0], GPIOOUT[ 0], GPIOEN[ 0]);
  bufif1 (extgpio[ 1], GPIOOUT[ 1], GPIOEN[ 1]);
  bufif1 (extgpio[ 2], GPIOOUT[ 2], GPIOEN[ 2]);
  bufif1 (extgpio[ 3], GPIOOUT[ 3], GPIOEN[ 3]);
  bufif1 (extgpio[ 4], GPIOOUT[ 4], GPIOEN[ 4]);
  bufif1 (extgpio[ 5], GPIOOUT[ 5], GPIOEN[ 5]);
  bufif1 (extgpio[ 6], GPIOOUT[ 6], GPIOEN[ 6]);
  bufif1 (extgpio[ 7], GPIOOUT[ 7], GPIOEN[ 7]);
  bufif1 (extgpio[ 8], GPIOOUT[ 8], GPIOEN[ 8]);
  bufif1 (extgpio[ 9], GPIOOUT[ 9], GPIOEN[ 9]);
  bufif1 (extgpio[10], GPIOOUT[10], GPIOEN[10]);
  bufif1 (extgpio[11], GPIOOUT[11], GPIOEN[11]);
  bufif1 (extgpio[12], GPIOOUT[12], GPIOEN[12]);
  bufif1 (extgpio[13], GPIOOUT[13], GPIOEN[13]);
  bufif1 (extgpio[14], GPIOOUT[14], GPIOEN[14]);
  bufif1 (extgpio[15], GPIOOUT[15], GPIOEN[15]);
  bufif1 (extgpio[16], GPIOOUT[16], GPIOEN[16]);
  bufif1 (extgpio[17], GPIOOUT[17], GPIOEN[17]);
  bufif1 (extgpio[18], GPIOOUT[18], GPIOEN[18]);
  bufif1 (extgpio[19], GPIOOUT[19], GPIOEN[19]);
  bufif1 (extgpio[20], GPIOOUT[20], GPIOEN[20]);
  bufif1 (extgpio[21], GPIOOUT[21], GPIOEN[21]);
  bufif1 (extgpio[22], GPIOOUT[22], GPIOEN[22]);
  bufif1 (extgpio[23], GPIOOUT[23], GPIOEN[23]);
  bufif1 (extgpio[24], GPIOOUT[24], GPIOEN[24]);
  bufif1 (extgpio[25], GPIOOUT[25], GPIOEN[25]);
  bufif1 (extgpio[26], GPIOOUT[26], GPIOEN[26]);
  bufif1 (extgpio[27], GPIOOUT[27], GPIOEN[27]);
  bufif1 (extgpio[28], GPIOOUT[28], GPIOEN[28]);
  bufif1 (extgpio[29], GPIOOUT[29], GPIOEN[29]);
  bufif1 (extgpio[30], GPIOOUT[30], GPIOEN[30]);
  bufif1 (extgpio[31], GPIOOUT[31], GPIOEN[31]);

  assign  EXTSIGNAL31  = extgpio[31];
  assign  GPIOIN[31]   = extgpio[31];

  assign  EXTSIGNAL30  = extgpio[30];
  assign  GPIOIN[30]   = extgpio[30];

  assign  GPIOIN[29]   = EXTSIGNAL29;

  assign  GPIOIN[28]   = EXTSIGNAL28;

  assign  GPIOIN[27]   = EXTSIGNAL27;

  assign  GPIOIN[26]   = EXTSIGNAL26;

  assign  GPIOIN[25]   = EXTSIGNAL25;
    
  assign  GPIOIN[24]   = EXTSIGNAL24;

  assign  GPIOIN[23]   = 1'b0;
    
  bufif1 (SWDIOTMS, extgpio[21], extgpio[22]);
  assign  GPIOIN[22]   = extgpio[22];
  assign  GPIOIN[21]   = extgpio[21];
    
  assign  GPIOIN[20]   = SWDIOTMS;

  assign  GPIOIN[19]   = TDO;

  assign  TDI          = extgpio[18];
  assign  GPIOIN[18]   = extgpio[18];

  assign  swclktck_i   = extgpio[17];
  assign  GPIOIN[17]   = extgpio[17];

  assign  nTRST        = extgpio[16];
  assign  GPIOIN[16]   = extgpio[16];

  assign  GPIOIN[15:0] = {16{1'b0}};
  
//-----------------------------------------------------------------------------
// SWCLKTCK skewed by half a DCLK (or CLK)
//-----------------------------------------------------------------------------
  always @ (negedge CLK or negedge PORESETn)
  if (~PORESETn)
    SWCLKTCK <= 1'b0;
  else
    SWCLKTCK <= swclktck_i;

//-----------------------------------------------------------------------------
// Tarmac for Core in Debug Driver
//-----------------------------------------------------------------------------

`ifdef ARM_CM0IK_TARMAC

`ifdef ARM_CM0IK_INTEGRATION_LEVEL
`define ARM_CM0IK_DBGDRV_PATH u_timing.u_int_imp.u_cortexm0integration.u_cortexm0
`else
`define ARM_CM0IK_DBGDRV_PATH u_timing.u_imp.u_cortexm0
`endif // ARM_CM0IK_INTEGRATION_LEVEL

  cm0_tarmac #(.LOGFILENAME("tarmac_dbg_drv.log"))
    u_tarmac
      (.enable_i      (1'b1),
 
       .hclk_i        (`ARM_CM0IK_DBGDRV_PATH.HCLK),
       .hready_i      (`ARM_CM0IK_DBGDRV_PATH.HREADY),
       .haddr_i       (`ARM_CM0IK_DBGDRV_PATH.HADDR[31:0]),
       .hprot_i       (`ARM_CM0IK_DBGDRV_PATH.HPROT[3:0]),
       .hsize_i       (`ARM_CM0IK_DBGDRV_PATH.HSIZE[2:0]),
       .hwrite_i      (`ARM_CM0IK_DBGDRV_PATH.HWRITE),
       .htrans_i      (`ARM_CM0IK_DBGDRV_PATH.HTRANS[1:0]),
       .hresetn_i     (`ARM_CM0IK_DBGDRV_PATH.HRESETn),
       .hresp_i       (`ARM_CM0IK_DBGDRV_PATH.HRESP),
       .hrdata_i      (`ARM_CM0IK_DBGDRV_PATH.HRDATA[31:0]),
       .hwdata_i      (`ARM_CM0IK_DBGDRV_PATH.HWDATA[31:0]),
       .lockup_i      (`ARM_CM0IK_DBGDRV_PATH.LOCKUP),
       .halted_i      (`ARM_CM0IK_DBGDRV_PATH.HALTED),
       .codehintde_i  (`ARM_CM0IK_DBGDRV_PATH.CODEHINTDE[2:0]),
       .codenseq_i    (`ARM_CM0IK_DBGDRV_PATH.CODENSEQ),
 
       .hdf_req_i     (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.ctl_hdf_request),
       .int_taken_i   (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.dec_int_taken_o),
       .int_return_i  (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.dec_int_return_o), 
       .int_pend_i    (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.nvm_int_pend),
       .pend_num_i    (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.nvm_int_pend_num[5:0]),
       .ipsr_i        (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.psr_ipsr[5:0]),
 
       .ex_last_i     (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.ctl_ex_last),
       .iaex_en_i     (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.ctl_iaex_en), 
       .reg_waddr_i   (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.ctl_wr_addr[3:0]),
       .reg_write_i   (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.ctl_wr_en),
       .xpsr_en_i     (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.ctl_xpsr_en),
       .fe_addr_i     (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.pfu_fe_addr[30:0]),
       .int_delay_i   (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.pfu_int_delay),
       .special_i     (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.pfu_op_special),
       .opcode_i      (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.pfu_opcode[15:0]),
       .reg_wdata_i   (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.psr_gpr_wdata[31:0]),
 
       .atomic_i      (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_ctl.atomic),
       .atomic_nxt_i  (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_ctl.atomic_nxt),
       .dabort_i      (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_ctl.data_abort), 
       .ex_last_nxt_i (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_ctl.ex_last_nxt), 
       .int_preempt_i (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_ctl.int_preempt),
       
       .psp_sel_i     (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_gpr.psp_sel),
       .xpsr_i        (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_gpr.xpsr[31:0]),
        
       .iaex_i        (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_pfu.iaex[30:0]),
       .iaex_nxt_i    (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_pfu.iaex_nxt[30:0]),
       .opcode_nxt_i  (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_pfu.ibuf_de_nxt[15:0]),
       .delay_count_i (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_pfu.ibuf_lo[13:6]),
       .tbit_en_i     (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_pfu.tbit_en),
       
       .cflag_en_i    (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_psr.cflag_ena),
       .ipsr_en_i     (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_psr.ipsr_ena),
       .nzflag_en_i   (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_psr.nzflag_ena),
       .vflag_en_i    (`ARM_CM0IK_DBGDRV_PATH.u_top.u_sys.u_core.u_psr.vflag_ena) );
    
`endif // ARM_CM0IK_TARMAC

endmodule
