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
// Cortex-M0 Integration Implementation level Vector Capture Testbench 
// ----------------------------------------------------------------------------
//
// This block generates vectors by snooping on pins at the Cortex-M0 Integration
// Implementation level. The vectors are written to the file
// CORTEXM0INTEGRATIONIMP_vectors.crf
// ----------------------------------------------------------------------------

module cm0ik_cortexm0integrationimp_capture (FCLK, SCLK, HCLK, DCLK, PORESETn, DBGRESETn, HRESETn, SWCLKTCK, nTRST, HRDATA, HREADY, HRESP, SWDITMS, TDI, DBGRESTART, EDBGRQ, NMI, IRQ, RXEV, STCALIB, STCLKEN, IRQLATENCY, ECOREVNUM, SLEEPHOLDREQn, WICENREQ, CDBGPWRUPACK, SE, RSTBYPASS, SYSRETAINn, SYSISOLATEn, SYSPWRDOWN, DBGISOLATEn, DBGPWRDOWN, HADDR, HBURST, HMASTLOCK, HPROT, HSIZE, HTRANS, HWDATA, HWRITE, HMASTER, CODENSEQ, CODEHINTDE, SPECHTRANS, SWDO, SWDOEN, TDO, nTDOEN, DBGRESTARTED, HALTED, TXEV, LOCKUP, SYSRESETREQ, GATEHCLK, SLEEPING, SLEEPDEEP, WAKEUP, WICSENSE, SLEEPHOLDACKn, WICENACK, CDBGPWRUPREQ, SYSPWRDOWNACK, DBGPWRDOWNACK);
input FCLK;
input SCLK;
input HCLK;
input DCLK;
input PORESETn;
input DBGRESETn;
input HRESETn;
input SWCLKTCK;
input nTRST;
input [31:0] HRDATA;
input HREADY;
input HRESP;
input SWDITMS;
input TDI;
input DBGRESTART;
input EDBGRQ;
input NMI;
input [31:0] IRQ;
input RXEV;
input [25:0] STCALIB;
input STCLKEN;
input [7:0] IRQLATENCY;
input [27:0] ECOREVNUM;
input SLEEPHOLDREQn;
input WICENREQ;
input CDBGPWRUPACK;
input SE;
input RSTBYPASS;
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
input CODENSEQ;
input [2:0] CODEHINTDE;
input SPECHTRANS;
input SWDO;
input SWDOEN;
input TDO;
input nTDOEN;
input DBGRESTARTED;
input HALTED;
input TXEV;
input LOCKUP;
input SYSRESETREQ;
input GATEHCLK;
input SLEEPING;
input SLEEPDEEP;
input WAKEUP;
input [33:0] WICSENSE;
input SLEEPHOLDACKn;
input WICENACK;
input CDBGPWRUPREQ;
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
reg  vFCLK;
reg  vSCLK;
reg  vHCLK;
reg  vDCLK;
reg  vPORESETn;
reg  vDBGRESETn;
reg  vHRESETn;
reg  vSWCLKTCK;
reg  vnTRST;
reg [31:0] vHRDATA__31_0;
reg  vHREADY;
reg  vHRESP;
reg  vSWDITMS;
reg  vTDI;
reg  vDBGRESTART;
reg  vEDBGRQ;
reg  vNMI;
reg [31:0] vIRQ__31_0;
reg  vRXEV;
reg [25:0] vSTCALIB__25_0;
reg  vSTCLKEN;
reg [7:0] vIRQLATENCY__7_0;
reg [27:0] vECOREVNUM__27_0;
reg  vSLEEPHOLDREQn;
reg  vWICENREQ;
reg  vCDBGPWRUPACK;
reg  vSE;
reg  vRSTBYPASS;
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
reg  vCODENSEQ;
reg [2:0] vCODEHINTDE__2_0;
reg  vSPECHTRANS;
reg  vSWDO;
reg  vSWDOEN;
reg  vTDO;
reg  vnTDOEN;
reg  vDBGRESTARTED;
reg  vHALTED;
reg  vTXEV;
reg  vLOCKUP;
reg  vSYSRESETREQ;
reg  vGATEHCLK;
reg  vSLEEPING;
reg  vSLEEPDEEP;
reg  vWAKEUP;
reg [33:0] vWICSENSE__33_0;
reg  vSLEEPHOLDACKn;
reg  vWICENACK;
reg  vCDBGPWRUPREQ;
reg  vSYSPWRDOWNACK;
reg  vDBGPWRDOWNACK;
initial
begin
    vFCLK = 0;
    vSCLK = 0;
    vHCLK = 0;
    vDCLK = 0;
end
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

// rising FCLK
always @(posedge FCLK)
begin
 vPORESETn = PORESETn;
 vDBGRESETn = DBGRESETn;
 vHRESETn = HRESETn;
 vnTRST = nTRST;
 vHRDATA__31_0 = HRDATA[31:0];
 vHREADY = HREADY;
 vHRESP = HRESP;
 vDBGRESTART = DBGRESTART;
 vEDBGRQ = EDBGRQ;
 vNMI = NMI;
 vIRQ__31_0 = IRQ[31:0];
 vRXEV = RXEV;
 vSTCALIB__25_0 = STCALIB[25:0];
 vSTCLKEN = STCLKEN;
 vIRQLATENCY__7_0 = IRQLATENCY[7:0];
 vECOREVNUM__27_0 = ECOREVNUM[27:0];
 vSLEEPHOLDREQn = SLEEPHOLDREQn;
 vWICENREQ = WICENREQ;
 vCDBGPWRUPACK = CDBGPWRUPACK;
 vSE = SE;
 vRSTBYPASS = RSTBYPASS;
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
 vCODENSEQ = CODENSEQ;
 vCODEHINTDE__2_0 = CODEHINTDE[2:0];
 vSPECHTRANS = SPECHTRANS;
 vDBGRESTARTED = DBGRESTARTED;
 vHALTED = HALTED;
 vTXEV = TXEV;
 vLOCKUP = LOCKUP;
 vSYSRESETREQ = SYSRESETREQ;
 vGATEHCLK = GATEHCLK;
 vSLEEPING = SLEEPING;
 vSLEEPDEEP = SLEEPDEEP;
 vWAKEUP = WAKEUP;
 vWICSENSE__33_0 = WICSENSE[33:0];
 vSLEEPHOLDACKn = SLEEPHOLDACKn;
 vWICENACK = WICENACK;
 vSYSPWRDOWNACK = SYSPWRDOWNACK;
 vDBGPWRDOWNACK = DBGPWRDOWNACK;
 vSWCLKTCK = SWCLKTCK;
 vSWDITMS = SWDITMS;
 vTDI = TDI;
 vSWDO = SWDO;
 vSWDOEN = SWDOEN;
 vTDO = TDO;
 vnTDOEN = nTDOEN;
 vCDBGPWRUPREQ = CDBGPWRUPREQ;
 write_output;
 #1;
 vFCLK = FCLK;
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
 CrfHandle = $fopen("CORTEXM0INTEGRATIONIMP_vectors.crf");
 $display("%m: Writing crf to CORTEXM0INTEGRATIONIMP_vectors.crf");
 $fdisplay(CrfHandle, "#CTRM: CYCLE: FCLK (/) PRD(1000)");
 $fdisplay(CrfHandle, "#CTRM: INPUTS:");
 $fdisplay(CrfHandle, "#CTRM: FCLK <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: SCLK <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: HCLK <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: DCLK <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: PORESETn <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: DBGRESETn <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: HRESETn <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: SWCLKTCK <I> SWCLKTCK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: nTRST <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: HRDATA[31:0] <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: HREADY <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: HRESP <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: SWDITMS <I> SWCLKTCK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: TDI <I> SWCLKTCK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: DBGRESTART <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: EDBGRQ <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: NMI <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: IRQ[31:0] <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: RXEV <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: STCALIB[25:0] <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: STCLKEN <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: IRQLATENCY[7:0] <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: ECOREVNUM[27:0] <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: SLEEPHOLDREQn <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: WICENREQ <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: CDBGPWRUPACK <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: SE <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: RSTBYPASS <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: SYSRETAINn <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: SYSISOLATEn <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: SYSPWRDOWN <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: DBGISOLATEn <I> FCLK (/) RT0(100,600)");
 $fdisplay(CrfHandle, "#CTRM: DBGPWRDOWN <I> FCLK (/) RT0(100,600)");
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
 $fdisplay(CrfHandle, "#CTRM: CODENSEQ <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: CODEHINTDE[2:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SPECHTRANS <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SWDO <O> SWCLKTCK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SWDOEN <O> SWCLKTCK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: TDO <O> SWCLKTCK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: nTDOEN <O> SWCLKTCK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: DBGRESTARTED <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: HALTED <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: TXEV <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: LOCKUP <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SYSRESETREQ <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: GATEHCLK <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SLEEPING <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SLEEPDEEP <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: WAKEUP <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: WICSENSE[33:0] <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SLEEPHOLDACKn <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: WICENACK <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: CDBGPWRUPREQ <O> SWCLKTCK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: SYSPWRDOWNACK <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "#CTRM: DBGPWRDOWNACK <O> FCLK (/) CHK(400)");
 $fdisplay(CrfHandle, "-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
 $fdisplay(CrfHandle, "                                                                                                                                                                       S                   |                                                                                                                                                              S     S D ");
 $fdisplay(CrfHandle, "                                                                                                                                                                       L   C               |                                                                                                         D                                                    L   C Y B ");
 $fdisplay(CrfHandle, "                                                                                                                                                                       E   D       S   D   |                                                                                                         B       S                                            E   D S G ");
 $fdisplay(CrfHandle, "                                                           D                                                                            I                              E   B     S Y S B D |                                                                                             C S         G       Y                                            E   B P P ");
 $fdisplay(CrfHandle, "          D                                                B                                                                            R                            E P   G   R Y S Y G B |                                      H                                                      O P         R       S     S                                      P   G W W ");
 $fdisplay(CrfHandle, "        P B   S                                            G                                                                            Q                            C H W P   S S I S I G |                                      M                                                  C   D E         E       R G S L                                    W H W P R R ");
 $fdisplay(CrfHandle, "        O G H W                                        S   R                                                                 S S        L                            O O I W   T R S P S P |                                      A                                                H O   E C         S       E A L E                                    I O I W D D ");
 $fdisplay(CrfHandle, "        R R R C                                  H H   W   E E                                                               T T        A                            R L C R   B E O W O W |                                    H S           H                                H H M D   H H   S   n T H   L S T E E W                                  C L C R O O ");
 $fdisplay(CrfHandle, "        E E E L n                                R R H D   S D                                                               C C        T                            E D E U   Y T L R L R |                                H   B T    H   H  T                                W W A E   I T   W   T A A   O E E E P A                                  S D E U W W ");
 $fdisplay(CrfHandle, "F S H D S S S K T                                D E R I   T B                                    R                          A L        E                            V R N P   P A A D A D |                                A   U L    P   S  R                                D R S N   N R S D   D R L T C T H P D K                                  E A N P N N ");
 $fdisplay(CrfHandle, "C C C C E E E T R                                A A E T T A G N                                I X                          L K        N                            N E R A   A I T O T O |                                D   R O    R   I  A                                A I T S   T A W O T O T T X K R C I E E                                  N C A R A A ");
 $fdisplay(CrfHandle, "L L L L T T T C S                                T D S M D R R M                                R E                          I E        C                            U Q E C S S N E W E W |                                D   S C    O   Z  N                                T T E E   D N D E D E E E E U E L N E U                                  S K C E C C ");
 $fdisplay(CrfHandle, "K K K K n n n K T                                A Y P S I T Q I                                Q V                          B N        Y                            M n Q K E S n n N n N |                                R   T K    T   E  S                                A E R Q   E S O N O N D D V P Q K G P P                                  E n K Q K K ");
 $fdisplay(CrfHandle, "-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
 $fdisplay(CrfHandle, "                  3322222222221111111111                         3322222222221111111111             2222221111111111                      222222221111111111                               | 3322222222221111111111                             3322222222221111111111                                                 333322222222221111111111                     ");
 $fdisplay(CrfHandle, "                  10987654321098765432109876543210               10987654321098765432109876543210   54321098765432109876543210   76543210 7654321098765432109876543210                     | 10987654321098765432109876543210 210   3210 210 10 10987654321098765432109876543210       210                             3210987654321098765432109876543210           ");
 $fdisplay(CrfHandle, "-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
end

task output_crf;
begin
 $fdisplay(CrfHandle, "%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s | %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s } %t", 
  __I(vFCLK),
  __I(vSCLK),
  __I(vHCLK),
  __I(vDCLK),
  __I(vPORESETn),
  __I(vDBGRESETn),
  __I(vHRESETn),
  __I(vSWCLKTCK),
  __I(vnTRST),{
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
  __I(vHRESP),
  __I(vSWDITMS),
  __I(vTDI),
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
  __I(vECOREVNUM__27_0[27]),
  __I(vECOREVNUM__27_0[26]),
  __I(vECOREVNUM__27_0[25]),
  __I(vECOREVNUM__27_0[24]),
  __I(vECOREVNUM__27_0[23]),
  __I(vECOREVNUM__27_0[22]),
  __I(vECOREVNUM__27_0[21]),
  __I(vECOREVNUM__27_0[20]),
  __I(vECOREVNUM__27_0[19]),
  __I(vECOREVNUM__27_0[18]),
  __I(vECOREVNUM__27_0[17]),
  __I(vECOREVNUM__27_0[16]),
  __I(vECOREVNUM__27_0[15]),
  __I(vECOREVNUM__27_0[14]),
  __I(vECOREVNUM__27_0[13]),
  __I(vECOREVNUM__27_0[12]),
  __I(vECOREVNUM__27_0[11]),
  __I(vECOREVNUM__27_0[10]),
  __I(vECOREVNUM__27_0[9]),
  __I(vECOREVNUM__27_0[8]),
  __I(vECOREVNUM__27_0[7]),
  __I(vECOREVNUM__27_0[6]),
  __I(vECOREVNUM__27_0[5]),
  __I(vECOREVNUM__27_0[4]),
  __I(vECOREVNUM__27_0[3]),
  __I(vECOREVNUM__27_0[2]),
  __I(vECOREVNUM__27_0[1]),
  __I(vECOREVNUM__27_0[0])},
  __I(vSLEEPHOLDREQn),
  __I(vWICENREQ),
  __I(vCDBGPWRUPACK),
  __I(vSE),
  __I(vRSTBYPASS),
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
  __O(vHMASTER),
  __O(vCODENSEQ),{
  __O(vCODEHINTDE__2_0[2]),
  __O(vCODEHINTDE__2_0[1]),
  __O(vCODEHINTDE__2_0[0])},
  __O(vSPECHTRANS),
  __O(vSWDO),
  __O(vSWDOEN),
  __O(vTDO),
  __O(vnTDOEN),
  __O(vDBGRESTARTED),
  __O(vHALTED),
  __O(vTXEV),
  __O(vLOCKUP),
  __O(vSYSRESETREQ),
  __O(vGATEHCLK),
  __O(vSLEEPING),
  __O(vSLEEPDEEP),
  __O(vWAKEUP),{
  __O(vWICSENSE__33_0[33]),
  __O(vWICSENSE__33_0[32]),
  __O(vWICSENSE__33_0[31]),
  __O(vWICSENSE__33_0[30]),
  __O(vWICSENSE__33_0[29]),
  __O(vWICSENSE__33_0[28]),
  __O(vWICSENSE__33_0[27]),
  __O(vWICSENSE__33_0[26]),
  __O(vWICSENSE__33_0[25]),
  __O(vWICSENSE__33_0[24]),
  __O(vWICSENSE__33_0[23]),
  __O(vWICSENSE__33_0[22]),
  __O(vWICSENSE__33_0[21]),
  __O(vWICSENSE__33_0[20]),
  __O(vWICSENSE__33_0[19]),
  __O(vWICSENSE__33_0[18]),
  __O(vWICSENSE__33_0[17]),
  __O(vWICSENSE__33_0[16]),
  __O(vWICSENSE__33_0[15]),
  __O(vWICSENSE__33_0[14]),
  __O(vWICSENSE__33_0[13]),
  __O(vWICSENSE__33_0[12]),
  __O(vWICSENSE__33_0[11]),
  __O(vWICSENSE__33_0[10]),
  __O(vWICSENSE__33_0[9]),
  __O(vWICSENSE__33_0[8]),
  __O(vWICSENSE__33_0[7]),
  __O(vWICSENSE__33_0[6]),
  __O(vWICSENSE__33_0[5]),
  __O(vWICSENSE__33_0[4]),
  __O(vWICSENSE__33_0[3]),
  __O(vWICSENSE__33_0[2]),
  __O(vWICSENSE__33_0[1]),
  __O(vWICSENSE__33_0[0])},
  __O(vSLEEPHOLDACKn),
  __O(vWICENACK),
  __O(vCDBGPWRUPREQ),
  __O(vSYSPWRDOWNACK),
  __O(vDBGPWRDOWNACK), __capturetime);
end
endtask
endmodule
