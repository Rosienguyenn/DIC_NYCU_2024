/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Dec 24 02:22:13 2024
/////////////////////////////////////////////////////////////

module Accumulators ( rst_n, clk, P, out_valid, O );
  input [8:0] P;
  output [12:0] O;
  input rst_n, clk;
  output out_valid;
  wire   n1, flag, N7, N11, N12, N13, N14, N15, N31, N32, N33, N34, N35, N36,
         N37, N38, N39, N40, N41, N42, N43, N57, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151;
  wire   [4:0] ctr;

  NOR5xp2_ASAP7_75t_R U84 ( .A(ctr[0]), .B(n151), .C(ctr[1]), .D(ctr[4]), .E(
        ctr[2]), .Y(N57) );
  AND2x2_ASAP7_75t_R U95 ( .A(N7), .B(n72), .Y(n76) );
  AND3x1_ASAP7_75t_R U96 ( .A(ctr[1]), .B(n151), .C(flag), .Y(n75) );
  Accumulators_DW01_add_0 add_63 ( .A({n1, n1, n1, n1, P}), .B({O[11:0], n1}), 
        .CI(n1), .SUM({N43, N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, 
        N32, N31}) );
  HAxp5_ASAP7_75t_R add_39_U1_1_1 ( .A(ctr[1]), .B(ctr[0]), .CON(n128), .SN(
        n127) );
  HAxp5_ASAP7_75t_R add_39_U1_1_2 ( .A(ctr[2]), .B(n133), .CON(n130), .SN(n129) );
  HAxp5_ASAP7_75t_R add_39_U1_1_3 ( .A(ctr[3]), .B(n134), .CON(n132), .SN(n131) );
  ASYNC_DFFHx1_ASAP7_75t_R flag_reg ( .D(n83), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(flag) );
  ASYNC_DFFHx1_ASAP7_75t_R out_valid_reg ( .D(n82), .CLK(clk), .RESET(n126), 
        .SET(n1), .QN(out_valid) );
  ASYNC_DFFHx1_ASAP7_75t_R ctr_reg_2_ ( .D(n81), .CLK(clk), .RESET(n126), 
        .SET(n1), .QN(ctr[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R ctr_reg_1_ ( .D(n80), .CLK(clk), .RESET(n126), 
        .SET(n1), .QN(ctr[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R ctr_reg_0_ ( .D(n79), .CLK(clk), .RESET(n126), 
        .SET(n1), .QN(ctr[0]) );
  ASYNC_DFFHx1_ASAP7_75t_R ctr_reg_3_ ( .D(n77), .CLK(clk), .RESET(n126), 
        .SET(n1), .QN(ctr[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R ctr_reg_4_ ( .D(n78), .CLK(clk), .RESET(n126), 
        .SET(n1), .QN(ctr[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_0_ ( .D(n150), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[0]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_1_ ( .D(n149), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[1]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_2_ ( .D(n148), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[2]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_3_ ( .D(n147), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[3]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_4_ ( .D(n146), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[4]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_5_ ( .D(n145), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[5]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_6_ ( .D(n144), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[6]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_7_ ( .D(n143), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[7]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_8_ ( .D(n142), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[8]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_11_ ( .D(n139), .CLK(clk), .RESET(n126), 
        .SET(n1), .QN(O[11]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_12_ ( .D(n138), .CLK(clk), .RESET(n126), 
        .SET(n1), .QN(O[12]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_10_ ( .D(n140), .CLK(clk), .RESET(n126), 
        .SET(n1), .QN(O[10]) );
  ASYNC_DFFHx1_ASAP7_75t_R O_reg_9_ ( .D(n141), .CLK(clk), .RESET(n126), .SET(
        n1), .QN(O[9]) );
  TIELOx1_ASAP7_75t_R U97 ( .L(n1) );
  NAND2xp5_ASAP7_75t_R U98 ( .A(n125), .B(N43), .Y(n138) );
  NAND2xp5_ASAP7_75t_R U99 ( .A(N14), .B(n76), .Y(n77) );
  NAND2xp5_ASAP7_75t_R U100 ( .A(N15), .B(n76), .Y(n78) );
  NAND2xp5_ASAP7_75t_R U101 ( .A(N11), .B(n76), .Y(n79) );
  NAND2xp5_ASAP7_75t_R U102 ( .A(N12), .B(n76), .Y(n80) );
  NAND2xp5_ASAP7_75t_R U103 ( .A(N13), .B(n76), .Y(n81) );
  OR4x2_ASAP7_75t_R U104 ( .A(ctr[4]), .B(ctr[2]), .C(ctr[0]), .D(n73), .Y(n82) );
  NOR2xp33_ASAP7_75t_R U105 ( .A(flag), .B(N57), .Y(n83) );
  INVx1_ASAP7_75t_R U106 ( .A(n122), .Y(n125) );
  NAND2xp5_ASAP7_75t_R U107 ( .A(n87), .B(n72), .Y(n122) );
  NAND4xp25_ASAP7_75t_R U108 ( .A(ctr[3]), .B(ctr[0]), .C(n86), .D(n85), .Y(
        n87) );
  NOR2xp33_ASAP7_75t_R U109 ( .A(ctr[1]), .B(ctr[2]), .Y(n85) );
  NOR2xp33_ASAP7_75t_R U110 ( .A(ctr[2]), .B(ctr[4]), .Y(n84) );
  NOR2xp33_ASAP7_75t_R U111 ( .A(n74), .B(n75), .Y(n73) );
  NOR2xp33_ASAP7_75t_R U112 ( .A(ctr[1]), .B(n151), .Y(n74) );
  NAND3xp33_ASAP7_75t_R U113 ( .A(n75), .B(ctr[0]), .C(n84), .Y(n72) );
  INVx1_ASAP7_75t_R U114 ( .A(rst_n), .Y(n126) );
  INVx1_ASAP7_75t_R U115 ( .A(ctr[4]), .Y(n86) );
  NAND2xp5_ASAP7_75t_R U116 ( .A(N42), .B(n125), .Y(n139) );
  NAND2xp5_ASAP7_75t_R U117 ( .A(N41), .B(n125), .Y(n140) );
  NAND2xp5_ASAP7_75t_R U118 ( .A(N40), .B(n125), .Y(n141) );
  INVx1_ASAP7_75t_R U119 ( .A(N39), .Y(n88) );
  NAND2xp5_ASAP7_75t_R U120 ( .A(n125), .B(n88), .Y(n91) );
  INVx1_ASAP7_75t_R U121 ( .A(P[8]), .Y(n89) );
  NAND2xp5_ASAP7_75t_R U122 ( .A(n122), .B(n89), .Y(n90) );
  NAND2xp5_ASAP7_75t_R U123 ( .A(n91), .B(n90), .Y(n142) );
  INVx1_ASAP7_75t_R U124 ( .A(N38), .Y(n92) );
  NAND2xp5_ASAP7_75t_R U125 ( .A(n125), .B(n92), .Y(n95) );
  INVx1_ASAP7_75t_R U126 ( .A(P[7]), .Y(n93) );
  NAND2xp5_ASAP7_75t_R U127 ( .A(n122), .B(n93), .Y(n94) );
  NAND2xp5_ASAP7_75t_R U128 ( .A(n95), .B(n94), .Y(n143) );
  INVx1_ASAP7_75t_R U129 ( .A(N37), .Y(n96) );
  NAND2xp5_ASAP7_75t_R U130 ( .A(n125), .B(n96), .Y(n99) );
  INVx1_ASAP7_75t_R U131 ( .A(P[6]), .Y(n97) );
  NAND2xp5_ASAP7_75t_R U132 ( .A(n122), .B(n97), .Y(n98) );
  NAND2xp5_ASAP7_75t_R U133 ( .A(n99), .B(n98), .Y(n144) );
  INVx1_ASAP7_75t_R U134 ( .A(N36), .Y(n100) );
  NAND2xp5_ASAP7_75t_R U135 ( .A(n125), .B(n100), .Y(n103) );
  INVx1_ASAP7_75t_R U136 ( .A(P[5]), .Y(n101) );
  NAND2xp5_ASAP7_75t_R U137 ( .A(n122), .B(n101), .Y(n102) );
  NAND2xp5_ASAP7_75t_R U138 ( .A(n103), .B(n102), .Y(n145) );
  INVx1_ASAP7_75t_R U139 ( .A(N35), .Y(n104) );
  NAND2xp5_ASAP7_75t_R U140 ( .A(n125), .B(n104), .Y(n107) );
  INVx1_ASAP7_75t_R U141 ( .A(P[4]), .Y(n105) );
  NAND2xp5_ASAP7_75t_R U142 ( .A(n122), .B(n105), .Y(n106) );
  NAND2xp5_ASAP7_75t_R U143 ( .A(n107), .B(n106), .Y(n146) );
  INVx1_ASAP7_75t_R U144 ( .A(N34), .Y(n108) );
  NAND2xp5_ASAP7_75t_R U145 ( .A(n125), .B(n108), .Y(n111) );
  INVx1_ASAP7_75t_R U146 ( .A(P[3]), .Y(n109) );
  NAND2xp5_ASAP7_75t_R U147 ( .A(n122), .B(n109), .Y(n110) );
  NAND2xp5_ASAP7_75t_R U148 ( .A(n111), .B(n110), .Y(n147) );
  INVx1_ASAP7_75t_R U149 ( .A(N33), .Y(n112) );
  NAND2xp5_ASAP7_75t_R U150 ( .A(n125), .B(n112), .Y(n115) );
  INVx1_ASAP7_75t_R U151 ( .A(P[2]), .Y(n113) );
  NAND2xp5_ASAP7_75t_R U152 ( .A(n122), .B(n113), .Y(n114) );
  NAND2xp5_ASAP7_75t_R U153 ( .A(n115), .B(n114), .Y(n148) );
  INVx1_ASAP7_75t_R U154 ( .A(N32), .Y(n116) );
  NAND2xp5_ASAP7_75t_R U155 ( .A(n125), .B(n116), .Y(n119) );
  INVx1_ASAP7_75t_R U156 ( .A(P[1]), .Y(n117) );
  NAND2xp5_ASAP7_75t_R U157 ( .A(n122), .B(n117), .Y(n118) );
  NAND2xp5_ASAP7_75t_R U158 ( .A(n119), .B(n118), .Y(n149) );
  INVx1_ASAP7_75t_R U159 ( .A(N31), .Y(n120) );
  NAND2xp5_ASAP7_75t_R U160 ( .A(n125), .B(n120), .Y(n124) );
  INVx1_ASAP7_75t_R U161 ( .A(P[0]), .Y(n121) );
  NAND2xp5_ASAP7_75t_R U162 ( .A(n122), .B(n121), .Y(n123) );
  NAND2xp5_ASAP7_75t_R U163 ( .A(n124), .B(n123), .Y(n150) );
  INVx1_ASAP7_75t_R U164 ( .A(ctr[0]), .Y(N11) );
  INVx1_ASAP7_75t_R U165 ( .A(n127), .Y(N12) );
  INVx1_ASAP7_75t_R U166 ( .A(n129), .Y(N13) );
  INVx1_ASAP7_75t_R U167 ( .A(n131), .Y(N14) );
  XNOR2xp5_ASAP7_75t_R U168 ( .A(n132), .B(ctr[4]), .Y(N15) );
  INVx1_ASAP7_75t_R U169 ( .A(n128), .Y(n133) );
  INVx1_ASAP7_75t_R U170 ( .A(n130), .Y(n134) );
  NOR2xp33_ASAP7_75t_R U171 ( .A(ctr[0]), .B(ctr[1]), .Y(n135) );
  NOR2xp33_ASAP7_75t_R U172 ( .A(n135), .B(n151), .Y(n137) );
  AND2x2_ASAP7_75t_R U173 ( .A(ctr[3]), .B(ctr[2]), .Y(n136) );
  NOR3xp33_ASAP7_75t_R U174 ( .A(n137), .B(ctr[4]), .C(n136), .Y(N7) );
  INVx1_ASAP7_75t_R U175 ( .A(ctr[3]), .Y(n151) );
endmodule


module Accumulators_DW01_add_0 ( A, B, CI, SUM, CO );
  input [12:0] A;
  input [12:0] B;
  output [12:0] SUM;
  input CI;
  output CO;
  wire   n2, n4, n5, n6, n7, n8, n9, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35;

  FAx1_ASAP7_75t_R U1_8 ( .A(A[8]), .B(B[8]), .CI(n15), .CON(n22), .SN(n23) );
  FAx1_ASAP7_75t_R U1_7 ( .A(A[7]), .B(B[7]), .CI(n16), .CON(n24), .SN(n25) );
  FAx1_ASAP7_75t_R U1_6 ( .A(A[6]), .B(B[6]), .CI(n17), .CON(n26), .SN(n27) );
  FAx1_ASAP7_75t_R U1_5 ( .A(A[5]), .B(B[5]), .CI(n18), .CON(n28), .SN(n29) );
  FAx1_ASAP7_75t_R U1_4 ( .A(A[4]), .B(B[4]), .CI(n19), .CON(n30), .SN(n31) );
  FAx1_ASAP7_75t_R U1_3 ( .A(A[3]), .B(B[3]), .CI(n20), .CON(n32), .SN(n33) );
  FAx1_ASAP7_75t_R U1_2 ( .A(A[2]), .B(B[2]), .CI(n7), .CON(n34), .SN(n35) );
  NOR2xp33_ASAP7_75t_R U1 ( .A(n22), .B(n2), .Y(n9) );
  NAND2xp5_ASAP7_75t_R U2 ( .A(B[9]), .B(B[10]), .Y(n2) );
  XOR2xp5_ASAP7_75t_R U3 ( .A(n8), .B(B[10]), .Y(SUM[10]) );
  NAND2xp5_ASAP7_75t_R U4 ( .A(B[11]), .B(n9), .Y(n21) );
  INVx1_ASAP7_75t_R U5 ( .A(B[11]), .Y(n4) );
  XOR2xp5_ASAP7_75t_R U6 ( .A(n14), .B(B[9]), .Y(SUM[9]) );
  XNOR2xp5_ASAP7_75t_R U7 ( .A(n9), .B(n4), .Y(SUM[11]) );
  INVx8_ASAP7_75t_R U8 ( .A(A[1]), .Y(n5) );
  NOR2x1p5_ASAP7_75t_R U9 ( .A(n5), .B(n6), .Y(n7) );
  INVx13_ASAP7_75t_R U10 ( .A(B[1]), .Y(n6) );
  AND2x2_ASAP7_75t_R U11 ( .A(B[9]), .B(n14), .Y(n8) );
  XNOR2xp5_ASAP7_75t_R U12 ( .A(n21), .B(B[12]), .Y(SUM[12]) );
  XOR2xp5_ASAP7_75t_R U13 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  HB1xp67_ASAP7_75t_R U14 ( .A(A[0]), .Y(SUM[0]) );
  INVx1_ASAP7_75t_R U15 ( .A(n22), .Y(n14) );
  INVx1_ASAP7_75t_R U16 ( .A(n24), .Y(n15) );
  INVx1_ASAP7_75t_R U17 ( .A(n26), .Y(n16) );
  INVx1_ASAP7_75t_R U18 ( .A(n28), .Y(n17) );
  INVx1_ASAP7_75t_R U19 ( .A(n30), .Y(n18) );
  INVx1_ASAP7_75t_R U20 ( .A(n32), .Y(n19) );
  INVx1_ASAP7_75t_R U21 ( .A(n34), .Y(n20) );
  INVx1_ASAP7_75t_R U22 ( .A(n23), .Y(SUM[8]) );
  INVx1_ASAP7_75t_R U23 ( .A(n25), .Y(SUM[7]) );
  INVx1_ASAP7_75t_R U24 ( .A(n27), .Y(SUM[6]) );
  INVx1_ASAP7_75t_R U25 ( .A(n29), .Y(SUM[5]) );
  INVx1_ASAP7_75t_R U26 ( .A(n31), .Y(SUM[4]) );
  INVx1_ASAP7_75t_R U27 ( .A(n33), .Y(SUM[3]) );
  INVx1_ASAP7_75t_R U28 ( .A(n35), .Y(SUM[2]) );
endmodule
