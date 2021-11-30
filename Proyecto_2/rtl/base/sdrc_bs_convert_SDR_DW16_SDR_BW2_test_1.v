module sdrc_bs_convert_SDR_DW16_SDR_BW2_test_1 ( clk, reset_n, sdr_width, 
        x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast, x2a_rddt, x2a_rdok, 
        a2x_wrdt, a2x_wren_n, x2a_wrnext, app_wr_data, app_wr_en_n, 
        app_wr_next, app_last_wr, app_rd_data, app_rd_valid, app_last_rd, 
        test_si, test_so, test_se );
  input [1:0] sdr_width;
  input [15:0] x2a_rddt;
  output [15:0] a2x_wrdt;
  output [1:0] a2x_wren_n;
  input [31:0] app_wr_data;
  input [3:0] app_wr_en_n;
  output [31:0] app_rd_data;
  input clk, reset_n, x2a_rdstart, x2a_wrstart, x2a_rdlast, x2a_wrlast,
         x2a_rdok, x2a_wrnext, test_si, test_se;
  output app_wr_next, app_last_wr, app_rd_valid, app_last_rd, test_so;
  wire   x2a_wrlast, x2a_rdlast, wr_xfr_count_0_, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222;
  wire   [1:0] rd_xfr_count;
  assign app_last_wr = x2a_wrlast;
  assign app_last_rd = x2a_rdlast;

  FD1S saved_rd_data_reg_23_ ( .D(n190), .TI(n200), .TE(test_se), .CP(n57), 
        .Q(n199), .QN(n40) );
  FD1S saved_rd_data_reg_22_ ( .D(n189), .TI(n201), .TE(test_se), .CP(n57), 
        .Q(n200), .QN(n41) );
  FD1S saved_rd_data_reg_21_ ( .D(n188), .TI(n202), .TE(test_se), .CP(n57), 
        .Q(n201), .QN(n42) );
  FD1S saved_rd_data_reg_20_ ( .D(n187), .TI(n203), .TE(test_se), .CP(n57), 
        .Q(n202), .QN(n43) );
  FD1S saved_rd_data_reg_19_ ( .D(n186), .TI(n204), .TE(test_se), .CP(n57), 
        .Q(n203), .QN(n45) );
  FD1S saved_rd_data_reg_18_ ( .D(n185), .TI(n205), .TE(test_se), .CP(n57), 
        .Q(n204), .QN(n46) );
  FD1S saved_rd_data_reg_17_ ( .D(n184), .TI(n206), .TE(test_se), .CP(n57), 
        .Q(n205), .QN(n47) );
  FD1S saved_rd_data_reg_16_ ( .D(n183), .TI(n207), .TE(test_se), .CP(n57), 
        .Q(n206), .QN(n48) );
  FD1S saved_rd_data_reg_15_ ( .D(n182), .TI(n208), .TE(test_se), .CP(n56), 
        .Q(n207), .QN(n49) );
  FD1S saved_rd_data_reg_14_ ( .D(n181), .TI(n209), .TE(test_se), .CP(n56), 
        .Q(n208), .QN(n50) );
  FD1S saved_rd_data_reg_13_ ( .D(n180), .TI(n210), .TE(test_se), .CP(n56), 
        .Q(n209), .QN(n51) );
  FD1S saved_rd_data_reg_12_ ( .D(n179), .TI(n211), .TE(test_se), .CP(n56), 
        .Q(n210), .QN(n52) );
  FD1S saved_rd_data_reg_11_ ( .D(n178), .TI(n212), .TE(test_se), .CP(n56), 
        .Q(n211), .QN(n53) );
  FD1S saved_rd_data_reg_10_ ( .D(n177), .TI(n213), .TE(test_se), .CP(n56), 
        .Q(n212), .QN(n54) );
  FD1S saved_rd_data_reg_9_ ( .D(n176), .TI(n214), .TE(test_se), .CP(n56), .Q(
        n213), .QN(n32) );
  FD1S saved_rd_data_reg_8_ ( .D(n175), .TI(n215), .TE(test_se), .CP(n56), .Q(
        n214), .QN(n33) );
  FD1S saved_rd_data_reg_7_ ( .D(n174), .TI(n216), .TE(test_se), .CP(n58), .Q(
        n215), .QN(n34) );
  FD1S saved_rd_data_reg_6_ ( .D(n173), .TI(n217), .TE(test_se), .CP(n58), .Q(
        n216), .QN(n35) );
  FD1S saved_rd_data_reg_5_ ( .D(n172), .TI(n218), .TE(test_se), .CP(n58), .Q(
        n217), .QN(n36) );
  FD1S saved_rd_data_reg_4_ ( .D(n171), .TI(n219), .TE(test_se), .CP(n58), .Q(
        n218), .QN(n37) );
  FD1S saved_rd_data_reg_3_ ( .D(n170), .TI(n220), .TE(test_se), .CP(n57), .Q(
        n219), .QN(n38) );
  FD1S saved_rd_data_reg_2_ ( .D(n169), .TI(n221), .TE(test_se), .CP(n57), .Q(
        n220), .QN(n39) );
  FD1S saved_rd_data_reg_1_ ( .D(n168), .TI(n222), .TE(test_se), .CP(n57), .Q(
        n221), .QN(n44) );
  FD1S saved_rd_data_reg_0_ ( .D(n167), .TI(rd_xfr_count[1]), .TE(test_se), 
        .CP(n57), .Q(n222), .QN(n55) );
  FD1S rd_xfr_count_reg_1_ ( .D(n191), .TI(rd_xfr_count[0]), .TE(test_se), 
        .CP(n56), .Q(rd_xfr_count[1]), .QN(n29) );
  FD1S wr_xfr_count_reg_1_ ( .D(n165), .TI(wr_xfr_count_0_), .TE(test_se), 
        .CP(n56), .Q(test_so), .QN(n31) );
  FD1S rd_xfr_count_reg_0_ ( .D(n192), .TI(test_si), .TE(test_se), .CP(n56), 
        .Q(rd_xfr_count[0]) );
  FD1S wr_xfr_count_reg_0_ ( .D(n166), .TI(n199), .TE(test_se), .CP(n56), .Q(
        wr_xfr_count_0_), .QN(n30) );
  IVP U31 ( .A(n59), .Z(n57) );
  IVP U32 ( .A(n59), .Z(n56) );
  IVP U33 ( .A(n59), .Z(n58) );
  IVP U34 ( .A(clk), .Z(n59) );
  AO4 U35 ( .A(n60), .B(n61), .C(n62), .D(n63), .Z(a2x_wrdt[10]) );
  IV U36 ( .A(app_wr_data[26]), .Z(n63) );
  IV U37 ( .A(app_wr_data[10]), .Z(n61) );
  AO4 U38 ( .A(n60), .B(n64), .C(n62), .D(n65), .Z(a2x_wrdt[11]) );
  IV U39 ( .A(app_wr_data[27]), .Z(n65) );
  IV U40 ( .A(app_wr_data[11]), .Z(n64) );
  AO4 U41 ( .A(n60), .B(n66), .C(n62), .D(n67), .Z(a2x_wrdt[12]) );
  IV U42 ( .A(app_wr_data[28]), .Z(n67) );
  IV U43 ( .A(app_wr_data[12]), .Z(n66) );
  AO4 U44 ( .A(n60), .B(n68), .C(n62), .D(n69), .Z(a2x_wrdt[13]) );
  IV U45 ( .A(app_wr_data[29]), .Z(n69) );
  IV U46 ( .A(app_wr_data[13]), .Z(n68) );
  AO4 U47 ( .A(n60), .B(n70), .C(n62), .D(n71), .Z(a2x_wrdt[14]) );
  IV U48 ( .A(app_wr_data[30]), .Z(n71) );
  IV U49 ( .A(app_wr_data[14]), .Z(n70) );
  AO4 U50 ( .A(n60), .B(n72), .C(n62), .D(n73), .Z(a2x_wrdt[15]) );
  IV U51 ( .A(app_wr_data[31]), .Z(n73) );
  IV U52 ( .A(app_wr_data[15]), .Z(n72) );
  AO4 U53 ( .A(n60), .B(n74), .C(n62), .D(n75), .Z(a2x_wrdt[8]) );
  IV U54 ( .A(app_wr_data[24]), .Z(n75) );
  IV U55 ( .A(app_wr_data[8]), .Z(n74) );
  AO4 U56 ( .A(n60), .B(n76), .C(n62), .D(n77), .Z(a2x_wrdt[9]) );
  IV U57 ( .A(app_wr_data[25]), .Z(n77) );
  IV U58 ( .A(app_wr_data[9]), .Z(n76) );
  AO4 U59 ( .A(n60), .B(n78), .C(n62), .D(n79), .Z(a2x_wren_n[1]) );
  IV U60 ( .A(app_wr_en_n[3]), .Z(n79) );
  IV U61 ( .A(app_wr_en_n[1]), .Z(n78) );
  MUX21L U62 ( .A(n80), .B(n81), .S(rd_xfr_count[0]), .Z(n192) );
  OR3 U63 ( .A(n82), .B(x2a_rdlast), .C(n83), .Z(n80) );
  AO4 U64 ( .A(n81), .B(n29), .C(n83), .D(n84), .Z(n191) );
  ND2 U65 ( .A(n85), .B(n86), .Z(n84) );
  IV U66 ( .A(x2a_rdlast), .Z(n86) );
  AO4 U67 ( .A(rd_xfr_count[0]), .B(n29), .C(n82), .D(n87), .Z(n85) );
  IV U68 ( .A(n82), .Z(n81) );
  NR3 U69 ( .A(x2a_rdlast), .B(x2a_rdok), .C(n83), .Z(n82) );
  AO4 U70 ( .A(n88), .B(n40), .C(n89), .D(n90), .Z(n190) );
  AO4 U71 ( .A(n88), .B(n41), .C(n89), .D(n91), .Z(n189) );
  AO4 U72 ( .A(n88), .B(n42), .C(n89), .D(n92), .Z(n188) );
  AO4 U73 ( .A(n88), .B(n43), .C(n89), .D(n93), .Z(n187) );
  AO4 U74 ( .A(n88), .B(n45), .C(n89), .D(n94), .Z(n186) );
  AO4 U75 ( .A(n88), .B(n46), .C(n89), .D(n95), .Z(n185) );
  AO4 U76 ( .A(n88), .B(n47), .C(n89), .D(n96), .Z(n184) );
  AO4 U77 ( .A(n88), .B(n48), .C(n89), .D(n97), .Z(n183) );
  ND2 U78 ( .A(reset_n), .B(n88), .Z(n89) );
  ND2 U79 ( .A(reset_n), .B(n98), .Z(n88) );
  OR4 U80 ( .A(n99), .B(n29), .C(n100), .D(rd_xfr_count[0]), .Z(n98) );
  AO7 U81 ( .A(n101), .B(n49), .C(n102), .Z(n182) );
  AO2 U82 ( .A(x2a_rddt[15]), .B(n103), .C(n104), .D(x2a_rddt[7]), .Z(n102) );
  AO7 U83 ( .A(n101), .B(n50), .C(n105), .Z(n181) );
  AO2 U84 ( .A(x2a_rddt[14]), .B(n103), .C(n104), .D(x2a_rddt[6]), .Z(n105) );
  AO7 U85 ( .A(n101), .B(n51), .C(n106), .Z(n180) );
  AO2 U86 ( .A(x2a_rddt[13]), .B(n103), .C(n104), .D(x2a_rddt[5]), .Z(n106) );
  AO7 U87 ( .A(n101), .B(n52), .C(n107), .Z(n179) );
  AO2 U88 ( .A(x2a_rddt[12]), .B(n103), .C(n104), .D(x2a_rddt[4]), .Z(n107) );
  AO7 U89 ( .A(n101), .B(n53), .C(n108), .Z(n178) );
  AO2 U90 ( .A(x2a_rddt[11]), .B(n103), .C(n104), .D(x2a_rddt[3]), .Z(n108) );
  AO7 U91 ( .A(n101), .B(n54), .C(n109), .Z(n177) );
  AO2 U92 ( .A(x2a_rddt[10]), .B(n103), .C(n104), .D(x2a_rddt[2]), .Z(n109) );
  AO7 U93 ( .A(n101), .B(n32), .C(n110), .Z(n176) );
  AO2 U94 ( .A(x2a_rddt[9]), .B(n103), .C(n104), .D(x2a_rddt[1]), .Z(n110) );
  AO7 U95 ( .A(n101), .B(n33), .C(n111), .Z(n175) );
  AO2 U96 ( .A(x2a_rddt[8]), .B(n103), .C(n104), .D(x2a_rddt[0]), .Z(n111) );
  AN3 U97 ( .A(n112), .B(n101), .C(reset_n), .Z(n104) );
  AN3 U98 ( .A(n101), .B(n100), .C(reset_n), .Z(n103) );
  AO7 U99 ( .A(n87), .B(n99), .C(n113), .Z(n101) );
  ND2 U100 ( .A(rd_xfr_count[0]), .B(n29), .Z(n87) );
  AO4 U101 ( .A(n114), .B(n34), .C(n90), .D(n115), .Z(n174) );
  AO4 U102 ( .A(n114), .B(n35), .C(n91), .D(n115), .Z(n173) );
  AO4 U103 ( .A(n114), .B(n36), .C(n92), .D(n115), .Z(n172) );
  AO4 U104 ( .A(n114), .B(n37), .C(n93), .D(n115), .Z(n171) );
  AO4 U105 ( .A(n114), .B(n38), .C(n94), .D(n115), .Z(n170) );
  AO4 U106 ( .A(n114), .B(n39), .C(n95), .D(n115), .Z(n169) );
  AO4 U107 ( .A(n114), .B(n44), .C(n96), .D(n115), .Z(n168) );
  AO4 U108 ( .A(n114), .B(n55), .C(n97), .D(n115), .Z(n167) );
  ND2 U109 ( .A(reset_n), .B(n114), .Z(n115) );
  ND2 U110 ( .A(n113), .B(n116), .Z(n114) );
  OR3 U111 ( .A(rd_xfr_count[0]), .B(rd_xfr_count[1]), .C(n99), .Z(n116) );
  AO6 U112 ( .A(n100), .B(x2a_rdok), .C(n83), .Z(n113) );
  MUX21L U113 ( .A(n117), .B(n118), .S(n30), .Z(n166) );
  ND2 U114 ( .A(n119), .B(n117), .Z(n118) );
  MUX21L U115 ( .A(n120), .B(n121), .S(n31), .Z(n165) );
  ND3 U116 ( .A(wr_xfr_count_0_), .B(n117), .C(n119), .Z(n121) );
  AO6 U117 ( .A(n119), .B(n30), .C(n122), .Z(n120) );
  IV U118 ( .A(n117), .Z(n122) );
  ND2 U119 ( .A(n119), .B(n123), .Z(n117) );
  NR2 U120 ( .A(x2a_wrlast), .B(n83), .Z(n119) );
  IV U121 ( .A(reset_n), .Z(n83) );
  AO6 U122 ( .A(n124), .B(n62), .C(n123), .Z(app_wr_next) );
  IV U123 ( .A(x2a_wrnext), .Z(n123) );
  NR2 U124 ( .A(n125), .B(n126), .Z(n124) );
  AO6 U125 ( .A(n127), .B(n128), .C(n99), .Z(app_rd_valid) );
  IV U126 ( .A(x2a_rdok), .Z(n99) );
  AO7 U127 ( .A(n100), .B(rd_xfr_count[1]), .C(rd_xfr_count[0]), .Z(n128) );
  AO4 U128 ( .A(n129), .B(n127), .C(n130), .D(n32), .Z(app_rd_data[9]) );
  AO4 U129 ( .A(n131), .B(n127), .C(n130), .D(n33), .Z(app_rd_data[8]) );
  AO4 U130 ( .A(n90), .B(n127), .C(n130), .D(n34), .Z(app_rd_data[7]) );
  AO4 U131 ( .A(n91), .B(n127), .C(n130), .D(n35), .Z(app_rd_data[6]) );
  AO4 U132 ( .A(n92), .B(n127), .C(n130), .D(n36), .Z(app_rd_data[5]) );
  AO4 U133 ( .A(n93), .B(n127), .C(n130), .D(n37), .Z(app_rd_data[4]) );
  AO4 U134 ( .A(n94), .B(n127), .C(n130), .D(n38), .Z(app_rd_data[3]) );
  AO4 U135 ( .A(n90), .B(n132), .C(n112), .D(n133), .Z(app_rd_data[31]) );
  AO4 U136 ( .A(n91), .B(n132), .C(n112), .D(n134), .Z(app_rd_data[30]) );
  AO4 U137 ( .A(n95), .B(n127), .C(n130), .D(n39), .Z(app_rd_data[2]) );
  AO4 U138 ( .A(n92), .B(n132), .C(n112), .D(n135), .Z(app_rd_data[29]) );
  AO4 U139 ( .A(n93), .B(n132), .C(n112), .D(n136), .Z(app_rd_data[28]) );
  AO4 U140 ( .A(n94), .B(n132), .C(n112), .D(n137), .Z(app_rd_data[27]) );
  AO4 U141 ( .A(n95), .B(n132), .C(n112), .D(n138), .Z(app_rd_data[26]) );
  AO4 U142 ( .A(n96), .B(n132), .C(n112), .D(n129), .Z(app_rd_data[25]) );
  IV U143 ( .A(x2a_rddt[9]), .Z(n129) );
  AO4 U144 ( .A(n97), .B(n132), .C(n112), .D(n131), .Z(app_rd_data[24]) );
  IV U145 ( .A(x2a_rddt[8]), .Z(n131) );
  AO4 U146 ( .A(n40), .B(n132), .C(n112), .D(n90), .Z(app_rd_data[23]) );
  IV U147 ( .A(x2a_rddt[7]), .Z(n90) );
  AO4 U148 ( .A(n41), .B(n132), .C(n112), .D(n91), .Z(app_rd_data[22]) );
  IV U149 ( .A(x2a_rddt[6]), .Z(n91) );
  AO4 U150 ( .A(n42), .B(n132), .C(n112), .D(n92), .Z(app_rd_data[21]) );
  IV U151 ( .A(x2a_rddt[5]), .Z(n92) );
  AO4 U152 ( .A(n43), .B(n132), .C(n112), .D(n93), .Z(app_rd_data[20]) );
  IV U153 ( .A(x2a_rddt[4]), .Z(n93) );
  AO4 U154 ( .A(n96), .B(n127), .C(n130), .D(n44), .Z(app_rd_data[1]) );
  AO4 U155 ( .A(n45), .B(n132), .C(n112), .D(n94), .Z(app_rd_data[19]) );
  IV U156 ( .A(x2a_rddt[3]), .Z(n94) );
  AO4 U157 ( .A(n46), .B(n132), .C(n112), .D(n95), .Z(app_rd_data[18]) );
  IV U158 ( .A(x2a_rddt[2]), .Z(n95) );
  AO4 U159 ( .A(n47), .B(n132), .C(n112), .D(n96), .Z(app_rd_data[17]) );
  IV U160 ( .A(x2a_rddt[1]), .Z(n96) );
  AO4 U161 ( .A(n48), .B(n132), .C(n112), .D(n97), .Z(app_rd_data[16]) );
  AO4 U162 ( .A(n133), .B(n127), .C(n130), .D(n49), .Z(app_rd_data[15]) );
  IV U163 ( .A(x2a_rddt[15]), .Z(n133) );
  AO4 U164 ( .A(n134), .B(n127), .C(n130), .D(n50), .Z(app_rd_data[14]) );
  IV U165 ( .A(x2a_rddt[14]), .Z(n134) );
  AO4 U166 ( .A(n135), .B(n127), .C(n130), .D(n51), .Z(app_rd_data[13]) );
  IV U167 ( .A(x2a_rddt[13]), .Z(n135) );
  AO4 U168 ( .A(n136), .B(n127), .C(n130), .D(n52), .Z(app_rd_data[12]) );
  IV U169 ( .A(x2a_rddt[12]), .Z(n136) );
  AO4 U170 ( .A(n137), .B(n127), .C(n130), .D(n53), .Z(app_rd_data[11]) );
  IV U171 ( .A(x2a_rddt[11]), .Z(n137) );
  AO4 U172 ( .A(n138), .B(n127), .C(n130), .D(n54), .Z(app_rd_data[10]) );
  IV U173 ( .A(x2a_rddt[10]), .Z(n138) );
  AO4 U174 ( .A(n97), .B(n127), .C(n130), .D(n55), .Z(app_rd_data[0]) );
  NR2 U175 ( .A(n100), .B(sdr_width[1]), .Z(n130) );
  IV U176 ( .A(n125), .Z(n127) );
  IV U177 ( .A(x2a_rddt[0]), .Z(n97) );
  ND2 U178 ( .A(n139), .B(n140), .Z(a2x_wren_n[0]) );
  AO2 U179 ( .A(n126), .B(app_wr_en_n[3]), .C(n141), .D(app_wr_en_n[1]), .Z(
        n140) );
  AO2 U180 ( .A(app_wr_en_n[2]), .B(n142), .C(app_wr_en_n[0]), .D(n143), .Z(
        n139) );
  ND2 U181 ( .A(n144), .B(n145), .Z(a2x_wrdt[7]) );
  AO2 U182 ( .A(n126), .B(app_wr_data[31]), .C(n141), .D(app_wr_data[15]), .Z(
        n145) );
  AO2 U183 ( .A(app_wr_data[23]), .B(n142), .C(app_wr_data[7]), .D(n143), .Z(
        n144) );
  ND2 U184 ( .A(n146), .B(n147), .Z(a2x_wrdt[6]) );
  AO2 U185 ( .A(n126), .B(app_wr_data[30]), .C(n141), .D(app_wr_data[14]), .Z(
        n147) );
  AO2 U186 ( .A(app_wr_data[22]), .B(n142), .C(app_wr_data[6]), .D(n143), .Z(
        n146) );
  ND2 U187 ( .A(n148), .B(n149), .Z(a2x_wrdt[5]) );
  AO2 U188 ( .A(n126), .B(app_wr_data[29]), .C(n141), .D(app_wr_data[13]), .Z(
        n149) );
  AO2 U189 ( .A(app_wr_data[21]), .B(n142), .C(app_wr_data[5]), .D(n143), .Z(
        n148) );
  ND2 U190 ( .A(n150), .B(n151), .Z(a2x_wrdt[4]) );
  AO2 U191 ( .A(n126), .B(app_wr_data[28]), .C(n141), .D(app_wr_data[12]), .Z(
        n151) );
  AO2 U192 ( .A(app_wr_data[20]), .B(n142), .C(app_wr_data[4]), .D(n143), .Z(
        n150) );
  ND2 U193 ( .A(n152), .B(n153), .Z(a2x_wrdt[3]) );
  AO2 U194 ( .A(n126), .B(app_wr_data[27]), .C(n141), .D(app_wr_data[11]), .Z(
        n153) );
  AO2 U195 ( .A(app_wr_data[19]), .B(n142), .C(app_wr_data[3]), .D(n143), .Z(
        n152) );
  ND2 U196 ( .A(n154), .B(n155), .Z(a2x_wrdt[2]) );
  AO2 U197 ( .A(n126), .B(app_wr_data[26]), .C(n141), .D(app_wr_data[10]), .Z(
        n155) );
  AO2 U198 ( .A(app_wr_data[18]), .B(n142), .C(app_wr_data[2]), .D(n143), .Z(
        n154) );
  ND2 U199 ( .A(n156), .B(n157), .Z(a2x_wrdt[1]) );
  AO2 U200 ( .A(n126), .B(app_wr_data[25]), .C(n141), .D(app_wr_data[9]), .Z(
        n157) );
  AO2 U201 ( .A(app_wr_data[17]), .B(n142), .C(app_wr_data[1]), .D(n143), .Z(
        n156) );
  ND2 U202 ( .A(n158), .B(n159), .Z(a2x_wrdt[0]) );
  AO2 U203 ( .A(n126), .B(app_wr_data[24]), .C(n141), .D(app_wr_data[8]), .Z(
        n159) );
  AN3 U204 ( .A(wr_xfr_count_0_), .B(n31), .C(sdr_width[1]), .Z(n141) );
  AN3 U205 ( .A(test_so), .B(wr_xfr_count_0_), .C(sdr_width[1]), .Z(n126) );
  AO2 U206 ( .A(app_wr_data[16]), .B(n142), .C(app_wr_data[0]), .D(n143), .Z(
        n158) );
  AO7 U207 ( .A(test_so), .B(wr_xfr_count_0_), .C(n60), .Z(n143) );
  AO6 U208 ( .A(n30), .B(n100), .C(n125), .Z(n60) );
  NR2 U209 ( .A(sdr_width[0]), .B(sdr_width[1]), .Z(n125) );
  ND2 U210 ( .A(n62), .B(n160), .Z(n142) );
  OR3 U211 ( .A(n31), .B(wr_xfr_count_0_), .C(n132), .Z(n160) );
  ND2 U212 ( .A(wr_xfr_count_0_), .B(n100), .Z(n62) );
  IV U213 ( .A(n112), .Z(n100) );
  ND2 U214 ( .A(sdr_width[0]), .B(n132), .Z(n112) );
  IV U215 ( .A(sdr_width[1]), .Z(n132) );
endmodule
