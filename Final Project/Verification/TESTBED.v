/////////////////////////////////////////////////////////////////////////
// Project Name: Adder_Tree_Accumulators						       //
// Task Name   : Adder_Tree_Accumulators							   //
// Module Name : Adder_Tree_Accumulators                               //
// File Name   : TESTBED.v                              	  		   //
// Description : Adder_Tree_Accumulators			              	   //	
// Revision History:                                                   //
/////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps
`include "../verif/PATTERN.v"


`ifdef RTL
  `include "../rtl/Adder_Tree.v"
  `include "../rtl/Accumulators.v"
`endif

`ifdef GATE
  `include "../syn/Netlist/Adder_Tree_SYN.v"
  `include "../syn/Netlist/Accumulators_SYN.v"
`endif

 
module TESTBED;
/*
wire [3:0] T_w1, T_w2, T_w3, T_w4, T_w5, T_w6, T_w7, T_w8;
wire [3:0] T_w9, T_w10, T_w11, T_w12, T_w13, T_w14, T_w15, T_w16;
wire [3:0] T_w17, T_w18, T_w19, T_w20, T_w21, T_w22, T_w23, T_w24;
wire [3:0] T_w25, T_w26, T_w27, T_w28, T_w29, T_w30, T_w31, T_w32;
*/
wire [3:0] T1_w1, T1_w2, T1_w3, T1_w4, 
            T1_w5, T1_w6, T1_w7, T1_w8, 
            T1_w9, T1_w10, T1_w11, T1_w12, 
            T1_w13, T1_w14, T1_w15, T1_w16, 
            T1_w17, T1_w18, T1_w19, T1_w20, 
            T1_w21, T1_w22, T1_w23, T1_w24, 
            T1_w25, T1_w26, T1_w27, T1_w28, 
            T1_w29, T1_w30, T1_w31, T1_w32;
wire [3:0] T2_w1, T2_w2, T2_w3, T2_w4, 
            T2_w5, T2_w6, T2_w7, T2_w8, 
            T2_w9, T2_w10, T2_w11, T2_w12, 
            T2_w13, T2_w14, T2_w15, T2_w16, 
            T2_w17, T2_w18, T2_w19, T2_w20, 
            T2_w21, T2_w22, T2_w23, T2_w24, 
            T2_w25, T2_w26, T2_w27, T2_w28, 
            T2_w29, T2_w30, T2_w31, T2_w32;
wire [3:0] T3_w1, T3_w2, T3_w3, T3_w4, 
            T3_w5, T3_w6, T3_w7, T3_w8, 
            T3_w9, T3_w10, T3_w11, T3_w12, 
            T3_w13, T3_w14, T3_w15, T3_w16, 
            T3_w17, T3_w18, T3_w19, T3_w20, 
            T3_w21, T3_w22, T3_w23, T3_w24, 
            T3_w25, T3_w26, T3_w27, T3_w28, 
            T3_w29, T3_w30, T3_w31, T3_w32;
wire [3:0] T4_w1, T4_w2, T4_w3, T4_w4, 
            T4_w5, T4_w6, T4_w7, T4_w8, 
            T4_w9, T4_w10, T4_w11, T4_w12, 
            T4_w13, T4_w14, T4_w15, T4_w16, 
            T4_w17, T4_w18, T4_w19, T4_w20, 
            T4_w21, T4_w22, T4_w23, T4_w24, 
            T4_w25, T4_w26, T4_w27, T4_w28, 
            T4_w29, T4_w30, T4_w31, T4_w32;              
wire  out_valid;	
	
wire  rst_n;	
wire  clk;	
wire [8:0]  P_1, P_2, P_3, P_4;
wire [12:0]  O_1, O_2, O_3, O_4;

initial begin
  `ifdef RTL
    $fsdbDumpfile("module_Adder_Tree_Accumulators.fsdb");
    $fsdbDumpvars(0,"+mda");
    $fsdbDumpvars();
  `endif
  `ifdef GATE
    $sdf_annotate("../syn/Netlist/Adder_Tree_SYN.sdf",u_Adder_Tree_1);
    $sdf_annotate("../syn/Netlist/Adder_Tree_SYN.sdf",u_Adder_Tree_2);
    $sdf_annotate("../syn/Netlist/Adder_Tree_SYN.sdf",u_Adder_Tree_3);
    $sdf_annotate("../syn/Netlist/Adder_Tree_SYN.sdf",u_Adder_Tree_4);
    $sdf_annotate("../syn/Netlist/Accumulators_SYN.sdf",u_Accumulators_1);
    $sdf_annotate("../syn/Netlist/Accumulators_SYN.sdf",u_Accumulators_2);
    $sdf_annotate("../syn/Netlist/Accumulators_SYN.sdf",u_Accumulators_3);
    $sdf_annotate("../syn/Netlist/Accumulators_SYN.sdf",u_Accumulators_4);
    $fsdbDumpfile("Adder_Tree_Accumulators_SYN.fsdb");
    $fsdbDumpvars(0,"+mda");	
    $fsdbDumpvars();    
  `endif
end

`ifdef RTL	
Adder_Tree	u_Adder_Tree_1	(
    .clk(clk),
    .rst_n(rst_n),
    .T_w1(T1_w1), .T_w2(T1_w2), .T_w3(T1_w3), .T_w4(T1_w4), 
    .T_w5(T1_w5), .T_w6(T1_w6), .T_w7(T1_w7), .T_w8(T1_w8), 
    .T_w9(T1_w9), .T_w10(T1_w10), .T_w11(T1_w11), .T_w12(T1_w12), 
    .T_w13(T1_w13), .T_w14(T1_w14), .T_w15(T1_w15), .T_w16(T1_w16), 
    .T_w17(T1_w17), .T_w18(T1_w18), .T_w19(T1_w19), .T_w20(T1_w20), 
    .T_w21(T1_w21), .T_w22(T1_w22), .T_w23(T1_w23), .T_w24(T1_w24), 
    .T_w25(T1_w25), .T_w26(T1_w26), .T_w27(T1_w27), .T_w28(T1_w28), 
    .T_w29(T1_w29), .T_w30(T1_w30), .T_w31(T1_w31), .T_w32(T1_w32),
    .P(P_1)
);
Adder_Tree	u_Adder_Tree_2	(
    .clk(clk),
    .rst_n(rst_n),
    .T_w1(T2_w1), .T_w2(T2_w2), .T_w3(T2_w3), .T_w4(T2_w4), 
    .T_w5(T2_w5), .T_w6(T2_w6), .T_w7(T2_w7), .T_w8(T2_w8), 
    .T_w9(T2_w9), .T_w10(T2_w10), .T_w11(T2_w11), .T_w12(T2_w12), 
    .T_w13(T2_w13), .T_w14(T2_w14), .T_w15(T2_w15), .T_w16(T2_w16), 
    .T_w17(T2_w17), .T_w18(T2_w18), .T_w19(T2_w19), .T_w20(T2_w20), 
    .T_w21(T2_w21), .T_w22(T2_w22), .T_w23(T2_w23), .T_w24(T2_w24), 
    .T_w25(T2_w25), .T_w26(T2_w26), .T_w27(T2_w27), .T_w28(T2_w28), 
    .T_w29(T2_w29), .T_w30(T2_w30), .T_w31(T2_w31), .T_w32(T2_w32),
    .P(P_2)
);
Adder_Tree	u_Adder_Tree_3	(
    .clk(clk),
    .rst_n(rst_n),
    .T_w1(T3_w1), .T_w2(T3_w2), .T_w3(T3_w3), .T_w4(T3_w4), 
    .T_w5(T3_w5), .T_w6(T3_w6), .T_w7(T3_w7), .T_w8(T3_w8), 
    .T_w9(T3_w9), .T_w10(T3_w10), .T_w11(T3_w11), .T_w12(T3_w12), 
    .T_w13(T3_w13), .T_w14(T3_w14), .T_w15(T3_w15), .T_w16(T3_w16), 
    .T_w17(T3_w17), .T_w18(T3_w18), .T_w19(T3_w19), .T_w20(T3_w20), 
    .T_w21(T3_w21), .T_w22(T3_w22), .T_w23(T3_w23), .T_w24(T3_w24), 
    .T_w25(T3_w25), .T_w26(T3_w26), .T_w27(T3_w27), .T_w28(T3_w28), 
    .T_w29(T3_w29), .T_w30(T3_w30), .T_w31(T3_w31), .T_w32(T3_w32),
    .P(P_3)
);
Adder_Tree	u_Adder_Tree_4	(
    .clk(clk),
    .rst_n(rst_n),
    .T_w1(T4_w1), .T_w2(T4_w2), .T_w3(T4_w3), .T_w4(T4_w4), 
    .T_w5(T4_w5), .T_w6(T4_w6), .T_w7(T4_w7), .T_w8(T4_w8), 
    .T_w9(T4_w9), .T_w10(T4_w10), .T_w11(T4_w11), .T_w12(T4_w12), 
    .T_w13(T4_w13), .T_w14(T4_w14), .T_w15(T4_w15), .T_w16(T4_w16), 
    .T_w17(T4_w17), .T_w18(T4_w18), .T_w19(T4_w19), .T_w20(T4_w20), 
    .T_w21(T4_w21), .T_w22(T4_w22), .T_w23(T4_w23), .T_w24(T4_w24), 
    .T_w25(T4_w25), .T_w26(T4_w26), .T_w27(T4_w27), .T_w28(T4_w28), 
    .T_w29(T4_w29), .T_w30(T4_w30), .T_w31(T4_w31), .T_w32(T4_w32),
    .P(P_4)
);
Accumulators u_Accumulators_1(
    .clk(clk),
    .rst_n(rst_n),
    .P(P_1),
    .out_valid(out_valid),
    .O(O_1)
);
Accumulators u_Accumulators_2(
    .clk(clk),
    .rst_n(rst_n),
    .P(P_2),
    .out_valid(out_valid),
    .O(O_2)
);
Accumulators u_Accumulators_3(
    .clk(clk),
    .rst_n(rst_n),
    .P(P_3),
    .out_valid(out_valid),
    .O(O_3)
);
Accumulators u_Accumulators_4(
    .clk(clk),
    .rst_n(rst_n),
    .P(P_4),
    .out_valid(out_valid),
    .O(O_4)
);
`endif

`ifdef GATE
Adder_Tree	u_Adder_Tree_1	(
    .clk(clk),
    .rst_n(rst_n),
    .T_w1(T1_w1), .T_w2(T1_w2), .T_w3(T1_w3), .T_w4(T1_w4), 
    .T_w5(T1_w5), .T_w6(T1_w6), .T_w7(T1_w7), .T_w8(T1_w8), 
    .T_w9(T1_w9), .T_w10(T1_w10), .T_w11(T1_w11), .T_w12(T1_w12), 
    .T_w13(T1_w13), .T_w14(T1_w14), .T_w15(T1_w15), .T_w16(T1_w16), 
    .T_w17(T1_w17), .T_w18(T1_w18), .T_w19(T1_w19), .T_w20(T1_w20), 
    .T_w21(T1_w21), .T_w22(T1_w22), .T_w23(T1_w23), .T_w24(T1_w24), 
    .T_w25(T1_w25), .T_w26(T1_w26), .T_w27(T1_w27), .T_w28(T1_w28), 
    .T_w29(T1_w29), .T_w30(T1_w30), .T_w31(T1_w31), .T_w32(T1_w32),
    .P(P_1)
);
Adder_Tree	u_Adder_Tree_2	(
    .clk(clk),
    .rst_n(rst_n),
    .T_w1(T2_w1), .T_w2(T2_w2), .T_w3(T2_w3), .T_w4(T2_w4), 
    .T_w5(T2_w5), .T_w6(T2_w6), .T_w7(T2_w7), .T_w8(T2_w8), 
    .T_w9(T2_w9), .T_w10(T2_w10), .T_w11(T2_w11), .T_w12(T2_w12), 
    .T_w13(T2_w13), .T_w14(T2_w14), .T_w15(T2_w15), .T_w16(T2_w16), 
    .T_w17(T2_w17), .T_w18(T2_w18), .T_w19(T2_w19), .T_w20(T2_w20), 
    .T_w21(T2_w21), .T_w22(T2_w22), .T_w23(T2_w23), .T_w24(T2_w24), 
    .T_w25(T2_w25), .T_w26(T2_w26), .T_w27(T2_w27), .T_w28(T2_w28), 
    .T_w29(T2_w29), .T_w30(T2_w30), .T_w31(T2_w31), .T_w32(T2_w32),
    .P(P_2)
);
Adder_Tree	u_Adder_Tree_3	(
    .clk(clk),
    .rst_n(rst_n),
    .T_w1(T3_w1), .T_w2(T3_w2), .T_w3(T3_w3), .T_w4(T3_w4), 
    .T_w5(T3_w5), .T_w6(T3_w6), .T_w7(T3_w7), .T_w8(T3_w8), 
    .T_w9(T3_w9), .T_w10(T3_w10), .T_w11(T3_w11), .T_w12(T3_w12), 
    .T_w13(T3_w13), .T_w14(T3_w14), .T_w15(T3_w15), .T_w16(T3_w16), 
    .T_w17(T3_w17), .T_w18(T3_w18), .T_w19(T3_w19), .T_w20(T3_w20), 
    .T_w21(T3_w21), .T_w22(T3_w22), .T_w23(T3_w23), .T_w24(T3_w24), 
    .T_w25(T3_w25), .T_w26(T3_w26), .T_w27(T3_w27), .T_w28(T3_w28), 
    .T_w29(T3_w29), .T_w30(T3_w30), .T_w31(T3_w31), .T_w32(T3_w32),
    .P(P_3)
);
Adder_Tree	u_Adder_Tree_4	(
    .clk(clk),
    .rst_n(rst_n),
    .T_w1(T4_w1), .T_w2(T4_w2), .T_w3(T4_w3), .T_w4(T4_w4), 
    .T_w5(T4_w5), .T_w6(T4_w6), .T_w7(T4_w7), .T_w8(T4_w8), 
    .T_w9(T4_w9), .T_w10(T4_w10), .T_w11(T4_w11), .T_w12(T4_w12), 
    .T_w13(T4_w13), .T_w14(T4_w14), .T_w15(T4_w15), .T_w16(T4_w16), 
    .T_w17(T4_w17), .T_w18(T4_w18), .T_w19(T4_w19), .T_w20(T4_w20), 
    .T_w21(T4_w21), .T_w22(T4_w22), .T_w23(T4_w23), .T_w24(T4_w24), 
    .T_w25(T4_w25), .T_w26(T4_w26), .T_w27(T4_w27), .T_w28(T4_w28), 
    .T_w29(T4_w29), .T_w30(T4_w30), .T_w31(T4_w31), .T_w32(T4_w32),
    .P(P_4)
);
Accumulators u_Accumulators_1(
    .clk(clk),
    .rst_n(rst_n),
    .P(P_1),
    .out_valid(out_valid),
    .O(O_1)
);
Accumulators u_Accumulators_2(
    .clk(clk),
    .rst_n(rst_n),
    .P(P_2),
    .out_valid(out_valid),
    .O(O_2)
);
Accumulators u_Accumulators_3(
    .clk(clk),
    .rst_n(rst_n),
    .P(P_3),
    .out_valid(out_valid),
    .O(O_3)
);
Accumulators u_Accumulators_4(
    .clk(clk),
    .rst_n(rst_n),
    .P(P_4),
    .out_valid(out_valid),
    .O(O_4)
);
`endif

PATTERN	u_PATTERN(
    .clk(clk),
    .rst_n(rst_n),
    .T1_w1(T1_w1), .T1_w2(T1_w2), .T1_w3(T1_w3), .T1_w4(T1_w4), 
    .T1_w5(T1_w5), .T1_w6(T1_w6), .T1_w7(T1_w7), .T1_w8(T1_w8), 
    .T1_w9(T1_w9), .T1_w10(T1_w10), .T1_w11(T1_w11), .T1_w12(T1_w12), 
    .T1_w13(T1_w13), .T1_w14(T1_w14), .T1_w15(T1_w15), .T1_w16(T1_w16), 
    .T1_w17(T1_w17), .T1_w18(T1_w18), .T1_w19(T1_w19), .T1_w20(T1_w20), 
    .T1_w21(T1_w21), .T1_w22(T1_w22), .T1_w23(T1_w23), .T1_w24(T1_w24), 
    .T1_w25(T1_w25), .T1_w26(T1_w26), .T1_w27(T1_w27), .T1_w28(T1_w28), 
    .T1_w29(T1_w29), .T1_w30(T1_w30), .T1_w31(T1_w31), .T1_w32(T1_w32),
    .T2_w1(T2_w1), .T2_w2(T2_w2), .T2_w3(T2_w3), .T2_w4(T2_w4), 
    .T2_w5(T2_w5), .T2_w6(T2_w6), .T2_w7(T2_w7), .T2_w8(T2_w8), 
    .T2_w9(T2_w9), .T2_w10(T2_w10), .T2_w11(T2_w11), .T2_w12(T2_w12), 
    .T2_w13(T2_w13), .T2_w14(T2_w14), .T2_w15(T2_w15), .T2_w16(T2_w16), 
    .T2_w17(T2_w17), .T2_w18(T2_w18), .T2_w19(T2_w19), .T2_w20(T2_w20), 
    .T2_w21(T2_w21), .T2_w22(T2_w22), .T2_w23(T2_w23), .T2_w24(T2_w24), 
    .T2_w25(T2_w25), .T2_w26(T2_w26), .T2_w27(T2_w27), .T2_w28(T2_w28), 
    .T2_w29(T2_w29), .T2_w30(T2_w30), .T2_w31(T2_w31), .T2_w32(T2_w32),
    .T3_w1(T3_w1), .T3_w2(T3_w2), .T3_w3(T3_w3), .T3_w4(T3_w4), 
    .T3_w5(T3_w5), .T3_w6(T3_w6), .T3_w7(T3_w7), .T3_w8(T3_w8), 
    .T3_w9(T3_w9), .T3_w10(T3_w10), .T3_w11(T3_w11), .T3_w12(T3_w12), 
    .T3_w13(T3_w13), .T3_w14(T3_w14), .T3_w15(T3_w15), .T3_w16(T3_w16), 
    .T3_w17(T3_w17), .T3_w18(T3_w18), .T3_w19(T3_w19), .T3_w20(T3_w20), 
    .T3_w21(T3_w21), .T3_w22(T3_w22), .T3_w23(T3_w23), .T3_w24(T3_w24), 
    .T3_w25(T3_w25), .T3_w26(T3_w26), .T3_w27(T3_w27), .T3_w28(T3_w28), 
    .T3_w29(T3_w29), .T3_w30(T3_w30), .T3_w31(T3_w31), .T3_w32(T3_w32),
    .T4_w1(T4_w1), .T4_w2(T4_w2), .T4_w3(T4_w3), .T4_w4(T4_w4), 
    .T4_w5(T4_w5), .T4_w6(T4_w6), .T4_w7(T4_w7), .T4_w8(T4_w8), 
    .T4_w9(T4_w9), .T4_w10(T4_w10), .T4_w11(T4_w11), .T4_w12(T4_w12), 
    .T4_w13(T4_w13), .T4_w14(T4_w14), .T4_w15(T4_w15), .T4_w16(T4_w16), 
    .T4_w17(T4_w17), .T4_w18(T4_w18), .T4_w19(T4_w19), .T4_w20(T4_w20), 
    .T4_w21(T4_w21), .T4_w22(T4_w22), .T4_w23(T4_w23), .T4_w24(T4_w24), 
    .T4_w25(T4_w25), .T4_w26(T4_w26), .T4_w27(T4_w27), .T4_w28(T4_w28), 
    .T4_w29(T4_w29), .T4_w30(T4_w30), .T4_w31(T4_w31), .T4_w32(T4_w32),
    .out_valid(out_valid),
    .O_1(O_1), .O_2(O_2), .O_3(O_3), .O_4(O_4)
		);
		
endmodule
