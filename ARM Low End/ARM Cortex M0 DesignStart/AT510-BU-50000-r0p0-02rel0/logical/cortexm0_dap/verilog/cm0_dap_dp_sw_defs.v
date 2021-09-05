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
localparam [31:0] SW_DPIDR_REG_VAL = 32'h0BB11477;

//SW State Machine Defs
//These encodings must not be changed
// - 7 Bit Encodings
localparam [6:0] SW_7_START       = 7'b0000011;
localparam [6:0] SW_7_APnDP       = 7'b0000100;
localparam [6:0] SW_7_RnW         = 7'b0000101;
localparam [6:0] SW_7_A0          = 7'b0000110;
localparam [6:0] SW_7_A1          = 7'b0000111;
localparam [6:0] SW_7_PARITY      = 7'b0001000;
localparam [6:0] SW_7_STOP        = 7'b0001001;
localparam [6:0] SW_7_PARK        = 7'b0001010;
localparam [6:0] SW_7_ACK0        = 7'b0001011;
localparam [6:0] SW_7_ACK1        = 7'b0001100;
localparam [6:0] SW_7_ACK2        = 7'b0001101;
localparam [6:0] SW_7_ACKTRN0     = 7'b0001110;
localparam [6:0] SW_7_ACKTRN1     = 7'b0001111;
localparam [6:0] SW_7_DATA0       = 7'b0100000;
localparam [6:0] SW_7_DATA1       = 7'b0100001;
localparam [6:0] SW_7_DATA2       = 7'b0100010;
localparam [6:0] SW_7_DATA3       = 7'b0100011;
localparam [6:0] SW_7_DATA4       = 7'b0100100;
localparam [6:0] SW_7_DATA5       = 7'b0100101;
localparam [6:0] SW_7_DATA6       = 7'b0100110;
localparam [6:0] SW_7_DATA7       = 7'b0100111;
localparam [6:0] SW_7_DATA8       = 7'b0101000;
localparam [6:0] SW_7_DATA9       = 7'b0101001;
localparam [6:0] SW_7_DATA10      = 7'b0101010;
localparam [6:0] SW_7_DATA11      = 7'b0101011;
localparam [6:0] SW_7_DATA12      = 7'b0101100;
localparam [6:0] SW_7_DATA13      = 7'b0101101;
localparam [6:0] SW_7_DATA14      = 7'b0101110;
localparam [6:0] SW_7_DATA15      = 7'b0101111;
localparam [6:0] SW_7_DATA16      = 7'b0110000;
localparam [6:0] SW_7_DATA17      = 7'b0110001;
localparam [6:0] SW_7_DATA18      = 7'b0110010;
localparam [6:0] SW_7_DATA19      = 7'b0110011;
localparam [6:0] SW_7_DATA20      = 7'b0110100;
localparam [6:0] SW_7_DATA21      = 7'b0110101;
localparam [6:0] SW_7_DATA22      = 7'b0110110;
localparam [6:0] SW_7_DATA23      = 7'b0110111;
localparam [6:0] SW_7_DATA24      = 7'b0111000;
localparam [6:0] SW_7_DATA25      = 7'b0111001;
localparam [6:0] SW_7_DATA26      = 7'b0111010;
localparam [6:0] SW_7_DATA27      = 7'b0111011;
localparam [6:0] SW_7_DATA28      = 7'b0111100;
localparam [6:0] SW_7_DATA29      = 7'b0111101;
localparam [6:0] SW_7_DATA30      = 7'b0111110;
localparam [6:0] SW_7_DATA31      = 7'b0111111;
localparam [6:0] SW_7_DATAPARITY  = 7'b0000000;
localparam [6:0] SW_7_ENDTRN0     = 7'b0000001;
localparam [6:0] SW_7_ENDTRN1     = 7'b0000010;
localparam [6:0] SW_7_RST_0       = 7'b1000000;
localparam [6:0] SW_7_RST_1       = 7'b1000001;
localparam [6:0] SW_7_RST_2       = 7'b1000010;
localparam [6:0] SW_7_RST_3       = 7'b1000011;
localparam [6:0] SW_7_RST_4       = 7'b1000100;
localparam [6:0] SW_7_RST_5       = 7'b1000101;
localparam [6:0] SW_7_RST_6       = 7'b1000110;
localparam [6:0] SW_7_RST_7       = 7'b1000111;
localparam [6:0] SW_7_RST_8       = 7'b1001000;
localparam [6:0] SW_7_RST_9       = 7'b1001001;
localparam [6:0] SW_7_RST_10      = 7'b1001010;
localparam [6:0] SW_7_RST_11      = 7'b1001011;
localparam [6:0] SW_7_RST_12      = 7'b1001100;
localparam [6:0] SW_7_RST_13      = 7'b1001101;
localparam [6:0] SW_7_RST_14      = 7'b1001110;
localparam [6:0] SW_7_RST_15      = 7'b1001111;
localparam [6:0] SW_7_RST_16      = 7'b1010000;
localparam [6:0] SW_7_RST_17      = 7'b1010001;
localparam [6:0] SW_7_RST_18      = 7'b1010010;
localparam [6:0] SW_7_RST_19      = 7'b1010011;
localparam [6:0] SW_7_RST_20      = 7'b1010100;
localparam [6:0] SW_7_RST_21      = 7'b1010101;
localparam [6:0] SW_7_RST_22      = 7'b1010110;
localparam [6:0] SW_7_RST_23      = 7'b1010111;
localparam [6:0] SW_7_RST_24      = 7'b1011000;
localparam [6:0] SW_7_RST_25      = 7'b1011001;
localparam [6:0] SW_7_RST_26      = 7'b1011010;
localparam [6:0] SW_7_RST_27      = 7'b1011011;
localparam [6:0] SW_7_RST_28      = 7'b1011100;
localparam [6:0] SW_7_RST_29      = 7'b1011101;
localparam [6:0] SW_7_RST_30      = 7'b1011110;
localparam [6:0] SW_7_RST_31      = 7'b1011111;
localparam [6:0] SW_7_RST_32      = 7'b1100000;
localparam [6:0] SW_7_RST_33      = 7'b1100001;
localparam [6:0] SW_7_RST_34      = 7'b1100010;
localparam [6:0] SW_7_RST_35      = 7'b1100011;
localparam [6:0] SW_7_RST_36      = 7'b1100100;
localparam [6:0] SW_7_RST_37      = 7'b1100101;
localparam [6:0] SW_7_RST_38      = 7'b1100110;
localparam [6:0] SW_7_RST_39      = 7'b1100111;
localparam [6:0] SW_7_RST_40      = 7'b1101000;
localparam [6:0] SW_7_RST_41      = 7'b1101001;
localparam [6:0] SW_7_RST_42      = 7'b1101010;
localparam [6:0] SW_7_RST_43      = 7'b1101011;
localparam [6:0] SW_7_RST_44      = 7'b1101100;
localparam [6:0] SW_7_RST_45      = 7'b1101101;
localparam [6:0] SW_7_RST_46      = 7'b1101110;
localparam [6:0] SW_7_RST_47      = 7'b1101111;
localparam [6:0] SW_7_RST_48      = 7'b1110000;
localparam [6:0] SW_7_RST_49      = 7'b1110001;
localparam [6:0] SW_7_RST_50      = 7'b1110010;
localparam [6:0] SW_7_RST_START   = 7'b0010010;
localparam [6:0] SW_7_RST_APnDP   = 7'b0010011;
localparam [6:0] SW_7_RST_RnW     = 7'b0010100;
localparam [6:0] SW_7_RST_A0      = 7'b0010101;
localparam [6:0] SW_7_RST_A1      = 7'b0010110;
localparam [6:0] SW_7_ACK0_NODAT  = 7'b0011011;
localparam [6:0] SW_7_ACK1_NODAT  = 7'b0011100;
localparam [6:0] SW_7_ACK2_NODAT  = 7'b0011101;

//Mask to optimise check for ACK states with or without data phase
localparam [6:0] SW_7_ACK_MASK    = 7'b1101111;

// - 5 Bit Encodings
localparam [4:0] SW_5_START       = 5'b00011;
localparam [4:0] SW_5_APnDP       = 5'b00100;
localparam [4:0] SW_5_RnW         = 5'b00101;
localparam [4:0] SW_5_A0          = 5'b00110;
localparam [4:0] SW_5_A1          = 5'b00111;
localparam [4:0] SW_5_PARITY      = 5'b01000;
localparam [4:0] SW_5_STOP        = 5'b01001;
localparam [4:0] SW_5_PARK        = 5'b01010;
localparam [4:0] SW_5_ACK0        = 5'b01011;
localparam [4:0] SW_5_ACK1        = 5'b01100;
localparam [4:0] SW_5_ACK2        = 5'b01101;
localparam [4:0] SW_5_ACKTRN0     = 5'b01110;
localparam [4:0] SW_5_ACKTRN1     = 5'b01111;
localparam [4:0] SW_5_DATAPARITY  = 5'b00000;
localparam [4:0] SW_5_ENDTRN0     = 5'b00001;
localparam [4:0] SW_5_ENDTRN1     = 5'b00010;
localparam [4:0] SW_5_RST_START   = 5'b10010;
localparam [4:0] SW_5_RST_APnDP   = 5'b10011;
localparam [4:0] SW_5_RST_RnW     = 5'b10100;
localparam [4:0] SW_5_RST_A0      = 5'b10101;
localparam [4:0] SW_5_RST_A1      = 5'b10110;
localparam [4:0] SW_5_ACK0_NODAT  = 5'b11011;
localparam [4:0] SW_5_ACK1_NODAT  = 5'b11100;
localparam [4:0] SW_5_ACK2_NODAT  = 5'b11101;
localparam [4:0] SW_5_UNUSED1     = 5'b10000;
localparam [4:0] SW_5_UNUSED2     = 5'b10001;
localparam [4:0] SW_5_UNUSED3     = 5'b10111;
localparam [4:0] SW_5_UNUSED4     = 5'b11000;
localparam [4:0] SW_5_UNUSED5     = 5'b11001;
localparam [4:0] SW_5_UNUSED6     = 5'b11010;
localparam [4:0] SW_5_UNUSED7     = 5'b11110;
localparam [4:0] SW_5_UNUSED8     = 5'b11111;

//Register Addresses
localparam [1:0] SW_REGADDR_DPIDR    = 2'b00;
localparam [1:0] SW_REGADDR_ABORT    = 2'b00;
localparam [1:0] SW_REGADDR_CTRLSTAT = 2'b01;
localparam [1:0] SW_REGADDR_DLCR     = 2'b01;
localparam [1:0] SW_REGADDR_RESEND   = 2'b10;
localparam [1:0] SW_REGADDR_SELECT   = 2'b10;
localparam [1:0] SW_REGADDR_RDBUFF   = 2'b11;
