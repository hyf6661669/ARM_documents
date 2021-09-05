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
//      Cortex-M0 Integration Kit ROM Model
//-----------------------------------------------------------------------------
//
// This block implements AHB Read-only Memory
//
// ROM is intialized using the file pointed to by MEMFILE. It also contains 
// additional behaviourial code controlled by a parameter to restore memory
// on power-up. This is done to emulate ROM data preservation through power-down
// in simulation.
//-----------------------------------------------------------------------------

module cm0ik_rom
  #(parameter           MEMNAME = "",               //Memory Name   
    parameter           MEMFILE = "image.bin",      //Image Filename
    parameter           DATAWIDTH = 32,             //Data Width
    parameter           ADDRWIDTH = 18,             //Address Width
    parameter           MEMBASE = 32'h00000000,     
    parameter           MEMTOP = 32'hffffffff,
    parameter           POWERDOWN = 0)              //When set 
                                                    //Restores on Power-Up
   (//Inputs
    input wire          HCLK,
    input wire          HSEL,
    input wire [31:0]   HADDR,
    input wire [1:0]    HTRANS,
    input               HREADY,
    output reg [31:0]   HRDATA,
    output              HREADYOUT,
    output              HRESP);

    localparam MEMDEPTH = 1 << ADDRWIDTH;

    //Wire/Reg declarations
    reg [DATAWIDTH-1:0] rom [0:MEMDEPTH-1];

    wire trans_valid = HSEL & HTRANS[1] & HREADY;

    wire [ADDRWIDTH-1:0] rom_index = HADDR[ADDRWIDTH+1:2];
    
    always @(posedge HCLK)
      if (trans_valid)
        HRDATA <= rom[rom_index];

    assign HREADYOUT = 1'b1;

    assign HRESP     = 1'b0;

   //*****************************************************************************
   // Following code provides memory initialisation
   //*****************************************************************************

   integer fd, fd2;
   integer i, j, i2;
   reg [31:0] data, data2;
   
   //Function to account for the Big Endianness of $fread
   function [31:0] swizzle;
      input [31:0] data_in;
      begin
        swizzle = {data_in[7:0],data_in[15:8],data_in[23:16],data_in[31:24]};
      end
   endfunction
   
   initial
     begin
       fd = $fopen(MEMFILE,"rb");
       
       for(i = 0; (i < MEMDEPTH) && ($fread(data,fd) != -1); i = i + 1)
         rom[i] = swizzle(data);
       $write("ROM: ---------------------------------------------------------\n");     
       $write("ROM: flat memory model\n");
       $write("ROM: (C) COPYRIGHT 2008-2009 ARM Limited - All Rights Reserved\n");
       $write("ROM: %s [ %x : %x ]\n", MEMNAME, MEMBASE, MEMTOP);
       $write("ROM: memory width = %d bits\n", DATAWIDTH);
       $write("ROM: memory size  = %d kb\n", ((1<<ADDRWIDTH)>>(10-((DATAWIDTH/32)+1))));
       $write("ROM: image max    = %d lines\n",i);
       $write("ROM: ---------------------------------------------------------\n");
       $fclose(fd);
     end

   //*****************************************************************************
   // Following code provides memory initialisation after Power UP
   //*****************************************************************************

    always @ (posedge tbench.u_mcu.u_pmu.SYSRETAINn)
    if (POWERDOWN)
      begin
       fd2 = $fopen(MEMFILE,"rb");
       
       for(i2 = 0; (i2 < MEMDEPTH) && ($fread(data2,fd2) != -1); i2 = i2 + 1)
         rom[i2] = swizzle(data2);
       $write("\nROM: ---------------------------------------------------------\n");     
       $write("ROM: Restoring ROM image after Power-Up\n");
       $write("ROM: ---------------------------------------------------------\n");
       $fclose(fd2);
      end

endmodule
