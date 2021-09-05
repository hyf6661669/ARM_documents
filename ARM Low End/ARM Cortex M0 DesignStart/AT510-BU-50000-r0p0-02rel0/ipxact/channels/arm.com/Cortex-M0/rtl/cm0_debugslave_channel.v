//-----------------------------------------------------------------------------
// The confidential and proprietary information contained in this file may
// only be used by a person authorised under and to the extent permitted
// by a subsisting licensing agreement from ARM limited.
//
//            (C) COPYRIGHT 2008-2009 ARM limited.
//                ALL RIGHTS RESERVED
//
// This entire notice must be reproduced on all copies of this file
// and copies of this file may only be made by a person if such person is
// permitted to do so under the terms of a subsisting license agreement
// from ARM limited.
//
//      SVN Information
//
//      Checked In          : $Date: 2009-03-04 11:14:32 +0000 (Wed, 04 Mar 2009) $
//
//      Revision            : $Revision: 102714 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------
// Purpose :
//     Provides the connection necessary for the debug slave channel in IP-XACT
//     systems.  The channel simply connects a single master to a single slave
//     and distributes a clock and reset, which are part of a system interface,
//     to both the master and slave interfaces.
//-----------------------------------------------------------------------------

module cm0_debugslave_channel (/*AUTOARG*/
  // Outputs
  DCLKMM, DCLKMS, DBGRESETnMM, DBGRESETnMS, SLVRDATAMM, SLVREADYMM, 
  SLVRESPMM, SLVTRANSMS, SLVSIZEMS, SLVWRITEMS, SLVADDRMS, 
  SLVWDATAMS,-
  // Inputs
  DCLKMSYS, DBGRESETnMSYS, SLVRDATAMS, SLVREADYMS, SLVRESPMS, 
  SLVTRANSMM, SLVSIZEMM, SLVWRITEMM, SLVADDRMM, SLVWDATAMM
  );

// ----------------------------------------------------------------------------
// Port Declaration
// ----------------------------------------------------------------------------
  // Clocks
  input           DCLKMSYS;         // Debug Clock - Mirrored System
  output          DCLKMM;           // Debug Clock - Mirrored Master
  output          DCLKMS;           // Debug Clock - Mirrored Slave

  // Resets
  input           DBGRESETnMSYS;    // Debug Reset - Mirrored System
  output          DBGRESETnMM;      // Debug Reset - Mirrored Master
  output          DBGRESETnMS;      // Debug Reset - Mirrored Slave

  // Mirrored Master Interface (connects to DAP)
  input   [1:0]   SLVTRANSMM;       // DS Transfer Type
  input   [1:0]   SLVSIZEMM;        // DS Transfer Size
  input           SLVWRITEMM;       // DS Write Enable
  input   [31:0]  SLVADDRMM;        // DS Address
  input   [31:0]  SLVWDATAMM;       // DS Write Data
  output  [31:0]  SLVRDATAMM;       // DS Read Data
  output          SLVREADYMM;       // DS Ready
  output          SLVRESPMM;        // DS Error/OK Response

  // Mirrored Slave Interface (connects to core)
  output  [1:0]   SLVTRANSMS;       // DS Transfer Type
  output  [1:0]   SLVSIZEMS;        // DS Transfer Size
  output          SLVWRITEMS;       // DS Write Enable
  output  [31:0]  SLVADDRMS;        // DS Address
  output  [31:0]  SLVWDATAMS;       // DS Write Data
  input   [31:0]  SLVRDATAMS;       // DS Read Data
  input           SLVREADYMS;       // DS Ready
  input           SLVRESPMS;        // DS Error/OK Response

//-----------------------------------------------------------------------------
// Signal declaration
//-----------------------------------------------------------------------------

  // Clocks
  wire            DCLKMSYS;         // Debug Clock - System
  wire            DCLKMM;           // Debug Clock - Mirrored Master
  wire            DCLKMS;           // Debug Clock - Mirrored Slave

  // Resets
  wire            DBGRESETnMSYS;    // Debug Reset - System
  wire            DBGRESETnMM;      // Debug Reset - Mirrored Master
  wire            DBGRESETnMS;      // Debug Reset - Mirrored Slave

  // Mirrored Master Interface (to DAP)
  wire  [31:0]    SLVRDATAMM;       // DS Read Data
  wire            SLVREADYMM;       // DS Ready
  wire            SLVRESPMM;        // DS Error/OK Response
  wire  [1:0]     SLVTRANSMM;       // DS Transfer Type
  wire  [2:0]     SLVSIZEMM;        // DS Transfer Size
  wire            SLVWRITEMM;       // DS Write Enable
  wire  [31:0]    SLVADDRMM;        // DS Address
  wire  [31:0]    SLVWDATAMM;       // DS Write Data

  // Mirrored Slave Interface (to Cortex-M0 Core)
  wire  [31:0]    SLVRDATAMS;       // DS Read Data
  wire            SLVREADYMS;       // DS Ready
  wire            SLVRESPMS;        // DS Error/OK Response
  wire  [1:0]     SLVTRANSMS;       // DS Transfer Type
  wire  [2:0]     SLVSIZEMS;        // DS Transfer Size
  wire            SLVWRITEMS;       // DS Write Enable
  wire  [31:0]    SLVADDRMS;        // DS Address
  wire  [31:0]    SLVWDATAMS;       // DS Write Data

//-----------------------------------------------------------------------------
// Main Code Body
// ----------------------------------------------------------------------------

  // The Mirrored Master and Mirrored Slave interfaces are directly connected.
  // The Mirrored System interface distributes the clock and reset through the
  // Mirrored Master and Mirrored Slave interfaces.

  // Clocks
  assign DCLKMM = DCLKMSYS;
  assign DCLKMS = DCLKMSYS;

  // Resets
  assign DBGRESETnMM = DBGRESETnMSYS;
  assign DBGRESETnMS = DBGRESETnMSYS;

  // Mirrored Slave Outputs
  assign SLVTRANSMS[1:0]  = SLVTRANSMM[1:0];
  assign SLVSIZEMS[2:0]   = SLVSIZEMM[2:0];
  assign SLVWRITEMS       = SLVWRITEMM;
  assign SLVADDRMS[31:0]  = SLVADDRMM[31:0];
  assign SLVWDATAMS[31:0] = SLVWDATAMM[31:0];

  // Mirrored Master Outputs
  assign SLVRDATAMM[31:0] = SLVRDATAMS[31:0];
  assign SLVREADYMM       = SLVREADYMS;
  assign SLVRESPMM        = SLVRESPMS;

endmodule
