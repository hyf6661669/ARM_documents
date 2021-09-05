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
//      Checked In          : $Date: 2009-03-10 10:05:47 +0000 (Tue, 10 Mar 2009) $
//
//      Revision            : $Revision: 103407 $
//
//      Release Information : Cortex-M0-AT510-r0p0-00rel0
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// CORTEX-M0 CORE DECODER
//-----------------------------------------------------------------------------

// BEFORE MODIFYING REFER TO README

module cm0_core_dec
   (output wire [ 7:0] ex_ctl_nxt,
    output wire        ex_last_nxt,
    output wire        atomic_nxt,
    output wire        alu_en_nxt,
    output wire        spu_en_nxt,
    output wire        b_cond_de,
    output wire        branch_de,
    output wire        aux_en,
    output wire        aux_tbit,
    output wire        aux_align,
    output wire        aux_sel_addr,
    output wire        aux_sel_xpsr,
    output wire        aux_sel_iaex,
    output wire        psp_sel_en,
    output wire        psp_sel_nxt,
    output wire        psp_sel_auto,
    output wire        ra_addr_en,
    output wire        ra_sel_z2_0,
    output wire        ra_sel_7_2_0,
    output wire        ra_sel_z5_3,
    output wire        ra_sel_z10_8,
    output wire        ra_sel_sp,
    output wire        ra_sel_pc,
    output wire        rb_addr_en,
    output wire        rb_sel_z5_3,
    output wire        rb_sel_z8_6,
    output wire        rb_sel_6_3,
    output wire        rb_sel_3_0,
    output wire        rb_sel_wr_ex,
    output wire        rb_sel_list,
    output wire        rb_sel_sp,
    output wire        rb_sel_aux,
    output wire        wr_addr_raw_en,
    output wire        wr_sel_z2_0,
    output wire        wr_sel_z10_8,
    output wire        wr_sel_11_8,
    output wire        wr_sel_10_7,
    output wire        wr_sel_7777,
    output wire        wr_sel_3_0,
    output wire        wr_sel_list,
    output wire        wr_sel_excp,
    output wire        im74_en,
    output wire        im74_sel_6_3,
    output wire        im74_sel_z10,
    output wire        im74_sel_z10_9,
    output wire        im74_sel_z6_4,
    output wire        im74_sel_7_4,
    output wire        im74_sel_list,
    output wire        im74_sel_excp,
    output wire        im74_sel_exnum,
    output wire        im30_en,
    output wire        im30_sel_2_0z,
    output wire        im30_sel_9_6,
    output wire        im30_sel_8_6z,
    output wire        im30_sel_3_0,
    output wire        im30_sel_z8_6,
    output wire        im30_sel_list,
    output wire        im30_sel_incr,
    output wire        im30_sel_one,
    output wire        im30_sel_seven,
    output wire        im30_sel_eight,
    output wire        im30_sel_exnum,
    output wire        wr_en,
    output wire        wr_use_wr,
    output wire        wr_use_ra,
    output wire        wr_use_lr,
    output wire        wr_use_sp,
    output wire        wr_use_list,
    output wire        ra_use_aux,
    output wire        stk_align_en,
    output wire        txev,
    output wire        wfe_execute,
    output wire        wfi_execute,
    output wire        ex_idle,
    output wire        dbg_halt_ack,
    output wire        bkpt_ex,
    output wire        lockup,
    output wire        svc_request,
    output wire        hdf_request_raw,
    output wire        int_taken,
    output wire        int_return,
    output wire        instr_rfi,
    output wire        exnum_en,
    output wire        exnum_sel_bus,
    output wire        exnum_sel_int,
    output wire        nzflag_en,
    output wire        cflag_en,
    output wire        vflag_en,
    output wire        msr_en,
    output wire        cps_en,
    output wire        addr_ex,
    output wire        addr_ra,
    output wire        addr_agu,
    output wire        hwrite,
    output wire        bus_idle,
    output wire        addr_phase,
    output wire        data_phase,
    output wire        iaex_agu,
    output wire        iaex_spu,
    output wire        iaex_en,
    output wire        interwork,
    output wire [19:0] alu_ctl_raw,
    output wire [ 1:0] ls_size_raw,
    output wire        mul_ctl,
    output wire [35:0] spu_ctl_raw,
    input  wire [15:0] opcode,
    input  wire        special,
    input  wire        dbg_halt_req,
    input  wire        dbg_op_run,
    input  wire        debug_en,
    input  wire        int_preempt,
    input  wire        int_delay,
    input  wire        valid_rfi,
    input  wire        sleep_rfi,
    input  wire        wfe_adv,
    input  wire        wfi_adv,
    input  wire        atomic,
    input  wire        hdf_escalate,
    input  wire        svc_escalate,
    input  wire        cfg_smul,
    input  wire        smul_last,
    input  wire        cc_pass,
    input  wire        cfg_be,
    input  wire [ 1:0] addr_last,
    input  wire        data_abort,
    input  wire        list_empty,
    input  wire        list_elast,
    input  wire        ex_last,
    input  wire [ 7:0] ex_ctl);

   // ------------------------------------------------------------
   // Declare local wires for common sub-expressions
   // ------------------------------------------------------------

   wire   net_1008, net_1017, net_1019, net_1020, net_1021,
          net_1022, net_1027, net_103, net_1030, net_1034,
          net_104, net_1041, net_1042, net_105, net_1050, net_106,
          net_1063, net_1064, net_1075, net_1079, net_1090,
          net_1092, net_1099, net_11, net_110, net_1109, net_1110,
          net_1111, net_1113, net_1126, net_1130, net_1139,
          net_114, net_1143, net_1145, net_1160, net_1161,
          net_1167, net_1168, net_117, net_1172, net_1174,
          net_118, net_1181, net_1182, net_1188, net_119,
          net_1206, net_1208, net_122, net_1220, net_1228,
          net_1229, net_1234, net_1242, net_125, net_1256,
          net_1260, net_1261, net_1265, net_1267, net_1270,
          net_1271, net_1277, net_128, net_1280, net_1291,
          net_1295, net_1296, net_13, net_1314, net_1320,
          net_1323, net_1330, net_1332, net_1337, net_134,
          net_135, net_1353, net_137, net_1371, net_1372, net_138,
          net_1380, net_1381, net_1384, net_14, net_1415,
          net_1418, net_1419, net_1422, net_143, net_1430,
          net_1431, net_1437, net_1438, net_144, net_1452,
          net_1466, net_1476, net_1480, net_149, net_1498, net_15,
          net_150, net_151, net_1511, net_1515, net_1518,
          net_1520, net_1522, net_1526, net_1527, net_153,
          net_1538, net_154, net_1546, net_155, net_1553, net_156,
          net_1563, net_157, net_1574, net_1589, net_16, net_1601,
          net_1611, net_162, net_163, net_1634, net_164, net_1643,
          net_1644, net_1659, net_1666, net_167, net_1686,
          net_1688, net_17, net_1709, net_1710, net_1712,
          net_1713, net_1719, net_172, net_1723, net_173, net_174,
          net_1755, net_177, net_1797, net_18, net_180, net_1812,
          net_183, net_184, net_1867, net_1873, net_1882,
          net_1883, net_19, net_1911, net_1916, net_1925,
          net_1948, net_1965, net_1972, net_1986, net_2, net_20,
          net_200, net_201, net_2026, net_2046, net_205, net_206,
          net_2066, net_207, net_21, net_2127, net_2160, net_2166,
          net_218, net_2187, net_219, net_2197, net_22, net_222,
          net_225, net_2262, net_2265, net_227, net_2271,
          net_2282, net_2295, net_23, net_232, net_234, net_2356,
          net_2357, net_2358, net_2359, net_2360, net_2361,
          net_2362, net_24, net_242, net_243, net_246, net_248,
          net_25, net_250, net_252, net_253, net_257, net_258,
          net_259, net_26, net_261, net_265, net_267, net_27,
          net_271, net_272, net_276, net_279, net_28, net_280,
          net_282, net_287, net_288, net_289, net_29, net_291,
          net_293, net_294, net_298, net_299, net_3, net_30,
          net_301, net_302, net_31, net_310, net_311, net_313,
          net_317, net_319, net_32, net_320, net_321, net_323,
          net_324, net_327, net_337, net_338, net_339, net_34,
          net_340, net_343, net_347, net_348, net_35, net_350,
          net_355, net_356, net_36, net_362, net_363, net_366,
          net_367, net_37, net_370, net_371, net_372, net_373,
          net_375, net_376, net_38, net_380, net_381, net_384,
          net_385, net_386, net_387, net_388, net_39, net_390,
          net_394, net_395, net_396, net_397, net_399, net_4,
          net_40, net_405, net_406, net_407, net_409, net_41,
          net_411, net_415, net_417, net_418, net_42, net_424,
          net_426, net_427, net_43, net_431, net_433, net_440,
          net_443, net_448, net_45, net_453, net_459, net_46,
          net_461, net_467, net_468, net_47, net_470, net_472,
          net_473, net_48, net_487, net_488, net_489, net_49,
          net_5, net_50, net_502, net_504, net_505, net_508,
          net_509, net_51, net_514, net_515, net_516, net_517,
          net_519, net_520, net_523, net_528, net_529, net_534,
          net_535, net_536, net_548, net_549, net_55, net_555,
          net_562, net_563, net_567, net_57, net_570, net_585,
          net_589, net_59, net_592, net_594, net_599, net_6,
          net_60, net_603, net_604, net_61, net_610, net_616,
          net_617, net_618, net_62, net_625, net_626, net_632,
          net_636, net_638, net_64, net_642, net_643, net_644,
          net_65, net_650, net_653, net_656, net_657, net_66,
          net_662, net_663, net_667, net_67, net_672, net_673,
          net_676, net_679, net_683, net_687, net_69, net_699,
          net_7, net_701, net_703, net_704, net_705, net_706,
          net_707, net_710, net_713, net_715, net_716, net_72,
          net_721, net_722, net_725, net_727, net_730, net_733,
          net_737, net_739, net_740, net_745, net_746, net_750,
          net_760, net_763, net_771, net_776, net_779, net_785,
          net_788, net_789, net_79, net_796, net_8, net_80,
          net_800, net_807, net_816, net_821, net_822, net_83,
          net_833, net_834, net_842, net_844, net_845, net_852,
          net_854, net_857, net_86, net_861, net_863, net_867,
          net_869, net_87, net_876, net_879, net_888, net_899,
          net_9, net_908, net_91, net_910, net_911, net_912,
          net_913, net_916, net_92, net_929, net_94, net_949,
          net_953, net_955, net_957, net_961, net_963, net_966,
          net_969, net_970, net_979, net_989, net_995, net_998;

   // ------------------------------------------------------------
   // Define common sub-expressions
   // ------------------------------------------------------------

   assign net_1008 = (~net_1296 | ~int_delay);
   assign net_1017 = ((opcode[10] | net_1188) & (~opcode[8] |
               ~net_20));
   assign net_1019 = (~net_21 | ~net_1111);
   assign net_1020 = (~net_173 | ~net_1418);
   assign net_1021 = (~net_1271 | ~net_519);
   assign net_1022 = (list_empty & net_1320);
   assign net_1027 = (net_310 & spu_ctl_raw[24]);
   assign net_103  = (net_2358 & net_2360);
   assign net_1030 = (spu_ctl_raw[22] & net_243);
   assign net_1034 = (net_7 | net_1021);
   assign net_104  = (~net_65 & ~ex_ctl[2]);
   assign net_1041 = (~opcode[2] & ~(~net_1688 | ~net_1280));
   assign net_1042 = (~opcode[5] | ~net_1666);
   assign net_105  = (~ex_ctl[3] & ~ex_ctl[5]);
   assign net_1050 = (~net_509 & ~net_487);
   assign net_106  = (net_397 & net_2361);
   assign net_1063 = (net_2360 & net_534);
   assign net_1064 = (net_386 & net_2358);
   assign net_1075 = (~net_1234 | ~net_2357);
   assign net_1079 = (valid_rfi | net_39);
   assign net_1090 = (net_338 & spu_ctl_raw[35]);
   assign net_1092 = (ex_ctl[0] & spu_ctl_raw[22]);
   assign net_1099 = (~net_2357 & ~ex_ctl[2]);
   assign net_11   = ~opcode[14];
   assign net_110  = ((net_134 & (~net_37 & ~net_40)) | net_1812);
   assign net_1109 = (~net_348 | ~net_1601);
   assign net_1110 = (net_282 & net_20);
   assign net_1111 = (~opcode[7] | ~net_1431);
   assign net_1113 = (net_20 & opcode[11]);
   assign net_1126 = (~net_2356 & ~net_42);
   assign net_1130 = (net_1181 & (ex_last & (opcode[13] |
               net_1430)));
   assign net_1139 = (~net_49 & ~net_57);
   assign net_114  = (~net_2359 & ~net_69);
   assign net_1143 = (~net_800 & ~opcode[11]);
   assign net_1145 = (net_20 | opcode[10]);
   assign net_1160 = (~net_49 & ~net_64);
   assign net_1161 = (net_760 & net_248);
   assign net_1167 = (~net_11 & ~net_9);
   assign net_1168 = (~net_800 | ~net_1480);
   assign net_117  = (net_2357 | spu_ctl_raw[27]);
   assign net_1172 = (~net_64 & ~net_51);
   assign net_1174 = (rb_sel_3_0 & net_562);
   assign net_118  = (~net_72 | ~ex_ctl[4]);
   assign net_1181 = (~net_15 & ~net_16);
   assign net_1182 = (~net_24 | ~opcode[9]);
   assign net_1188 = (opcode[6] & net_25);
   assign net_119  = (~ex_ctl[2] & ~net_2359);
   assign net_1206 = (~net_11 & ~net_6);
   assign net_1208 = (~net_21 & ~opcode[10]);
   assign net_122  = (~net_55 & ~net_118);
   assign net_1220 = (net_105 & list_elast);
   assign net_1228 = (~int_delay & ~net_41);
   assign net_1229 = (~net_2359 & ~net_60);
   assign net_1234 = (~net_2360 & ~net_39);
   assign net_1242 = (net_51 | ex_ctl[2]);
   assign net_125  = (spu_ctl_raw[34] & net_65);
   assign net_1256 = (ex_ctl[2] & net_707);
   assign net_1260 = (net_2358 & net_119);
   assign net_1261 = (~net_2362 & ~net_2356);
   assign net_1265 = (~net_50 & ~ex_ctl[5]);
   assign net_1267 = (~net_62 & ~net_42);
   assign net_1270 = (~spu_ctl_raw[35] & ~ex_ctl[4]);
   assign net_1271 = (net_49 & net_32);
   assign net_1277 = (opcode[7] & ~(opcode[5] ^ opcode[6]));
   assign net_128  = (~net_40 & ~ex_ctl[7]);
   assign net_1280 = (~net_16 & ~net_17);
   assign net_1291 = (net_562 & net_371);
   assign net_1295 = (net_715 & net_16);
   assign net_1296 = (~net_2357 & ~net_42);
   assign net_13   = ~opcode[13];
   assign net_1314 = (net_1755 & net_16);
   assign net_1320 = (spu_ctl_raw[24] & net_1611);
   assign net_1323 = (~ex_ctl[3] & ~net_1723);
   assign net_1330 = (~net_67 & ~ex_ctl[5]);
   assign net_1332 = ((spu_ctl_raw[24] & net_1713) & net_2358);
   assign net_1337 = (~net_32 | ~net_1332);
   assign net_134  = (net_65 & net_72);
   assign net_135  = (~spu_ctl_raw[34] | ~net_2360);
   assign net_1353 = (iaex_spu & net_2362);
   assign net_137  = (net_49 & ex_last);
   assign net_1371 = (net_49 & net_427);
   assign net_1372 = (~net_257 & ~net_662);
   assign net_138  = (~ex_ctl[0] & ~ex_ctl[6]);
   assign net_1380 = (ex_ctl[6] & net_338);
   assign net_1381 = (~net_134 | ~net_1206);
   assign net_1384 = (net_200 & (net_134 & net_867));
   assign net_14   = ~net_1181;
   assign net_1415 = (~net_13 | ~net_18);
   assign net_1418 = (net_9 & net_16);
   assign net_1419 = (rb_sel_z5_3 & net_9);
   assign net_1422 = (net_348 & opcode[6]);
   assign net_143  = (net_37 & net_461);
   assign net_1430 = (net_20 & opcode[10]);
   assign net_1431 = (opcode[2] & (opcode[0] & opcode[1]));
   assign net_1437 = (net_103 & net_399);
   assign net_1438 = (~net_207 | ~net_468);
   assign net_144  = (net_49 & net_65);
   assign net_1452 = (~dbg_op_run | ~net_1332);
   assign net_1466 = (~net_17 & ~opcode[8]);
   assign net_1476 = (net_1280 & net_21);
   assign net_1480 = (~rb_sel_z5_3 | ~opcode[13]);
   assign net_149  = (net_173 & net_519);
   assign net_1498 = (~net_2359 & ~net_2357);
   assign net_15   = ~opcode[12];
   assign net_150  = (~im74_sel_z6_4 | ~net_19);
   assign net_151  = (net_9 & net_519);
   assign net_1511 = (~net_282 | ~net_22);
   assign net_1515 = (~net_32 & ~ex_ctl[5]);
   assign net_1518 = (~opcode[6] & ~net_25);
   assign net_1520 = (~opcode[5] | ~opcode[4]);
   assign net_1522 = (rb_sel_3_0 & net_1314);
   assign net_1526 = (net_733 | net_1812);
   assign net_1527 = (~special & ~net_816);
   assign net_153  = (~net_2361 & ~net_15);
   assign net_1538 = (~ex_ctl[3] & ~net_118);
   assign net_154  = (~net_13 & ~net_2361);
   assign net_1546 = (net_293 & net_1296);
   assign net_155  = (~net_1563 | ~net_149);
   assign net_1553 = (~net_2358 & ~ex_ctl[4]);
   assign net_156  = ((net_4 | (net_800 | net_29)) &
               (~im74_sel_z6_4 | ~net_15));
   assign net_1563 = (~opcode[15] & ~net_11);
   assign net_157  = (net_143 & (ex_ctl[1] | net_721));
   assign net_1574 = (~net_6 & ~opcode[11]);
   assign net_1589 = (net_1181 & (debug_en & net_1466));
   assign net_16   = ~opcode[11];
   assign net_1601 = (opcode[7] & opcode[6]);
   assign net_1611 = (net_49 & net_367);
   assign net_162  = (net_2361 & net_37);
   assign net_163  = (~net_2356 & ~ex_ctl[3]);
   assign net_1634 = (net_207 & net_338);
   assign net_164  = (~net_733 & ~net_340);
   assign net_1643 = (net_2360 & net_320);
   assign net_1644 = (~net_2359 & ~net_2360);
   assign net_1659 = (net_2 | net_2361);
   assign net_1666 = (~opcode[7] & ~opcode[6]);
   assign net_167  = ((net_2361 & (~net_397 | ~net_72)) | net_30);
   assign net_1686 = (~opcode[5] & ~opcode[4]);
   assign net_1688 = (opcode[8] & (~opcode[0] & ~net_594));
   assign net_17   = ~net_617;
   assign net_1709 = (~net_338 | ~net_310);
   assign net_1710 = (net_50 & net_461);
   assign net_1712 = (ex_ctl[2] & spu_ctl_raw[24]);
   assign net_1713 = (net_65 & atomic);
   assign net_1719 = (~(net_852 & (~net_32 | ~net_2127)) |
               ~(~spu_ctl_raw[34] | ~(~net_69 & ~net_2362)));
   assign net_172  = (net_19 | opcode[11]);
   assign net_1723 = (~net_1713 | ~spu_ctl_raw[35]);
   assign net_173  = (rb_sel_z5_3 & net_13);
   assign net_174  = (opcode[15] & net_180);
   assign net_1755 = (~net_21 & ~net_20);
   assign net_177  = (~net_519 | ~rb_sel_sp);
   assign net_1797 = (net_287 | net_271);
   assign net_18   = ~net_348;
   assign net_180  = (net_37 & opcode[14]);
   assign net_1812 = (~net_49 & ~atomic);
   assign net_183  = (~net_2361 & ~net_30);
   assign net_184  = (~net_687 & ~ex_last);
   assign net_1867 = (spu_ctl_raw[22] & net_2187);
   assign net_1873 = (net_207 & spu_ctl_raw[35]);
   assign net_1882 = (net_1713 & net_397);
   assign net_1883 = (net_310 & net_2295);
   assign net_19   = ~opcode[10];
   assign net_1911 = (~net_69 & ~ex_ctl[3]);
   assign net_1916 = (net_310 & net_119);
   assign net_1925 = (((net_36 & ((net_2046 | ex_ctl[5]) & (net_48
               | net_32))) & (~net_1713 | ~net_721)) & (~net_1965
               | ~net_995));
   assign net_1948 = (~opcode[0] & ~opcode[1]);
   assign net_1965 = (ex_ctl[2] & valid_rfi);
   assign net_1972 = (~net_2362 & ~ex_ctl[7]);
   assign net_1986 = (net_2295 & net_2357);
   assign net_2    = ~net_1563;
   assign net_20   = ~opcode[9];
   assign net_200  = (net_2357 & ex_ctl[5]);
   assign net_201  = (net_1867 & spu_ctl_raw[35]);
   assign net_2026 = (~net_37 & ~ex_ctl[4]);
   assign net_2046 = (~atomic | ~net_104);
   assign net_205  = (net_957 & net_72);
   assign net_206  = (~spu_ctl_raw[35] & ~net_57);
   assign net_2066 = (~net_509 & ~(~ex_ctl[6] & ~net_381));
   assign net_207  = (~net_65 & ~net_2359);
   assign net_21   = ~opcode[8];
   assign net_2127 = (~net_64 & ~net_43);
   assign net_2160 = (~net_61 & ~ex_ctl[1]);
   assign net_2166 = (net_1867 | ((net_119 & spu_ctl_raw[34]) |
               (~net_861 & ~net_67)));
   assign net_218  = (net_320 & net_293);
   assign net_2187 = (~net_2361 & ~net_2357);
   assign net_219  = (net_65 & net_2356);
   assign net_2197 = (~net_72 & ~ex_ctl[2]);
   assign net_22   = ~net_1111;
   assign net_222  = (~net_760 | ~net_650);
   assign net_225  = (~spu_ctl_raw[34] | ~spu_ctl_raw[35]);
   assign net_2262 = (net_1228 | (((net_49 & (net_1713 & net_320))
               | net_957) | ((spu_ctl_raw[30] & net_750) |
               net_505)));
   assign net_2265 = (net_725 & net_252);
   assign net_227  = (~net_65 & ~spu_ctl_raw[35]);
   assign net_2271 = (net_252 & net_2359);
   assign net_2282 = (~net_143 | ~net_49);
   assign net_2295 = (~net_42 & ~ex_ctl[1]);
   assign net_23   = ~net_1042;
   assign net_232  = (~ex_ctl[3] | ~net_293);
   assign net_234  = (net_2362 & net_2360);
   assign net_2356 = ~ex_ctl[2];
   assign net_2357 = ~ex_ctl[3];
   assign net_2358 = ~ex_ctl[5];
   assign net_2359 = ~ex_ctl[6];
   assign net_2360 = ~ex_ctl[7];
   assign net_2361 = ~ex_last;
   assign net_2362 = ~atomic;
   assign net_24   = ~net_1518;
   assign net_242  = (spu_ctl_raw[35] | net_2360);
   assign net_243  = (~spu_ctl_raw[35] & ~net_2362);
   assign net_246  = (net_2361 | ex_ctl[4]);
   assign net_248  = (~net_65 & ~net_43);
   assign net_25   = ~opcode[7];
   assign net_250  = (~net_207 | ~net_72);
   assign net_252  = (~atomic & ~int_preempt);
   assign net_253  = ((((~net_218 | ~net_2361) & (~(net_867 &
               net_138) | ~net_2357)) & ((net_861 & (~net_509 &
               ~net_863)) | net_40)) & (((~net_520 | ~net_857) &
               (~net_599 | ~net_287)) & net_585));
   assign net_257  = (~special | ~net_134);
   assign net_258  = ((ex_ctl[3] & (~ex_ctl[6] | ~net_2362)) |
               ex_last);
   assign net_259  = ((~net_626 & ~(net_173 & (opcode[15] &
               net_32))) & (~net_287 | ~(net_625 & net_267)));
   assign net_26   = ~opcode[3];
   assign net_261  = (~net_516 | ~net_343);
   assign net_265  = (net_725 & (~net_40 & ~net_232));
   assign net_267  = (~dbg_halt_req & ~net_2361);
   assign net_27   = ~opcode[2];
   assign net_271  = (~net_9 & ~opcode[11]);
   assign net_272  = (~opcode[8] & ~net_1145);
   assign net_276  = (~net_15 & ~net_618);
   assign net_279  = (net_13 | net_11);
   assign net_28   = ~opcode[1];
   assign net_280  = (net_16 | net_2);
   assign net_282  = (~net_19 & ~opcode[8]);
   assign net_287  = (~net_9 & ~opcode[14]);
   assign net_288  = (net_1188 & opcode[5]);
   assign net_289  = (int_preempt & net_86);
   assign net_29   = ~net_519;
   assign net_291  = (net_488 | list_empty);
   assign net_293  = (~net_2360 & ~net_64);
   assign net_294  = (net_72 & atomic);
   assign net_298  = (ex_ctl[0] & net_1634);
   assign net_299  = (net_1712 & net_1713);
   assign net_3    = ~net_844;
   assign net_30   = ~special;
   assign net_301  = (net_388 & net_1634);
   assign net_302  = (~ex_ctl[5] & ~atomic);
   assign net_31   = ~net_267;
   assign net_310  = (~net_2357 & ~ex_ctl[5]);
   assign net_311  = (~spu_ctl_raw[35] & ~ex_ctl[0]);
   assign net_313  = (net_72 & net_2358);
   assign net_317  = (net_72 & ex_ctl[3]);
   assign net_319  = (~spu_ctl_raw[24] | ~net_105);
   assign net_32   = ~dbg_halt_req;
   assign net_320  = (~ex_ctl[3] & ~spu_ctl_raw[35]);
   assign net_321  = (~net_2361 & ~net_2356);
   assign net_323  = (ex_ctl[4] & net_796);
   assign net_324  = ((~net_51 & ~int_preempt) & (net_534 &
               net_363));
   assign net_327  = (~(((net_50 | net_356) & (net_1034 |
               (~net_173 & ~net_1295))) & (~net_1291 | ~net_625))
               | ~(~net_1228 & ~(net_162 & net_1063)));
   assign net_337  = (~net_2358 & ~net_42);
   assign net_338  = (~net_2360 & ~ex_ctl[2]);
   assign net_339  = (net_760 & net_385);
   assign net_34   = ~net_367;
   assign net_340  = (net_163 & net_294);
   assign net_343  = (~atomic | ~exnum_sel_bus);
   assign net_347  = (~ex_ctl[4] & ~net_66);
   assign net_348  = (net_19 & net_20);
   assign net_35   = ~net_2026;
   assign net_350  = (~net_1020 & ~net_1021);
   assign net_355  = (~net_37 | ~net_488);
   assign net_356  = (~net_338 | ~net_1296);
   assign net_36   = ~net_733;
   assign net_362  = (~net_2066 & ~net_2282);
   assign net_363  = (~net_2360 & ~ex_ctl[4]);
   assign net_366  = (~net_65 & ~net_2357);
   assign net_367  = (net_143 & net_2359);
   assign net_37   = ~int_preempt;
   assign net_370  = (~net_34 & ~net_61);
   assign net_371  = (net_1271 & im74_sel_z6_4);
   assign net_372  = (net_272 & net_1574);
   assign net_373  = (ex_ctl[1] & net_207);
   assign net_375  = (~net_2362 | ~net_200);
   assign net_376  = (net_2362 & (~net_49 | ~net_162));
   assign net_38   = ~wfi_adv;
   assign net_380  = (net_2359 | ex_ctl[4]);
   assign net_381  = (~net_317 | ~net_2356);
   assign net_384  = (net_2356 | atomic);
   assign net_385  = (~net_65 & ~ex_ctl[3]);
   assign net_386  = (~net_65 & ~net_72);
   assign net_387  = (~net_65 & ~ex_ctl[5]);
   assign net_388  = (~net_72 & ~spu_ctl_raw[35]);
   assign net_39   = ~wr_use_sp;
   assign net_390  = (net_415 & (net_396 & net_47));
   assign net_394  = (net_46 ^ net_45);
   assign net_395  = (~net_47 & ~net_418);
   assign net_396  = (net_94 & net_72);
   assign net_397  = (~net_2358 & ~ex_ctl[1]);
   assign net_399  = (net_72 & ex_ctl[6]);
   assign net_4    = ~net_287;
   assign net_40   = ~net_461;
   assign net_405  = (~net_2357 & ~ex_ctl[1]);
   assign net_406  = ((addr_last[0] & net_415) | net_424);
   assign net_407  = (net_411 | (net_426 & net_206));
   assign net_409  = (~ex_last | ~(~net_2358 & ~net_440));
   assign net_41   = ~net_1883;
   assign net_411  = (~net_72 & ~net_2357);
   assign net_415  = (~net_45 & ~addr_last[1]);
   assign net_417  = (~net_2357 & ~atomic);
   assign net_418  = (net_46 | cfg_be);
   assign net_42   = ~net_294;
   assign net_424  = (~addr_last[0] & ~net_418);
   assign net_426  = (~ex_ctl[4] & ~atomic);
   assign net_427  = (~spu_ctl_raw[35] & ~net_2358);
   assign net_43   = ~net_535;
   assign net_431  = (~net_47 & ~net_453);
   assign net_433  = (net_443 & net_47);
   assign net_440  = (spu_ctl_raw[35] & net_2356);
   assign net_443  = (~net_45 & ~net_46);
   assign net_448  = (~addr_last[0] & ~net_453);
   assign net_45   = ~cfg_be;
   assign net_453  = (~net_45 | ~net_46);
   assign net_459  = (~net_65 & ~net_66);
   assign net_46   = ~addr_last[1];
   assign net_461  = (~ex_last & ~atomic);
   assign net_467  = (~spu_ctl_raw[35] & ~ex_last);
   assign net_468  = (net_995 & net_2358);
   assign net_47   = ~addr_last[0];
   assign net_470  = (spu_ctl_raw[24] & net_2361);
   assign net_472  = (~atomic | ~net_163);
   assign net_473  = (~net_2362 & ~ex_ctl[1]);
   assign net_48   = ~net_137;
   assign net_487  = (~net_55 & ~net_60);
   assign net_488  = (~sleep_rfi | ~net_38);
   assign net_489  = (net_55 | net_37);
   assign net_49   = ~data_abort;
   assign net_5    = ~net_271;
   assign net_50   = ~list_empty;
   assign net_502  = (net_2358 & net_535);
   assign net_504  = (opcode[15] & dbg_op_run);
   assign net_505  = (list_empty & net_722);
   assign net_508  = (~(net_867 & net_519) | ~net_2359);
   assign net_509  = (net_134 & ex_ctl[1]);
   assign net_51   = ~net_184;
   assign net_514  = (~net_313 | ~net_2356);
   assign net_515  = (~atomic | ~net_957);
   assign net_516  = (~ex_ctl[1] | ~net_502);
   assign net_517  = (~net_16 | ~net_1563);
   assign net_519  = (~special & ~int_preempt);
   assign net_520  = (~net_31 & ~opcode[13]);
   assign net_523  = ((net_288 & im74_sel_z6_4) & (net_1466 &
               net_1574));
   assign net_528  = (net_16 | opcode[10]);
   assign net_529  = (opcode[12] & (net_821 & wr_sel_10_7));
   assign net_534  = (~net_2357 & ~net_2356);
   assign net_535  = (~net_72 & ~net_2362);
   assign net_536  = (~atomic | ~spu_ctl_raw[24]);
   assign net_548  = (net_13 & net_11);
   assign net_549  = (net_15 & net_519);
   assign net_55   = ~net_760;
   assign net_555  = (~net_643 & ~(net_2362 & net_29));
   assign net_562  = (~net_15 & ~net_9);
   assign net_563  = (~net_26 & ~net_2362);
   assign net_567  = (net_21 | net_17);
   assign net_57   = ~net_200;
   assign net_570  = (opcode[3] & net_1948);
   assign net_585  = (net_852 & (net_854 | net_31));
   assign net_589  = (spu_ctl_raw[24] & net_656);
   assign net_59   = ~net_653;
   assign net_592  = (~net_28 & ~opcode[0]);
   assign net_594  = (~net_26 | ~net_28);
   assign net_599  = (rb_sel_z5_3 & net_32);
   assign net_6    = ~net_562;
   assign net_60   = ~net_310;
   assign net_603  = (opcode[11] | opcode[8]);
   assign net_604  = (net_257 | opcode[14]);
   assign net_61   = ~net_105;
   assign net_610  = (net_21 & net_19);
   assign net_616  = (~opcode[11] & ~opcode[7]);
   assign net_617  = (~net_19 & ~net_20);
   assign net_618  = (net_11 | opcode[11]);
   assign net_62   = ~net_427;
   assign net_625  = (net_24 & net_272);
   assign net_626  = (net_876 & net_520);
   assign net_632  = (~net_2358 & ~ex_ctl[0]);
   assign net_636  = (net_473 & net_2357);
   assign net_638  = (net_852 & (~opcode[3] | ~net_1384));
   assign net_64   = ~net_219;
   assign net_642  = (spu_ctl_raw[24] & net_2356);
   assign net_643  = (~net_2358 & ~net_2362);
   assign net_644  = (net_9 | net_30);
   assign net_65   = ~ex_ctl[4];
   assign net_650  = (~net_65 & ~net_2358);
   assign net_653  = (~spu_ctl_raw[35] & ~net_60);
   assign net_656  = (dbg_halt_req & (atomic & dbg_op_run));
   assign net_657  = (net_65 | net_2362);
   assign net_66   = ~net_320;
   assign net_662  = (net_687 & net_375);
   assign net_663  = ((~net_2362 & ~ex_ctl[2]) & net_2357);
   assign net_667  = (~net_1948 & ~net_26);
   assign net_67   = ~spu_ctl_raw[14];
   assign net_672  = (~net_60 & ~net_246);
   assign net_673  = (~ex_ctl[7] & ~net_118);
   assign net_676  = (ex_ctl[3] & spu_ctl_raw[22]);
   assign net_679  = (net_834 & net_37);
   assign net_683  = (~net_94 | ~(spu_ctl_raw[30] & net_252));
   assign net_687  = (net_2359 | ex_ctl[1]);
   assign net_69   = ~net_440;
   assign net_699  = (net_427 & net_1160);
   assign net_7    = ~net_911;
   assign net_701  = ((net_998 & (~data_abort | ~(ex_last &
               spu_ctl_raw[35]))) & ((((~net_323 | ~svc_escalate)
               & (~net_953 | ~net_207)) & (net_899 | (~ex_ctl[6] |
               ~net_995))) & ((net_979 & (~rb_sel_sp | ~(net_65 &
               net_2357))) | (int_preempt | net_916))));
   assign net_703  = (net_979 | (~net_549 | ~net_910));
   assign net_704  = (net_2357 & net_2360);
   assign net_705  = (~net_2359 & ~net_2358);
   assign net_706  = (net_779 & net_37);
   assign net_707  = (~net_2358 & ~net_43);
   assign net_710  = (~net_163 | ~net_162);
   assign net_713  = (net_154 & net_789);
   assign net_715  = (net_13 & ex_last);
   assign net_716  = (net_911 & net_37);
   assign net_72   = ~ex_ctl[0];
   assign net_721  = (~ex_ctl[6] & ~ex_ctl[5]);
   assign net_722  = (net_760 & net_1296);
   assign net_725  = (~net_72 & ~ex_ctl[6]);
   assign net_727  = (~net_91 & ~net_42);
   assign net_730  = (~net_399 | ~spu_ctl_raw[35]);
   assign net_733  = (~net_37 & ~atomic);
   assign net_737  = (~opcode[10] | ~im74_sel_z6_4);
   assign net_739  = (net_173 & net_180);
   assign net_740  = (~net_154 | ~net_716);
   assign net_745  = (~net_253 | ~((((~net_834 & ~(~(((net_11 &
               (~net_21 | ~net_20)) | (net_5 | net_31)) & (net_842
               | (~net_844 | ~net_845))) | ~(net_604 | net_258)))
               & net_833) & (((~net_243 & ~(net_294 & int_delay))
               | spu_ctl_raw[27]) & net_515)) & (special |
               (~(net_267 & ((~net_13 & ~opcode[15]) |
               ((~opcode[14] & ~opcode[11]) & net_13))) &
               ~(~dbg_halt_req & ~((~rb_sel_z5_3 | ~(~(~net_821 |
               ~net_822) | ~((net_25 | net_567) | opcode[11]))) &
               net_816))))));
   assign net_746  = (net_535 & net_94);
   assign net_750  = (net_65 & net_760);
   assign net_760  = (~ex_ctl[6] & ~spu_ctl_raw[35]);
   assign net_763  = (rb_sel_z5_3 & opcode[11]);
   assign net_771  = (net_363 & net_722);
   assign net_776  = (~net_65 & ~ex_ctl[1]);
   assign net_779  = (~net_62 & ~net_43);
   assign net_785  = (~net_72 | ~net_200);
   assign net_788  = (im30_sel_z8_6 & net_16);
   assign net_789  = (net_37 & net_1563);
   assign net_79   = (spu_ctl_raw[22] & net_2357);
   assign net_796  = (net_200 & net_995);
   assign net_8    = ~net_1418;
   assign net_80   = (~net_57 & ~ex_ctl[1]);
   assign net_800  = (~opcode[12] | ~net_715);
   assign net_807  = ((ex_ctl[4] & net_704) & net_2361);
   assign net_816  = (~net_173 | ~opcode[11]);
   assign net_821  = (net_1314 & net_19);
   assign net_822  = (net_1188 & cfg_smul);
   assign net_83   = (~net_62 & ~atomic);
   assign net_833  = (~net_760 | ~(net_1713 & net_291));
   assign net_834  = (~ex_ctl[7] & ~net_1242);
   assign net_842  = (~net_26 | ~net_200);
   assign net_844  = (~opcode[12] & ~net_4);
   assign net_845  = (net_134 & net_2361);
   assign net_852  = (valid_rfi | net_36);
   assign net_854  = (net_644 & (~net_287 | ~net_1430));
   assign net_857  = (~net_9 & ~net_617);
   assign net_86   = (net_293 & net_72);
   assign net_861  = (~net_293 | ~net_721);
   assign net_863  = (net_72 & net_760);
   assign net_867  = (~net_40 & ~net_3);
   assign net_869  = (~net_2356 & ~ex_ctl[6]);
   assign net_87   = (net_207 & spu_ctl_raw[34]);
   assign net_876  = (net_11 & net_30);
   assign net_879  = (~net_504 | ~net_2127);
   assign net_888  = (ex_ctl[6] & (net_219 & net_912));
   assign net_899  = (~net_105 | ~net_549);
   assign net_9    = ~opcode[15];
   assign net_908  = (~net_15 & ~opcode[14]);
   assign net_91   = (~net_2360 & ~ex_ctl[6]);
   assign net_910  = (~net_1188 | ~net_1520);
   assign net_911  = (net_11 & net_9);
   assign net_912  = (spu_ctl_raw[24] & net_2357);
   assign net_913  = (net_998 & (net_49 | net_687));
   assign net_916  = (net_7 & (special | (opcode[15] & net_989)));
   assign net_92   = (ex_ctl[4] | net_117);
   assign net_929  = (~net_388 | ~net_1916);
   assign net_94   = (~spu_ctl_raw[35] & ~net_2357);
   assign net_949  = (~net_72 & ~net_2358);
   assign net_953  = (net_912 & net_2361);
   assign net_955  = (net_388 & net_2356);
   assign net_957  = (net_2360 & net_760);
   assign net_961  = (net_1261 & spu_ctl_raw[14]);
   assign net_963  = (~net_144 | ~net_2265);
   assign net_966  = (~ex_ctl[2] & ~int_preempt);
   assign net_969  = ((~net_2362 & ~net_64) & net_2358);
   assign net_970  = (~net_746 | ~net_2356);
   assign net_979  = (~net_134 | ~net_184);
   assign net_989  = (opcode[14] ^ net_15);
   assign net_995  = (net_2361 & net_72);
   assign net_998  = (~net_1812 | ~net_2356);

   // ------------------------------------------------------------
   // Define primary decoder outputs
   // ------------------------------------------------------------

   assign addr_agu = (((spu_ctl_raw[35] & ~(ex_ctl[0] ^ net_2357))
               | (net_163 | (net_125 | ((net_243 | (net_725 &
               net_2358)) | net_509)))) | ((~net_2356 &
               ~ex_ctl[1]) | (~spu_ctl_raw[35] & ~ex_ctl[7])));

   assign addr_ex  = (((~(~(~net_1438 | ~(~net_162 |
               ~(spu_ctl_raw[14] & net_144))) & ~(~(~net_2271 |
               ~net_105) | ~(~net_1986 | ~ex_ctl[7]))) | ~(net_59
               | net_2282)) | ((net_1099 & ((net_37 & (~net_2362 &
               ~net_55)) | net_1611)) | (~net_929 | ~(~data_abort
               | ~(~net_66 & ~ex_ctl[5]))))) | (~((net_222 &
               (net_2356 | (~net_2265 & ~(net_2360 & net_162)))) &
               (~net_1172 | ~spu_ctl_raw[14])) | ~(~net_834 &
               ~net_2262)));

   assign addr_phase = ((((net_2358 & (net_1611 & net_338)) |
               net_362) | ((~net_710 & ~net_2360) | (net_37 &
               ((~(~net_1270 | ~net_1330) | ~(~net_722 |
               ~net_488)) | (net_1063 & net_65))))) | (net_2262 |
               (~(~(~(net_2046 | net_2357) | ~(~net_2271 |
               ~net_1027)) & ~(net_1713 & (~net_61 & ~net_2360)))
               | ~net_963)));

   assign addr_ra  = (~(~(~((~net_206 & ~net_650) & (~net_94 |
               ~ex_ctl[2])) | ~((net_118 & (~ex_ctl[0] |
               ~net_1380)) | spu_ctl_raw[35])) | ~net_2362) |
               ~(~net_1911 | ~net_72));

   assign alu_ctl_raw[0] = (ex_ctl[0] & (~net_55 & ~atomic));

   assign alu_ctl_raw[1] = (net_461 & net_373);

   assign alu_ctl_raw[10] = (~net_2359 & ~net_43);

   assign alu_ctl_raw[11] = (net_704 | (net_339 | (((net_2358 &
               (net_128 | (ex_last & net_2197))) | net_673) |
               (~(~ex_last | ~net_1911) | ~(~(net_163 &
               spu_ctl_raw[24]) | ~net_65)))));

   assign alu_ctl_raw[12] = (spu_ctl_raw[24] & net_1380);

   assign alu_ctl_raw[13] = (net_1256 | ((net_386 & (~net_1709 &
               ~atomic)) | (~(~ex_ctl[3] | ~net_473) | ~(~ex_last
               | ~((net_72 & (net_320 | net_163)) | net_91)))));

   assign alu_ctl_raw[14] = (~(((net_66 & (~ex_ctl[3] |
               ~net_2359)) | net_384) & (net_467 | (~ex_ctl[7] |
               ~spu_ctl_raw[22]))) | ~((((~ex_ctl[5] | ~net_2359)
               & (~ex_ctl[3] | ~net_1092)) & (~net_134 |
               ~net_2187)) | ex_ctl[7]));

   assign alu_ctl_raw[15] = ((net_293 & (~ex_ctl[6] | ~net_66)) |
               (net_750 | (~net_1050 | ~(net_2357 | net_2362))));

   assign alu_ctl_raw[16] = (~(net_135 | net_72) |
               ~(~(spu_ctl_raw[30] & net_2187) | ~ex_ctl[7]));

   assign alu_ctl_raw[17] = (net_776 & net_995);

   assign alu_ctl_raw[18] = (ex_ctl[6] & net_1972);

   assign alu_ctl_raw[19] = (~(~ex_ctl[6] | ~net_1261) |
               ~(~net_1972 | ~net_2359));

   assign alu_ctl_raw[2] = (net_138 & net_234);

   assign alu_ctl_raw[3] = (net_1643 | net_80);

   assign alu_ctl_raw[4] = (~(~((~ex_last & ~ex_ctl[1]) &
               (int_preempt | net_387)) & ~net_110) | ~(net_785 |
               atomic));

   assign alu_ctl_raw[5] = (~((~net_321 & ~net_1437) & (~net_388 |
               ~net_65)) | ~(((~net_2160 & ~(~ex_ctl[0] &
               ~ex_ctl[3])) | atomic) & (net_65 | (((~net_302 |
               ~net_91) & (~net_2197 | ~net_310)) & net_135))));

   assign alu_ctl_raw[6] = (net_1256 | ((net_207 & (net_1330 &
               net_440)) | (net_2166 | ((net_399 & net_320) |
               alu_ctl_raw[10]))));

   assign alu_ctl_raw[7] = ((~ex_ctl[0] & ~ex_ctl[7]) & (net_105 |
               net_1873));

   assign alu_ctl_raw[8] = (net_2166 | (((net_2360 & ((net_105 &
               net_114) | (ex_ctl[0] & net_1553))) | (ex_last &
               (ex_ctl[7] & net_311))) | ((net_1553 & net_535) |
               net_298)));

   assign alu_ctl_raw[9] = ((net_2358 & (~(~net_1270 & ~(net_72 &
               net_119)) | ~net_43)) | (~((~net_417 | ~net_65) &
               (net_64 | net_40)) | ~(((~net_207 | ~net_2160) &
               (((~net_396 & ~net_1092) & (~ex_ctl[7] |
               ~net_2362)) & (~net_405 | ~net_461))) &
               (~spu_ctl_raw[34] | ~ex_ctl[6]))));

   assign alu_en_nxt = (~((~(((net_2358 & (~net_35 &
               ~spu_ctl_raw[35])) | net_807) | (net_834 |
               ((~(~net_1126 | ~ex_ctl[5]) | ~(~(net_1713 &
               spu_ctl_raw[30]) | ~ex_ctl[1])) | (net_867 &
               (~(net_910 | (data_abort | (~net_134 |
               ~ex_ctl[3]))) | ~(~net_144 | ~net_397)))))) &
               ~(net_1719 | ((~(net_879 | net_570) | ~(net_833 |
               ex_ctl[5])) | (~(net_970 & (~net_461 | ~net_218)) |
               ~net_515)))) & (~net_1271 | ~((opcode[14] &
               (net_1527 | (opcode[15] & (net_1522 & net_1277))))
               | ((ex_last & ((~special & ~(~((opcode[10] |
               ((net_1188 & net_20) | opcode[12])) | ((~net_21 &
               ~net_24) | (~(~cfg_smul | ~opcode[9]) | ~(opcode[8]
               | opcode[7])))) | ~net_1563)) | ((net_287 &
               ((~opcode[9] & ~net_603) | (~(~net_1688 |
               ~((net_1686 & opcode[11]) & (net_1666 &
               opcode[10]))) & ~opcode[2]))) | ((((cc_pass &
               (net_271 | net_857)) | net_287) & net_13) |
               (~net_854 | ~(~(net_9 & net_30) | ~(~net_13 |
               ~net_14))))))) | (~(~opcode[9] | ~(~special &
               ~(net_1188 | net_1659))) | ~(~rb_sel_z5_3 |
               ~net_1797)))))) | ~(((net_40 | ((net_2066 &
               ((net_604 & net_1381) & (~net_293 | ~net_725))) |
               data_abort)) & (((~net_105 | ~(net_91 & net_845)) &
               (~net_1882 | ~wfi_adv)) & (net_35 | (~ex_ctl[2] |
               ~net_535)))) & (net_1008 | ex_ctl[1])));

   assign atomic_nxt = ((((ex_ctl[5] & (wr_use_sp & valid_rfi)) |
               (~(~net_313 | ~int_preempt) | ~(~net_1296 |
               ~ex_ctl[7]))) | ((net_337 & net_49) | (~net_1925 |
               ~(~net_7 | ~(special & (net_49 & (ex_last |
               (~net_785 & ~ex_ctl[6])))))))) | (~((~(~net_48 &
               ~net_13) | ~(net_1589 & net_287)) & (~net_2026 |
               ~ex_ctl[0])) | ~(~net_473 & ~((dbg_halt_req &
               (net_1027 & net_293)) | ((~net_687 & ~data_abort) &
               (~net_257 & ~net_911))))));

   assign aux_align = (net_763 | (~net_2361 & ~opcode[14]));

   assign aux_en   = ((((~net_667 & ~(net_1452 | opcode[15])) |
               (~(net_60 | net_343) | ~(~net_218 | ~net_143))) |
               (net_679 | (((net_1574 & (net_267 & net_180)) |
               net_961) | (~(~net_143 | ~net_122) | ~(~net_957 |
               ~net_294))))) | ((((~net_1480 & ~(net_29 | net_5))
               | (~(net_155 | (~opcode[11] & ~((net_1755 &
               net_822) | opcode[10]))) | ~(~wr_sel_7777 |
               ~net_17))) & net_32) | (net_1986 | (~net_1337 |
               ~(~net_370 | ~net_1090)))));

   assign aux_sel_addr = ((net_2362 & (~net_19 | ~net_1418)) |
               ((~net_42 & ~net_2360) | net_461));

   assign aux_sel_iaex = (net_535 & (net_32 | ((dbg_op_run &
               net_26) | ex_ctl[1])));

   assign aux_sel_xpsr = (net_1972 | (opcode[3] & net_589));

   assign aux_tbit = (net_153 | ((net_715 & net_1314) | ((~net_43
               & ~net_32) & (~net_26 & ~net_27))));

   assign b_cond_de = (~net_1280 & ~(~net_1271 | ~wr_sel_7777));

   assign bkpt_ex  = (ex_ctl[6] & net_473);

   assign branch_de = (net_1126 | ((net_2361 & ((~(~net_1090 |
               ~net_385) | ~(~net_1965 | ~net_705)) | (net_1644 &
               net_1027))) | ((~data_abort & ~(~(((net_1174 &
               (opcode[8] | (opcode[11] & net_1182))) | rb_sel_sp)
               | ((net_845 & spu_ctl_raw[35]) | (~net_1020 &
               ~(~opcode[14] | ~(~net_1511 | ~net_567))))) &
               ~(ex_last & (special | (~(~net_1280 | ~net_1206) |
               ~(~opcode[13] | ~((net_562 & ((((opcode[3] |
               (~net_1948 | ~(net_27 & opcode[9]))) & (~net_21 &
               ~net_16)) | ((net_617 & (~opcode[11] & ~opcode[5]))
               | net_1476)) | net_1314)) | ((~net_1188 &
               ~(~net_617 | ~net_1574)) | net_1167)))))))) |
               (~(~net_337 & ~(~net_35 | ~net_1723)) |
               ~net_1925))));

   assign bus_idle = ((((net_470 & ((~(~net_1498 | ~net_363) |
               ~(~net_207 | ~net_2357)) | net_1916)) | net_699) |
               (((~net_42 & ~spu_ctl_raw[27]) & ex_ctl[6]) |
               (atomic & ((~(~net_1911 & ~net_642) | ~(net_232 |
               net_291)) | (~net_65 & ~net_61))))) | ((int_preempt
               & (((~(net_1079 | net_2358) | ~(~net_426 |
               ~net_725)) | (net_1353 | ((~net_1075 | ~(~atomic |
               ~(~net_232 & ~list_empty))) | (~(~net_1229 |
               ~net_509) | ~(~net_707 | ~net_65))))) | (net_461 &
               (net_1027 | ((net_338 & net_721) | net_347))))) |
               (~net_913 | ~((~net_1883 | ~int_delay) & (~net_1882
               | ~ex_ctl[2])))));

   assign cflag_en = ((net_2360 & (((net_105 & (net_1873 |
               (~ex_ctl[0] & ~atomic))) | net_87) | net_1538)) |
               ((ex_last & (net_399 & net_310)) | net_201));

   assign cps_en   = ((net_1538 & spu_ctl_raw[30]) & net_37);

   assign data_phase = (~((~net_961 & ~(~((~net_1296 | ~net_440) &
               (~net_643 | ~net_1644)) | ~(data_abort |
               ((~(net_252 & (~(~net_134 | ~net_94) | ~(~net_2359
               | ~(~net_232 | ~(~net_1553 | ~spu_ctl_raw[24])))))
               & ~net_1267) & (~net_966 | ~iaex_spu))))) & (net_55
               | (~net_1296 & ~net_969))) | ~(~net_137 |
               ~(~(~spu_ctl_raw[34] | ~(~ex_ctl[4] | ~(~net_338 |
               ~net_72))) | ~(~ex_ctl[5] | ~net_293))));

   assign dbg_halt_ack = (~(~net_387 | ~net_294) | ~(~net_473 |
               ~net_338));

   assign ex_ctl_nxt[0] = ((atomic & (((net_2356 & (net_1265 &
               net_320)) | (net_705 | ((ex_ctl[4] & net_721) |
               net_1712))) | ((spu_ctl_raw[24] & ex_ctl[7]) &
               (~(net_1515 & (net_9 | (net_22 & net_26))) |
               ~dbg_op_run)))) | (~((((ex_ctl[2] | ((((net_62 &
               (~net_760 | ~ex_ctl[3])) | net_72) & net_319) |
               ex_last)) & (~net_706 & ~(~((((net_800 | net_617) &
               net_1480) | net_11) & (~net_294 | ~(net_119 &
               net_37))) | ~(((~net_1526 & ~net_1139) &
               (~wr_use_sp | ~net_2359)) & ((~net_1546 |
               ~(~int_preempt & ~net_291)) & (~net_995 |
               ~(~opcode[15] & ~net_662))))))) & (net_2361 |
               ((((~net_1797 & ~(net_1280 & net_11)) | opcode[13])
               & (((net_32 & net_30) & (net_2 | (net_15 &
               net_17))) & (net_16 | ((~net_562 | ~((net_19 &
               (~net_1666 | ~opcode[9])) | net_282)) & net_279))))
               & (~(net_287 & (net_1110 | (~(net_21 | net_1113) |
               ~(net_172 | net_288)))) | ~opcode[12])))) &
               (~(~(~(~net_51 & ~opcode[14]) & ~(~opcode[12] &
               ~(~net_184 & ~(~net_842 & ~net_40)))) | ~(net_375 |
               net_30)) | ~net_72)) | ~((((~net_207 & ~(~ex_ctl[4]
               & ~(~(net_725 & (net_50 | (~ex_ctl[5] &
               ~list_elast))) & ~net_411))) & (net_785 | net_989))
               | net_40) & (~net_1419 | ~(((opcode[10] & net_1019)
               | net_618) | ((opcode[6] & net_1755) | (~(~net_1666
               | ~net_610) | ~(net_20 | net_25))))))));

   assign ex_ctl_nxt[1] = ((net_1228 | (net_1384 | (((~((net_979 |
               (~ex_ctl[3] | ~(~net_910 & ~net_3))) & (opcode[3] |
               (net_879 | net_1111))) | ~(~int_preempt |
               ~((~(net_1709 | ex_ctl[0]) | ~(~net_1712 |
               ~net_65)) | net_1260))) | ((~data_abort &
               ~(~(~(~(~net_60 & ~net_40) | ~net_750) | ~(~net_509
               | ~net_1710)) & ~(net_1353 & ex_ctl[4]))) |
               ((ex_ctl[7] & (net_1323 | (net_219 & (net_243 &
               net_1265)))) | net_1719))) | (((wfi_adv & (net_771
               | net_299)) | (~(~net_1710 | ~net_122) |
               ~(~(~sleep_rfi & ~net_1709) | ~net_294))) |
               ((net_427 & net_1126) | net_261))))) | ((net_1271 &
               (~(~(net_287 & (((net_153 & ((~opcode[11] &
               ~(~(~(~net_1188 | ~net_272) | ~(~net_1430 |
               ~opcode[8])) & ~(~(net_18 | (net_25 | opcode[8])) |
               ~(~net_610 | ~net_1518)))) | (opcode[13] &
               ((net_282 & net_1113) | (net_1041 & (net_23 |
               (net_1188 & net_1686))))))) | net_1143) | (net_1181
               & (~opcode[8] & ~(~rb_sel_3_0 | ~(net_1601 &
               opcode[9])))))) & ~(opcode[15] & (net_183 |
               (opcode[14] & net_173)))) | ~(special |
               ((((((net_1511 & opcode[14]) & (~net_1666 |
               ~net_272)) & (net_1109 | opcode[8])) | net_1020) &
               (((~(net_9 & ex_last) | ~net_1415) & (net_1659 |
               net_17)) | net_14)) & (net_1480 | net_517))))) |
               (net_2361 & (((((~list_empty & ~(~(net_293 &
               net_1371) & ~(net_347 & net_2358))) | ((net_1644 &
               net_163) | net_1643)) | ((net_725 & net_676) |
               (~ex_ctl[7] & ~(~net_534 & ~net_776)))) | ((net_144
               & net_206) | net_301)) | (opcode[15] &
               net_1372)))));

   assign ex_ctl_nxt[2] = (((ex_ctl[6] & (((~int_preempt &
               ~(~net_405 | ~net_1234)) | (~data_abort &
               ~(~net_643 & ~(iaex_spu & net_37)))) | (net_294 &
               (ex_ctl[2] | (~net_37 & ~ex_ctl[5]))))) |
               ((net_2359 & (net_473 & net_534)) | ((~ex_ctl[7] &
               ~(net_43 & net_710)) | (~(~net_1022 | ~net_293) |
               ~(~net_1126 | ~net_320))))) | ((net_1271 &
               (((im74_sel_z6_4 & ((~(~net_372 | ~net_1601) |
               ~(~((net_21 & (net_1574 & net_348)) | (opcode[12] &
               ((~opcode[5] & ~(~net_1041 | ~(~opcode[4] |
               ~opcode[6]))) | (opcode[11] & net_272)))) |
               ~net_25)) | net_1589)) | (net_523 | (im74_sel_z10_9
               | ((~(~net_1130 | ~net_151) | ~(~net_788 |
               ~net_876)) | ((net_519 & (net_763 & net_911)) |
               (net_180 & (net_183 | (~((net_1109 & (opcode[7] |
               net_17)) | net_1020) & ~net_21)))))))) | (net_789 &
               ((opcode[6] & (net_1295 & net_272)) | (net_153 &
               (~net_13 | ~net_1145)))))) | (((opcode[14] &
               (net_162 & net_1372)) | ((net_1030 | ((net_473 &
               net_103) | ((net_1553 & net_844) & (~net_29 &
               ~net_51)))) | ((int_preempt & net_1256) | (net_1546
               & (list_empty | net_355))))) | (net_143 &
               ((net_1538 & (~hdf_escalate | ~svc_escalate)) |
               (list_empty & (net_750 & net_1220)))))));

   assign ex_ctl_nxt[3] = (~(((((~net_1526 & ~net_1527) &
               (~net_427 | ~net_995)) & (~net_1518 | ~(~net_1520 &
               ~(~net_1522 | ~(~net_15 & ~net_11))))) &
               ((((((~net_440 | ~net_1515) | dbg_op_run) &
               (~net_995 | ~net_310)) & (~rb_sel_z5_3 | ~(~net_2 &
               ~((net_16 & net_1511) & (~net_1188 | ~net_19))))) &
               (((((~net_411 | ~ex_ctl[2]) & (~net_104 |
               ~net_2359)) & (~ex_ctl[6] | ~net_363)) | ex_last) &
               (net_40 | (~((net_760 & (net_50 | net_1220)) |
               net_1498) & ~net_440)))) & (((net_42 | net_69) &
               (~net_243 | ~ex_ctl[2])) & (~net_184 & ~(list_empty
               & (~net_42 & ~spu_ctl_raw[35])))))) & (~net_287 |
               ~net_1168)) | ~(((~(special ^ net_911) & (net_32 &
               ((~(~net_1145 & ~net_280) | ~net_13) & (net_4 |
               ((~debug_en | ~net_1476) & (~(net_23 & net_1041) |
               ~opcode[4])))))) & (net_517 | (((~opcode[13] &
               ~net_1466) & (~net_1422 | ~opcode[8])) &
               (~opcode[12] | ~(opcode[9] ^ net_19))))) |
               net_2361));

   assign ex_ctl_nxt[4] = ((~((((net_1452 & (net_1079 | (~net_72 &
               ~net_94))) & (((((~list_empty | ~(net_461 &
               net_1220)) & (~net_200 | ~net_867)) | ex_ctl[0]) &
               (~atomic | ~spu_ctl_raw[22])) | ex_ctl[6])) &
               (((net_1438 & (((~net_207 | ~net_411) & (~net_388 |
               ~net_1229)) | net_40)) & (~net_162 | ~net_1437)) &
               net_1337)) & (~net_1271 | ~((net_1419 & ((((net_21
               & (~net_1430 | ~net_1431)) | (opcode[7] & (~net_21
               & ~net_19))) | ((~opcode[9] & ~opcode[7]) |
               opcode[13])) | net_1422)) | ((rb_sel_z8_6 & (~net_8
               & ~net_17)) | ((ex_last & ((special | ((opcode[11]
               & (~(~((~net_11 & ~net_13) ^ net_9) | ~net_1415) |
               ~((~net_348 | ~net_11) & (net_9 | net_17)))) |
               (~(~net_548 | net_1113) | ~(~net_287 |
               ~(((opcode[9] & (opcode[10] | net_616)) | net_13) |
               ((~net_18 & ~net_25) | net_1208)))))) | ((~net_1188
               & ~net_528) & net_11))) | (rb_sel_z5_3 &
               net_618)))))) | ~net_638) | (((((~(net_1381 |
               net_662) | ~(~(list_empty & net_1380) | ~net_320))
               | ((net_427 & net_386) | net_888)) | ((net_1372 &
               net_7) | (~ex_ctl[7] & ~(~net_366 & ~(net_1371 |
               net_163))))) & net_2361) | (net_706 |
               (alu_ctl_raw[1] | ((~hdf_escalate & ~(~(~net_913 |
               ~((~net_184 | ~(~(~net_313 | ~net_910) | ~(net_61 |
               ex_ctl[2]))) & (~rb_sel_sp | ~(net_2359 &
               net_2362)))) & ~(~net_979 & ~net_844))) |
               (~(net_343 | net_2358) | ~(~(list_empty & net_1353)
               | ~net_144)))))));

   assign ex_ctl_nxt[5] = (~((net_1337 & (((~opcode[9] | ~net_715)
               & (~rb_sel_z5_3 | ~net_16)) | net_1034)) &
               (((~(net_1291 & net_1041) | ~((opcode[4] |
               (opcode[6] & opcode[5])) | opcode[7])) &
               (((~net_504 | ~(net_1332 & net_570)) & (~net_143 |
               ~(~(~net_363 | ~net_1330) | ~(~net_386 |
               ~net_2359)))) & ((~net_1323 & ~(net_733 &
               valid_rfi)) & (((~net_1320 & ~(~net_380 &
               ~(~net_388 | ~net_162))) & ((~net_294 |
               ~spu_ctl_raw[34]) | net_242)) & (((net_785 |
               net_508) | opcode[3]) & (~(~(~net_821 & ~(net_616 &
               net_348)) & ~net_1021) | ~(net_173 & (~opcode[6] &
               ~net_11)))))))) & (~(net_1161 | (net_2358 &
               (alu_ctl_raw[17] & net_252))) & ~net_327))) |
               ~((~net_1271 | ~(~(~opcode[8] | ~(wr_sel_7777 &
               net_1280)) | ~((~net_271 | ~net_739) & (~net_529 |
               ~net_1277)))) & ((((~(net_143 & ((list_empty &
               net_1270) | spu_ctl_raw[34])) & ~net_1267) &
               (~net_1265 | ~net_367)) | data_abort) &
               (~(~(((~net_1261 | ~net_427) & (~net_294 |
               ~net_1260)) & (~net_1256 | ~(net_65 & net_38))) |
               ~((~alu_ctl_raw[1] | ~ex_ctl[3]) & (net_356 |
               net_488))) | ~net_37))));

   assign ex_ctl_nxt[6] = ((((net_706 | (~net_852 | ~(net_1242 |
               ex_ctl[3]))) | ((net_200 & (((net_995 & (~net_26 |
               ~net_30)) | net_294) | (list_empty & net_467))) |
               ((~(net_1079 | spu_ctl_raw[35]) | ~(~(~net_72 &
               ~ex_ctl[5]) | ~net_1234)) | ((net_1229 & (net_467 &
               net_219)) | net_1228)))) | ((net_461 & ((net_227 |
               ((list_empty & ((net_2359 & (spu_ctl_raw[24] |
               net_1220)) | net_653)) | net_399)) | ((net_103 &
               net_2356) | net_1064))) | (net_267 & (((net_21 &
               (~net_14 & ~net_13)) | special) | ((net_1206 &
               (~opcode[5] | ~net_1208)) | ((net_911 & ((~net_15 |
               ~opcode[13]) | opcode[11])) | (~(~(~net_14 &
               ~net_348) | ~opcode[14]) | ~(~(net_617 & net_908) |
               ~opcode[13])))))))) | ((net_32 & (((~(net_1020 |
               (~net_282 & ~(~net_1017 | ~(~opcode[9] |
               ~net_25)))) | ~(~rb_sel_3_0 | ~((net_562 &
               net_1182) | ((opcode[6] & net_908) | net_1181)))) |
               (((opcode[8] & net_1174) & net_25) | net_1172)) |
               (net_1167 & net_1168))) | ((net_1161 | (~net_913 |
               ~(~net_796 | ~net_3))) | (~(~net_632 | ~net_1160) |
               ~(~ex_ctl[3] | ~((net_65 & (~net_39 & ~ex_ctl[1]))
               | (~(~net_289 | ~net_50) | ~(~rb_sel_sp |
               ~net_2356))))))));

   assign ex_ctl_nxt[7] = ((((net_1143 & (~opcode[14] |
               ~net_1145)) | (~((~net_1139 & ~(~valid_rfi &
               ~((~net_388 | ~net_461) & net_36))) & (net_39 |
               ex_ctl[3])) | ~net_913)) | (((net_473 & (~ex_ctl[5]
               | ~net_2356)) | ((((~valid_rfi & ~(~ex_ctl[2] |
               ~net_995)) | net_183) | ((~net_9 & ~net_2361) |
               net_1130)) | ((atomic & net_385) | net_1126))) |
               (~((~ex_ctl[6] | ~atomic) & (~dbg_halt_req |
               ~ex_last)) | ~net_816))) | ((opcode[14] & ((ex_last
               & (opcode[13] | net_1113)) | (rb_sel_z5_3 &
               ((net_1110 & net_1111) | (~net_21 & ~net_1109)))))
               | (net_2361 & (net_955 | ((net_1090 | (net_1092 |
               ((~(~(~net_2357 & ~net_55) | ~net_363) |
               ~(spu_ctl_raw[27] | net_2359)) | (~(~net_1099 |
               ~net_725) | ~(~(net_2358 & net_50) | ~net_338)))))
               | net_207)))));

   assign ex_idle  = (net_299 | ((alu_ctl_raw[1] & net_37) &
               (ex_ctl[0] & net_338)));

   assign ex_last_nxt = ((~((((ex_ctl[0] | net_1079) & (net_1075 &
               (ex_ctl[7] | (~smul_last | ~(~net_2357 &
               ~net_51))))) | int_preempt) & (~net_162 |
               ~(((net_949 & (net_119 & wfi_adv)) | (ex_ctl[6] &
               ((net_347 & list_empty) | (net_949 & (~ex_ctl[1] |
               ~net_64))))) | ((net_760 & net_1064) | net_1063))))
               | ~(((~net_143 | ~((~net_50 & ~((~net_206 &
               ~(list_elast & net_347)) & (data_abort |
               net_1050))) | (~(~wfe_adv | ~net_459) | ~(~net_704
               | ~net_219)))) & (~net_1030 & ~(~((cc_pass |
               ~b_cond_de) & (~net_371 | ~(net_625 | (~(opcode[12]
               & (net_603 | (opcode[10] & (~opcode[9] |
               ~net_288)))) | ~(~net_1041 | ~net_1042))))) |
               ~(net_2361 | net_1034)))) & (~net_1027 |
               ~net_367))) | ((net_1022 & net_65) | (net_350 &
               (~((opcode[10] | cfg_smul) & net_1019) |
               ~net_1017))));

   assign exnum_en = ((ex_ctl[2] & (net_779 & int_preempt)) |
               ((spu_ctl_raw[30] & (~net_1008 | ~(~net_94 |
               ~net_294))) | ((net_643 & spu_ctl_raw[22]) |
               net_205)));

   assign exnum_sel_bus = (ex_ctl[2] & net_863);

   assign exnum_sel_int = (~net_869 | ~(spu_ctl_raw[35] ^ net_72));

   assign hdf_request_raw = (~((net_701 & (net_703 | ex_ctl[5])) |
               hdf_escalate) | ~(~svc_escalate | ~net_324));

   assign hwrite   = (net_957 | (~((net_970 & (~net_79 |
               ~(net_2359 & net_37))) & (~net_969 | ~net_320)) |
               ~(~net_961 & ~(~net_963 | ~(~net_487 | ~(net_966 &
               net_386))))));

   assign iaex_agu = ((net_310 & (net_955 | (~net_2360 &
               ~net_40))) | ((~net_55 & ~ex_ctl[2]) | net_953));

   assign iaex_en  = (~((((((net_375 & (~net_949 | ~net_760)) &
               (~net_320 | ~atomic)) | net_65) & (((((~net_704 |
               ~net_37) | net_219) & (~net_294 | ~((~net_2358 &
               ~net_64) & (~net_49 | ~net_2357)))) & ((net_683 &
               (((~spu_ctl_raw[22] | ~spu_ctl_raw[14]) & (net_514
               | net_65)) | net_2359)) & (~net_643 | ~ex_ctl[6])))
               & (net_929 | atomic))) & (~net_137 |
               ~((~(~ex_ctl[6] | ~spu_ctl_raw[24]) |
               ~(spu_ctl_raw[35] | ex_ctl[2])) | (net_317 |
               (net_2360 | net_65))))) & (~hdf_escalate |
               ~(~(net_913 & (~net_252 | ~(~net_785 & ~net_916)))
               | ~((~net_119 | ~net_912) & (~net_399 | ~(~net_899
               | ~(((~net_716 & ~(~net_29 & ~(~net_9 &
               ~((~opcode[12] & ~(~net_910 | ~ex_ctl[3])) |
               net_908)))) & (~net_174 | ~net_15)) |
               ex_ctl[1]))))))) | ~(((~net_888 & ~(~ex_ctl[2] &
               ~(~net_733 | ~net_373))) & (net_250 | int_preempt))
               | data_abort));

   assign iaex_spu = (spu_ctl_raw[34] & net_995);

   assign im30_en  = (((~((net_489 & (net_657 | spu_ctl_raw[35]))
               | net_2357) | ~(net_879 | (~dbg_halt_req |
               ~net_570))) | ((net_626 & opcode[10]) |
               ((spu_ctl_raw[34] & net_2361) & (net_219 &
               net_725)))) | (~(net_472 & (~net_869 | ~net_337)) |
               ~(~net_807 & ~net_745)));

   assign im30_sel_2_0z = (net_180 & (rb_sel_z8_6 | (~net_2361 &
               ~net_5)));

   assign im30_sel_3_0 = (~net_156 | ~(((net_150 & net_740) &
               (~net_796 | ~net_519)) & (~opcode[11] | ~(net_789 &
               net_715))));

   assign im30_sel_8_6z = im74_sel_z10_9;

   assign im30_sel_9_6 = (~(~net_713 & ~net_788) | ~(~net_173 |
               ~net_716));

   assign im30_sel_eight = ((special & (~net_785 | ~net_730)) |
               (net_183 | ((~net_65 & ~net_42) | net_733)));

   assign im30_sel_exnum = (~(~net_779 & ~net_727) | ~net_41);

   assign im30_sel_incr = (~(~(net_162 & (net_776 | (net_293 &
               net_311))) & ~((net_636 | ((net_411 & net_143) |
               net_663)) | ((net_405 & net_367) | net_771))) |
               ~(net_516 | ex_ctl[4]));

   assign im30_sel_list = (~(net_737 | net_6) | ~(~net_763 |
               ~net_174));

   assign im30_sel_one = (~(~net_248 & ~(net_143 & (~(~net_760 |
               ~net_313) | ~net_66))) | ~((~net_739 | ~net_16) &
               (~net_370 | ~net_65)));

   assign im30_sel_seven = (~(net_27 | net_536) | ~(~net_707 |
               ~net_2356));

   assign im30_sel_z8_6 = (rb_sel_z8_6 & (net_9 & net_37));

   assign im74_en  = ((net_746 | ((int_preempt & net_750) |
               net_265)) | ((net_287 & net_520) | net_745));

   assign im74_sel_6_3 = (wr_sel_10_7 | (rb_sel_z8_6 & net_180));

   assign im74_sel_7_4 = (~(net_177 & net_740) | ~((net_737 &
               (~net_739 | ~net_8)) & net_156));

   assign im74_sel_excp = (~(net_164 & net_167) | ~(net_30 |
               net_730));

   assign im74_sel_exnum = (net_473 | (net_707 | net_727));

   assign im74_sel_list = ((net_502 | ((net_725 & net_162) |
               net_663)) | ((ex_ctl[7] & net_722) | net_157));

   assign im74_sel_z10 = (net_713 | (net_715 & net_716));

   assign im74_sel_z10_9 = (net_287 & net_149);

   assign im74_sel_z6_4 = ((net_154 & net_519) & net_11);

   assign instr_rfi = ((rb_sel_sp & (net_366 & (net_49 & net_37)))
               | (net_2360 & ~net_710));

   assign int_return = (net_707 & net_2360);

   assign int_taken = (ex_ctl[2] & net_706);

   assign interwork = (net_704 | net_705);

   assign lockup   = (~((~hdf_escalate | ~(~net_701 | ~(net_2357 |
               net_703))) & (~net_699 | ~atomic)) | ~(~net_65 |
               ~(alu_ctl_raw[12] & net_310)));

   assign ls_size_raw[0] = (spu_ctl_raw[22] | (~(~ex_ctl[6] |
               ~net_534) | ~(ex_ctl[3] | (ex_ctl[2] ^ net_2359))));

   assign ls_size_raw[1] = ((~(net_60 | net_64) |
               ~(~spu_ctl_raw[34] | ~ex_ctl[7])) | ((net_338 &
               net_687) | atomic));

   assign msr_en   = (~(net_683 | ex_ctl[4]) | ~(~net_473 |
               ~net_200));

   assign mul_ctl  = (net_679 | (ex_ctl[0] & net_672));

   assign nzflag_en = (net_201 | (~(((~net_650 & ~(ex_last &
               net_2357)) | ex_ctl[7]) & (~net_399 | ~net_676)) |
               ~(~net_672 & ~net_673)));

   assign psp_sel_auto = (net_663 | (net_417 | (~net_555 |
               ~(net_72 | net_667))));

   assign psp_sel_en = (((net_2361 & ((~(net_604 | net_662) |
               ~(~net_650 | ~net_642)) | spu_ctl_raw[7])) |
               (~(~(~(net_657 | net_61) | ~(~net_656 | ~net_642))
               & ~(wr_use_sp & net_653)) | ~(~net_2359 | ~(net_650
               & net_461)))) | (net_636 | (~net_638 | ~((net_31 |
               net_644) & (~net_642 | ~net_643)))));

   assign psp_sel_nxt = (~(~(net_592 & net_563) | ~net_310) |
               ~(~(net_519 & net_632) | ~opcode[0]));

   assign ra_addr_en = ((int_return | (~net_259 | ~(~net_163 |
               ~net_473))) | (((~ex_last & ~(net_604 | net_57)) |
               (net_267 & ((net_30 & (net_276 | (~(opcode[13] |
               net_617) | ~(~net_9 | ~(~net_13 | ~net_616))))) |
               (net_271 & net_610)))) | ((~(net_51 | net_604) |
               ~(~net_599 | ~((net_30 & (~opcode[14] | ~net_603))
               | net_271))) | (~net_585 | ~(~((opcode[0] &
               (opcode[3] | (net_25 | net_27))) | (net_592 |
               (~opcode[15] | ~net_594))) | ~(net_589 &
               net_219))))));

   assign ra_sel_7_2_0 = (~(~opcode[10] | ~ra_sel_z2_0) |
               ~(~net_502 | ~net_26));

   assign ra_sel_pc = (~((((~net_562 | ~net_180) & ((~net_271 |
               ~net_549) | net_13)) | atomic) & (~net_570 |
               ~net_502)) | ~(~ra_sel_z2_0 | ~(~net_16 |
               ~net_567)));

   assign ra_sel_sp = (~net_555 | ~(((~net_563 & ~net_294) &
               (~net_562 | ~net_20)) & (net_9 | ~(opcode[12] ^
               opcode[13]))));

   assign ra_sel_z10_8 = (net_2362 & (net_174 | ((~net_13 &
               ~net_7) & net_37)));

   assign ra_sel_z2_0 = ((net_252 & (~net_2 & ~opcode[13])) &
               net_15);

   assign ra_sel_z5_3 = ((opcode[12] & (net_252 & (net_13 &
               net_9))) | (net_2362 & ((net_548 & net_549) |
               (opcode[13] & ((opcode[9] & (~net_6 & ~net_29)) |
               net_180)))));

   assign ra_use_aux = (~((net_536 & (~net_106 & ~(spu_ctl_raw[34]
               & (net_65 | net_91)))) & (~net_534 | ~net_535)) |
               ~net_232);

   assign rb_addr_en = ((net_32 & ((~(~net_529 | ~(~net_24 &
               ~opcode[5])) | ~(~(im30_sel_z8_6 & (~net_11 |
               ~net_528)) | ~net_30)) | net_523)) | ((((~net_517 &
               ~(~net_519 | ~net_520)) | (~(net_515 & net_516) |
               ~(net_34 | net_514))) | ((net_143 & net_509) |
               (net_65 & ((~(~net_505 & ~(opcode[3] & (~net_508 &
               ~ex_ctl[3]))) | ~(~net_502 | ~(net_32 | net_504)))
               | (~net_72 & ~net_34))))) | ((net_162 & (net_218 |
               ((ex_ctl[0] & net_487) | net_79))) | (atomic &
               ((~(net_64 | net_489) | ~(~net_487 | ~net_488)) |
               (ex_ctl[3] & exnum_sel_bus))))));

   assign rb_sel_3_0 = (net_19 & net_154);

   assign rb_sel_6_3 = (opcode[10] & (rb_sel_z5_3 | net_154));

   assign rb_sel_aux = (~(~net_473 & ~(net_2360 & net_294)) |
               ~net_472);

   assign rb_sel_list = (atomic | (~(~net_468 & ~(net_470 &
               net_338)) | ~(~net_467 | ~net_65)));

   assign rb_sel_sp = (net_995 & net_397);

   assign rb_sel_wr_ex = (net_461 & (net_386 | (~ex_ctl[7] |
               ~net_2356)));

   assign rb_sel_z5_3 = (net_15 & ex_last);

   assign rb_sel_z8_6 = ~net_800;

   assign spu_ctl_raw[0] = (ex_ctl[7] & (((net_443 & (~net_47 &
               ~spu_ctl_raw[35])) | net_459) | (net_94 &
               net_448)));

   assign spu_ctl_raw[1] = (~(ex_ctl[6] & (ex_ctl[4] | net_394)) |
               ~(~net_396 | ~(net_433 | net_431)));

   assign spu_ctl_raw[10] = ((net_448 & (ex_ctl[3] | net_311)) |
               ((~(net_66 | net_118) | ~(~net_443 | ~((ex_ctl[3] &
               (~net_72 | ~net_47)) | (~net_66 & ~ex_ctl[0])))) |
               ((net_134 & spu_ctl_raw[35]) | net_409)));

   assign spu_ctl_raw[11] = (~(~net_417 | ~(net_431 | (net_433 &
               net_72))) | ~net_67);

   assign spu_ctl_raw[12] = ((net_427 & (net_424 & net_426)) |
               (~(~net_415 | ~net_407) | ~(~net_417 | ~net_406)));

   assign spu_ctl_raw[13] = (spu_ctl_raw[22] | (~(~net_395 |
               ~net_417) | ~(~net_390 | ~ex_last)));

   assign spu_ctl_raw[14] = (~net_72 & ~ex_ctl[3]);

   assign spu_ctl_raw[15] = ((~net_394 & ~(~net_411 & ~net_347)) |
               net_409);

   assign spu_ctl_raw[16] = spu_ctl_raw[22];

   assign spu_ctl_raw[17] = (net_407 & net_394);

   assign spu_ctl_raw[18] = 1'b0;

   assign spu_ctl_raw[19] = spu_ctl_raw[22];

   assign spu_ctl_raw[2] = (net_396 & net_406);

   assign spu_ctl_raw[20] = spu_ctl_raw[25];

   assign spu_ctl_raw[21] = spu_ctl_raw[24];

   assign spu_ctl_raw[22] = (~net_65 & ~net_2356);

   assign spu_ctl_raw[23] = spu_ctl_raw[18];

   assign spu_ctl_raw[24] = (~net_72 & ~ex_ctl[1]);

   assign spu_ctl_raw[25] = (net_405 | net_2361);

   assign spu_ctl_raw[26] = (net_163 | (~net_376 | ~(~net_137 |
               ~(net_65 | net_338))));

   assign spu_ctl_raw[27] = ~spu_ctl_raw[30];

   assign spu_ctl_raw[28] = spu_ctl_raw[31];

   assign spu_ctl_raw[29] = (net_397 & (net_137 & net_399));

   assign spu_ctl_raw[3] = (net_390 | (~(~net_395 | ~net_396) |
               ~(~net_394 | ~net_65)));

   assign spu_ctl_raw[30] = (~net_2356 & ~ex_ctl[5]);

   assign spu_ctl_raw[31] = (net_388 | (~ex_ctl[1] & ~ex_ctl[5]));

   assign spu_ctl_raw[32] = (net_388 | (~net_69 & ~ex_ctl[5]));

   assign spu_ctl_raw[33] = (net_114 | net_387);

   assign spu_ctl_raw[34] = (~net_2357 & ~net_2358);

   assign spu_ctl_raw[35] = ~ex_ctl[1];

   assign spu_ctl_raw[4] = (~((~net_385 & ~net_386) & net_384) |
               ~net_61);

   assign spu_ctl_raw[5] = (~net_376 | ~((net_381 | net_48) &
               (net_62 | net_380)));

   assign spu_ctl_raw[6] = spu_ctl_raw[18];

   assign spu_ctl_raw[7] = (net_207 & net_311);

   assign spu_ctl_raw[8] = spu_ctl_raw[9];

   assign spu_ctl_raw[9] = (net_373 | (~ex_ctl[2] & ~net_375));

   assign spu_en_nxt = (net_327 | ((~(~(~(~net_371 | ~net_372) |
               ~(~net_370 | ~net_72)) & ~((spu_ctl_raw[24] &
               (net_366 & net_367)) | ((net_363 & (~net_59 &
               ~net_43)) | net_362))) | ~(net_355 | net_356)) |
               ((net_348 & (net_350 & ((~net_21 & ~opcode[6]) ^
               opcode[7]))) | (~(~net_340 & ~(~(net_2359 |
               (~net_162 | ~((ex_ctl[7] & net_163) | net_347))) |
               ~net_343)) | ~((~net_339 | ~net_143) & (~net_337 |
               ~net_338))))));

   assign stk_align_en = (~(~net_310 | ~exnum_sel_bus) |
               ~(~alu_ctl_raw[10] | ~ex_ctl[1]));

   assign svc_request = (~svc_escalate & ~(~net_323 & ~net_324));

   assign txev     = (net_320 & net_321);

   assign vflag_en = ((net_2360 & (spu_ctl_raw[22] | (net_207 &
               (net_317 | (~net_319 | ~net_225))))) | (ex_last &
               ((spu_ctl_raw[35] & (net_313 & net_219)) |
               (~(~net_311 | ~ex_ctl[2]) | ~(~net_310 |
               ~net_134)))));

   assign wfe_execute = (net_301 & net_302);

   assign wfi_execute = (~(~net_299 & ~(~net_43 & ~net_92)) |
               ~(~net_2362 | ~(net_298 & net_94)));

   assign wr_addr_raw_en = (~net_253 | ~((net_259 & (~net_261 &
               ~(~(~net_289 & ~(net_291 & (net_293 & net_294))) |
               ~(~net_265 & ~(net_267 & (((~(net_280 & (~net_282 |
               ~(~(~net_288 | ~net_271) | ~(net_16 | (~net_287 |
               ~debug_en))))) | ~(net_279 | opcode[11])) |
               ((~net_30 & ~net_11) | net_276)) | (net_271 &
               net_272))))))) & (net_257 | net_258)));

   assign wr_en    = ((net_2358 & ((~(ex_ctl[2] | (~net_248 &
               ~(~net_250 | ~(~net_252 | ~net_138)))) | ~(net_246
               | ex_ctl[7])) | (ex_ctl[6] & ((net_243 & net_37) |
               (~net_242 & ~ex_ctl[0]))))) | ((net_72 &
               (((ex_ctl[5] & (~net_55 | ~net_48)) | net_234) |
               (~net_232 & ~ex_ctl[6]))) | ((~(((~net_227 |
               ~(~net_39 & ~int_preempt)) & (net_225 | (net_118 |
               net_37))) & (atomic | net_222)) | ~(~net_49 |
               ~(ex_ctl[6] & (~(~net_219 | ~net_83) | ~(~net_218 |
               ~net_37))))) | ((~net_49 & ~net_51) | (((ex_last &
               ((~net_118 & ~net_69) | (ex_ctl[3] & (net_104 &
               net_2360)))) | ((net_206 & net_207) | net_205)) |
               ((ex_ctl[7] & net_201) | (~(~net_200 | ~net_2360) |
               ~(~ex_ctl[2] | ~(~net_48 & ~ex_ctl[4])))))))));

   assign wr_sel_10_7 = (net_154 & net_174);

   assign wr_sel_11_8 = ((net_180 & (rb_sel_sp | (net_183 |
               net_184))) | (~net_177 | ~(~(~net_14 & ~net_17) |
               ~im74_sel_z6_4)));

   assign wr_sel_3_0 = (~(~net_173 | ~net_174) | ~(~(opcode[12] &
               im74_sel_z6_4) | ~(~opcode[9] | ~net_172)));

   assign wr_sel_7777 = (rb_sel_z8_6 & net_174);

   assign wr_sel_excp = (~net_164 | ~(~net_11 | ~(~net_51 |
               ~net_167)));

   assign wr_sel_list = (net_157 | (~(net_163 | net_2362) |
               ~(~ex_ctl[0] | ~(net_162 | atomic))));

   assign wr_sel_z10_8 = (~net_155 | ~net_156);

   assign wr_sel_z2_0 = ((net_151 & (net_153 | net_154)) |
               (~(net_15 | net_150) | ~(~net_149 | ~net_11)));

   assign wr_use_list = (((~(~net_143 | ~net_144) | ~(net_2362 |
               ex_ctl[6])) & (~net_2360 & ~net_2357)) |
               (~(~(net_137 & net_138) | ~spu_ctl_raw[34]) |
               ~(~(~data_abort & ~net_135) | ~net_134)));

   assign wr_use_lr = (alu_ctl_raw[19] | ((~net_51 & ~ex_ctl[5]) |
               net_128));

   assign wr_use_ra = ((net_2362 & ((~(~net_125 | ~ex_ctl[2]) |
               ~(ex_ctl[7] | ex_ctl[6])) | net_122)) |
               (((~(~net_119 | ~atomic) | ~(net_117 | net_118)) |
               (((atomic | ((spu_ctl_raw[31] & net_65) | net_114))
               & net_2357) | net_110)) | ((ex_ctl[4] & net_106) |
               (~(~net_104 | ~net_105) | ~(~net_103 |
               ~spu_ctl_raw[35])))));

   assign wr_use_sp = (~net_2356 & ~net_40);

   assign wr_use_wr = ((ex_last & ((net_87 | (~(net_92 & (~net_94
               | ~net_2356)) | ~(~net_91 | ~net_2358))) | net_86))
               | ((~(~net_83 | ~ex_ctl[4]) | ~(~spu_ctl_raw[7] |
               ~net_2361)) | ((ex_ctl[7] & net_80) | net_79)));


endmodule // cm0_core_dec

//-----------------------------------------------------------------------------
// EOF
//-----------------------------------------------------------------------------
