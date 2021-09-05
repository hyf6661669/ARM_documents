//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM Limited.
//
//            (C) COPYRIGHT 2009 ARM Limited.
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
//     This block implements a single entry ARMv6M CoreSight ROM Table
//-----------------------------------------------------------------------------

module cm0ik_v6m_rom_table
  (
   input  wire [6:0]  jepid,           // JEP106 ID
   input  wire [3:0]  jepcontinuation, // Number of JEP106 Continuation Codes
   input  wire [11:0] partnumber,      // Partnumber
   input  wire [3:0]  revision,        // Revision
   input  wire [3:0]  revand,          // Minor Revision (metal fix)
   input  wire [31:0] entryzero,       // ROM Table Entry
   input  wire [11:0] addr,            // Address
   output wire [31:0] rdata);          // Read Data
   

   // ------------------------------------------------------------
   // Local wires
   // ------------------------------------------------------------
   
   wire [11:0] word_addr = {addr[11:2] , 2'b00};
   
  
   
   // ------------------------------------------------------------
   // ROM Table Content
   // ------------------------------------------------------------

   wire       cid3_en = (word_addr[11:0] == 12'hFFC);
   wire       cid2_en = (word_addr[11:0] == 12'hFF8);
   wire       cid1_en = (word_addr[11:0] == 12'hFF4);
   wire       cid0_en = (word_addr[11:0] == 12'hFF0);
   
   wire       pid7_en = (word_addr[11:0] == 12'hFDC);
   wire       pid6_en = (word_addr[11:0] == 12'hFD8);
   wire       pid5_en = (word_addr[11:0] == 12'hFD4);
   wire       pid4_en = (word_addr[11:0] == 12'hFD0);
   wire       pid3_en = (word_addr[11:0] == 12'hFEC);
   wire       pid2_en = (word_addr[11:0] == 12'hFE8);
   wire       pid1_en = (word_addr[11:0] == 12'hFE4);
   wire       pid0_en = (word_addr[11:0] == 12'hFE0);
   
   wire       systemaccess_en = (word_addr[11:0] == 12'hFCC);  
   wire       entryzero_en = (word_addr[11:0] == 12'h000);
   
   
   wire [7:0] ids =
	      ( ( {8{cid3_en}} & 8'hB1 ) | // CID3 : Rom Table
		( {8{cid2_en}} & 8'h05 ) | // CID2 : Rom Table
		( {8{cid1_en}} & 8'h10 ) | // CID1 : Rom Table
		( {8{cid0_en}} & 8'h0D ) | // CID0 : Rom Table
		( {8{pid7_en}} & 8'h00 ) | // PID7 : RESERVED
		( {8{pid6_en}} & 8'h00 ) | // PID6 : RESERVED
		( {8{pid5_en}} & 8'h00 ) | // PID5 : RESERVED

		( {8{pid4_en}} & { {4{1'b0}}, jepcontinuation[3:0] } ) |
		( {8{pid3_en}} & { revand[3:0], {4{1'b0}} } ) |
		( {8{pid2_en}} & { revision[3:0], 1'b1, jepid[6:4] } ) |
		( {8{pid1_en}} & { jepid[3:0], partnumber[11:8] } ) |
		( {8{pid0_en}} & partnumber[7:0] )
		);


   //
   // Assign Read Data. Default value of 32'h00000000
   // corresponds to the End Of Table marker.
   //
   
   assign     rdata[31:0] = 
	      ( (                       { {24{1'b0}}, ids[7:0] } ) |
		// SYSTEM ACCESS : (formerly MEMTYPE)  - System memory is accessible by this AP
		( {32{systemaccess_en}} & 32'h00000001 ) |
		// Pointer to the next CoreSight Component - 32bit format, Present
		( {32{entryzero_en}} & { entryzero[31:12], {10{1'b0}}, 2'b11 }  )
		);

endmodule
