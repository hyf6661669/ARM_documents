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
//     CORTEXM0IMP Replay Testbench
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps

module CORTEXM0IMP_Replay_tb;

localparam MaxErrors      = 200;
localparam MaxVectors     = 500000;
localparam __reportperiod = 10;

integer VecCount, ErrorCount, NumVectors;
reg [371:0] ApplyVec;
reg [371:0] VecMem [0:MaxVectors];

reg  riSCLK;
reg  riHCLK;
reg  riDCLK;
reg  riDBGRESETn;
reg  riHRESETn;
reg [31:0] riHRDATA__31_0;
reg  riHREADY;
reg  riHRESP;
reg [31:0] riSLVADDR__31_0;
reg [1:0] riSLVSIZE__1_0;
reg [1:0] riSLVTRANS__1_0;
reg [31:0] riSLVWDATA__31_0;
reg  riSLVWRITE;
reg  riDBGRESTART;
reg  riEDBGRQ;
reg  riNMI;
reg [31:0] riIRQ__31_0;
reg  riRXEV;
reg [25:0] riSTCALIB__25_0;
reg  riSTCLKEN;
reg [7:0] riIRQLATENCY__7_0;
reg [19:0] riECOREVNUM__19_0;
reg  riSLEEPHOLDREQn;
reg  riWICDSREQn;
reg  riSE;
reg [31:0] roHADDR__31_0;
reg [2:0] roHBURST__2_0;
reg  roHMASTLOCK;
reg [3:0] roHPROT__3_0;
reg [2:0] roHSIZE__2_0;
reg [1:0] roHTRANS__1_0;
reg [31:0] roHWDATA__31_0;
reg  roHWRITE;
reg  roHMASTER;
reg [31:0] roSLVRDATA__31_0;
reg  roSLVREADY;
reg  roSLVRESP;
reg  roDBGRESTARTED;
reg  roHALTED;
reg  roTXEV;
reg  roLOCKUP;
reg  roSYSRESETREQ;
reg  roCODENSEQ;
reg [2:0] roCODEHINTDE__2_0;
reg  roSPECHTRANS;
reg  roSLEEPING;
reg  roSLEEPDEEP;
reg  roSLEEPHOLDACKn;
reg  roWICDSACKn;
reg [31:0] roWICMASKISR__31_0;
reg  roWICMASKNMI;
reg  roWICMASKRXEV;
reg  roWICLOAD;
reg  roWICCLEAR;
`ifdef ARM_CM0_REPLAY_SRPG
reg  riSYSRETAINn;
reg  riSYSISOLATEn;
reg  riSYSPWRDOWN;
reg  riDBGISOLATEn;
reg  riDBGPWRDOWN;
reg  roSYSPWRDOWNACK;
reg  roDBGPWRDOWNACK;
`endif // ARM_CM0_REPLAY_SRPG

wire  SCLK = riSCLK;
wire  HCLK = riHCLK;
wire  DCLK = riDCLK;
wire  DBGRESETn = riDBGRESETn;
wire  HRESETn = riHRESETn;
wire [31:0] HRDATA__31_0 = riHRDATA__31_0;
wire  HREADY = riHREADY;
wire  HRESP = riHRESP;
wire [31:0] SLVADDR__31_0 = riSLVADDR__31_0;
wire [1:0] SLVSIZE__1_0 = riSLVSIZE__1_0;
wire [1:0] SLVTRANS__1_0 = riSLVTRANS__1_0;
wire [31:0] SLVWDATA__31_0 = riSLVWDATA__31_0;
wire  SLVWRITE = riSLVWRITE;
wire  DBGRESTART = riDBGRESTART;
wire  EDBGRQ = riEDBGRQ;
wire  NMI = riNMI;
wire [31:0] IRQ__31_0 = riIRQ__31_0;
wire  RXEV = riRXEV;
wire [25:0] STCALIB__25_0 = riSTCALIB__25_0;
wire  STCLKEN = riSTCLKEN;
wire [7:0] IRQLATENCY__7_0 = riIRQLATENCY__7_0;
wire [19:0] ECOREVNUM__19_0 = riECOREVNUM__19_0;
wire  SLEEPHOLDREQn = riSLEEPHOLDREQn;
wire  WICDSREQn = riWICDSREQn;
wire  SE = riSE;
wire [31:0] HADDR__31_0;
wire [2:0] HBURST__2_0;
wire  HMASTLOCK;
wire [3:0] HPROT__3_0;
wire [2:0] HSIZE__2_0;
wire [1:0] HTRANS__1_0;
wire [31:0] HWDATA__31_0;
wire  HWRITE;
wire  HMASTER;
wire [31:0] SLVRDATA__31_0;
wire  SLVREADY;
wire  SLVRESP;
wire  DBGRESTARTED;
wire  HALTED;
wire  TXEV;
wire  LOCKUP;
wire  SYSRESETREQ;
wire  CODENSEQ;
wire [2:0] CODEHINTDE__2_0;
wire  SPECHTRANS;
wire  SLEEPING;
wire  SLEEPDEEP;
wire  SLEEPHOLDACKn;
wire  WICDSACKn;
wire [31:0] WICMASKISR__31_0;
wire  WICMASKNMI;
wire  WICMASKRXEV;
wire  WICLOAD;
wire  WICCLEAR;
`ifdef ARM_CM0_REPLAY_SRPG
wire  SYSRETAINn = riSYSRETAINn;
wire  SYSISOLATEn = riSYSISOLATEn;
wire  SYSPWRDOWN = riSYSPWRDOWN;
wire  DBGISOLATEn = riDBGISOLATEn;
wire  DBGPWRDOWN = riDBGPWRDOWN;
wire  SYSPWRDOWNACK;
wire  DBGPWRDOWNACK;
`endif // ARM_CM0_REPLAY_SRPG

//-----------------------------------------------------------------------------
// SDF Timing Annotation
//-----------------------------------------------------------------------------
`ifdef ARM_CM0_REPLAY_SDF
  initial
    begin
      $sdf_annotate("../CORTEXM0IMP.sdf.gz", uut);
    end
`endif 

//-----------------------------------------------------------------------------
// CORTEX-M0 Implementation Instantiation
//-----------------------------------------------------------------------------

  CORTEXM0IMP 
  uut
  (.SCLK                (SCLK),
   .HCLK                (HCLK),
   .DCLK                (DCLK),
   .DBGRESETn           (DBGRESETn),
   .HRESETn             (HRESETn),
   .HRDATA              (HRDATA__31_0),
   .HREADY              (HREADY),
   .HRESP               (HRESP),
   .SLVADDR             (SLVADDR__31_0),
   .SLVSIZE             (SLVSIZE__1_0),
   .SLVTRANS            (SLVTRANS__1_0),
   .SLVWDATA            (SLVWDATA__31_0),
   .SLVWRITE            (SLVWRITE),
   .DBGRESTART          (DBGRESTART),
   .EDBGRQ              (EDBGRQ),
   .NMI                 (NMI),
   .IRQ                 (IRQ__31_0),
   .RXEV                (RXEV),
   .STCALIB             (STCALIB__25_0),
   .STCLKEN             (STCLKEN),
   .IRQLATENCY          (IRQLATENCY__7_0),
   .ECOREVNUM           (ECOREVNUM__19_0),
   .SLEEPHOLDREQn       (SLEEPHOLDREQn),
   .WICDSREQn           (WICDSREQn),
   .SE                  (SE),
   .HADDR               (HADDR__31_0),
   .HBURST              (HBURST__2_0),
   .HMASTLOCK           (HMASTLOCK),
   .HPROT               (HPROT__3_0),
   .HSIZE               (HSIZE__2_0),
   .HTRANS              (HTRANS__1_0),
   .HWDATA              (HWDATA__31_0),
   .HWRITE              (HWRITE),
   .HMASTER             (HMASTER),
   .SLVRDATA            (SLVRDATA__31_0),
   .SLVREADY            (SLVREADY),
   .SLVRESP             (SLVRESP),
   .DBGRESTARTED        (DBGRESTARTED),
   .HALTED              (HALTED),
   .TXEV                (TXEV),
   .LOCKUP              (LOCKUP),
   .SYSRESETREQ         (SYSRESETREQ),
   .CODENSEQ            (CODENSEQ),
   .CODEHINTDE          (CODEHINTDE__2_0),
   .SPECHTRANS          (SPECHTRANS),
`ifdef ARM_CM0_REPLAY_SRPG
   .SYSRETAINn          (SYSRETAINn),
   .SYSISOLATEn         (SYSISOLATEn),
   .SYSPWRDOWN          (SYSPWRDOWN),
   .DBGISOLATEn         (DBGISOLATEn),
   .DBGPWRDOWN          (DBGPWRDOWN),
   .SYSPWRDOWNACK       (SYSPWRDOWNACK),
   .DBGPWRDOWNACK       (DBGPWRDOWNACK),
`endif // ARM_CM0_REPLAY_SRPG
   .SLEEPING            (SLEEPING),
   .SLEEPDEEP           (SLEEPDEEP),
   .SLEEPHOLDACKn       (SLEEPHOLDACKn),
   .WICDSACKn           (WICDSACKn),
   .WICMASKISR          (WICMASKISR__31_0),
   .WICMASKNMI          (WICMASKNMI),
   .WICMASKRXEV         (WICMASKRXEV),
   .WICLOAD             (WICLOAD),
   .WICCLEAR            (WICCLEAR)
   );

// Main control block
reg __replayclock;
initial
 begin
  ErrorCount = 0;
  VecCount = 1;
  __replayclock = 0;
  NumVectors = 0;
  $display("%m: loading VRF from CORTEXM0IMP_vectors.vrf");
  $readmemb("CORTEXM0IMP_vectors.vrf", VecMem);
  while (VecMem[NumVectors] !== 372'bx && NumVectors <= MaxVectors)
   NumVectors = NumVectors + 1;
  if (NumVectors > MaxVectors)
  begin
   $display("%m: More than %d vectors to apply!", NumVectors);
   $finish;
  end
  $display("%m: %d vectors to apply", NumVectors);
  // Sort edges out
  __replayclock = 1;
  #(1000 / 2);
  __replayclock = 0;
  #(1000 / 2);
  while (VecCount <= NumVectors && ErrorCount <= MaxErrors)
  begin: VectorReplay
   ApplyVec = VecMem[VecCount-1];
   if ((VecCount % __reportperiod) == 0)
    $display("Vector %d", VecCount);
   __replayclock = 1;
   #(1000 / 2);
   __replayclock = 0;
   #(1000 / 2);
   compare_data;
   VecCount = VecCount + 1;
  end
  $display("Simulation end %d vector(s) applied %d errors found", VecCount-1, ErrorCount);
  $finish;
 end

// Apply inputs
always @(posedge __replayclock)
begin
// Input: SCLK
 if (ApplyVec[0] === 1'bx) $display("%m: SCLK, vector %d: inputting 'X'", VecCount);
 riSCLK <=  1'b0;
 riSCLK <= #100 ApplyVec[0];
 riSCLK <= #600  1'b0;
// Input: HCLK
 if (ApplyVec[1] === 1'bx) $display("%m: HCLK, vector %d: inputting 'X'", VecCount);
 riHCLK <=  1'b0;
 riHCLK <= #100 ApplyVec[1];
 riHCLK <= #600  1'b0;
// Input: DCLK
 if (ApplyVec[2] === 1'bx) $display("%m: DCLK, vector %d: inputting 'X'", VecCount);
 riDCLK <=  1'b0;
 riDCLK <= #100 ApplyVec[2];
 riDCLK <= #600  1'b0;
// Input: DBGRESETn
 if (ApplyVec[3] === 1'bx) $display("%m: DBGRESETn, vector %d: inputting 'X'", VecCount);
 riDBGRESETn <= #250 ApplyVec[3];
// Input: HRESETn
 if (ApplyVec[4] === 1'bx) $display("%m: HRESETn, vector %d: inputting 'X'", VecCount);
 riHRESETn <= #250 ApplyVec[4];
// Input: HRDATA[31:0]
 if (ApplyVec[36:5] === 32'bx) $display("%m: HRDATA[31:0], vector %d: inputting 'X'", VecCount);
 riHRDATA__31_0 <= #250 ApplyVec[36:5];
// Input: HREADY
 if (ApplyVec[37] === 1'bx) $display("%m: HREADY, vector %d: inputting 'X'", VecCount);
 riHREADY <= #250 ApplyVec[37];
// Input: HRESP
 if (ApplyVec[38] === 1'bx) $display("%m: HRESP, vector %d: inputting 'X'", VecCount);
 riHRESP <= #250 ApplyVec[38];
// Input: SLVADDR[31:0]
 if (ApplyVec[70:39] === 32'bx) $display("%m: SLVADDR[31:0], vector %d: inputting 'X'", VecCount);
 riSLVADDR__31_0 <= #250 ApplyVec[70:39];
// Input: SLVSIZE[1:0]
 if (ApplyVec[72:71] === 2'bx) $display("%m: SLVSIZE[1:0], vector %d: inputting 'X'", VecCount);
 riSLVSIZE__1_0 <= #250 ApplyVec[72:71];
// Input: SLVTRANS[1:0]
 if (ApplyVec[74:73] === 2'bx) $display("%m: SLVTRANS[1:0], vector %d: inputting 'X'", VecCount);
 riSLVTRANS__1_0 <= #250 ApplyVec[74:73];
// Input: SLVWDATA[31:0]
 if (ApplyVec[106:75] === 32'bx) $display("%m: SLVWDATA[31:0], vector %d: inputting 'X'", VecCount);
 riSLVWDATA__31_0 <= #250 ApplyVec[106:75];
// Input: SLVWRITE
 if (ApplyVec[107] === 1'bx) $display("%m: SLVWRITE, vector %d: inputting 'X'", VecCount);
 riSLVWRITE <= #250 ApplyVec[107];
// Input: DBGRESTART
 if (ApplyVec[108] === 1'bx) $display("%m: DBGRESTART, vector %d: inputting 'X'", VecCount);
 riDBGRESTART <= #250 ApplyVec[108];
// Input: EDBGRQ
 if (ApplyVec[109] === 1'bx) $display("%m: EDBGRQ, vector %d: inputting 'X'", VecCount);
 riEDBGRQ <= #250 ApplyVec[109];
// Input: NMI
 if (ApplyVec[110] === 1'bx) $display("%m: NMI, vector %d: inputting 'X'", VecCount);
 riNMI <= #250 ApplyVec[110];
// Input: IRQ[31:0]
 if (ApplyVec[142:111] === 32'bx) $display("%m: IRQ[31:0], vector %d: inputting 'X'", VecCount);
 riIRQ__31_0 <= #250 ApplyVec[142:111];
// Input: RXEV
 if (ApplyVec[143] === 1'bx) $display("%m: RXEV, vector %d: inputting 'X'", VecCount);
 riRXEV <= #250 ApplyVec[143];
// Input: STCALIB[25:0]
 if (ApplyVec[169:144] === 26'bx) $display("%m: STCALIB[25:0], vector %d: inputting 'X'", VecCount);
 riSTCALIB__25_0 <= #250 ApplyVec[169:144];
// Input: STCLKEN
 if (ApplyVec[170] === 1'bx) $display("%m: STCLKEN, vector %d: inputting 'X'", VecCount);
 riSTCLKEN <= #250 ApplyVec[170];
// Input: IRQLATENCY[7:0]
 if (ApplyVec[178:171] === 8'bx) $display("%m: IRQLATENCY[7:0], vector %d: inputting 'X'", VecCount);
 riIRQLATENCY__7_0 <= #250 ApplyVec[178:171];
// Input: ECOREVNUM[19:0]
 if (ApplyVec[198:179] === 20'bx) $display("%m: ECOREVNUM[19:0], vector %d: inputting 'X'", VecCount);
 riECOREVNUM__19_0 <= #250 ApplyVec[198:179];
// Input: SLEEPHOLDREQn
 if (ApplyVec[199] === 1'bx) $display("%m: SLEEPHOLDREQn, vector %d: inputting 'X'", VecCount);
 riSLEEPHOLDREQn <= #250 ApplyVec[199];
// Input: WICDSREQn
 if (ApplyVec[200] === 1'bx) $display("%m: WICDSREQn, vector %d: inputting 'X'", VecCount);
 riWICDSREQn <= #250 ApplyVec[200];
// Input: SE
 if (ApplyVec[201] === 1'bx) $display("%m: SE, vector %d: inputting 'X'", VecCount);
 riSE <= #250 ApplyVec[201];
`ifdef ARM_CM0_REPLAY_SRPG
// Input: SYSRETAINn 
 if (ApplyVec[202] === 1'bx) $display("%m: SYSRETAINn, vector %d: inputting 'X'", VecCount); 
 riSYSRETAINn <= #250 ApplyVec[202]; 
// Input: SYSISOLATEn 
 if (ApplyVec[203] === 1'bx) $display("%m: SYSISOLATEn, vector %d: inputting 'X'", VecCount); 
 riSYSISOLATEn <= #250 ApplyVec[203]; 
// Input: SYSPWRDOWN 
 if (ApplyVec[204] === 1'bx) $display("%m: SYSPWRDOWN, vector %d: inputting 'X'", VecCount); 
 riSYSPWRDOWN <= #250 ApplyVec[204]; 
// Input: DBGISOLATEn 
 if (ApplyVec[205] === 1'bx) $display("%m: DBGISOLATEn, vector %d: inputting 'X'", VecCount); 
 riDBGISOLATEn <= #250 ApplyVec[205]; 
// Input: DBGPWRDOWN 
 if (ApplyVec[206] === 1'bx) $display("%m: DBGPWRDOWN, vector %d: inputting 'X'", VecCount); 
 riDBGPWRDOWN <= #250 ApplyVec[206]; 
`endif // ARM_CM0_REPLAY_SRPG
end 

// Drive bidirectionals 

// Sample bidirs and outputs 
always @(posedge __replayclock) 
fork 
// Output: HADDR[31:0] 
#400 roHADDR__31_0 <= HADDR__31_0; 
// Output: HBURST[2:0] 
#400 roHBURST__2_0 <= HBURST__2_0; 
// Output: HMASTLOCK 
#400 roHMASTLOCK <= HMASTLOCK; 
// Output: HPROT[3:0] 
#400 roHPROT__3_0 <= HPROT__3_0; 
// Output: HSIZE[2:0] 
#400 roHSIZE__2_0 <= HSIZE__2_0; 
// Output: HTRANS[1:0] 
#400 roHTRANS__1_0 <= HTRANS__1_0; 
// Output: HWDATA[31:0] 
#400 roHWDATA__31_0 <= HWDATA__31_0; 
// Output: HWRITE 
#400 roHWRITE <= HWRITE; 
// Output: HMASTER 
#400 roHMASTER <= HMASTER; 
// Output: SLVRDATA[31:0] 
#400 roSLVRDATA__31_0 <= SLVRDATA__31_0; 
// Output: SLVREADY 
#400 roSLVREADY <= SLVREADY; 
// Output: SLVRESP 
#400 roSLVRESP <= SLVRESP; 
// Output: DBGRESTARTED 
#400 roDBGRESTARTED <= DBGRESTARTED; 
// Output: HALTED 
#400 roHALTED <= HALTED; 
// Output: TXEV 
#400 roTXEV <= TXEV; 
// Output: LOCKUP 
#400 roLOCKUP <= LOCKUP; 
// Output: SYSRESETREQ 
#400 roSYSRESETREQ <= SYSRESETREQ; 
// Output: CODENSEQ 
#400 roCODENSEQ <= CODENSEQ; 
// Output: CODEHINTDE[2:0] 
#400 roCODEHINTDE__2_0 <= CODEHINTDE__2_0; 
// Output: SPECHTRANS 
#400 roSPECHTRANS <= SPECHTRANS; 
// Output: SLEEPING 
#400 roSLEEPING <= SLEEPING; 
// Output: SLEEPDEEP 
#400 roSLEEPDEEP <= SLEEPDEEP; 
// Output: SLEEPHOLDACKn 
#400 roSLEEPHOLDACKn <= SLEEPHOLDACKn; 
// Output: WICDSACKn 
#400 roWICDSACKn <= WICDSACKn; 
// Output: WICMASKISR[31:0] 
#400 roWICMASKISR__31_0 <= WICMASKISR__31_0; 
// Output: WICMASKNMI 
#400 roWICMASKNMI <= WICMASKNMI; 
// Output: WICMASKRXEV 
#400 roWICMASKRXEV <= WICMASKRXEV; 
// Output: WICLOAD 
#400 roWICLOAD <= WICLOAD; 
// Output: WICCLEAR 
#400 roWICCLEAR <= WICCLEAR; 
`ifdef ARM_CM0_REPLAY_SRPG
// Output: SYSPWRDOWNACK 
#400 roSYSPWRDOWNACK <= SYSPWRDOWNACK; 
// Output: DBGPWRDOWNACK 
#400 roDBGPWRDOWNACK <= DBGPWRDOWNACK;
`endif // ARM_CM0_REPLAY_SRPG
join 

// Compare sampled values with vector file 
task compare_data; 
begin 
// Output: HADDR[31:0] 
  if (roHADDR__31_0[0] !== ApplyVec[207] && ApplyVec[207] !== 1'bx || roHADDR__31_0[1] !== ApplyVec[208] && ApplyVec[208] !== 1'bx || roHADDR__31_0[2] !== ApplyVec[209] && ApplyVec[209] !== 1'bx || roHADDR__31_0[3] !== ApplyVec[210] && ApplyVec[210] !== 1'bx || roHADDR__31_0[4] !== ApplyVec[211] && ApplyVec[211] !== 1'bx || roHADDR__31_0[5] !== ApplyVec[212] && ApplyVec[212] !== 1'bx || roHADDR__31_0[6] !== ApplyVec[213] && ApplyVec[213] !== 1'bx || roHADDR__31_0[7] !== ApplyVec[214] && ApplyVec[214] !== 1'bx || roHADDR__31_0[8] !== ApplyVec[215] && ApplyVec[215] !== 1'bx || roHADDR__31_0[9] !== ApplyVec[216] && ApplyVec[216] !== 1'bx || roHADDR__31_0[10] !== ApplyVec[217] && ApplyVec[217] !== 1'bx || roHADDR__31_0[11] !== ApplyVec[218] && ApplyVec[218] !== 1'bx || roHADDR__31_0[12] !== ApplyVec[219] && ApplyVec[219] !== 1'bx || roHADDR__31_0[13] !== ApplyVec[220] && ApplyVec[220] !== 1'bx || roHADDR__31_0[14] !== ApplyVec[221] && ApplyVec[221] !== 1'bx || roHADDR__31_0[15] !== ApplyVec[222] && ApplyVec[222] !== 1'bx || roHADDR__31_0[16] !== ApplyVec[223] && ApplyVec[223] !== 1'bx || roHADDR__31_0[17] !== ApplyVec[224] && ApplyVec[224] !== 1'bx || roHADDR__31_0[18] !== ApplyVec[225] && ApplyVec[225] !== 1'bx || roHADDR__31_0[19] !== ApplyVec[226] && ApplyVec[226] !== 1'bx || roHADDR__31_0[20] !== ApplyVec[227] && ApplyVec[227] !== 1'bx || roHADDR__31_0[21] !== ApplyVec[228] && ApplyVec[228] !== 1'bx || roHADDR__31_0[22] !== ApplyVec[229] && ApplyVec[229] !== 1'bx || roHADDR__31_0[23] !== ApplyVec[230] && ApplyVec[230] !== 1'bx || roHADDR__31_0[24] !== ApplyVec[231] && ApplyVec[231] !== 1'bx || roHADDR__31_0[25] !== ApplyVec[232] && ApplyVec[232] !== 1'bx || roHADDR__31_0[26] !== ApplyVec[233] && ApplyVec[233] !== 1'bx || roHADDR__31_0[27] !== ApplyVec[234] && ApplyVec[234] !== 1'bx || roHADDR__31_0[28] !== ApplyVec[235] && ApplyVec[235] !== 1'bx || roHADDR__31_0[29] !== ApplyVec[236] && ApplyVec[236] !== 1'bx || roHADDR__31_0[30] !== ApplyVec[237] && ApplyVec[237] !== 1'bx || roHADDR__31_0[31] !== ApplyVec[238] && ApplyVec[238] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HADDR[31:0] (r:%h != e:%h)", VecCount, roHADDR__31_0, ApplyVec[238:207]); 
  end 
// Output: HBURST[2:0] 
  if (roHBURST__2_0[0] !== ApplyVec[239] && ApplyVec[239] !== 1'bx || roHBURST__2_0[1] !== ApplyVec[240] && ApplyVec[240] !== 1'bx || roHBURST__2_0[2] !== ApplyVec[241] && ApplyVec[241] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HBURST[2:0] (r:%h != e:%h)", VecCount, roHBURST__2_0, ApplyVec[241:239]); 
  end 
// Output: HMASTLOCK 
  if (roHMASTLOCK !== ApplyVec[242] && ApplyVec[242] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HMASTLOCK (r:%h != e:%h)", VecCount, roHMASTLOCK, ApplyVec[242]); 
  end 
// Output: HPROT[3:0] 
  if (roHPROT__3_0[0] !== ApplyVec[243] && ApplyVec[243] !== 1'bx || roHPROT__3_0[1] !== ApplyVec[244] && ApplyVec[244] !== 1'bx || roHPROT__3_0[2] !== ApplyVec[245] && ApplyVec[245] !== 1'bx || roHPROT__3_0[3] !== ApplyVec[246] && ApplyVec[246] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HPROT[3:0] (r:%h != e:%h)", VecCount, roHPROT__3_0, ApplyVec[246:243]); 
  end 
// Output: HSIZE[2:0] 
  if (roHSIZE__2_0[0] !== ApplyVec[247] && ApplyVec[247] !== 1'bx || roHSIZE__2_0[1] !== ApplyVec[248] && ApplyVec[248] !== 1'bx || roHSIZE__2_0[2] !== ApplyVec[249] && ApplyVec[249] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HSIZE[2:0] (r:%h != e:%h)", VecCount, roHSIZE__2_0, ApplyVec[249:247]); 
  end 
// Output: HTRANS[1:0] 
  if (roHTRANS__1_0[0] !== ApplyVec[250] && ApplyVec[250] !== 1'bx || roHTRANS__1_0[1] !== ApplyVec[251] && ApplyVec[251] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HTRANS[1:0] (r:%h != e:%h)", VecCount, roHTRANS__1_0, ApplyVec[251:250]); 
  end 
// Output: HWDATA[31:0] 
  if (roHWDATA__31_0[0] !== ApplyVec[252] && ApplyVec[252] !== 1'bx || roHWDATA__31_0[1] !== ApplyVec[253] && ApplyVec[253] !== 1'bx || roHWDATA__31_0[2] !== ApplyVec[254] && ApplyVec[254] !== 1'bx || roHWDATA__31_0[3] !== ApplyVec[255] && ApplyVec[255] !== 1'bx || roHWDATA__31_0[4] !== ApplyVec[256] && ApplyVec[256] !== 1'bx || roHWDATA__31_0[5] !== ApplyVec[257] && ApplyVec[257] !== 1'bx || roHWDATA__31_0[6] !== ApplyVec[258] && ApplyVec[258] !== 1'bx || roHWDATA__31_0[7] !== ApplyVec[259] && ApplyVec[259] !== 1'bx || roHWDATA__31_0[8] !== ApplyVec[260] && ApplyVec[260] !== 1'bx || roHWDATA__31_0[9] !== ApplyVec[261] && ApplyVec[261] !== 1'bx || roHWDATA__31_0[10] !== ApplyVec[262] && ApplyVec[262] !== 1'bx || roHWDATA__31_0[11] !== ApplyVec[263] && ApplyVec[263] !== 1'bx || roHWDATA__31_0[12] !== ApplyVec[264] && ApplyVec[264] !== 1'bx || roHWDATA__31_0[13] !== ApplyVec[265] && ApplyVec[265] !== 1'bx || roHWDATA__31_0[14] !== ApplyVec[266] && ApplyVec[266] !== 1'bx || roHWDATA__31_0[15] !== ApplyVec[267] && ApplyVec[267] !== 1'bx || roHWDATA__31_0[16] !== ApplyVec[268] && ApplyVec[268] !== 1'bx || roHWDATA__31_0[17] !== ApplyVec[269] && ApplyVec[269] !== 1'bx || roHWDATA__31_0[18] !== ApplyVec[270] && ApplyVec[270] !== 1'bx || roHWDATA__31_0[19] !== ApplyVec[271] && ApplyVec[271] !== 1'bx || roHWDATA__31_0[20] !== ApplyVec[272] && ApplyVec[272] !== 1'bx || roHWDATA__31_0[21] !== ApplyVec[273] && ApplyVec[273] !== 1'bx || roHWDATA__31_0[22] !== ApplyVec[274] && ApplyVec[274] !== 1'bx || roHWDATA__31_0[23] !== ApplyVec[275] && ApplyVec[275] !== 1'bx || roHWDATA__31_0[24] !== ApplyVec[276] && ApplyVec[276] !== 1'bx || roHWDATA__31_0[25] !== ApplyVec[277] && ApplyVec[277] !== 1'bx || roHWDATA__31_0[26] !== ApplyVec[278] && ApplyVec[278] !== 1'bx || roHWDATA__31_0[27] !== ApplyVec[279] && ApplyVec[279] !== 1'bx || roHWDATA__31_0[28] !== ApplyVec[280] && ApplyVec[280] !== 1'bx || roHWDATA__31_0[29] !== ApplyVec[281] && ApplyVec[281] !== 1'bx || roHWDATA__31_0[30] !== ApplyVec[282] && ApplyVec[282] !== 1'bx || roHWDATA__31_0[31] !== ApplyVec[283] && ApplyVec[283] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HWDATA[31:0] (r:%h != e:%h)", VecCount, roHWDATA__31_0, ApplyVec[283:252]); 
  end 
// Output: HWRITE 
  if (roHWRITE !== ApplyVec[284] && ApplyVec[284] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HWRITE (r:%h != e:%h)", VecCount, roHWRITE, ApplyVec[284]); 
  end 
// Output: HMASTER 
  if (roHMASTER !== ApplyVec[285] && ApplyVec[285] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HMASTER (r:%h != e:%h)", VecCount, roHMASTER, ApplyVec[285]); 
  end 
// Output: SLVRDATA[31:0] 
  if (roSLVRDATA__31_0[0] !== ApplyVec[286] && ApplyVec[286] !== 1'bx || roSLVRDATA__31_0[1] !== ApplyVec[287] && ApplyVec[287] !== 1'bx || roSLVRDATA__31_0[2] !== ApplyVec[288] && ApplyVec[288] !== 1'bx || roSLVRDATA__31_0[3] !== ApplyVec[289] && ApplyVec[289] !== 1'bx || roSLVRDATA__31_0[4] !== ApplyVec[290] && ApplyVec[290] !== 1'bx || roSLVRDATA__31_0[5] !== ApplyVec[291] && ApplyVec[291] !== 1'bx || roSLVRDATA__31_0[6] !== ApplyVec[292] && ApplyVec[292] !== 1'bx || roSLVRDATA__31_0[7] !== ApplyVec[293] && ApplyVec[293] !== 1'bx || roSLVRDATA__31_0[8] !== ApplyVec[294] && ApplyVec[294] !== 1'bx || roSLVRDATA__31_0[9] !== ApplyVec[295] && ApplyVec[295] !== 1'bx || roSLVRDATA__31_0[10] !== ApplyVec[296] && ApplyVec[296] !== 1'bx || roSLVRDATA__31_0[11] !== ApplyVec[297] && ApplyVec[297] !== 1'bx || roSLVRDATA__31_0[12] !== ApplyVec[298] && ApplyVec[298] !== 1'bx || roSLVRDATA__31_0[13] !== ApplyVec[299] && ApplyVec[299] !== 1'bx || roSLVRDATA__31_0[14] !== ApplyVec[300] && ApplyVec[300] !== 1'bx || roSLVRDATA__31_0[15] !== ApplyVec[301] && ApplyVec[301] !== 1'bx || roSLVRDATA__31_0[16] !== ApplyVec[302] && ApplyVec[302] !== 1'bx || roSLVRDATA__31_0[17] !== ApplyVec[303] && ApplyVec[303] !== 1'bx || roSLVRDATA__31_0[18] !== ApplyVec[304] && ApplyVec[304] !== 1'bx || roSLVRDATA__31_0[19] !== ApplyVec[305] && ApplyVec[305] !== 1'bx || roSLVRDATA__31_0[20] !== ApplyVec[306] && ApplyVec[306] !== 1'bx || roSLVRDATA__31_0[21] !== ApplyVec[307] && ApplyVec[307] !== 1'bx || roSLVRDATA__31_0[22] !== ApplyVec[308] && ApplyVec[308] !== 1'bx || roSLVRDATA__31_0[23] !== ApplyVec[309] && ApplyVec[309] !== 1'bx || roSLVRDATA__31_0[24] !== ApplyVec[310] && ApplyVec[310] !== 1'bx || roSLVRDATA__31_0[25] !== ApplyVec[311] && ApplyVec[311] !== 1'bx || roSLVRDATA__31_0[26] !== ApplyVec[312] && ApplyVec[312] !== 1'bx || roSLVRDATA__31_0[27] !== ApplyVec[313] && ApplyVec[313] !== 1'bx || roSLVRDATA__31_0[28] !== ApplyVec[314] && ApplyVec[314] !== 1'bx || roSLVRDATA__31_0[29] !== ApplyVec[315] && ApplyVec[315] !== 1'bx || roSLVRDATA__31_0[30] !== ApplyVec[316] && ApplyVec[316] !== 1'bx || roSLVRDATA__31_0[31] !== ApplyVec[317] && ApplyVec[317] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SLVRDATA[31:0] (r:%h != e:%h)", VecCount, roSLVRDATA__31_0, ApplyVec[317:286]); 
  end 
// Output: SLVREADY 
  if (roSLVREADY !== ApplyVec[318] && ApplyVec[318] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SLVREADY (r:%h != e:%h)", VecCount, roSLVREADY, ApplyVec[318]); 
  end 
// Output: SLVRESP 
  if (roSLVRESP !== ApplyVec[319] && ApplyVec[319] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SLVRESP (r:%h != e:%h)", VecCount, roSLVRESP, ApplyVec[319]); 
  end 
// Output: DBGRESTARTED 
  if (roDBGRESTARTED !== ApplyVec[320] && ApplyVec[320] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d DBGRESTARTED (r:%h != e:%h)", VecCount, roDBGRESTARTED, ApplyVec[320]); 
  end 
// Output: HALTED 
  if (roHALTED !== ApplyVec[321] && ApplyVec[321] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HALTED (r:%h != e:%h)", VecCount, roHALTED, ApplyVec[321]); 
  end 
// Output: TXEV 
  if (roTXEV !== ApplyVec[322] && ApplyVec[322] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d TXEV (r:%h != e:%h)", VecCount, roTXEV, ApplyVec[322]); 
  end 
// Output: LOCKUP 
  if (roLOCKUP !== ApplyVec[323] && ApplyVec[323] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d LOCKUP (r:%h != e:%h)", VecCount, roLOCKUP, ApplyVec[323]); 
  end 
// Output: SYSRESETREQ 
  if (roSYSRESETREQ !== ApplyVec[324] && ApplyVec[324] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SYSRESETREQ (r:%h != e:%h)", VecCount, roSYSRESETREQ, ApplyVec[324]); 
  end 
// Output: CODENSEQ 
  if (roCODENSEQ !== ApplyVec[325] && ApplyVec[325] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d CODENSEQ (r:%h != e:%h)", VecCount, roCODENSEQ, ApplyVec[325]); 
  end 
// Output: CODEHINTDE[2:0] 
  if (roCODEHINTDE__2_0[0] !== ApplyVec[326] && ApplyVec[326] !== 1'bx || roCODEHINTDE__2_0[1] !== ApplyVec[327] && ApplyVec[327] !== 1'bx || roCODEHINTDE__2_0[2] !== ApplyVec[328] && ApplyVec[328] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d CODEHINTDE[2:0] (r:%h != e:%h)", VecCount, roCODEHINTDE__2_0, ApplyVec[328:326]); 
  end 
// Output: SPECHTRANS 
  if (roSPECHTRANS !== ApplyVec[329] && ApplyVec[329] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SPECHTRANS (r:%h != e:%h)", VecCount, roSPECHTRANS, ApplyVec[329]); 
  end 
// Output: SLEEPING 
  if (roSLEEPING !== ApplyVec[330] && ApplyVec[330] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SLEEPING (r:%h != e:%h)", VecCount, roSLEEPING, ApplyVec[330]); 
  end 
// Output: SLEEPDEEP 
  if (roSLEEPDEEP !== ApplyVec[331] && ApplyVec[331] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SLEEPDEEP (r:%h != e:%h)", VecCount, roSLEEPDEEP, ApplyVec[331]); 
  end 
// Output: SLEEPHOLDACKn 
  if (roSLEEPHOLDACKn !== ApplyVec[332] && ApplyVec[332] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SLEEPHOLDACKn (r:%h != e:%h)", VecCount, roSLEEPHOLDACKn, ApplyVec[332]); 
  end 
// Output: WICDSACKn 
  if (roWICDSACKn !== ApplyVec[333] && ApplyVec[333] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d WICDSACKn (r:%h != e:%h)", VecCount, roWICDSACKn, ApplyVec[333]); 
  end 
// Output: WICMASKISR[31:0] 
  if (roWICMASKISR__31_0[0] !== ApplyVec[334] && ApplyVec[334] !== 1'bx || roWICMASKISR__31_0[1] !== ApplyVec[335] && ApplyVec[335] !== 1'bx || roWICMASKISR__31_0[2] !== ApplyVec[336] && ApplyVec[336] !== 1'bx || roWICMASKISR__31_0[3] !== ApplyVec[337] && ApplyVec[337] !== 1'bx || roWICMASKISR__31_0[4] !== ApplyVec[338] && ApplyVec[338] !== 1'bx || roWICMASKISR__31_0[5] !== ApplyVec[339] && ApplyVec[339] !== 1'bx || roWICMASKISR__31_0[6] !== ApplyVec[340] && ApplyVec[340] !== 1'bx || roWICMASKISR__31_0[7] !== ApplyVec[341] && ApplyVec[341] !== 1'bx || roWICMASKISR__31_0[8] !== ApplyVec[342] && ApplyVec[342] !== 1'bx || roWICMASKISR__31_0[9] !== ApplyVec[343] && ApplyVec[343] !== 1'bx || roWICMASKISR__31_0[10] !== ApplyVec[344] && ApplyVec[344] !== 1'bx || roWICMASKISR__31_0[11] !== ApplyVec[345] && ApplyVec[345] !== 1'bx || roWICMASKISR__31_0[12] !== ApplyVec[346] && ApplyVec[346] !== 1'bx || roWICMASKISR__31_0[13] !== ApplyVec[347] && ApplyVec[347] !== 1'bx || roWICMASKISR__31_0[14] !== ApplyVec[348] && ApplyVec[348] !== 1'bx || roWICMASKISR__31_0[15] !== ApplyVec[349] && ApplyVec[349] !== 1'bx || roWICMASKISR__31_0[16] !== ApplyVec[350] && ApplyVec[350] !== 1'bx || roWICMASKISR__31_0[17] !== ApplyVec[351] && ApplyVec[351] !== 1'bx || roWICMASKISR__31_0[18] !== ApplyVec[352] && ApplyVec[352] !== 1'bx || roWICMASKISR__31_0[19] !== ApplyVec[353] && ApplyVec[353] !== 1'bx || roWICMASKISR__31_0[20] !== ApplyVec[354] && ApplyVec[354] !== 1'bx || roWICMASKISR__31_0[21] !== ApplyVec[355] && ApplyVec[355] !== 1'bx || roWICMASKISR__31_0[22] !== ApplyVec[356] && ApplyVec[356] !== 1'bx || roWICMASKISR__31_0[23] !== ApplyVec[357] && ApplyVec[357] !== 1'bx || roWICMASKISR__31_0[24] !== ApplyVec[358] && ApplyVec[358] !== 1'bx || roWICMASKISR__31_0[25] !== ApplyVec[359] && ApplyVec[359] !== 1'bx || roWICMASKISR__31_0[26] !== ApplyVec[360] && ApplyVec[360] !== 1'bx || roWICMASKISR__31_0[27] !== ApplyVec[361] && ApplyVec[361] !== 1'bx || roWICMASKISR__31_0[28] !== ApplyVec[362] && ApplyVec[362] !== 1'bx || roWICMASKISR__31_0[29] !== ApplyVec[363] && ApplyVec[363] !== 1'bx || roWICMASKISR__31_0[30] !== ApplyVec[364] && ApplyVec[364] !== 1'bx || roWICMASKISR__31_0[31] !== ApplyVec[365] && ApplyVec[365] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d WICMASKISR[31:0] (r:%h != e:%h)", VecCount, roWICMASKISR__31_0, ApplyVec[365:334]); 
  end 
// Output: WICMASKNMI 
  if (roWICMASKNMI !== ApplyVec[366] && ApplyVec[366] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d WICMASKNMI (r:%h != e:%h)", VecCount, roWICMASKNMI, ApplyVec[366]); 
  end 
// Output: WICMASKRXEV 
  if (roWICMASKRXEV !== ApplyVec[367] && ApplyVec[367] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d WICMASKRXEV (r:%h != e:%h)", VecCount, roWICMASKRXEV, ApplyVec[367]); 
  end 
// Output: WICLOAD 
  if (roWICLOAD !== ApplyVec[368] && ApplyVec[368] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d WICLOAD (r:%h != e:%h)", VecCount, roWICLOAD, ApplyVec[368]); 
  end 
// Output: WICCLEAR 
  if (roWICCLEAR !== ApplyVec[369] && ApplyVec[369] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d WICCLEAR (r:%h != e:%h)", VecCount, roWICCLEAR, ApplyVec[369]); 
  end 
`ifdef ARM_CM0_REPLAY_SRPG
// Output: SYSPWRDOWNACK 
  if (roSYSPWRDOWNACK !== ApplyVec[370] && ApplyVec[370] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SYSPWRDOWNACK (r:%h != e:%h)", VecCount, roSYSPWRDOWNACK, ApplyVec[370]); 
  end 
// Output: DBGPWRDOWNACK 
  if (roDBGPWRDOWNACK !== ApplyVec[371] && ApplyVec[371] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d DBGPWRDOWNACK (r:%h != e:%h)", VecCount, roDBGPWRDOWNACK, ApplyVec[371]); 
  end 
`endif // ARM_CM0_REPLAY_SRPG
end 
endtask 

endmodule 
