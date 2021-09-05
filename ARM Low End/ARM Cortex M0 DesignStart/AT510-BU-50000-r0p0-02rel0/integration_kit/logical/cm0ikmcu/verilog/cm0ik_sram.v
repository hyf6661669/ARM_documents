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
//      Cortex-M0 Integration Kit SRAM Model
//-----------------------------------------------------------------------------
//
// This block implements synchronous SRAM
//-----------------------------------------------------------------------------

module cm0ik_sram
  #(parameter                   MEMNAME = "",               //Memory Name   
    parameter                   DATAWIDTH = 32,             //Data Width
    parameter                   ADDRWIDTH = 18,             //Address Width
    parameter                   MEMBASE = 32'h00000000,
    parameter                   MEMTOP = 32'hffffffff)
   (input  wire                 CLK,
    input  wire [ADDRWIDTH-1:0] ADDRESS,                    //Address Input
    input  wire                 CS,                         //Chip Select
    input  wire [3:0]           WE,                         //Write Enable/Read Enable
    input  wire [DATAWIDTH-1:0] WDATA,                      //Write Data
    output wire [DATAWIDTH-1:0] RDATA);                     //Read Data
    
   localparam MEMDEPTH = 1 << ADDRWIDTH;

   //Wire/Reg declarations
   reg [DATAWIDTH-1:0]  ram [0:MEMDEPTH-1];
   reg [DATAWIDTH-1:0]  rd_data;
   
   always @(posedge CLK)
     rd_data <= (CS & (WE==4'h0)) ? ram[ADDRESS] : 32'bX;

   assign RDATA = rd_data;
   
   wire [31:0] wr_data = ram[ADDRESS];
   
   wire [7:0]  wbyte0 = WE[0] ? WDATA[ 7: 0] : wr_data[ 7: 0];
   wire [7:0]  wbyte1 = WE[1] ? WDATA[15: 8] : wr_data[15: 8];
   wire [7:0]  wbyte2 = WE[2] ? WDATA[23:16] : wr_data[23:16];
   wire [7:0]  wbyte3 = WE[3] ? WDATA[31:24] : wr_data[31:24];

   always @(posedge CLK)
     if (CS)
        ram[ADDRESS] <= {wbyte3, wbyte2, wbyte1, wbyte0};

   initial
     begin
       $write("RAM: ---------------------------------------------------------\n");     
       $write("RAM: flat memory model\n");
       $write("RAM: (C) COPYRIGHT 2008-2009 ARM Limited - All Rights Reserved\n");
       $write("RAM: %s [ %x : %x ]\n", MEMNAME, MEMBASE, MEMTOP);
       $write("RAM: memory width = %d bits\n", DATAWIDTH);
       $write("RAM: memory size  = %d kb\n", ((1<<ADDRWIDTH)>>(10-((DATAWIDTH/32)+1))));
       $write("RAM: ---------------------------------------------------------\n");
     end

endmodule
