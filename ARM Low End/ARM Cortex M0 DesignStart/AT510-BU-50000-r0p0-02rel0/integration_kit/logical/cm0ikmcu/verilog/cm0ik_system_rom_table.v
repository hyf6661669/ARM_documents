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
//     This block implements example System level ROM Tables for Cortex-M0
//-----------------------------------------------------------------------------
//
// This example block occupies an 8kB space on the AHB bus at the address 
// specified by the BASE[31:0] parameter.
// TWO CoreSight System Level ROM tables are implemented by default,
// many systems will require only one.
//
//  BASE[31:0] + 0x2000 +--------------------------------------+ \
//                      | CID: CoreSight ROM Table             |  |
//                      |--------------------------------------|  | Customer
//                      | PID: Customer Vendor ID              |  | ROM Table
//                      |--------------------------------------|  |
//                      .                                      .  |
//                      .                                      .  | 
//                      |--------------------------------------|  |
//                      | Pointer to Silicon Vendor ROM Table  | /
//  BASE[31:0] + 0x1000 +--------------------------------------+ \
//                      | CID: CoreSight ROM Table             |  |
//                      |--------------------------------------|  | Silicon
//                      | PID: Silicon Vendor ID               |  | Vendor
//                      |--------------------------------------|  | ROM Table
//                      .                                      .  |
//                      .                                      .  |
//                      |--------------------------------------|  |
//                      | Pointer to Cortex-M0 ROM Table       | /
//  BASE[31:0]          +--------------------------------------+
//
//
//
// Single ROM Table System:
//
// A single system level ROM table allows a Silicon Vendor to uniquely identify
// their SoC to debug tools.
// The ROM table allows the Silicon Vendor to include their standard JEP106 ID
// along with partnumber and revision information to uniquely identify their SoC product.
// If a single ROM table is sufficient in your system, this example file can be simplified
// to remove the second table and to remove the muxing of HRDATA.
//
//
// Dual ROM Table System:
//
// In some scenarios, a Silicon Vendor may provide a hardened Cortex-M0 based subsystem
// to their customer, who in turn wants to be able to identify the final SoC.
// The customer ROM table in this example caters for this case.
// The content of the customer ROM table is controlled by wires, allowing both ROM tables to
// be part of the Silicon Vendor's hardened subsystem.
//
//
// Considerations:
//
// The DAP BASEADDR value must be modified to point to the address of the first
// system level ROM table:
//   - The Silicon Vendor table in a Single ROM Table system.
//       - (BASE[31:0] | 2'b11)
//   - The Customer table in a dual ROM Table system.
//       - ((BASE[31:0] + 32'h00001000) | 2'b11 )
//
// The ROM table contents must contain correct ID values. Some of these may
// need to be controlled by tie-offs if part of the system is to be hardened.
//
// To allow for late changes (e.g. metal fixes) to be identified from the ID values, the 
// *REVAND busses should be easily identifiable and modifiable.
//
// If the Dual ROM Table system is going to be supported by a hardened subsystem,
// the CUST* inputs should be able to be tied off by the customer.
// Sensible default values would be to use the Silicon Vendor JEP106 ID
// along with a default partnumber and revision (e.g. all zero) to show that the 
// customer ROM table has not been configured.
//
//-----------------------------------------------------------------------------

module cm0ik_system_rom_table
  #(parameter [31:0] BASE = 32'hF0000000)
   (
    input wire         HCLK,                // AHB clock
    input wire         HSEL,                // AHB select
    input wire [12:0]  HADDR,               // AHB address
    input wire [1:0]   HTRANS,              // AHB transfer
    input wire         HREADY,              // AHB ready
    
    input wire [6:0]   CUSTJEPID,           // Customer JEP106 ID Code
    input wire [3:0]   CUSTJEPCONTINUATION, // Customer number of JEP106 Continuation bytes
    input wire [11:0]  CUSTPARTNUMBER,      // Customer part number
    input wire [3:0]   CUSTREVISION,        // Customer part revision
    input wire [3:0]   CUSTREVAND,          // Customer part minor revision (metal fix)
    
    input wire [3:0]   SIVREVAND,           // Silicon Vendor minor part revision (metal fix)
    
    output wire [31:0] HRDATA,              // AHB read-data
    output wire        HRESP,               // AHB response
    output wire        HREADYOUT);          // AHB ready out


   // ------------------------------------------------------------
   // Local wires
   // ------------------------------------------------------------
   
   reg  [12:0] haddr_reg;
   wire [31:0] rdata_sivend;
   wire [31:0] rdata_cust;

   
   // ------------------------------------------------------------
   // AHB Interface
   // ------------------------------------------------------------  

   wire          trans_valid = HSEL & HTRANS[1] & HREADY;
   
   always @(posedge HCLK)
     if (trans_valid)
       haddr_reg <= HADDR;
   
   assign        HREADYOUT = 1'b1;
   assign        HRESP     = 1'b0;
   
   // Mux return data based on ROM table address
   assign        HRDATA = haddr_reg[12] ? rdata_cust : rdata_sivend;


   // ------------------------------------------------------------
   // ROM Tables
   // ------------------------------------------------------------  

   //
   // ROM Table Entry Calculation:
   //
   // Ref: ARM IHI0029B CoreSight Architecture Specification
   //
   // ROM table entry format:
   // [31:12] Address Offset. Base address of highest 4KB block relative to ROM address.
   // [11: 2] RESERVED, RAZ
   //     [1] Format. 1=32-bit format
   //     [0] Entry Present. Always 1.
   //
   // ComponentAddress = ROMAddress + (AddressOffset SHL 12)
   //
   // Therefore, when calculating the ROM Table Entry:
   //
   // Entry Value = ( ( ComponentAddress - ROMAddress ) | (Format | Entry Present) )
   // 
   // The "Format" and "Entry Present" bits are added within module v6m_rom_table.
   //

   // Ensure BASE address value is 4KB Aligned
   localparam [31:0] base_masked = {BASE[31:12] , 12'h000};
      
   //
   // First ROM Table - Silicon Vendor
   //
   // ROMAddress: BASE
   // Points to: 0xE00FF000 (Cortex-M0 ROM Table)
   
   localparam [31:0] siv_entryzero = (32'hE00FF000 - ( base_masked[31:0] + 32'h00000000) );

   //
   // Replace the following siv_* assignments with correct values for the SoC
   //
   localparam [6:0]  siv_jepid           = 7'h00;
   localparam [3:0]  siv_jepcontinuation = 4'h0;
   localparam [11:0] siv_partnumber      = 12'h000;
   localparam [3:0]  siv_revision        = 4'h0;
   
   cm0ik_v6m_rom_table u_v6m_rom_table_siv 
     (
      // Outputs
      .rdata            (rdata_sivend[31:0]),
      // Inputs
      .jepid            (siv_jepid[6:0]),
      .jepcontinuation  (siv_jepcontinuation[3:0]),
      .partnumber       (siv_partnumber[11:0]),
      .revision         (siv_revision[3:0]),
      .revand           (SIVREVAND[3:0]),
      .entryzero        (siv_entryzero[31:0]),
      .addr             (haddr_reg[11:0])
      );
  
  
   //
   // Second ROM Table - Customer Configurable
   //
   // ROMAddress: BASE + 0x1000
   // Points to: Silicon Vendor ROM table
   
   localparam [31:0] cust_entryzero = (base_masked[31:0] - (base_masked[31:0] + 32'h00001000) );
   
   cm0ik_v6m_rom_table u_v6m_rom_table_cust 
     (
      // Outputs
      .rdata            (rdata_cust[31:0]),
      // Inputs
      .jepid            (CUSTJEPID[6:0]),
      .jepcontinuation  (CUSTJEPCONTINUATION[3:0]),
      .partnumber       (CUSTPARTNUMBER[11:0]),
      .revision         (CUSTREVISION[3:0]),
      .revand           (CUSTREVAND[3:0]),
      .entryzero        (cust_entryzero[31:0]),
      .addr             (haddr_reg[11:0])
      );
  
endmodule
