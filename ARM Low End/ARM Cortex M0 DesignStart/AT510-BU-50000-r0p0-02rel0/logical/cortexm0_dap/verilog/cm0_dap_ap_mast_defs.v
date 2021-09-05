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
//      Checked In          : $Date: 2009-03-16 08:53:14 +0000 (Mon, 16 Mar 2009) $
//
//      Revision            : $Revision: 104129 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//Constants
localparam [31:0] AP_CFG_REG_VAL = 32'h00000000;  //Little Endian
localparam [31:0] AP_BSE_REG_VAL = 32'hE00FF003;  //ROM Table is at 0xE00FF000
                                     //Format        = 1'b1 (ADI v5)
                                     //Entry Present = 1'b1
localparam [31:0] AP_IDR_REG_VAL = 32'h04770021;  //Revision = 0x0,
                                     //JEP106   = 0x23B
                                     //Class    = 1'b1
                                     //Variant  = 0x2
                                     //Type     = 0x1 (AHB)

//State Machine Encodings
localparam [1:0] AP_IDLE = 2'b00;
localparam [1:0] AP_ADDR = 2'b01;
localparam [1:0] AP_DATA = 2'b10;
localparam [1:0] AP_DONE = 2'b11;

//AP Registers
localparam [3:0] AP_REGADDR_CSW = 4'b0000;  //0x00
localparam [3:0] AP_REGADDR_TAR = 4'b0001;  //0x04
localparam [3:0] AP_REGADDR_DRW = 4'b0011;  //0x0C
localparam [3:0] AP_REGADDR_BD0 = 4'b0100;  //0x10
localparam [3:0] AP_REGADDR_BD1 = 4'b0101;  //0x14
localparam [3:0] AP_REGADDR_BD2 = 4'b0110;  //0x18
localparam [3:0] AP_REGADDR_BD3 = 4'b0111;  //0x1C
localparam [3:0] AP_REGADDR_CFG = 4'b1101;  //0xF4
localparam [3:0] AP_REGADDR_BSE = 4'b1110;  //0xF8
localparam [3:0] AP_REGADDR_IDR = 4'b1111;  //0xFC
//Reserved Addresses
localparam [3:0] AP_REGADDR_RSVD1 = 4'b0010;
localparam [3:0] AP_REGADDR_RSVD2 = 4'b1000;
localparam [3:0] AP_REGADDR_RSVD3 = 4'b1001;
localparam [3:0] AP_REGADDR_RSVD4 = 4'b1010;
localparam [3:0] AP_REGADDR_RSVD5 = 4'b1011;
localparam [3:0] AP_REGADDR_RSVD6 = 4'b1100;

//Size Values
localparam [1:0] AP_SIZE_BYTE      = 2'b00;
localparam [1:0] AP_SIZE_HWORD     = 2'b01;
localparam [1:0] AP_SIZE_WORD      = 2'b10;
localparam [1:0] AP_SIZE_RESERVED  = 2'b11;
