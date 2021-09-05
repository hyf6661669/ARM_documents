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
//     Cortex-M0 Integration Kit Level
//-----------------------------------------------------------------------------
//
// This level instantiates the following
//  o u_timing               - Timing Wrapper - CORTEXM0 / CORTEXM0INTEGRATION
//  o u_rom                  - AHB ROM Memory
//  o u_ahb2sram             - AHB to SRAM Bridge
//  o u_ram                  - RAM Memory
//  o u_system_rom_table     - System ROM Table
//  o u_ahb_interconnect     - AHB Bus Interconnect
//  o u_ahb_def_slv          - AHB Default Slave
//  o u_misc_logic           - Miscellaneous Logic Block
//  o u_stclken              - STCLK Double Synchronized Edge Detection
//  o u_gpio_0               - GPIO 0
//  o u_gpio_1               - GPIO 1
//  o u_gpio_2               - GPIO 2
//-----------------------------------------------------------------------------
`include "cm0ik_defs.v"

module cm0ik_sys
   (//Inputs
    input wire         FCLK,          // Free Running Clock
    input wire         SCLK,          // System Clock
    input wire         HCLK,          // AHB Clock
    input wire         DCLK,          // Debug Clock
    input wire         STCLK,         // Systick Reference Clock
    input wire         PORESETn,      // Power-on Reset
    input wire         HRESETn,       // System Reset
    input wire         DBGRESETn,     // Debug Reset
    input wire         nTRST,         // JTAG Test Reset
    input wire         SWCLKTCK,      // JTAG and/or SW Clock
    input wire         SWDITMS,       // JTAG mode select/SW Data In
    input wire         TDI,           // JTAG Data In
    input wire         WICENREQ,      // WIC mode handshaking Request
    input wire         CDBGPWRUPACK,  // System Power Up & Reset Acknowledge
    input wire         SLEEPHOLDREQn, // PMU requesting sleep extension
    input wire         SYSISOLATEn,   // System Power Isolate Control 
    input wire         SYSRETAINn,    // System Power Retain Control
    input wire         SYSPWRDOWN,    // System Power Down
    input wire         DBGISOLATEn,   // Debug Power Isolate control
    input wire         DBGPWRDOWN,    // Debug Power Down
    input wire [31:0]  EXTGPIOIN,     // External GPIO Inputs
    //Outputs
    output wire        CDBGPWRUPREQ,  // System Power Up & Reset Request 
    output wire        TDO,           // JTAG Data Out
    output wire        nTDOEN,        // JTAG Data Out Enable
    output wire        SWDO,          // SW Data Out
    output wire        SWDOEN,        // SW Data Enable
    output wire        WICENACK,      // WIC mode handshaking Acknowledge
    output wire        WAKEUP,        // Wakeup request from WIC
    output wire        SLEEPDEEP,     // Processor in sleep
    output wire        SLEEPHOLDACKn, // Extension sleep Acknowledge
    output wire        GATEHCLK,      // Gate System Clock  
    output wire        SYSRESETREQ,   // System Reset Request       
    output wire        SYSPWRDOWNACK, // SRPG - System Power Down Acknowledge
    output wire        DBGPWRDOWNACK, // SRPG - Debug Power Down Acknowledge
    output wire [31:0] EXTGPIOOUT,    // External GPIO Outputs
    output wire [31:0] EXTGPIOEN);    // External GPIO Pin Enables

//-----------------------------------------------------------------------------
// Signal declarations
//-----------------------------------------------------------------------------

  wire [31:0]           sys_irq;
  wire [30:0]           sys_irq_misc;
  wire                  sys_nmi;
  wire                  sys_rxev;
  wire                  sys_txev;
  wire                  sys_loopin_gpio, sys_loopout_gpio;
  wire [30:0]           sys_irq_gpio;
  wire                  sys_irq0_gpio;
  wire                  sys_rxev_gpio;
  wire                  sys_delayed_rxev;
  wire [31:0]           sys_haddr_cortexm0;                   
  wire [2:0]            sys_hburst_cortexm0;                  
  wire                  sys_hmastlock_cortexm0;               
  wire [3:0]            sys_hprot_cortexm0;                   
  wire [2:0]            sys_hsize_cortexm0;                   
  wire [1:0]            sys_htrans_cortexm0;                  
  wire [31:0]           sys_hwdata_cortexm0;
  wire                  sys_hwrite_cortexm0;                  
  wire [31:0]           sys_hrdata_mux, sys_hrdata_rom, sys_hrdata_ram, sys_hrdata_system_rom_table, sys_hrdata_def_slv;
  wire [31:0]           sys_hrdata_gpio0, sys_hrdata_gpio1, sys_hrdata_gpio2;             
  wire                  sys_hresp_mux, sys_hresp_rom, sys_hresp_ram, sys_hresp_system_rom_table, sys_hresp_def_slv;
  wire                  sys_hresp_gpio0, sys_hresp_gpio1, sys_hresp_gpio2;                 
  wire                  sys_hready_mux, sys_hreadyout_rom, sys_hreadyout_ram, sys_hreadyout_system_rom_table, sys_hreadyout_def_slv;               
  wire                  sys_hreadyout_gpio0, sys_hreadyout_gpio1, sys_hreadyout_gpio2;               
  wire                  sys_hsel_rom, sys_hsel_ram, sys_hsel_system_rom_table, sys_hsel_def_slv;
  wire                  sys_hsel_gpio0, sys_hsel_gpio1, sys_hsel_gpio2;                
  wire                  sys_stclken;
  wire [31:0]           sys_gpio0out, sys_gpio1out, sys_gpio2out;
  wire [31:0]           sys_gpio0in, sys_gpio1in, sys_gpio2in;
  wire [31:0]           sys_gpio0en;
  wire                  sys_gpio0int, sys_gpio1int, sys_gpio2int;
  wire                  sys_lockup;
  wire                  sys_halted;                  
  wire                  sys_edbgrq;
  wire                  sys_sleeping;
  wire                  sys_dbgrestart, sys_dbgrestarted;
  wire [31:0]           sys_rdata_sram, sys_wdata_sram;
  wire [17:0]           sys_addr_sram;
  wire                  sys_cs_sram;
  wire [3:0]            sys_we_sram;
`ifdef ARM_CM0IK_AHBPC_ON
  wire                  ASSERT_ERR_AHB;
`endif // ARM_CM0IK_AHBPC_ON

//-----------------------------------------------------------------------------
// Timing wrapper - CORTEXM0 or CORTEXM0INTEGRATION
//-----------------------------------------------------------------------------

`ifdef ARM_CM0IK_INTEGRATION_LEVEL
  cm0ik_cortexm0integration_timing
`else
  cm0ik_cortexm0_timing
`endif // ARM_CM0IK_INTEGRATION_LEVEL
   #(.CAPTUREVEC                        (1))
  u_timing
    (// Inputs
     .PORESETn                          (PORESETn),
     .DBGRESETn                         (DBGRESETn),
     .HRESETn                           (HRESETn),
     .FCLK                              (FCLK),
     .SCLK                              (SCLK),
     .HCLK                              (HCLK),
     .DCLK                              (DCLK),
     .DBGRESTART                        (sys_dbgrestart),
     .NMI                               (sys_nmi),
     .IRQ                               (sys_irq),
     .RXEV                              (sys_rxev),
     .SE                                (1'b0),
     .RSTBYPASS                         (1'b0),
     // Outputs
     .HMASTER                           (),
     .DBGRESTARTED                      (sys_dbgrestarted),
     .HALTED                            (sys_halted),
     .TXEV                              (sys_txev),
     .LOCKUP                            (sys_lockup),
     .CODENSEQ                          (),
     .CODEHINTDE                        (),
     .SPECHTRANS                        (),
     // Outputs
     .HADDR                             (sys_haddr_cortexm0[31:0]),
     .HBURST                            (sys_hburst_cortexm0[2:0]),
     .HMASTLOCK                         (sys_hmastlock_cortexm0),
     .HPROT                             (sys_hprot_cortexm0[3:0]),
     .HSIZE                             (sys_hsize_cortexm0[2:0]),
     .HTRANS                            (sys_htrans_cortexm0[1:0]),
     .HWDATA                            (sys_hwdata_cortexm0[31:0]),
     .HWRITE                            (sys_hwrite_cortexm0),
     .SWDO                              (SWDO),
     .SWDOEN                            (SWDOEN),
     .TDO                               (TDO),
     .nTDOEN                            (nTDOEN),
     .SYSRESETREQ                       (SYSRESETREQ),
     .GATEHCLK                          (GATEHCLK),
     .SLEEPING                          (sys_sleeping),
     .SLEEPDEEP                         (SLEEPDEEP),
     .WAKEUP                            (WAKEUP),
     .SLEEPHOLDACKn                     (SLEEPHOLDACKn),
     .WICENACK                          (WICENACK),
     .WICSENSE                          (),
     .CDBGPWRUPREQ                      (CDBGPWRUPREQ),
     .SYSPWRDOWNACK                     (SYSPWRDOWNACK),
     .DBGPWRDOWNACK                     (DBGPWRDOWNACK),
     // Inputs
     .SWCLKTCK                          (SWCLKTCK),
     .nTRST                             (nTRST),
     .HRDATA                            (sys_hrdata_mux[31:0]),
     .HREADY                            (sys_hready_mux),
     .HRESP                             (sys_hresp_mux),
     .SWDITMS                           (SWDITMS),
     .TDI                               (TDI),
     .EDBGRQ                            (sys_edbgrq),
     .STCLKEN                           (sys_stclken),
     .SLEEPHOLDREQn                     (SLEEPHOLDREQn),
     .WICENREQ                          (WICENREQ),
     .CDBGPWRUPACK                      (CDBGPWRUPACK),
     .SYSRETAINn                        (SYSRETAINn),
     .SYSISOLATEn                       (SYSISOLATEn),
     .SYSPWRDOWN                        (SYSPWRDOWN),
     .DBGISOLATEn                       (DBGISOLATEn),
     .DBGPWRDOWN                        (DBGPWRDOWN));

//-----------------------------------------------------------------------------
// AHB Read-Only Memory
//-----------------------------------------------------------------------------

`ifdef ARM_SRPG_ON
parameter POWERDOWNROM = 1;
`else
parameter POWERDOWNROM = 0;
`endif

  cm0ik_rom
   #(.MEMNAME                           ("ROM"),
     .MEMFILE                           ("image.bin"),
     .DATAWIDTH                         (32),
     .ADDRWIDTH                         (18),
     .MEMBASE                           (32'h00000000),
     .MEMTOP                            (32'h000FFFFF),
     .POWERDOWN                         (POWERDOWNROM))
    u_rom
    (//Outputs
     .HRDATA                            (sys_hrdata_rom[31:0]),
     .HREADYOUT                         (sys_hreadyout_rom),
     .HRESP                             (sys_hresp_rom),
     //Inputs
     .HCLK                              (HCLK),
     .HSEL                              (sys_hsel_rom),
     .HADDR                             (sys_haddr_cortexm0[31:0]),
     .HTRANS                            (sys_htrans_cortexm0[1:0]),
     .HREADY                            (sys_hready_mux));
     
//-----------------------------------------------------------------------------
// AHB to SRAM Bridge
//-----------------------------------------------------------------------------

  cm0ik_ahb_sram_bridge
   #(.AWIDTH                            (20))
    u_ahb2sram
    (//Outputs
    .RAMAD                              (sys_addr_sram),
    .RAMWD                              (sys_wdata_sram),
    .RAMCS                              (sys_cs_sram),
    .RAMWE                              (sys_we_sram),
    .HRDATA                             (sys_hrdata_ram[31:0]),
    .HREADYOUT                          (sys_hreadyout_ram),
    .HRESP                              (sys_hresp_ram),
    //Inputs
    .HCLK                               (HCLK),
    .HRESETn                            (HRESETn),
    .HADDR                              (sys_haddr_cortexm0[31:0]),
    .HBURST                             (sys_hburst_cortexm0[2:0]),
    .HMASTLOCK                          (1'b0),
    .HPROT                              (sys_hprot_cortexm0[3:0]),
    .HSIZE                              (sys_hsize_cortexm0[2:0]),
    .HTRANS                             (sys_htrans_cortexm0[1:0]),
    .HWDATA                             (sys_hwdata_cortexm0[31:0]),
    .HWRITE                             (sys_hwrite_cortexm0),
    .HSEL                               (sys_hsel_ram),
    .HREADY                             (sys_hready_mux),
    .RAMRD                              (sys_rdata_sram));
 
//-----------------------------------------------------------------------------
// SRAM Memory
//-----------------------------------------------------------------------------

  cm0ik_sram
   #(.MEMNAME                           ("SRAM"),
     .DATAWIDTH                         (32),
     .ADDRWIDTH                         (18),
     .MEMBASE                           (32'h20000000),
     .MEMTOP                            (32'h200FFFFF))
    u_ram
    (//Output
     .RDATA                             (sys_rdata_sram),
     //Inputs 
     .CLK                               (HCLK),
     .ADDRESS                           (sys_addr_sram),
     .CS                                (sys_cs_sram),
     .WE                                (sys_we_sram),
     .WDATA                             (sys_wdata_sram));

//-----------------------------------------------------------------------------
// System ROM Table
//-----------------------------------------------------------------------------

  cm0ik_system_rom_table
   #(.BASE                              (32'hF0000000))
    u_system_rom_table
    (//Outputs
     .HRDATA                            (sys_hrdata_system_rom_table[31:0]),
     .HREADYOUT                         (sys_hreadyout_system_rom_table),
     .HRESP                             (sys_hresp_system_rom_table),
     //Inputs
     .HCLK                              (HCLK),
     .HSEL                              (sys_hsel_system_rom_table),
     .HADDR                             (sys_haddr_cortexm0[12:0]),
     .HTRANS                            (sys_htrans_cortexm0[1:0]),
     .HREADY                            (sys_hready_mux),
     .CUSTJEPID                         (7'b0),          
     .CUSTJEPCONTINUATION               (4'b0),
     .CUSTPARTNUMBER                    (12'b0),    
     .CUSTREVISION                      (4'b0),     
     .CUSTREVAND                        (4'b0),      
     .SIVREVAND                         (4'b0));     

//-----------------------------------------------------------------------------
// AHB Interconnect
//-----------------------------------------------------------------------------

 cm0ik_ahb_interconnect u_ahb_interconnect
   (// Outputs
    .HREADY                             (sys_hready_mux),
    .HRESP                              (sys_hresp_mux),
    .HRDATA                             (sys_hrdata_mux[31:0]),
    .HSELS0                             (sys_hsel_rom),
    .HSELS1                             (sys_hsel_ram),
    .HSELS2                             (sys_hsel_gpio0),
    .HSELS3                             (sys_hsel_gpio1),
    .HSELS4                             (sys_hsel_gpio2),
    .HSELS5                             (sys_hsel_system_rom_table),
    .HSELS6                             (sys_hsel_def_slv),
    // Inputs
    .HCLK                               (FCLK),
    .HRESETn                            (HRESETn),
    .HADDR                              (sys_haddr_cortexm0[31:0]),
    .HRDATAS0                           (sys_hrdata_rom[31:0]),
    .HRDATAS1                           (sys_hrdata_ram[31:0]),
    .HRDATAS2                           (sys_hrdata_gpio0[31:0]),
    .HRDATAS3                           (sys_hrdata_gpio1[31:0]),
    .HRDATAS4                           (sys_hrdata_gpio2[31:0]),
    .HRDATAS5                           (sys_hrdata_system_rom_table[31:0]),
    .HRDATAS6                           (sys_hrdata_def_slv[31:0]),
    .HREADYOUTS0                        (sys_hreadyout_rom),
    .HREADYOUTS1                        (sys_hreadyout_ram),
    .HREADYOUTS2                        (sys_hreadyout_gpio0),
    .HREADYOUTS3                        (sys_hreadyout_gpio1),
    .HREADYOUTS4                        (sys_hreadyout_gpio2),
    .HREADYOUTS5                        (sys_hreadyout_system_rom_table),
    .HREADYOUTS6                        (sys_hreadyout_def_slv),
    .HRESPS0                            (sys_hresp_rom),
    .HRESPS1                            (sys_hresp_ram),
    .HRESPS2                            (sys_hresp_gpio0),
    .HRESPS3                            (sys_hresp_gpio1),
    .HRESPS4                            (sys_hresp_gpio2),
    .HRESPS5                            (sys_hresp_system_rom_table),
    .HRESPS6                            (sys_hresp_def_slv));

//-----------------------------------------------------------------------------
// AHB Default Slave
//-----------------------------------------------------------------------------

  cm0ik_ahb_def_slv u_ahb_def_slv
    (// Outputs
     .HREADYOUT                         (sys_hreadyout_def_slv),
     .HRDATA                            (sys_hrdata_def_slv[31:0]),
     .HRESP                             (sys_hresp_def_slv),
     // Inputs
     .HCLK                              (FCLK),
     .HRESETn                           (HRESETn),
     .HSEL                              (sys_hsel_def_slv),
     .HTRANS                            (sys_htrans_cortexm0),
     .HREADY                            (sys_hready_mux));
   
//-----------------------------------------------------------------------------
// Miscellaneous Logic Block
//-----------------------------------------------------------------------------

  cm0ik_misc u_misc_logic
   (
    // Outputs
    .loopin_gpio                       (sys_loopin_gpio),
    .delayed_rxev                      (sys_delayed_rxev),
    .rxev                              (sys_rxev),
    .irq                               (sys_irq_misc),
    // Inputs
    .fclk                              (FCLK),
    .hresetn                           (HRESETn),
    .loopout_gpio                      (sys_loopout_gpio),
    .rxev_gpio                         (sys_rxev_gpio),
    .irq_gpio                          (sys_irq_gpio));

//-----------------------------------------------------------------------------
// STCLKEN Generation
//-----------------------------------------------------------------------------
  cm0ik_stclken_gen  u_stclken
    (//Outputs
     .STCLKEN                           (sys_stclken),
     //Inputs
     .SCLK                              (SCLK),
     .HRESETn                           (HRESETn),
     .STCLK                             (STCLK));

//-----------------------------------------------------------------------------
// GPIO 0
//-----------------------------------------------------------------------------

  cm0ik_gpio u_gpio_0
    (// Outputs
     .HREADYOUT                         (sys_hreadyout_gpio0),
     .HRESP                             (sys_hresp_gpio0),
     .HRDATA                            (sys_hrdata_gpio0[31:0]),
     .GPIOOUT                           (sys_gpio0out[31:0]),
     .GPIOEN                            (sys_gpio0en[31:0]),
     .GPIOINT                           (sys_gpio0int),
     // Inputs
     .HCLK                              (FCLK),
     .HRESETn                           (HRESETn),
     .HSEL                              (sys_hsel_gpio0),
     .HREADY                            (sys_hready_mux),
     .HADDR                             (sys_haddr_cortexm0[10:0]),
     .HWRITE                            (sys_hwrite_cortexm0),
     .HTRANS                            (sys_htrans_cortexm0[1:0]),
     .HSIZE                             (sys_hsize_cortexm0[2:0]),
     .HWDATA                            (sys_hwdata_cortexm0[31:0]),
     .GPIOIN                            (sys_gpio0in[31:0]));  

//-----------------------------------------------------------------------------
// GPIO 1
//-----------------------------------------------------------------------------

  cm0ik_gpio u_gpio_1
    (// Outputs
     .HREADYOUT                         (sys_hreadyout_gpio1),
     .HRESP                             (sys_hresp_gpio1),
     .HRDATA                            (sys_hrdata_gpio1[31:0]),
     .GPIOOUT                           (sys_gpio1out[31:0]),
     .GPIOEN                            (),
     .GPIOINT                           (sys_gpio1int),
     // Inputs
     .HCLK                              (FCLK),
     .HRESETn                           (HRESETn),
     .HSEL                              (sys_hsel_gpio1),
     .HREADY                            (sys_hready_mux),
     .HADDR                             (sys_haddr_cortexm0[10:0]),
     .HWRITE                            (sys_hwrite_cortexm0),
     .HTRANS                            (sys_htrans_cortexm0[1:0]),
     .HSIZE                             (sys_hsize_cortexm0[2:0]),
     .HWDATA                            (sys_hwdata_cortexm0[31:0]),
     .GPIOIN                            (sys_gpio1in[31:0]));  
 
//-----------------------------------------------------------------------------
// GPIO 2
//-----------------------------------------------------------------------------

  cm0ik_gpio u_gpio_2
    (// Outputs
     .HREADYOUT                         (sys_hreadyout_gpio2),
     .HRESP                             (sys_hresp_gpio2),
     .HRDATA                            (sys_hrdata_gpio2[31:0]),
     .GPIOOUT                           (sys_gpio2out[31:0]),
     .GPIOEN                            (),
     .GPIOINT                           (sys_gpio2int),
     // Inputs
     .HCLK                              (FCLK),
     .HRESETn                           (HRESETn),
     .HSEL                              (sys_hsel_gpio2),
     .HREADY                            (sys_hready_mux),
     .HADDR                             (sys_haddr_cortexm0[10:0]),
     .HWRITE                            (sys_hwrite_cortexm0),
     .HTRANS                            (sys_htrans_cortexm0[1:0]),
     .HSIZE                             (sys_hsize_cortexm0[2:0]),
     .HWDATA                            (sys_hwdata_cortexm0[31:0]),
     .GPIOIN                            (sys_gpio2in[31:0]));  
 
//-----------------------------------------------------------------------------
// GPIO signal assignments
//-----------------------------------------------------------------------------
//
// Internal GPIO 0 signal mappings
//
// Interrupt:
//       GPIO0INT               - Drives IRQ0
// Outputs:
//       GPIO0OUT[31:30]        - Not Used
//       GPIO0OUT[29]           - Drives EXTGPIOOUT[29]     (Debug Driver Function Strobe)
//       GPIO0OUT[28]           - Drives EXTGPIOOUT[28] \
//       GPIO0OUT[27]           - Drives EXTGPIOOUT[27]  \
//       GPIO0OUT[26]           - Drives EXTGPIOOUT[26]   > (Debug Driver Function Select)
//       GPIO0OUT[25]           - Drives EXTGPIOOUT[25]  /
//       GPIO0OUT[24]           - Drives EXTGPIOOUT[24] /
//       GPIO0OUT[23:16]        - Not Used
//       GPIO0OUT[15]           - Drives EXTGPIOOUT[15]     (charstrobe)  
//       GPIO0OUT[14:8]         - Drives EXTGPIOOUT[14:8]   (chardata)  
//       GPIO0OUT[7:2]          - Not Used
//       GPIO0OUT[1]            - Drives EXTGPIOOUT[1]      (TESTPASS)
//       GPIO0OUT[0]            - Drives EXTGPIOOUT[0]      (TESTCOMPLETE)
// Inputs:
//       GPIO0IN[31]            - Reads EXTGPIOIN[31]       (Debug Driver Running)
//       GPIO0IN[30]            - Reads EXTGPIOIN[30]       (Debug Driver Error)
//       GPIO0IN[29:0]          - Not Used
// Enables: 
//       GPIO0EN[31:0]          - Drives EXTGPIOEN[31:0]
//
// Internal GPIO 1 signal mappings
//
// Interrupt:
//       GPIO1INT               - Drives IRQ0
// Outputs:
//       GPIO1OUT[31]           - Drives NMI
//       GPIO1OUT[30]           - Drives sys_loopout_gpio
//       GPIO1OUT[29:27]        - Not Used
//       GPIO1OUT[26]           - Drives DBGRESTART
//       GPIO1OUT[25]           - Not Used
//       GPIO1OUT[24]           - Drives EDBGRQ
//       GPIO1OUT[23:15]        - Not Used
//       GPIO1OUT[14]           - Drives sys_rxev_gpio
//       GPIO1OUT[13:0]         - Not Used
// Inputs:
//       GPIO1IN[31:30]         - Reads GPIO1OUT[31:30]
//       GPIO1IN[29]            - Reads sys_loopin_gpio
//       GPIO1IN[28:26]         - Reads GPIO1OUT[28:26]
//       GPIO1IN[25]            - Reads DBGRESTARTED
//       GPIO1IN[24:22]         - Reads GPIO1OUT[24:22]
//       GPIO1IN[21]            - Reads HALTED
//       GPIO1IN[20]            - Reads LOCKUP
//       GPIO1IN[19]            - Reads SLEEPDEEP
//       GPIO1IN[18]            - Reads SLEEPING
//       GPIO1IN[17:16]         - Reads GPIO1OUT[17:16]
//       GPIO1IN[15]            - Reads TXEV
//       GPIO1IN[14]            - Reads GPIO1OUT[14]
//       GPIO1IN[13]            - Reads sys_delayed_rxev
//       GPIO1IN[12:0]          - Reads GPIO1OUT[12:0]
// Enables:
//       GPIO1EN[31:0]          - Not Used
//
// Internal GPIO 2 signal mappings
//
// Interrupt:
//       GPIO2INT               - Drives IRQ0
// Outputs:
//       GPIO2OUT[31]           - Drives IRQ31
//       GPIO2OUT[30]           - Drives IRQ30
//       GPIO2OUT[29]           - Drives IRQ29
//       GPIO2OUT[28]           - Drives IRQ28
//       GPIO2OUT[27]           - Drives IRQ27
//       GPIO2OUT[26]           - Drives IRQ26
//       GPIO2OUT[25]           - Drives IRQ25
//       GPIO2OUT[24]           - Drives IRQ24
//       GPIO2OUT[23]           - Drives IRQ23
//       GPIO2OUT[22]           - Drives IRQ22
//       GPIO2OUT[21]           - Drives IRQ21
//       GPIO2OUT[20]           - Drives IRQ20
//       GPIO2OUT[19]           - Drives IRQ19
//       GPIO2OUT[18]           - Drives IRQ18
//       GPIO2OUT[17]           - Drives IRQ17
//       GPIO2OUT[16]           - Drives IRQ16
//       GPIO2OUT[15]           - Drives IRQ15
//       GPIO2OUT[14]           - Drives IRQ14
//       GPIO2OUT[13]           - Drives IRQ13
//       GPIO2OUT[12]           - Drives IRQ12
//       GPIO2OUT[11]           - Drives IRQ11
//       GPIO2OUT[10]           - Drives IRQ10
//       GPIO2OUT[9]            - Drives IRQ9
//       GPIO2OUT[8]            - Drives IRQ8
//       GPIO2OUT[7]            - Drives IRQ7
//       GPIO2OUT[6]            - Drives IRQ6
//       GPIO2OUT[5]            - Drives IRQ5
//       GPIO2OUT[4]            - Drives IRQ4
//       GPIO2OUT[3]            - Drives IRQ3
//       GPIO2OUT[2]            - Drives IRQ2
//       GPIO2OUT[1]            - Drives IRQ1
//       GPIO2OUT[0]            - Not Used
// Inputs:
//       GPIO2IN[31:0]          - Reads GPIO2OUT[31:0]
// Enables:
//       GPIO2EN[31:0]          - Not Used
//

  assign sys_irq_gpio          = sys_gpio2out[31:1];

  assign sys_irq0_gpio         = sys_gpio0int | sys_gpio1int | sys_gpio2int;

  assign sys_irq               = {sys_irq_misc[30:0] , sys_irq0_gpio};
  
  assign sys_gpio0in           = EXTGPIOIN;

  assign EXTGPIOOUT            = sys_gpio0out;

  assign EXTGPIOEN             = sys_gpio0en;
  
  assign sys_nmi               = sys_gpio1out[31];
  assign sys_gpio1in[31]       = sys_gpio1out[31];

  assign sys_loopout_gpio      = sys_gpio1out[30];
  assign sys_gpio1in[30]       = sys_gpio1out[30];

  assign sys_gpio1in[29]       = sys_loopin_gpio;

  assign sys_gpio1in[28]       = sys_gpio1out[28];

  assign sys_gpio1in[27]       = sys_gpio1out[27];
  
  assign sys_dbgrestart        = sys_gpio1out[26];
  assign sys_gpio1in[26]       = sys_gpio1out[26];
  
  assign sys_gpio1in[25]       = sys_dbgrestarted;

  assign sys_edbgrq            = sys_gpio1out[24];
  assign sys_gpio1in[24]       = sys_gpio1out[24];

  assign sys_gpio1in[23]       = sys_gpio1out[23];

  assign sys_gpio1in[22]       = sys_gpio1out[22];

  assign sys_gpio1in[21]       = sys_halted;

  assign sys_gpio1in[20]       = sys_lockup;

  assign sys_gpio1in[19]       = SLEEPDEEP;

  assign sys_gpio1in[18]       = sys_sleeping;

  assign sys_gpio1in[17]       = sys_gpio1out[17];

  assign sys_gpio1in[16]       = sys_gpio1out[16];

  assign sys_gpio1in[15]       = sys_txev;

  assign sys_rxev_gpio         = sys_gpio1out[14];
  assign sys_gpio1in[14]       = sys_gpio1out[14];

  assign sys_gpio1in[13]       = sys_delayed_rxev;
  
  assign sys_gpio1in[12:0]     = sys_gpio1out[12:0];

  assign sys_gpio2in           = sys_gpio2out;

//-----------------------------------------------------------------------------
// AHB Protocol Checker
//-----------------------------------------------------------------------------

`ifdef ARM_CM0IK_AHBPC_ON
  // Checker for Core AHB.  This is reset by DBGRESETn as a debugger may
  // still access the external AHB when the core is in SYSRESETn.
  // Parameters: Set DATA_WIDTH to 32 and ADDRESS_WIDTH to 32
  AhbPC #(32,32) u_ahb_pc_cortexm0
  (
   //Outputs
   .ASSERT_ERR_AHB                      (ASSERT_ERR_AHB),
   // Inputs
   .HCLK                                (FCLK),
   .HRESETn                             (DBGRESETn),
   .HSELx                               (1'b1),
   .HCLKEN                              (1'b1),
   .HADDR                               (sys_haddr_cortexm0[31:0]),
   .HTRANS                              (sys_htrans_cortexm0[1:0]),
   .HWRITE                              (sys_hwrite_cortexm0),
   .HSIZE                               (sys_hsize_cortexm0[2:0]),
   .HBURST                              (sys_hburst_cortexm0[2:0]),
   .HPROT                               (sys_hprot_cortexm0[3:0]),
   .HWDATA                              (sys_hwdata_cortexm0[31:0]),
   .HREADY                              (sys_hready_mux),
   .HREADYOUT                           (sys_hready_mux),
   .HRESP                               ({1'b0,sys_hresp_mux}),
   .HMASTLOCK                           (sys_hmastlock_cortexm0),
   .HLOCKx                              (1'b0),
   .HGRANTx                             (1'b1)
  );
`endif // ARM_CM0IK_AHBPC_ON

endmodule
