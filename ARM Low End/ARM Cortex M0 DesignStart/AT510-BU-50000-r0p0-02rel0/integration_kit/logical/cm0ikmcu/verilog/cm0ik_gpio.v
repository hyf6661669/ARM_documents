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
//     AHBLite General Purpose Input/Output Block
//-----------------------------------------------------------------------------

module cm0ik_gpio
  (// Inputs
   input wire           HCLK,       // System clock
   input wire           HRESETn,    // System reset
   input wire           HSEL,       // AHB slave selected
   input wire [10:0]    HADDR,      // AHB transfer address
   input wire           HWRITE,     // AHB transfer direction
   input wire [1:0]     HTRANS,     // AHB transaction type
   input wire [2:0]     HSIZE,      // AHB transfer size
   input wire [31:0]    HWDATA,     // AHB write data bus
   input wire           HREADY,     // AHB bus ready
   input wire [31:0]    GPIOIN,     // Input from IO pad
   // Outputs
   output wire          HREADYOUT,  // AHB slave ready
   output wire          HRESP,      // AHB response
   output wire [31:0]   HRDATA,     // AHB read data bus
   output wire [31:0]   GPIOOUT,    // Output to IO pad
   output wire [31:0]   GPIOEN,     // Output enable for IO pad
   output wire          GPIOINT);   // Input change interrupt output

//-----------------------------------------------------------------------------
// Signal declarations
//-----------------------------------------------------------------------------

  reg	 [31:0] gpiodata_o;	    // GPIO Data Out Register	
  reg	 [31:0] gpiodata_i;	    // GPIO Data In Register	
  reg    [31:0] gpiodir;            // GPIO Direction Register
  reg	 [31:0] gpiointmask;        // GPIO Interrupt Mask Register	
  reg           gpiointerrupt;      // GPIO Interrupt
  reg    [10:4] read_mux;           // AHB read mux select term
  reg           gpiodata_o_wren;    // GPIO Data Register write enable
  reg           gpiodir_wren;       // GPIO Direction Register write enable
  reg		gpiointmask_wren;   // GPIO Interrupt Mask Register write enable
  reg           byte0;              // Byte 0 access enable
  reg           byte1;              // Byte 1 access enable
  reg           byte2;              // Byte 2 access enable
  reg           byte3;              // Byte 3 access enable
  reg	 [1:0]  haddr_r;            // HADDR[1:0] registered
  reg           hsize_zero;         // HSIZE=0 registered
  reg    [31:0] type_mask2;         // Mask for Data register
  reg    [7:0]  mask8;

//-----------------------------------------------------------------------------
// AHB write byte address control
//-----------------------------------------------------------------------------

  // Decode term for access to least significant byte
  wire        nxt_byte0 = ( HSIZE[1] ) |
                          ( HSIZE[0] & ~HADDR[1] ) |
                          ( ~HSIZE[0] & ~HADDR[1] & ~HADDR[0] );

  // Decode term for access to byte 1
  wire        nxt_byte1 = ( HSIZE[1] ) |
                          ( HSIZE[0] & ~HADDR[1] ) | 
                          ( ~HSIZE[0] & ~HADDR[1] &  HADDR[0] );

  // Decode term for access to byte 2
  wire        nxt_byte2 = ( HSIZE[1] ) | 
                          ( HSIZE[0] &  HADDR[1] ) | 
                          ( ~HSIZE[0] &  HADDR[1] & ~HADDR[0] );

  // Decode term for access to most significant byte   
  wire        nxt_byte3 = ( HSIZE[1] ) | 
                          ( HSIZE[0] &  HADDR[1] ) | 
                          ( ~HSIZE[0] &  HADDR[1] &  HADDR[0] );
  
  always @(posedge HCLK or negedge HRESETn)
    if(~HRESETn)
      begin
        byte0 <= 1'b0;
        byte1 <= 1'b0;
        byte2 <= 1'b0;
        byte3 <= 1'b0;
      end
    else if (HREADY)          // when bus is ready
      begin
        byte0 <= nxt_byte0;
        byte1 <= nxt_byte1;
        byte2 <= nxt_byte2;
        byte3 <= nxt_byte3;
      end

  // Mask depending on type of access :
  // word, half-word or byte
  wire [31:0] type_mask = { {8{byte3}}, {8{byte2}}, {8{byte1}}, {8{byte0}} };
  
//-----------------------------------------------------------------------------
// AHB register read/write mask for byte accesses on Data register
//-----------------------------------------------------------------------------

  wire        nxt_hsize_zero = (HSIZE[1:0] == 2'b0) & HSEL;

  // For byte accesses, the mask is in HADDR[9:2]
  wire [7:0]  nxt_mask8 = (nxt_hsize_zero)? HADDR[9:2] : {8{1'b0}};

  always @(posedge HCLK or negedge HRESETn)
    if(~HRESETn)
        mask8 <= {8{1'b0}};      // Reset mask to FF
    else if(HREADY)
        mask8 <= nxt_mask8;      // Update AHB mask with next

  always @(posedge HCLK or negedge HRESETn)
    if(~HRESETn)
        begin
            haddr_r     <={2{1'b0}};      // Reset mask to FF
            hsize_zero  <= 1'b0;
        end
    else if(HREADY)
        begin
            haddr_r     <= HADDR[1:0];    // Update AHB mask with next
            hsize_zero  <= nxt_hsize_zero;
        end

  always @ (hsize_zero or haddr_r or mask8 or type_mask)
    case({hsize_zero,haddr_r})
	3'b100  : type_mask2 = {8'h00, 8'h00, 8'h00, mask8};
	3'b101  : type_mask2 = {8'h00, 8'h00, mask8, 8'h00};
	3'b110  : type_mask2 = {8'h00, mask8, 8'h00, 8'h00};
	3'b111  : type_mask2 = {mask8, 8'h00, 8'h00, 8'h00};
        3'b000,3'b001,3'b010,3'b011:  type_mask2 = type_mask;
	default : type_mask2 = {32{1'bx}};
    endcase

//-----------------------------------------------------------------------------
// AHB write register address control
//-----------------------------------------------------------------------------

  // Detect a valid write to this slave
  wire        write_trans  = HSEL & HWRITE & HTRANS[1];

  // Qualify with address to determine register write enable
  wire        nxt_gpiodata_o_wren   = write_trans & (HADDR[10   ] ==       1'b0);
  wire        nxt_gpiodir_wren      = write_trans & (HADDR[10: 4] == 7'b1000000);   
  wire        nxt_gpiointmask_wren  = write_trans & (HADDR[10: 4] == 7'b1000001);   

  // Only update registers when the bus is ready
  always @(posedge HCLK or negedge HRESETn)
    if(~HRESETn)
      begin
        gpiodata_o_wren  <= 1'b0;
        gpiodir_wren     <= 1'b0;
	gpiointmask_wren <= 1'b0;
      end
    else if(HREADY)
      begin
        gpiodata_o_wren   <= nxt_gpiodata_o_wren;   // update write enable for Data Out Register
        gpiodir_wren      <= nxt_gpiodir_wren;      // update write enable for Direction Register
        gpiointmask_wren  <= nxt_gpiointmask_wren;  // update write enable for Interrupt Mask Register
      end
      
//-----------------------------------------------------------------------------
// IO Pad registers
//-----------------------------------------------------------------------------

  assign      GPIOEN	     = gpiodir;
                             
  assign      GPIOOUT        = gpiodata_o;

  wire [31:0] nxt_gpiodata_i = GPIOIN;

  // Combine bus and register values using mask for next state of Direction Register   
  wire [31:0] nxt_gpiodir  = gpiodir_wren  ?
                             ((HWDATA & type_mask) | (gpiodir & ~type_mask))
                             : gpiodir;

  // Combine bus and register values using mask for next state of Interrupt Mask Register   
  wire [31:0] nxt_gpiointmask  = gpiointmask_wren  ?
                                ((HWDATA & type_mask) | (gpiointmask & ~type_mask)) 
                                : gpiointmask;

  // Combine bus and register values using mask for next state of Data Out Register
  wire [31:0] nxt_gpiodata_o = gpiodata_o_wren ? 
                               ((HWDATA & type_mask2) | (gpiodata_o & ~type_mask2))
			       : gpiodata_o;

  always @(posedge HCLK or negedge HRESETn)
    if(~HRESETn)
      begin
        gpiodir     <= {32{1'b0}};      // Disable all buffers on reset
        gpiointmask <= {32{1'b0}};  
        gpiodata_o  <= {32{1'b0}};
      end
    else if (HREADY)                    // When bus is ready:
      begin
	gpiodir     <= nxt_gpiodir;     // update direction register
	gpiointmask <= nxt_gpiointmask; // update interrupt mask register
        gpiodata_o  <= nxt_gpiodata_o;  // updata data out register
      end
      
  always @ (posedge HCLK or negedge HRESETn)
     if(~HRESETn)
       gpiodata_i   <= {32{1'b0}};      // Reset all outputs to zero
     else
       gpiodata_i   <= nxt_gpiodata_i;  // Sample GPIOIN continuously
	     
//-----------------------------------------------------------------------------
// Input change interrupt generator
//-----------------------------------------------------------------------------

  // Interrupt generated if input signals change between samples after masking
  wire        nxt_gpiointerrupt = |((gpiodata_i ^ nxt_gpiodata_i) & gpiointmask & ~gpiodir);

  always @(posedge HCLK or negedge HRESETn)
    if(~HRESETn)
        gpiointerrupt <= 1'b0;              // Reset GPIOINT pin output
    else
        gpiointerrupt <= nxt_gpiointerrupt; // Update GPIOINT pin output

  assign      GPIOINT = gpiointerrupt;

//-----------------------------------------------------------------------------
// AHB register read mux
//-----------------------------------------------------------------------------

  // Drive read mux next state from word address when selected
  wire [10:4] nxt_read_mux = HSEL ? HADDR[10:4] : read_mux;

  always @(posedge HCLK or negedge HRESETn)
    if(~HRESETn)
      read_mux <= 7'b0;           // Set select to input on reset
    else if(HREADY)               // When bus is ready:
      read_mux <= nxt_read_mux;   // assign mux select next value

  wire [31:0] rdata  = (read_mux[10: 4] == 7'b1000000)? gpiodir : (           //Offset 0x400 returns Direction Register
                       (read_mux[10: 4] == 7'b1000001)? gpiointmask : (       //Offset 0x410 returns Interrupt Mask Register
                       (read_mux[10   ] ==       1'b0)? gpiodata_i : 32'b0)); //Offset 0x0 to 0x3ff returns Data Register

  assign      HRDATA =  rdata & type_mask2;

//-----------------------------------------------------------------------------
// AHB tie offs
//-----------------------------------------------------------------------------

  assign      HREADYOUT = 1'b1;        // All accesses to GPIO are zero-wait
  assign      HRESP     = 1'b0;        // Generate OK responses only
   
endmodule // cm0ik_gpio

