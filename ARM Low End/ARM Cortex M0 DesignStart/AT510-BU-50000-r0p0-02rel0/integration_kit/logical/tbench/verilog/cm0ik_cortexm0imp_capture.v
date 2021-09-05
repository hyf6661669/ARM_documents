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
//      Checked In          : $Date: 2008-12-04 12:22:21 +0000 (Thu, 04 Dec 2008) $
//
//      Revision            : $Revision: 95812 $
//
//      Release Information : Cortex-M0-AT510-r0p0-01rel0
//-----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Cortex-M0 Implementation level Vector Capture Testbench
// ----------------------------------------------------------------------------
//
// This block generates vectors by snooping on pins at the Cortex-M0
// Implementation level. The vectors are written to the file
// CORTEXM0IMP_vectors.crf
// ----------------------------------------------------------------------------

module cm0ik_cortexm0imp_capture (SCLK, HCLK, DCLK, DBGRESETn, HRESETn, HRDATA, HREADY, HRESP, SLVADDR, SLVSIZE, SLVTRANS, SLVWDATA, SLVWRITE, DBGRESTART, EDBGRQ, NMI, IRQ, RXEV, STCALIB, STCLKEN, IRQLATENCY, ECOREVNUM, SLEEPHOLDREQn, WICDSREQn, SE, SYSRETAINn, SYSISOLATEn, SYSPWRDOWN, DBGISOLATEn, DBGPWRDOWN, HADDR, HBURST, HMASTLOCK, HPROT, HSIZE, HTRANS, HWDATA, HWRITE, HMASTER, SLVRDATA, SLVREADY, SLVRESP, DBGRESTARTED, HALTED, TXEV, LOCKUP, SYSRESETREQ, CODENSEQ, CODEHINTDE, SPECHTRANS, SLEEPING, SLEEPDEEP, SLEEPHOLDACKn, WICDSACKn, WICMASKISR, WICMASKNMI, WICMASKRXEV, WICLOAD, WICCLEAR, SYSPWRDOWNACK, DBGPWRDOWNACK);
input SCLK;
input HCLK;
input DCLK;
input DBGRESETn;
input HRESETn;
input [31:0] HRDATA;
input HREADY;
input HRESP;
input [31:0] SLVADDR;
input [1:0] SLVSIZE;
input [1:0] SLVTRANS;
input [31:0] SLVWDATA;
input SLVWRITE;
input DBGRESTART;
input EDBGRQ;
input NMI;
input [31:0] IRQ;
input RXEV;
input [25:0] STCALIB;
input STCLKEN;
input [7:0] IRQLATENCY;
input [19:0] ECOREVNUM;
input SLEEPHOLDREQn;
input WICDSREQn;
input SE;
input SYSRETAINn;
input SYSISOLATEn;
input SYSPWRDOWN;
input DBGISOLATEn;
input DBGPWRDOWN;
input [31:0] HADDR;
input [2:0] HBURST;
input HMASTLOCK;
input [3:0] HPROT;
input [2:0] HSIZE;
input [1:0] HTRANS;
input [31:0] HWDATA;
input HWRITE;
input HMASTER;
input [31:0] SLVRDATA;
input SLVREADY;
input SLVRESP;
input DBGRESTARTED;
input HALTED;
input TXEV;
input LOCKUP;
input SYSRESETREQ;
input CODENSEQ;
input [2:0] CODEHINTDE;
input SPECHTRANS;
input SLEEPING;
input SLEEPDEEP;
input SLEEPHOLDACKn;
input WICDSACKn;
input [31:0] WICMASKISR;
input WICMASKNMI;
input WICMASKRXEV;
input WICLOAD;
input WICCLEAR;
input SYSPWRDOWNACK;
input DBGPWRDOWNACK;
`ifndef ARM_CM0IK_SKIPVECNUM
`define ARM_CM0IK_SKIPVECNUM 0
`endif // ARM_CM0IK_SKIPVECNUM
`ifdef ARM_CM0IK_XVAL
`define ARM_CM0IK_XVALUE "L"
`else
`define ARM_CM0IK_XVALUE "H"
`endif // ARM_CM0IK_XVAL
reg  vSCLK;
reg  vHCLK;
reg  vDCLK;
reg  vDBGRESETn;
reg  vHRESETn;
reg [31:0] vHRDATA__31_0;
reg  vHREADY;
reg  vHRESP;
reg [31:0] vSLVADDR__31_0;
reg [1:0] vSLVSIZE__1_0;
reg [1:0] vSLVTRANS__1_0;
reg [31:0] vSLVWDATA__31_0;
reg  vSLVWRITE;
reg  vDBGRESTART;
reg  vEDBGRQ;
reg  vNMI;
reg [31:0] vIRQ__31_0;
reg  vRXEV;
reg [25:0] vSTCALIB__25_0;
reg  vSTCLKEN;
reg [7:0] vIRQLATENCY__7_0;
reg [19:0] vECOREVNUM__19_0;
reg  vSLEEPHOLDREQn;
reg  vWICDSREQn;
reg  vSE;
reg  vSYSRETAINn;
reg  vSYSISOLATEn;
reg  vSYSPWRDOWN;
reg  vDBGISOLATEn;
reg  vDBGPWRDOWN;
reg [31:0] vHADDR__31_0;
reg [2:0] vHBURST__2_0;
reg  vHMASTLOCK;
reg [3:0] vHPROT__3_0;
reg [2:0] vHSIZE__2_0;
reg [1:0] vHTRANS__1_0;
reg [31:0] vHWDATA__31_0;
reg  vHWRITE;
reg  vHMASTER;
reg [31:0] vSLVRDATA__31_0;
reg  vSLVREADY;
reg  vSLVRESP;
reg  vDBGRESTARTED;
reg  vHALTED;
reg  vTXEV;
reg  vLOCKUP;
reg  vSYSRESETREQ;
reg  vCODENSEQ;
reg [2:0] vCODEHINTDE__2_0;
reg  vSPECHTRANS;
reg  vSLEEPING;
reg  vSLEEPDEEP;
reg  vSLEEPHOLDACKn;
reg  vWICDSACKn;
reg [31:0] vWICMASKISR__31_0;
reg  vWICMASKNMI;
reg  vWICMASKRXEV;
reg  vWICLOAD;
reg  vWICCLEAR;
reg  vSYSPWRDOWNACK;
initial
begin
    vSCLK = 1'b0;
    vHCLK = 1'b0;
    vDCLK = 1'b0;
end
reg  vDBGPWRDOWNACK;
integer __firstvector;
integer skip_output;
initial __firstvector = 1;
initial skip_output = `ARM_CM0IK_SKIPVECNUM;
time __capturetime;

task write_output;
begin
 if (__firstvector)
   __firstvector = __firstvector-1;
 else
 begin
   output_crf;
   if (skip_output > 0)
     skip_output = skip_output - 1;
 end
 __capturetime = $time;
end
endtask

// rising SCLK
always @(posedge tbench.u_mcu.mcu_fclk)
begin
 vDBGRESETn = DBGRESETn;
 vHRESETn = HRESETn;
 vHRDATA__31_0 = HRDATA[31:0];
 vHREADY = HREADY;
 vHRESP = HRESP;
 vSLVADDR__31_0 = SLVADDR[31:0];
 vSLVSIZE__1_0 = SLVSIZE[1:0];
 vSLVTRANS__1_0 = SLVTRANS[1:0];
 vSLVWDATA__31_0 = SLVWDATA[31:0];
 vSLVWRITE = SLVWRITE;
 vDBGRESTART = DBGRESTART;
 vEDBGRQ = EDBGRQ;
 vNMI = NMI;
 vIRQ__31_0 = IRQ[31:0];
 vRXEV = RXEV;
 vSTCALIB__25_0 = STCALIB[25:0];
 vSTCLKEN = STCLKEN;
 vIRQLATENCY__7_0 = IRQLATENCY[7:0];
 vECOREVNUM__19_0 = ECOREVNUM[19:0];
 vSLEEPHOLDREQn = SLEEPHOLDREQn;
 vWICDSREQn = WICDSREQn;
 vSE = SE;
 vSYSRETAINn = SYSRETAINn;
 vSYSISOLATEn = SYSISOLATEn;
 vSYSPWRDOWN = SYSPWRDOWN;
 vDBGISOLATEn = DBGISOLATEn;
 vDBGPWRDOWN = DBGPWRDOWN;
 vHADDR__31_0 = HADDR[31:0];
 vHBURST__2_0 = HBURST[2:0];
 vHMASTLOCK = HMASTLOCK;
 vHPROT__3_0 = HPROT[3:0];
 vHSIZE__2_0 = HSIZE[2:0];
 vHTRANS__1_0 = HTRANS[1:0];
 vHWDATA__31_0 = HWDATA[31:0];
 vHWRITE = HWRITE;
 vHMASTER = HMASTER;
 vSLVRDATA__31_0 = SLVRDATA[31:0];
 vSLVREADY = SLVREADY;
 vSLVRESP = SLVRESP;
 vDBGRESTARTED = DBGRESTARTED;
 vHALTED = HALTED;
 vTXEV = TXEV;
 vLOCKUP = LOCKUP;
 vSYSRESETREQ = SYSRESETREQ;
 vCODENSEQ = CODENSEQ;
 vCODEHINTDE__2_0 = CODEHINTDE[2:0];
 vSPECHTRANS = SPECHTRANS;
 vSLEEPING = SLEEPING;
 vSLEEPDEEP = SLEEPDEEP;
 vSLEEPHOLDACKn = SLEEPHOLDACKn;
 vWICDSACKn = WICDSACKn;
 vWICMASKISR__31_0 = WICMASKISR[31:0];
 vWICMASKNMI = WICMASKNMI;
 vWICMASKRXEV = WICMASKRXEV;
 vWICLOAD = WICLOAD;
 vWICCLEAR = WICCLEAR;
 vSYSPWRDOWNACK = SYSPWRDOWNACK;
 vDBGPWRDOWNACK = DBGPWRDOWNACK;
 write_output;
 #1;
 vSCLK = SCLK;
 vHCLK = HCLK;
 vDCLK = DCLK;
end

function __safedirection;
input directionsig;
begin
  if (directionsig === 1'bx)
    __safedirection = 1'b1;
  else
    __safedirection = directionsig;
end
endfunction

// CRF output
function [7:0] __B;
input direction;
input outvalue;
input invalue;
begin
   if (direction === 1'b1)
     __B=__O(outvalue);
   else if (direction === 1'b0)
     __B=__I(invalue);
   else
     __B=".";
end
endfunction

function [7:0] __I;
input StrobeValue;
begin
   if (StrobeValue === 1'bz)
     __I="u";
   else if (StrobeValue === 1'bx)
     __I=`ARM_CM0IK_XVALUE;
   else if (StrobeValue === 1'b0)
     __I="L";
   else if (StrobeValue === 1'b1)
     __I="H";
   else
     __I="?";
end
endfunction

function [7:0] __O;
input OutSignal;
begin
   if (skip_output > 0)
     __O=".";
   else if (OutSignal === 1'bz)
     __O="z";
   else if (OutSignal === 1'bx)
     __O=".";
   else if (OutSignal === 1'b0)
     __O="0";
   else if (OutSignal === 1'b1)
     __O="1";
   else
     __O="?";
end
endfunction

integer CrfHandle;
initial begin
 CrfHandle = $fopen("CORTEXM0IMP_vectors.crf");
 $display("%m: Writing crf to CORTEXM0IMP_vectors.crf");
 $fdisplay(CrfHandle, "#CTRM: CYCLE: FCLK (/) PRD(1000)");
 $fdisplay(CrfHandle, "#CTRM: INPUTS:");
 $fdisplay(CrfHandle, "#CTRM: SCLK <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: HCLK <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: DCLK <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: DBGRESETn <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: HRESETn <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: HRDATA[31:0] <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: HREADY <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: HRESP <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SLVADDR[31:0] <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SLVSIZE[1:0] <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SLVTRANS[1:0] <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SLVWDATA[31:0] <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SLVWRITE <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: DBGRESTART <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: EDBGRQ <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: NMI <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: IRQ[31:0] <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: RXEV <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: STCALIB[25:0] <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: STCLKEN <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: IRQLATENCY[7:0] <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: ECOREVNUM[19:0] <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SLEEPHOLDREQn <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: WICDSREQn <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SE <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SYSRETAINn <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SYSISOLATEn <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: SYSPWRDOWN <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: DBGISOLATEn <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: DBGPWRDOWN <I> FCLK (/) NRZ(250)");
 $fdisplay(CrfHandle, "#CTRM: BIDIRECTIONALS:");
 $fdisplay(CrfHandle, "#CTRM: OUTPUTS:");
 $fdisplay(CrfHandle, "#CTRM: HADDR[31:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HBURST[2:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HMASTLOCK <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HPROT[3:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HSIZE[2:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HTRANS[1:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HWDATA[31:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HWRITE <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HMASTER <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SLVRDATA[31:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SLVREADY <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SLVRESP <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: DBGRESTARTED <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HALTED <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: TXEV <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: LOCKUP <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SYSRESETREQ <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: CODENSEQ <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: CODEHINTDE[2:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SPECHTRANS <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SLEEPING <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SLEEPDEEP <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SLEEPHOLDACKn <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: WICDSACKn <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: WICMASKISR[31:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: WICMASKNMI <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: WICMASKRXEV <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: WICLOAD <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: WICCLEAR <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SYSPWRDOWNACK <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: DBGPWRDOWNACK <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
 $fdisplay(CrfHandle, "                                                                                                                                                                                                                             S               |                                                                                                                                                    S                                            S D ");
 $fdisplay(CrfHandle, "                                                                                                                                                                                                                             L               |                                                                                                                              D                     L                                            Y B ");
 $fdisplay(CrfHandle, "                                                                                                                                                                                                                             E       S   D   |                                                                                                                              B       S             E                                      W     S G ");
 $fdisplay(CrfHandle, "                                                                                                                         D                                                                            I                      E     S Y S B D |                                                                                                                              G       Y     C S     E                                  W W I     P P ");
 $fdisplay(CrfHandle, "      D                                                                                                                  B                                                                            R                    E P W   Y S Y G B |                                      H                                                                                       R       S     O P   S P W                                I I C     W W ");
 $fdisplay(CrfHandle, "      B                                                                             S                                S S G                                                                            Q                    C H I   S I S I G |                                      M                                                                                 S S   E       R C   D E S L H I                                C C M   W R R ");
 $fdisplay(CrfHandle, "      G H                                                                     S  S  L                                L L R                                                                 S S        L                    O O C   R S P S P |                                      A                                                H                                L L S S       E O   E C L E O C                                M M A W I D D ");
 $fdisplay(CrfHandle, "      R R                                H H                                  L  L  V                                V V E E                                                               T T        A                    R L D   E O W O W |                                    H S           H                                H H M                                V V L T H   L S D   H H E E L D                                A A S I C O O ");
 $fdisplay(CrfHandle, "      E E                                R R H                                V  V  T                                W W S D                                                               C C        T                    E D S   T L R L R |                                H   B T    H   H  T                                W W A                                R R V A A   O E E   I T E P D S                                S S K C C W W ");
 $fdisplay(CrfHandle, "S H D S S                                D E R                                A  S  R                                D R T B                                    R                          A L        E                    V R R   A A D A D |                                A   U L    P   S  R                                D R S                                D E R R L T C T N   N R P D A A                                K K R L L N N ");
 $fdisplay(CrfHandle, "C C C E E                                A A E                                D  I  A                                A I A G N                                I X                          L K        N                    N E E   I T O T O |                                D   R O    R   I  A                                A I T                                A A E T T X K R S   T A I E C C                                I N X O E A A ");
 $fdisplay(CrfHandle, "L L L T T                                T D S                                D  Z  N                                T T R R M                                R E                          I E        C                    U Q Q S N E W E W |                                D   S C    O   Z  N                                T T E                                T D S E E E U E E   D N N E K K                                S M E A A C C ");
 $fdisplay(CrfHandle, "K K K n n                                A Y P                                R  E  S                                A E T Q I                                Q V                          B N        Y                    M n n E n n N n N |                                R   T K    T   E  S                                A E R                                A Y P D D V P Q Q   E S G P n n                                R I V D R K K ");
 $fdisplay(CrfHandle, "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
 $fdisplay(CrfHandle, "          3322222222221111111111               3322222222221111111111                 3322222222221111111111                   3322222222221111111111             2222221111111111                      1111111111                           | 3322222222221111111111                             3322222222221111111111               3322222222221111111111                                         3322222222221111111111                       ");
 $fdisplay(CrfHandle, "          10987654321098765432109876543210     10987654321098765432109876543210 10 10 10987654321098765432109876543210         10987654321098765432109876543210   54321098765432109876543210   76543210 98765432109876543210                 | 10987654321098765432109876543210 210   3210 210 10 10987654321098765432109876543210     10987654321098765432109876543210                 210           10987654321098765432109876543210             ");
 $fdisplay(CrfHandle, "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
end

task output_crf;
begin
 $fdisplay(CrfHandle, "%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s | %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s } %t", 
  __I(vSCLK),
  __I(vHCLK),
  __I(vDCLK),
  __I(vDBGRESETn),
  __I(vHRESETn),{
  __I(vHRDATA__31_0[31]),
  __I(vHRDATA__31_0[30]),
  __I(vHRDATA__31_0[29]),
  __I(vHRDATA__31_0[28]),
  __I(vHRDATA__31_0[27]),
  __I(vHRDATA__31_0[26]),
  __I(vHRDATA__31_0[25]),
  __I(vHRDATA__31_0[24]),
  __I(vHRDATA__31_0[23]),
  __I(vHRDATA__31_0[22]),
  __I(vHRDATA__31_0[21]),
  __I(vHRDATA__31_0[20]),
  __I(vHRDATA__31_0[19]),
  __I(vHRDATA__31_0[18]),
  __I(vHRDATA__31_0[17]),
  __I(vHRDATA__31_0[16]),
  __I(vHRDATA__31_0[15]),
  __I(vHRDATA__31_0[14]),
  __I(vHRDATA__31_0[13]),
  __I(vHRDATA__31_0[12]),
  __I(vHRDATA__31_0[11]),
  __I(vHRDATA__31_0[10]),
  __I(vHRDATA__31_0[9]),
  __I(vHRDATA__31_0[8]),
  __I(vHRDATA__31_0[7]),
  __I(vHRDATA__31_0[6]),
  __I(vHRDATA__31_0[5]),
  __I(vHRDATA__31_0[4]),
  __I(vHRDATA__31_0[3]),
  __I(vHRDATA__31_0[2]),
  __I(vHRDATA__31_0[1]),
  __I(vHRDATA__31_0[0])},
  __I(vHREADY),
  __I(vHRESP),{
  __I(vSLVADDR__31_0[31]),
  __I(vSLVADDR__31_0[30]),
  __I(vSLVADDR__31_0[29]),
  __I(vSLVADDR__31_0[28]),
  __I(vSLVADDR__31_0[27]),
  __I(vSLVADDR__31_0[26]),
  __I(vSLVADDR__31_0[25]),
  __I(vSLVADDR__31_0[24]),
  __I(vSLVADDR__31_0[23]),
  __I(vSLVADDR__31_0[22]),
  __I(vSLVADDR__31_0[21]),
  __I(vSLVADDR__31_0[20]),
  __I(vSLVADDR__31_0[19]),
  __I(vSLVADDR__31_0[18]),
  __I(vSLVADDR__31_0[17]),
  __I(vSLVADDR__31_0[16]),
  __I(vSLVADDR__31_0[15]),
  __I(vSLVADDR__31_0[14]),
  __I(vSLVADDR__31_0[13]),
  __I(vSLVADDR__31_0[12]),
  __I(vSLVADDR__31_0[11]),
  __I(vSLVADDR__31_0[10]),
  __I(vSLVADDR__31_0[9]),
  __I(vSLVADDR__31_0[8]),
  __I(vSLVADDR__31_0[7]),
  __I(vSLVADDR__31_0[6]),
  __I(vSLVADDR__31_0[5]),
  __I(vSLVADDR__31_0[4]),
  __I(vSLVADDR__31_0[3]),
  __I(vSLVADDR__31_0[2]),
  __I(vSLVADDR__31_0[1]),
  __I(vSLVADDR__31_0[0])},{
  __I(vSLVSIZE__1_0[1]),
  __I(vSLVSIZE__1_0[0])},{
  __I(vSLVTRANS__1_0[1]),
  __I(vSLVTRANS__1_0[0])},{
  __I(vSLVWDATA__31_0[31]),
  __I(vSLVWDATA__31_0[30]),
  __I(vSLVWDATA__31_0[29]),
  __I(vSLVWDATA__31_0[28]),
  __I(vSLVWDATA__31_0[27]),
  __I(vSLVWDATA__31_0[26]),
  __I(vSLVWDATA__31_0[25]),
  __I(vSLVWDATA__31_0[24]),
  __I(vSLVWDATA__31_0[23]),
  __I(vSLVWDATA__31_0[22]),
  __I(vSLVWDATA__31_0[21]),
  __I(vSLVWDATA__31_0[20]),
  __I(vSLVWDATA__31_0[19]),
  __I(vSLVWDATA__31_0[18]),
  __I(vSLVWDATA__31_0[17]),
  __I(vSLVWDATA__31_0[16]),
  __I(vSLVWDATA__31_0[15]),
  __I(vSLVWDATA__31_0[14]),
  __I(vSLVWDATA__31_0[13]),
  __I(vSLVWDATA__31_0[12]),
  __I(vSLVWDATA__31_0[11]),
  __I(vSLVWDATA__31_0[10]),
  __I(vSLVWDATA__31_0[9]),
  __I(vSLVWDATA__31_0[8]),
  __I(vSLVWDATA__31_0[7]),
  __I(vSLVWDATA__31_0[6]),
  __I(vSLVWDATA__31_0[5]),
  __I(vSLVWDATA__31_0[4]),
  __I(vSLVWDATA__31_0[3]),
  __I(vSLVWDATA__31_0[2]),
  __I(vSLVWDATA__31_0[1]),
  __I(vSLVWDATA__31_0[0])},
  __I(vSLVWRITE),
  __I(vDBGRESTART),
  __I(vEDBGRQ),
  __I(vNMI),{
  __I(vIRQ__31_0[31]),
  __I(vIRQ__31_0[30]),
  __I(vIRQ__31_0[29]),
  __I(vIRQ__31_0[28]),
  __I(vIRQ__31_0[27]),
  __I(vIRQ__31_0[26]),
  __I(vIRQ__31_0[25]),
  __I(vIRQ__31_0[24]),
  __I(vIRQ__31_0[23]),
  __I(vIRQ__31_0[22]),
  __I(vIRQ__31_0[21]),
  __I(vIRQ__31_0[20]),
  __I(vIRQ__31_0[19]),
  __I(vIRQ__31_0[18]),
  __I(vIRQ__31_0[17]),
  __I(vIRQ__31_0[16]),
  __I(vIRQ__31_0[15]),
  __I(vIRQ__31_0[14]),
  __I(vIRQ__31_0[13]),
  __I(vIRQ__31_0[12]),
  __I(vIRQ__31_0[11]),
  __I(vIRQ__31_0[10]),
  __I(vIRQ__31_0[9]),
  __I(vIRQ__31_0[8]),
  __I(vIRQ__31_0[7]),
  __I(vIRQ__31_0[6]),
  __I(vIRQ__31_0[5]),
  __I(vIRQ__31_0[4]),
  __I(vIRQ__31_0[3]),
  __I(vIRQ__31_0[2]),
  __I(vIRQ__31_0[1]),
  __I(vIRQ__31_0[0])},
  __I(vRXEV),{
  __I(vSTCALIB__25_0[25]),
  __I(vSTCALIB__25_0[24]),
  __I(vSTCALIB__25_0[23]),
  __I(vSTCALIB__25_0[22]),
  __I(vSTCALIB__25_0[21]),
  __I(vSTCALIB__25_0[20]),
  __I(vSTCALIB__25_0[19]),
  __I(vSTCALIB__25_0[18]),
  __I(vSTCALIB__25_0[17]),
  __I(vSTCALIB__25_0[16]),
  __I(vSTCALIB__25_0[15]),
  __I(vSTCALIB__25_0[14]),
  __I(vSTCALIB__25_0[13]),
  __I(vSTCALIB__25_0[12]),
  __I(vSTCALIB__25_0[11]),
  __I(vSTCALIB__25_0[10]),
  __I(vSTCALIB__25_0[9]),
  __I(vSTCALIB__25_0[8]),
  __I(vSTCALIB__25_0[7]),
  __I(vSTCALIB__25_0[6]),
  __I(vSTCALIB__25_0[5]),
  __I(vSTCALIB__25_0[4]),
  __I(vSTCALIB__25_0[3]),
  __I(vSTCALIB__25_0[2]),
  __I(vSTCALIB__25_0[1]),
  __I(vSTCALIB__25_0[0])},
  __I(vSTCLKEN),{
  __I(vIRQLATENCY__7_0[7]),
  __I(vIRQLATENCY__7_0[6]),
  __I(vIRQLATENCY__7_0[5]),
  __I(vIRQLATENCY__7_0[4]),
  __I(vIRQLATENCY__7_0[3]),
  __I(vIRQLATENCY__7_0[2]),
  __I(vIRQLATENCY__7_0[1]),
  __I(vIRQLATENCY__7_0[0])},{
  __I(vECOREVNUM__19_0[19]),
  __I(vECOREVNUM__19_0[18]),
  __I(vECOREVNUM__19_0[17]),
  __I(vECOREVNUM__19_0[16]),
  __I(vECOREVNUM__19_0[15]),
  __I(vECOREVNUM__19_0[14]),
  __I(vECOREVNUM__19_0[13]),
  __I(vECOREVNUM__19_0[12]),
  __I(vECOREVNUM__19_0[11]),
  __I(vECOREVNUM__19_0[10]),
  __I(vECOREVNUM__19_0[9]),
  __I(vECOREVNUM__19_0[8]),
  __I(vECOREVNUM__19_0[7]),
  __I(vECOREVNUM__19_0[6]),
  __I(vECOREVNUM__19_0[5]),
  __I(vECOREVNUM__19_0[4]),
  __I(vECOREVNUM__19_0[3]),
  __I(vECOREVNUM__19_0[2]),
  __I(vECOREVNUM__19_0[1]),
  __I(vECOREVNUM__19_0[0])},
  __I(vSLEEPHOLDREQn),
  __I(vWICDSREQn),
  __I(vSE),
  __I(vSYSRETAINn),
  __I(vSYSISOLATEn),
  __I(vSYSPWRDOWN),
  __I(vDBGISOLATEn),
  __I(vDBGPWRDOWN),{
  __O(vHADDR__31_0[31]),
  __O(vHADDR__31_0[30]),
  __O(vHADDR__31_0[29]),
  __O(vHADDR__31_0[28]),
  __O(vHADDR__31_0[27]),
  __O(vHADDR__31_0[26]),
  __O(vHADDR__31_0[25]),
  __O(vHADDR__31_0[24]),
  __O(vHADDR__31_0[23]),
  __O(vHADDR__31_0[22]),
  __O(vHADDR__31_0[21]),
  __O(vHADDR__31_0[20]),
  __O(vHADDR__31_0[19]),
  __O(vHADDR__31_0[18]),
  __O(vHADDR__31_0[17]),
  __O(vHADDR__31_0[16]),
  __O(vHADDR__31_0[15]),
  __O(vHADDR__31_0[14]),
  __O(vHADDR__31_0[13]),
  __O(vHADDR__31_0[12]),
  __O(vHADDR__31_0[11]),
  __O(vHADDR__31_0[10]),
  __O(vHADDR__31_0[9]),
  __O(vHADDR__31_0[8]),
  __O(vHADDR__31_0[7]),
  __O(vHADDR__31_0[6]),
  __O(vHADDR__31_0[5]),
  __O(vHADDR__31_0[4]),
  __O(vHADDR__31_0[3]),
  __O(vHADDR__31_0[2]),
  __O(vHADDR__31_0[1]),
  __O(vHADDR__31_0[0])},{
  __O(vHBURST__2_0[2]),
  __O(vHBURST__2_0[1]),
  __O(vHBURST__2_0[0])},
  __O(vHMASTLOCK),{
  __O(vHPROT__3_0[3]),
  __O(vHPROT__3_0[2]),
  __O(vHPROT__3_0[1]),
  __O(vHPROT__3_0[0])},{
  __O(vHSIZE__2_0[2]),
  __O(vHSIZE__2_0[1]),
  __O(vHSIZE__2_0[0])},{
  __O(vHTRANS__1_0[1]),
  __O(vHTRANS__1_0[0])},{
  __O(vHWDATA__31_0[31]),
  __O(vHWDATA__31_0[30]),
  __O(vHWDATA__31_0[29]),
  __O(vHWDATA__31_0[28]),
  __O(vHWDATA__31_0[27]),
  __O(vHWDATA__31_0[26]),
  __O(vHWDATA__31_0[25]),
  __O(vHWDATA__31_0[24]),
  __O(vHWDATA__31_0[23]),
  __O(vHWDATA__31_0[22]),
  __O(vHWDATA__31_0[21]),
  __O(vHWDATA__31_0[20]),
  __O(vHWDATA__31_0[19]),
  __O(vHWDATA__31_0[18]),
  __O(vHWDATA__31_0[17]),
  __O(vHWDATA__31_0[16]),
  __O(vHWDATA__31_0[15]),
  __O(vHWDATA__31_0[14]),
  __O(vHWDATA__31_0[13]),
  __O(vHWDATA__31_0[12]),
  __O(vHWDATA__31_0[11]),
  __O(vHWDATA__31_0[10]),
  __O(vHWDATA__31_0[9]),
  __O(vHWDATA__31_0[8]),
  __O(vHWDATA__31_0[7]),
  __O(vHWDATA__31_0[6]),
  __O(vHWDATA__31_0[5]),
  __O(vHWDATA__31_0[4]),
  __O(vHWDATA__31_0[3]),
  __O(vHWDATA__31_0[2]),
  __O(vHWDATA__31_0[1]),
  __O(vHWDATA__31_0[0])},
  __O(vHWRITE),
  __O(vHMASTER),{
  __O(vSLVRDATA__31_0[31]),
  __O(vSLVRDATA__31_0[30]),
  __O(vSLVRDATA__31_0[29]),
  __O(vSLVRDATA__31_0[28]),
  __O(vSLVRDATA__31_0[27]),
  __O(vSLVRDATA__31_0[26]),
  __O(vSLVRDATA__31_0[25]),
  __O(vSLVRDATA__31_0[24]),
  __O(vSLVRDATA__31_0[23]),
  __O(vSLVRDATA__31_0[22]),
  __O(vSLVRDATA__31_0[21]),
  __O(vSLVRDATA__31_0[20]),
  __O(vSLVRDATA__31_0[19]),
  __O(vSLVRDATA__31_0[18]),
  __O(vSLVRDATA__31_0[17]),
  __O(vSLVRDATA__31_0[16]),
  __O(vSLVRDATA__31_0[15]),
  __O(vSLVRDATA__31_0[14]),
  __O(vSLVRDATA__31_0[13]),
  __O(vSLVRDATA__31_0[12]),
  __O(vSLVRDATA__31_0[11]),
  __O(vSLVRDATA__31_0[10]),
  __O(vSLVRDATA__31_0[9]),
  __O(vSLVRDATA__31_0[8]),
  __O(vSLVRDATA__31_0[7]),
  __O(vSLVRDATA__31_0[6]),
  __O(vSLVRDATA__31_0[5]),
  __O(vSLVRDATA__31_0[4]),
  __O(vSLVRDATA__31_0[3]),
  __O(vSLVRDATA__31_0[2]),
  __O(vSLVRDATA__31_0[1]),
  __O(vSLVRDATA__31_0[0])},
  __O(vSLVREADY),
  __O(vSLVRESP),
  __O(vDBGRESTARTED),
  __O(vHALTED),
  __O(vTXEV),
  __O(vLOCKUP),
  __O(vSYSRESETREQ),
  __O(vCODENSEQ),{
  __O(vCODEHINTDE__2_0[2]),
  __O(vCODEHINTDE__2_0[1]),
  __O(vCODEHINTDE__2_0[0])},
  __O(vSPECHTRANS),
  __O(vSLEEPING),
  __O(vSLEEPDEEP),
  __O(vSLEEPHOLDACKn),
  __O(vWICDSACKn),{
  __O(vWICMASKISR__31_0[31]),
  __O(vWICMASKISR__31_0[30]),
  __O(vWICMASKISR__31_0[29]),
  __O(vWICMASKISR__31_0[28]),
  __O(vWICMASKISR__31_0[27]),
  __O(vWICMASKISR__31_0[26]),
  __O(vWICMASKISR__31_0[25]),
  __O(vWICMASKISR__31_0[24]),
  __O(vWICMASKISR__31_0[23]),
  __O(vWICMASKISR__31_0[22]),
  __O(vWICMASKISR__31_0[21]),
  __O(vWICMASKISR__31_0[20]),
  __O(vWICMASKISR__31_0[19]),
  __O(vWICMASKISR__31_0[18]),
  __O(vWICMASKISR__31_0[17]),
  __O(vWICMASKISR__31_0[16]),
  __O(vWICMASKISR__31_0[15]),
  __O(vWICMASKISR__31_0[14]),
  __O(vWICMASKISR__31_0[13]),
  __O(vWICMASKISR__31_0[12]),
  __O(vWICMASKISR__31_0[11]),
  __O(vWICMASKISR__31_0[10]),
  __O(vWICMASKISR__31_0[9]),
  __O(vWICMASKISR__31_0[8]),
  __O(vWICMASKISR__31_0[7]),
  __O(vWICMASKISR__31_0[6]),
  __O(vWICMASKISR__31_0[5]),
  __O(vWICMASKISR__31_0[4]),
  __O(vWICMASKISR__31_0[3]),
  __O(vWICMASKISR__31_0[2]),
  __O(vWICMASKISR__31_0[1]),
  __O(vWICMASKISR__31_0[0])},
  __O(vWICMASKNMI),
  __O(vWICMASKRXEV),
  __O(vWICLOAD),
  __O(vWICCLEAR),
  __O(vSYSPWRDOWNACK),
  __O(vDBGPWRDOWNACK), __capturetime);
end
endtask
endmodule
