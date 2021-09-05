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
//     CORTEXM0INTEGRATIONIMP Replay Testbench
//-----------------------------------------------------------------------------

`timescale 1ns / 1ps

module CORTEXM0INTEGRATIONIMP_Replay_tb;

localparam MaxErrors = 200;
localparam MaxVectors = 500000;
localparam __reportperiod = 10;

integer VecCount, ErrorCount, NumVectors;
reg [289:0] ApplyVec;
reg [289:0] VecMem [0:MaxVectors];

reg  riFCLK;
reg  riSCLK;
reg  riHCLK;
reg  riDCLK;
reg  riPORESETn;
reg  riDBGRESETn;
reg  riHRESETn;
reg  riSWCLKTCK;
reg  rinTRST;
reg [31:0] riHRDATA__31_0;
reg  riHREADY;
reg  riHRESP;
reg  riSWDITMS;
reg  riTDI;
reg  riDBGRESTART;
reg  riEDBGRQ;
reg  riNMI;
reg [31:0] riIRQ__31_0;
reg  riRXEV;
reg [25:0] riSTCALIB__25_0;
reg  riSTCLKEN;
reg [7:0] riIRQLATENCY__7_0;
reg [19:0] riECOREVNUM__27_0;
reg  riSLEEPHOLDREQn;
reg  riWICENREQ;
reg  riCDBGPWRUPACK;
reg  riSE;
reg  riRSTBYPASS;
reg [31:0] roHADDR__31_0;
reg [2:0] roHBURST__2_0;
reg  roHMASTLOCK;
reg [3:0] roHPROT__3_0;
reg [2:0] roHSIZE__2_0;
reg [1:0] roHTRANS__1_0;
reg [31:0] roHWDATA__31_0;
reg  roHWRITE;
reg  roHMASTER;
reg  roCODENSEQ;
reg [2:0] roCODEHINTDE__2_0;
reg  roSPECHTRANS;
reg  roSWDO;
reg  roSWDOEN;
reg  roTDO;
reg  ronTDOEN;
reg  roDBGRESTARTED;
reg  roHALTED;
reg  roTXEV;
reg  roLOCKUP;
reg  roSYSRESETREQ;
reg  roGATEHCLK;
reg  roSLEEPING;
reg  roSLEEPDEEP;
reg  roWAKEUP;
reg [33:0] roWICSENSE__33_0;
reg  roSLEEPHOLDACKn;
reg  roWICENACK;
reg  roCDBGPWRUPREQ;
`ifdef ARM_CM0_REPLAY_SRPG
reg  riSYSRETAINn;
reg  riSYSISOLATEn;
reg  riSYSPWRDOWN;
reg  riDBGISOLATEn;
reg  riDBGPWRDOWN;
reg  roSYSPWRDOWNACK;
reg  roDBGPWRDOWNACK;
`endif //ARM_CM0_REPLAY_SRPG

wire  FCLK = riFCLK;
wire  SCLK = riSCLK;
wire  HCLK = riHCLK;
wire  DCLK = riDCLK;
wire  PORESETn = riPORESETn;
wire  DBGRESETn = riDBGRESETn;
wire  HRESETn = riHRESETn;
wire  SWCLKTCK = riSWCLKTCK;
wire  nTRST = rinTRST;
wire [31:0] HRDATA__31_0 = riHRDATA__31_0;
wire  HREADY = riHREADY;
wire  HRESP = riHRESP;
wire  SWDITMS = riSWDITMS;
wire  TDI = riTDI;
wire  DBGRESTART = riDBGRESTART;
wire  EDBGRQ = riEDBGRQ;
wire  NMI = riNMI;
wire [31:0] IRQ__31_0 = riIRQ__31_0;
wire  RXEV = riRXEV;
wire [25:0] STCALIB__25_0 = riSTCALIB__25_0;
wire  STCLKEN = riSTCLKEN;
wire [7:0] IRQLATENCY__7_0 = riIRQLATENCY__7_0;
wire [27:0] ECOREVNUM__27_0 = riECOREVNUM__27_0;
wire  SLEEPHOLDREQn = riSLEEPHOLDREQn;
wire  WICENREQ = riWICENREQ;
wire  CDBGPWRUPACK = riCDBGPWRUPACK;
wire  SE = riSE;
wire  RSTBYPASS = riRSTBYPASS;
wire [31:0] HADDR__31_0;
wire [2:0] HBURST__2_0;
wire  HMASTLOCK;
wire [3:0] HPROT__3_0;
wire [2:0] HSIZE__2_0;
wire [1:0] HTRANS__1_0;
wire [31:0] HWDATA__31_0;
wire  HWRITE;
wire  HMASTER;
wire  CODENSEQ;
wire [2:0] CODEHINTDE__2_0;
wire  SPECHTRANS;
wire  SWDO;
wire  SWDOEN;
wire  TDO;
wire  nTDOEN;
wire  DBGRESTARTED;
wire  HALTED;
wire  TXEV;
wire  LOCKUP;
wire  SYSRESETREQ;
wire  GATEHCLK;
wire  SLEEPING;
wire  SLEEPDEEP;
wire  WAKEUP;
wire [33:0] WICSENSE__33_0;
wire  SLEEPHOLDACKn;
wire  WICENACK;
wire  CDBGPWRUPREQ;
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
      $sdf_annotate("../CORTEXM0INTEGRATIONIMP.sdf.gz", uut);
    end
`endif 

//-----------------------------------------------------------------------------
// CORTEX-M0 Integration Implementation Instantiation
//-----------------------------------------------------------------------------

  CORTEXM0INTEGRATIONIMP
  uut
  (.FCLK                (FCLK),
   .SCLK                (SCLK),
   .HCLK                (HCLK),
   .DCLK                (DCLK),
   .PORESETn            (PORESETn),
   .DBGRESETn           (DBGRESETn),
   .HRESETn             (HRESETn),
   .SWCLKTCK            (SWCLKTCK),
   .nTRST               (nTRST),
   .HRDATA              (HRDATA__31_0),
   .HREADY              (HREADY),
   .HRESP               (HRESP),
   .SWDITMS             (SWDITMS),
   .TDI                 (TDI),
   .DBGRESTART          (DBGRESTART),
   .EDBGRQ              (EDBGRQ),
   .NMI                 (NMI),
   .IRQ                 (IRQ__31_0),
   .RXEV                (RXEV),
   .STCALIB             (STCALIB__25_0),
   .STCLKEN             (STCLKEN),
   .IRQLATENCY          (IRQLATENCY__7_0),
   .ECOREVNUM           (ECOREVNUM__27_0),
   .SLEEPHOLDREQn       (SLEEPHOLDREQn),
   .WICENREQ            (WICENREQ),
   .CDBGPWRUPACK        (CDBGPWRUPACK),
   .SE                  (SE),
   .RSTBYPASS           (RSTBYPASS),
   .HADDR               (HADDR__31_0),
   .HBURST              (HBURST__2_0),
   .HMASTLOCK           (HMASTLOCK),
   .HPROT               (HPROT__3_0),
   .HSIZE               (HSIZE__2_0),
   .HTRANS              (HTRANS__1_0),
   .HWDATA              (HWDATA__31_0),
   .HWRITE              (HWRITE),
   .HMASTER             (HMASTER),
   .CODENSEQ            (CODENSEQ),
   .CODEHINTDE          (CODEHINTDE__2_0),
   .SPECHTRANS          (SPECHTRANS),
   .SWDO                (SWDO),
   .SWDOEN              (SWDOEN),
   .TDO                 (TDO),
   .nTDOEN              (nTDOEN),
   .DBGRESTARTED        (DBGRESTARTED),
   .HALTED              (HALTED),
   .TXEV                (TXEV),
   .LOCKUP              (LOCKUP),
   .SYSRESETREQ         (SYSRESETREQ),
   .GATEHCLK            (GATEHCLK),
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
   .WAKEUP              (WAKEUP),
   .WICSENSE            (WICSENSE__33_0),
   .SLEEPHOLDACKn       (SLEEPHOLDACKn),
   .WICENACK            (WICENACK),
   .CDBGPWRUPREQ        (CDBGPWRUPREQ)
   );

// Main control block
reg __replayclock;
initial
 begin
  ErrorCount = 0;
  VecCount = 1;
  __replayclock = 0;
  NumVectors = 0;
  $display("%m: loading VRF from CORTEXM0INTEGRATIONIMP_vectors.vrf");
  $readmemb("CORTEXM0INTEGRATIONIMP_vectors.vrf", VecMem);
  while (VecMem[NumVectors] !== 290'bx && NumVectors <= MaxVectors)
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
// Input: FCLK
 if (ApplyVec[0] === 1'bx) $display("%m: FCLK, vector %d: inputting 'X'", VecCount);
 riFCLK <=  1'b0;
 riFCLK <= #100 ApplyVec[0];
 riFCLK <= #600  1'b0;
// Input: SCLK 
 if (ApplyVec[1] === 1'bx) $display("%m: SCLK, vector %d: inputting 'X'", VecCount); 
 riSCLK <=  1'b0; 
 riSCLK <= #100 ApplyVec[1]; 
 riSCLK <= #600  1'b0; 
// Input: HCLK 
 if (ApplyVec[2] === 1'bx) $display("%m: HCLK, vector %d: inputting 'X'", VecCount); 
 riHCLK <=  1'b0; 
 riHCLK <= #100 ApplyVec[2]; 
 riHCLK <= #600  1'b0; 
// Input: DCLK 
 if (ApplyVec[3] === 1'bx) $display("%m: DCLK, vector %d: inputting 'X'", VecCount); 
 riDCLK <=  1'b0; 
 riDCLK <= #100 ApplyVec[3]; 
 riDCLK <= #600  1'b0; 
// Input: PORESETn 
 if (ApplyVec[4] === 1'bx) $display("%m: PORESETn, vector %d: inputting 'X'", VecCount); 
 riPORESETn <= #250 ApplyVec[4]; 
// Input: DBGRESETn 
 if (ApplyVec[5] === 1'bx) $display("%m: DBGRESETn, vector %d: inputting 'X'", VecCount); 
 riDBGRESETn <= #250 ApplyVec[5]; 
// Input: HRESETn 
 if (ApplyVec[6] === 1'bx) $display("%m: HRESETn, vector %d: inputting 'X'", VecCount); 
 riHRESETn <= #250 ApplyVec[6]; 
// Input: SWCLKTCK 
 if (ApplyVec[7] === 1'bx) $display("%m: SWCLKTCK, vector %d: inputting 'X'", VecCount); 
 riSWCLKTCK <= #250 ApplyVec[7]; 
// Input: nTRST 
 if (ApplyVec[8] === 1'bx) $display("%m: nTRST, vector %d: inputting 'X'", VecCount); 
 rinTRST <= #250 ApplyVec[8]; 
// Input: HRDATA[31:0] 
 if (ApplyVec[40:9] === 32'bx) $display("%m: HRDATA[31:0], vector %d: inputting 'X'", VecCount); 
 riHRDATA__31_0 <= #250 ApplyVec[40:9]; 
// Input: HREADY 
 if (ApplyVec[41] === 1'bx) $display("%m: HREADY, vector %d: inputting 'X'", VecCount); 
 riHREADY <= #250 ApplyVec[41]; 
// Input: HRESP 
 if (ApplyVec[42] === 1'bx) $display("%m: HRESP, vector %d: inputting 'X'", VecCount); 
 riHRESP <= #250 ApplyVec[42]; 
// Input: SWDITMS 
 if (ApplyVec[43] === 1'bx) $display("%m: SWDITMS, vector %d: inputting 'X'", VecCount); 
 riSWDITMS <= #250 ApplyVec[43]; 
// Input: TDI 
 if (ApplyVec[44] === 1'bx) $display("%m: TDI, vector %d: inputting 'X'", VecCount); 
 riTDI <= #250 ApplyVec[44]; 
// Input: DBGRESTART 
 if (ApplyVec[45] === 1'bx) $display("%m: DBGRESTART, vector %d: inputting 'X'", VecCount); 
 riDBGRESTART <= #250 ApplyVec[45]; 
// Input: EDBGRQ 
 if (ApplyVec[46] === 1'bx) $display("%m: EDBGRQ, vector %d: inputting 'X'", VecCount); 
 riEDBGRQ <= #250 ApplyVec[46]; 
// Input: NMI 
 if (ApplyVec[47] === 1'bx) $display("%m: NMI, vector %d: inputting 'X'", VecCount); 
 riNMI <= #250 ApplyVec[47]; 
// Input: IRQ[31:0] 
 if (ApplyVec[79:48] === 32'bx) $display("%m: IRQ[31:0], vector %d: inputting 'X'", VecCount); 
 riIRQ__31_0 <= #250 ApplyVec[79:48]; 
// Input: RXEV 
 if (ApplyVec[80] === 1'bx) $display("%m: RXEV, vector %d: inputting 'X'", VecCount); 
 riRXEV <= #250 ApplyVec[80]; 
// Input: STCALIB[25:0] 
 if (ApplyVec[106:81] === 26'bx) $display("%m: STCALIB[25:0], vector %d: inputting 'X'", VecCount); 
 riSTCALIB__25_0 <= #250 ApplyVec[106:81]; 
// Input: STCLKEN 
 if (ApplyVec[107] === 1'bx) $display("%m: STCLKEN, vector %d: inputting 'X'", VecCount); 
 riSTCLKEN <= #250 ApplyVec[107]; 
// Input: IRQLATENCY[7:0] 
 if (ApplyVec[115:108] === 8'bx) $display("%m: IRQLATENCY[7:0], vector %d: inputting 'X'", VecCount); 
 riIRQLATENCY__7_0 <= #250 ApplyVec[115:108]; 
// Input: ECOREVNUM[27:0] 
 if (ApplyVec[143:116] === 28'bx) $display("%m: ECOREVNUM[27:0], vector %d: inputting 'X'", VecCount); 
 riECOREVNUM__27_0 <= #250 ApplyVec[143:116]; 
// Input: SLEEPHOLDREQn 
 if (ApplyVec[144] === 1'bx) $display("%m: SLEEPHOLDREQn, vector %d: inputting 'X'", VecCount); 
 riSLEEPHOLDREQn <= #250 ApplyVec[144]; 
// Input: WICENREQ 
 if (ApplyVec[145] === 1'bx) $display("%m: WICENREQ, vector %d: inputting 'X'", VecCount); 
 riWICENREQ <= #250 ApplyVec[145]; 
// Input: CDBGPWRUPACK 
 if (ApplyVec[146] === 1'bx) $display("%m: CDBGPWRUPACK, vector %d: inputting 'X'", VecCount); 
 riCDBGPWRUPACK <= #250 ApplyVec[146]; 
// Input: SE 
 if (ApplyVec[147] === 1'bx) $display("%m: SE, vector %d: inputting 'X'", VecCount); 
 riSE <= #250 ApplyVec[147]; 
// Input: RSTBYPASS 
 if (ApplyVec[148] === 1'bx) $display("%m: RSTBYPASS, vector %d: inputting 'X'", VecCount); 
 riRSTBYPASS <= #250 ApplyVec[148]; 
`ifdef ARM_CM0_REPLAY_SRPG
// Input: SYSRETAINn 
 if (ApplyVec[149] === 1'bx) $display("%m: SYSRETAINn, vector %d: inputting 'X'", VecCount); 
 riSYSRETAINn <= #250 ApplyVec[149]; 
// Input: SYSISOLATEn 
 if (ApplyVec[150] === 1'bx) $display("%m: SYSISOLATEn, vector %d: inputting 'X'", VecCount); 
 riSYSISOLATEn <= #250 ApplyVec[150]; 
// Input: SYSPWRDOWN 
 if (ApplyVec[151] === 1'bx) $display("%m: SYSPWRDOWN, vector %d: inputting 'X'", VecCount); 
 riSYSPWRDOWN <= #250 ApplyVec[151]; 
// Input: DBGISOLATEn 
 if (ApplyVec[152] === 1'bx) $display("%m: DBGISOLATEn, vector %d: inputting 'X'", VecCount); 
 riDBGISOLATEn <= #250 ApplyVec[152]; 
// Input: DBGPWRDOWN 
 if (ApplyVec[153] === 1'bx) $display("%m: DBGPWRDOWN, vector %d: inputting 'X'", VecCount); 
 riDBGPWRDOWN <= #250 ApplyVec[153]; 
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
// Output: CODENSEQ 
#400 roCODENSEQ <= CODENSEQ; 
// Output: CODEHINTDE[2:0] 
#400 roCODEHINTDE__2_0 <= CODEHINTDE__2_0; 
// Output: SPECHTRANS 
#400 roSPECHTRANS <= SPECHTRANS; 
// Output: SWDO 
#400 roSWDO <= SWDO; 
// Output: SWDOEN 
#400 roSWDOEN <= SWDOEN; 
// Output: TDO 
#400 roTDO <= TDO; 
// Output: nTDOEN 
#400 ronTDOEN <= nTDOEN; 
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
// Output: GATEHCLK 
#400 roGATEHCLK <= GATEHCLK; 
// Output: SLEEPING 
#400 roSLEEPING <= SLEEPING; 
// Output: SLEEPDEEP 
#400 roSLEEPDEEP <= SLEEPDEEP; 
// Output: WAKEUP 
#400 roWAKEUP <= WAKEUP; 
// Output: WICSENSE[33:0] 
#400 roWICSENSE__33_0 <= WICSENSE__33_0; 
// Output: SLEEPHOLDACKn 
#400 roSLEEPHOLDACKn <= SLEEPHOLDACKn; 
// Output: WICENACK 
#400 roWICENACK <= WICENACK; 
// Output: CDBGPWRUPREQ 
#400 roCDBGPWRUPREQ <= CDBGPWRUPREQ; 
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
  if (roHADDR__31_0[0] !== ApplyVec[154] && ApplyVec[154] !== 1'bx || roHADDR__31_0[1] !== ApplyVec[155] && ApplyVec[155] !== 1'bx || roHADDR__31_0[2] !== ApplyVec[156] && ApplyVec[156] !== 1'bx || roHADDR__31_0[3] !== ApplyVec[157] && ApplyVec[157] !== 1'bx || roHADDR__31_0[4] !== ApplyVec[158] && ApplyVec[158] !== 1'bx || roHADDR__31_0[5] !== ApplyVec[159] && ApplyVec[159] !== 1'bx || roHADDR__31_0[6] !== ApplyVec[160] && ApplyVec[160] !== 1'bx || roHADDR__31_0[7] !== ApplyVec[161] && ApplyVec[161] !== 1'bx || roHADDR__31_0[8] !== ApplyVec[162] && ApplyVec[162] !== 1'bx || roHADDR__31_0[9] !== ApplyVec[163] && ApplyVec[163] !== 1'bx || roHADDR__31_0[10] !== ApplyVec[164] && ApplyVec[164] !== 1'bx || roHADDR__31_0[11] !== ApplyVec[165] && ApplyVec[165] !== 1'bx || roHADDR__31_0[12] !== ApplyVec[166] && ApplyVec[166] !== 1'bx || roHADDR__31_0[13] !== ApplyVec[167] && ApplyVec[167] !== 1'bx || roHADDR__31_0[14] !== ApplyVec[168] && ApplyVec[168] !== 1'bx || roHADDR__31_0[15] !== ApplyVec[169] && ApplyVec[169] !== 1'bx || roHADDR__31_0[16] !== ApplyVec[170] && ApplyVec[170] !== 1'bx || roHADDR__31_0[17] !== ApplyVec[171] && ApplyVec[171] !== 1'bx || roHADDR__31_0[18] !== ApplyVec[172] && ApplyVec[172] !== 1'bx || roHADDR__31_0[19] !== ApplyVec[173] && ApplyVec[173] !== 1'bx || roHADDR__31_0[20] !== ApplyVec[174] && ApplyVec[174] !== 1'bx || roHADDR__31_0[21] !== ApplyVec[175] && ApplyVec[175] !== 1'bx || roHADDR__31_0[22] !== ApplyVec[176] && ApplyVec[176] !== 1'bx || roHADDR__31_0[23] !== ApplyVec[177] && ApplyVec[177] !== 1'bx || roHADDR__31_0[24] !== ApplyVec[178] && ApplyVec[178] !== 1'bx || roHADDR__31_0[25] !== ApplyVec[179] && ApplyVec[179] !== 1'bx || roHADDR__31_0[26] !== ApplyVec[180] && ApplyVec[180] !== 1'bx || roHADDR__31_0[27] !== ApplyVec[181] && ApplyVec[181] !== 1'bx || roHADDR__31_0[28] !== ApplyVec[182] && ApplyVec[182] !== 1'bx || roHADDR__31_0[29] !== ApplyVec[183] && ApplyVec[183] !== 1'bx || roHADDR__31_0[30] !== ApplyVec[184] && ApplyVec[184] !== 1'bx || roHADDR__31_0[31] !== ApplyVec[185] && ApplyVec[185] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HADDR[31:0] (r:%h != e:%h)", VecCount, roHADDR__31_0, ApplyVec[185:154]); 
  end 
// Output: HBURST[2:0] 
  if (roHBURST__2_0[0] !== ApplyVec[186] && ApplyVec[186] !== 1'bx || roHBURST__2_0[1] !== ApplyVec[187] && ApplyVec[187] !== 1'bx || roHBURST__2_0[2] !== ApplyVec[188] && ApplyVec[188] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HBURST[2:0] (r:%h != e:%h)", VecCount, roHBURST__2_0, ApplyVec[188:186]); 
  end 
// Output: HMASTLOCK 
  if (roHMASTLOCK !== ApplyVec[189] && ApplyVec[189] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HMASTLOCK (r:%h != e:%h)", VecCount, roHMASTLOCK, ApplyVec[189]); 
  end 
// Output: HPROT[3:0] 
  if (roHPROT__3_0[0] !== ApplyVec[190] && ApplyVec[190] !== 1'bx || roHPROT__3_0[1] !== ApplyVec[191] && ApplyVec[191] !== 1'bx || roHPROT__3_0[2] !== ApplyVec[192] && ApplyVec[192] !== 1'bx || roHPROT__3_0[3] !== ApplyVec[193] && ApplyVec[193] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HPROT[3:0] (r:%h != e:%h)", VecCount, roHPROT__3_0, ApplyVec[193:190]); 
  end 
// Output: HSIZE[2:0] 
  if (roHSIZE__2_0[0] !== ApplyVec[194] && ApplyVec[194] !== 1'bx || roHSIZE__2_0[1] !== ApplyVec[195] && ApplyVec[195] !== 1'bx || roHSIZE__2_0[2] !== ApplyVec[196] && ApplyVec[196] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HSIZE[2:0] (r:%h != e:%h)", VecCount, roHSIZE__2_0, ApplyVec[196:194]); 
  end 
// Output: HTRANS[1:0] 
  if (roHTRANS__1_0[0] !== ApplyVec[197] && ApplyVec[197] !== 1'bx || roHTRANS__1_0[1] !== ApplyVec[198] && ApplyVec[198] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HTRANS[1:0] (r:%h != e:%h)", VecCount, roHTRANS__1_0, ApplyVec[198:197]); 
  end 
// Output: HWDATA[31:0] 
  if (roHWDATA__31_0[0] !== ApplyVec[199] && ApplyVec[199] !== 1'bx || roHWDATA__31_0[1] !== ApplyVec[200] && ApplyVec[200] !== 1'bx || roHWDATA__31_0[2] !== ApplyVec[201] && ApplyVec[201] !== 1'bx || roHWDATA__31_0[3] !== ApplyVec[202] && ApplyVec[202] !== 1'bx || roHWDATA__31_0[4] !== ApplyVec[203] && ApplyVec[203] !== 1'bx || roHWDATA__31_0[5] !== ApplyVec[204] && ApplyVec[204] !== 1'bx || roHWDATA__31_0[6] !== ApplyVec[205] && ApplyVec[205] !== 1'bx || roHWDATA__31_0[7] !== ApplyVec[206] && ApplyVec[206] !== 1'bx || roHWDATA__31_0[8] !== ApplyVec[207] && ApplyVec[207] !== 1'bx || roHWDATA__31_0[9] !== ApplyVec[208] && ApplyVec[208] !== 1'bx || roHWDATA__31_0[10] !== ApplyVec[209] && ApplyVec[209] !== 1'bx || roHWDATA__31_0[11] !== ApplyVec[210] && ApplyVec[210] !== 1'bx || roHWDATA__31_0[12] !== ApplyVec[211] && ApplyVec[211] !== 1'bx || roHWDATA__31_0[13] !== ApplyVec[212] && ApplyVec[212] !== 1'bx || roHWDATA__31_0[14] !== ApplyVec[213] && ApplyVec[213] !== 1'bx || roHWDATA__31_0[15] !== ApplyVec[214] && ApplyVec[214] !== 1'bx || roHWDATA__31_0[16] !== ApplyVec[215] && ApplyVec[215] !== 1'bx || roHWDATA__31_0[17] !== ApplyVec[216] && ApplyVec[216] !== 1'bx || roHWDATA__31_0[18] !== ApplyVec[217] && ApplyVec[217] !== 1'bx || roHWDATA__31_0[19] !== ApplyVec[218] && ApplyVec[218] !== 1'bx || roHWDATA__31_0[20] !== ApplyVec[219] && ApplyVec[219] !== 1'bx || roHWDATA__31_0[21] !== ApplyVec[220] && ApplyVec[220] !== 1'bx || roHWDATA__31_0[22] !== ApplyVec[221] && ApplyVec[221] !== 1'bx || roHWDATA__31_0[23] !== ApplyVec[222] && ApplyVec[222] !== 1'bx || roHWDATA__31_0[24] !== ApplyVec[223] && ApplyVec[223] !== 1'bx || roHWDATA__31_0[25] !== ApplyVec[224] && ApplyVec[224] !== 1'bx || roHWDATA__31_0[26] !== ApplyVec[225] && ApplyVec[225] !== 1'bx || roHWDATA__31_0[27] !== ApplyVec[226] && ApplyVec[226] !== 1'bx || roHWDATA__31_0[28] !== ApplyVec[227] && ApplyVec[227] !== 1'bx || roHWDATA__31_0[29] !== ApplyVec[228] && ApplyVec[228] !== 1'bx || roHWDATA__31_0[30] !== ApplyVec[229] && ApplyVec[229] !== 1'bx || roHWDATA__31_0[31] !== ApplyVec[230] && ApplyVec[230] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HWDATA[31:0] (r:%h != e:%h)", VecCount, roHWDATA__31_0, ApplyVec[230:199]); 
  end 
// Output: HWRITE 
  if (roHWRITE !== ApplyVec[231] && ApplyVec[231] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HWRITE (r:%h != e:%h)", VecCount, roHWRITE, ApplyVec[231]); 
  end 
// Output: HMASTER 
  if (roHMASTER !== ApplyVec[232] && ApplyVec[232] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HMASTER (r:%h != e:%h)", VecCount, roHMASTER, ApplyVec[232]); 
  end 
// Output: CODENSEQ 
  if (roCODENSEQ !== ApplyVec[233] && ApplyVec[233] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d CODENSEQ (r:%h != e:%h)", VecCount, roCODENSEQ, ApplyVec[233]); 
  end 
// Output: CODEHINTDE[2:0] 
  if (roCODEHINTDE__2_0[0] !== ApplyVec[234] && ApplyVec[234] !== 1'bx || roCODEHINTDE__2_0[1] !== ApplyVec[235] && ApplyVec[235] !== 1'bx || roCODEHINTDE__2_0[2] !== ApplyVec[236] && ApplyVec[236] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d CODEHINTDE[2:0] (r:%h != e:%h)", VecCount, roCODEHINTDE__2_0, ApplyVec[236:234]); 
  end 
// Output: SPECHTRANS 
  if (roSPECHTRANS !== ApplyVec[237] && ApplyVec[237] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SPECHTRANS (r:%h != e:%h)", VecCount, roSPECHTRANS, ApplyVec[237]); 
  end 
// Output: SWDO 
  if (roSWDO !== ApplyVec[238] && ApplyVec[238] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SWDO (r:%h != e:%h)", VecCount, roSWDO, ApplyVec[238]); 
  end 
// Output: SWDOEN 
  if (roSWDOEN !== ApplyVec[239] && ApplyVec[239] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SWDOEN (r:%h != e:%h)", VecCount, roSWDOEN, ApplyVec[239]); 
  end 
// Output: TDO 
  if (roTDO !== ApplyVec[240] && ApplyVec[240] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d TDO (r:%h != e:%h)", VecCount, roTDO, ApplyVec[240]); 
  end 
// Output: nTDOEN 
  if (ronTDOEN !== ApplyVec[241] && ApplyVec[241] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d nTDOEN (r:%h != e:%h)", VecCount, ronTDOEN, ApplyVec[241]); 
  end 
// Output: DBGRESTARTED 
  if (roDBGRESTARTED !== ApplyVec[242] && ApplyVec[242] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d DBGRESTARTED (r:%h != e:%h)", VecCount, roDBGRESTARTED, ApplyVec[242]); 
  end 
// Output: HALTED 
  if (roHALTED !== ApplyVec[243] && ApplyVec[243] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d HALTED (r:%h != e:%h)", VecCount, roHALTED, ApplyVec[243]); 
  end 
// Output: TXEV 
  if (roTXEV !== ApplyVec[244] && ApplyVec[244] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d TXEV (r:%h != e:%h)", VecCount, roTXEV, ApplyVec[244]); 
  end 
// Output: LOCKUP 
  if (roLOCKUP !== ApplyVec[245] && ApplyVec[245] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d LOCKUP (r:%h != e:%h)", VecCount, roLOCKUP, ApplyVec[245]); 
  end 
// Output: SYSRESETREQ 
  if (roSYSRESETREQ !== ApplyVec[246] && ApplyVec[246] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SYSRESETREQ (r:%h != e:%h)", VecCount, roSYSRESETREQ, ApplyVec[246]); 
  end 
// Output: GATEHCLK 
  if (roGATEHCLK !== ApplyVec[247] && ApplyVec[247] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d GATEHCLK (r:%h != e:%h)", VecCount, roGATEHCLK, ApplyVec[247]); 
  end 
// Output: SLEEPING 
  if (roSLEEPING !== ApplyVec[248] && ApplyVec[248] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SLEEPING (r:%h != e:%h)", VecCount, roSLEEPING, ApplyVec[248]); 
  end 
// Output: SLEEPDEEP 
  if (roSLEEPDEEP !== ApplyVec[249] && ApplyVec[249] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SLEEPDEEP (r:%h != e:%h)", VecCount, roSLEEPDEEP, ApplyVec[249]); 
  end 
// Output: WAKEUP 
  if (roWAKEUP !== ApplyVec[250] && ApplyVec[250] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d WAKEUP (r:%h != e:%h)", VecCount, roWAKEUP, ApplyVec[250]); 
  end 
// Output: WICSENSE[33:0] 
  if (roWICSENSE__33_0[0] !== ApplyVec[251] && ApplyVec[251] !== 1'bx || roWICSENSE__33_0[1] !== ApplyVec[252] && ApplyVec[252] !== 1'bx || roWICSENSE__33_0[2] !== ApplyVec[253] && ApplyVec[253] !== 1'bx || roWICSENSE__33_0[3] !== ApplyVec[254] && ApplyVec[254] !== 1'bx || roWICSENSE__33_0[4] !== ApplyVec[255] && ApplyVec[255] !== 1'bx || roWICSENSE__33_0[5] !== ApplyVec[256] && ApplyVec[256] !== 1'bx || roWICSENSE__33_0[6] !== ApplyVec[257] && ApplyVec[257] !== 1'bx || roWICSENSE__33_0[7] !== ApplyVec[258] && ApplyVec[258] !== 1'bx || roWICSENSE__33_0[8] !== ApplyVec[259] && ApplyVec[259] !== 1'bx || roWICSENSE__33_0[9] !== ApplyVec[260] && ApplyVec[260] !== 1'bx || roWICSENSE__33_0[10] !== ApplyVec[261] && ApplyVec[261] !== 1'bx || roWICSENSE__33_0[11] !== ApplyVec[262] && ApplyVec[262] !== 1'bx || roWICSENSE__33_0[12] !== ApplyVec[263] && ApplyVec[263] !== 1'bx || roWICSENSE__33_0[13] !== ApplyVec[264] && ApplyVec[264] !== 1'bx || roWICSENSE__33_0[14] !== ApplyVec[265] && ApplyVec[265] !== 1'bx || roWICSENSE__33_0[15] !== ApplyVec[266] && ApplyVec[266] !== 1'bx || roWICSENSE__33_0[16] !== ApplyVec[267] && ApplyVec[267] !== 1'bx || roWICSENSE__33_0[17] !== ApplyVec[268] && ApplyVec[268] !== 1'bx || roWICSENSE__33_0[18] !== ApplyVec[269] && ApplyVec[269] !== 1'bx || roWICSENSE__33_0[19] !== ApplyVec[270] && ApplyVec[270] !== 1'bx || roWICSENSE__33_0[20] !== ApplyVec[271] && ApplyVec[271] !== 1'bx || roWICSENSE__33_0[21] !== ApplyVec[272] && ApplyVec[272] !== 1'bx || roWICSENSE__33_0[22] !== ApplyVec[273] && ApplyVec[273] !== 1'bx || roWICSENSE__33_0[23] !== ApplyVec[274] && ApplyVec[274] !== 1'bx || roWICSENSE__33_0[24] !== ApplyVec[275] && ApplyVec[275] !== 1'bx || roWICSENSE__33_0[25] !== ApplyVec[276] && ApplyVec[276] !== 1'bx || roWICSENSE__33_0[26] !== ApplyVec[277] && ApplyVec[277] !== 1'bx || roWICSENSE__33_0[27] !== ApplyVec[278] && ApplyVec[278] !== 1'bx || roWICSENSE__33_0[28] !== ApplyVec[279] && ApplyVec[279] !== 1'bx || roWICSENSE__33_0[29] !== ApplyVec[280] && ApplyVec[280] !== 1'bx || roWICSENSE__33_0[30] !== ApplyVec[281] && ApplyVec[281] !== 1'bx || roWICSENSE__33_0[31] !== ApplyVec[282] && ApplyVec[282] !== 1'bx || roWICSENSE__33_0[32] !== ApplyVec[283] && ApplyVec[283] !== 1'bx || roWICSENSE__33_0[33] !== ApplyVec[284] && ApplyVec[284] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d WICSENSE[33:0] (r:%h != e:%h)", VecCount, roWICSENSE__33_0, ApplyVec[284:251]); 
  end 
// Output: SLEEPHOLDACKn 
  if (roSLEEPHOLDACKn !== ApplyVec[285] && ApplyVec[285] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SLEEPHOLDACKn (r:%h != e:%h)", VecCount, roSLEEPHOLDACKn, ApplyVec[285]); 
  end 
// Output: WICENACK 
  if (roWICENACK !== ApplyVec[286] && ApplyVec[286] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d WICENACK (r:%h != e:%h)", VecCount, roWICENACK, ApplyVec[286]); 
  end 
// Output: CDBGPWRUPREQ 
  if (roCDBGPWRUPREQ !== ApplyVec[287] && ApplyVec[287] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d CDBGPWRUPREQ (r:%h != e:%h)", VecCount, roCDBGPWRUPREQ, ApplyVec[287]); 
  end 
`ifdef ARM_CM0_REPLAY_SRPG
// Output: SYSPWRDOWNACK 
  if (roSYSPWRDOWNACK !== ApplyVec[288] && ApplyVec[288] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d SYSPWRDOWNACK (r:%h != e:%h)", VecCount, roSYSPWRDOWNACK, ApplyVec[288]); 
  end 
// Output: DBGPWRDOWNACK 
  if (roDBGPWRDOWNACK !== ApplyVec[289] && ApplyVec[289] !== 1'bx) 
  begin 
    ErrorCount = ErrorCount + 1; 
    $display("VEC COMPARE ERROR line %d DBGPWRDOWNACK (r:%h != e:%h)", VecCount, roDBGPWRDOWNACK, ApplyVec[289]); 
  end 
`endif // ARM_CM0_REPLAY_SRPG
end 
endtask 

endmodule 
