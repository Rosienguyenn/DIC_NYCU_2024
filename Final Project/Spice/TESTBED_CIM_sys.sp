
.protect
.include ~/work/dic_f2024_vn/techfile/ASAP7_PDKandLIB_v1p6/lib_release_191006/asap7_7p5t_library/rev25/CDL/LVS/asap7_75t_R_24.cdl
.include ~/work/dic_f2024_vn/techfile/7nm_TT.pm
.include buffer_arr.sp
.include CIM_cell.sp
.include CIM_arr.sp
.include ../gl/Adder_Tree_lvs.sp
.include ../gl/subckt_add0_new.sp
.include ../gl/subckt_add1_new.sp
.include ../gl/subckt_add2_new.sp
.include ../gl/subckt_add3_new.sp
.include ../gl/subckt_add4_new.sp
.include ../gl/subckt_add5_new.sp
.include ../gl/subckt_add6_new.sp
.include ../gl/Accumulators_lvs.sp
.include ../gl/Acc_add0_new.sp
.unprotect

.include nodeset.ic

.vec 'pattern_cim.vec'

.GLOBAL VDD! GND

.param v_dd = 0.7
Vdd VDD! GND DC=v_dd

X_buf_arr  
+ patn[0] in0
+ patn[1] in1
+ patn[2] in2
+ patn[3] in3
+ patn[4] in4
+ patn[5] in5
+ patn[6] in6
+ patn[7] in7
+ patn[8] in8
+ patn[9] in9
+ patn[10] in10
+ patn[11] in11
+ patn[12] in12
+ patn[13] in13
+ patn[14] in14
+ patn[15] in15
+ patn[16] in16
+ patn[17] in17
+ patn[18] in18
+ patn[19] in19
+ patn[20] in20
+ patn[21] in21
+ patn[22] in22
+ patn[23] in23
+ patn[24] in24
+ patn[25] in25
+ patn[26] in26
+ patn[27] in27
+ patn[28] in28
+ patn[29] in29
+ patn[30] in30
+ patn[31] in31
+ buffer_arr   

X_CIM_arr in0 in1 in2 in3 in4 in5 in6 in7 in8 in9
+ in10 in11 in12 in13 in14 in15 in16 in17 in18 in19
+ in20 in21 in22 in23 in24 in25 in26 in27 in28 in29
+ in30 in31
+ Prod0_0[3] Prod0_0[2] Prod0_0[1] Prod0_0[0]
+ Prod0_1[3] Prod0_1[2] Prod0_1[1] Prod0_1[0]
+ Prod0_2[3] Prod0_2[2] Prod0_2[1] Prod0_2[0]
+ Prod0_3[3] Prod0_3[2] Prod0_3[1] Prod0_3[0]
+ Prod0_4[3] Prod0_4[2] Prod0_4[1] Prod0_4[0]
+ Prod0_5[3] Prod0_5[2] Prod0_5[1] Prod0_5[0]
+ Prod0_6[3] Prod0_6[2] Prod0_6[1] Prod0_6[0]
+ Prod0_7[3] Prod0_7[2] Prod0_7[1] Prod0_7[0]
+ Prod0_8[3] Prod0_8[2] Prod0_8[1] Prod0_8[0]
+ Prod0_9[3] Prod0_9[2] Prod0_9[1] Prod0_9[0]
+ Prod0_10[3] Prod0_10[2] Prod0_10[1] Prod0_10[0]
+ Prod0_11[3] Prod0_11[2] Prod0_11[1] Prod0_11[0]
+ Prod0_12[3] Prod0_12[2] Prod0_12[1] Prod0_12[0]
+ Prod0_13[3] Prod0_13[2] Prod0_13[1] Prod0_13[0]
+ Prod0_14[3] Prod0_14[2] Prod0_14[1] Prod0_14[0]
+ Prod0_15[3] Prod0_15[2] Prod0_15[1] Prod0_15[0]
+ Prod0_16[3] Prod0_16[2] Prod0_16[1] Prod0_16[0]
+ Prod0_17[3] Prod0_17[2] Prod0_17[1] Prod0_17[0]
+ Prod0_18[3] Prod0_18[2] Prod0_18[1] Prod0_18[0]
+ Prod0_19[3] Prod0_19[2] Prod0_19[1] Prod0_19[0]
+ Prod0_20[3] Prod0_20[2] Prod0_20[1] Prod0_20[0]
+ Prod0_21[3] Prod0_21[2] Prod0_21[1] Prod0_21[0]
+ Prod0_22[3] Prod0_22[2] Prod0_22[1] Prod0_22[0]
+ Prod0_23[3] Prod0_23[2] Prod0_23[1] Prod0_23[0]
+ Prod0_24[3] Prod0_24[2] Prod0_24[1] Prod0_24[0]
+ Prod0_25[3] Prod0_25[2] Prod0_25[1] Prod0_25[0]
+ Prod0_26[3] Prod0_26[2] Prod0_26[1] Prod0_26[0]
+ Prod0_27[3] Prod0_27[2] Prod0_27[1] Prod0_27[0]
+ Prod0_28[3] Prod0_28[2] Prod0_28[1] Prod0_28[0]
+ Prod0_29[3] Prod0_29[2] Prod0_29[1] Prod0_29[0]
+ Prod0_30[3] Prod0_30[2] Prod0_30[1] Prod0_30[0]
+ Prod0_31[3] Prod0_31[2] Prod0_31[1] Prod0_31[0]
+ Prod1_0[3] Prod1_0[2] Prod1_0[1] Prod1_0[0]
+ Prod1_1[3] Prod1_1[2] Prod1_1[1] Prod1_1[0]
+ Prod1_2[3] Prod1_2[2] Prod1_2[1] Prod1_2[0]
+ Prod1_3[3] Prod1_3[2] Prod1_3[1] Prod1_3[0]
+ Prod1_4[3] Prod1_4[2] Prod1_4[1] Prod1_4[0]
+ Prod1_5[3] Prod1_5[2] Prod1_5[1] Prod1_5[0]
+ Prod1_6[3] Prod1_6[2] Prod1_6[1] Prod1_6[0]
+ Prod1_7[3] Prod1_7[2] Prod1_7[1] Prod1_7[0]
+ Prod1_8[3] Prod1_8[2] Prod1_8[1] Prod1_8[0]
+ Prod1_9[3] Prod1_9[2] Prod1_9[1] Prod1_9[0]
+ Prod1_10[3] Prod1_10[2] Prod1_10[1] Prod1_10[0]
+ Prod1_11[3] Prod1_11[2] Prod1_11[1] Prod1_11[0]
+ Prod1_12[3] Prod1_12[2] Prod1_12[1] Prod1_12[0]
+ Prod1_13[3] Prod1_13[2] Prod1_13[1] Prod1_13[0]
+ Prod1_14[3] Prod1_14[2] Prod1_14[1] Prod1_14[0]
+ Prod1_15[3] Prod1_15[2] Prod1_15[1] Prod1_15[0]
+ Prod1_16[3] Prod1_16[2] Prod1_16[1] Prod1_16[0]
+ Prod1_17[3] Prod1_17[2] Prod1_17[1] Prod1_17[0]
+ Prod1_18[3] Prod1_18[2] Prod1_18[1] Prod1_18[0]
+ Prod1_19[3] Prod1_19[2] Prod1_19[1] Prod1_19[0]
+ Prod1_20[3] Prod1_20[2] Prod1_20[1] Prod1_20[0]
+ Prod1_21[3] Prod1_21[2] Prod1_21[1] Prod1_21[0]
+ Prod1_22[3] Prod1_22[2] Prod1_22[1] Prod1_22[0]
+ Prod1_23[3] Prod1_23[2] Prod1_23[1] Prod1_23[0]
+ Prod1_24[3] Prod1_24[2] Prod1_24[1] Prod1_24[0]
+ Prod1_25[3] Prod1_25[2] Prod1_25[1] Prod1_25[0]
+ Prod1_26[3] Prod1_26[2] Prod1_26[1] Prod1_26[0]
+ Prod1_27[3] Prod1_27[2] Prod1_27[1] Prod1_27[0]
+ Prod1_28[3] Prod1_28[2] Prod1_28[1] Prod1_28[0]
+ Prod1_29[3] Prod1_29[2] Prod1_29[1] Prod1_29[0]
+ Prod1_30[3] Prod1_30[2] Prod1_30[1] Prod1_30[0]
+ Prod1_31[3] Prod1_31[2] Prod1_31[1] Prod1_31[0]
+ Prod2_0[3] Prod2_0[2] Prod2_0[1] Prod2_0[0]
+ Prod2_1[3] Prod2_1[2] Prod2_1[1] Prod2_1[0]
+ Prod2_2[3] Prod2_2[2] Prod2_2[1] Prod2_2[0]
+ Prod2_3[3] Prod2_3[2] Prod2_3[1] Prod2_3[0]
+ Prod2_4[3] Prod2_4[2] Prod2_4[1] Prod2_4[0]
+ Prod2_5[3] Prod2_5[2] Prod2_5[1] Prod2_5[0]
+ Prod2_6[3] Prod2_6[2] Prod2_6[1] Prod2_6[0]
+ Prod2_7[3] Prod2_7[2] Prod2_7[1] Prod2_7[0]
+ Prod2_8[3] Prod2_8[2] Prod2_8[1] Prod2_8[0]
+ Prod2_9[3] Prod2_9[2] Prod2_9[1] Prod2_9[0]
+ Prod2_10[3] Prod2_10[2] Prod2_10[1] Prod2_10[0]
+ Prod2_11[3] Prod2_11[2] Prod2_11[1] Prod2_11[0]
+ Prod2_12[3] Prod2_12[2] Prod2_12[1] Prod2_12[0]
+ Prod2_13[3] Prod2_13[2] Prod2_13[1] Prod2_13[0]
+ Prod2_14[3] Prod2_14[2] Prod2_14[1] Prod2_14[0]
+ Prod2_15[3] Prod2_15[2] Prod2_15[1] Prod2_15[0]
+ Prod2_16[3] Prod2_16[2] Prod2_16[1] Prod2_16[0]
+ Prod2_17[3] Prod2_17[2] Prod2_17[1] Prod2_17[0]
+ Prod2_18[3] Prod2_18[2] Prod2_18[1] Prod2_18[0]
+ Prod2_19[3] Prod2_19[2] Prod2_19[1] Prod2_19[0]
+ Prod2_20[3] Prod2_20[2] Prod2_20[1] Prod2_20[0]
+ Prod2_21[3] Prod2_21[2] Prod2_21[1] Prod2_21[0]
+ Prod2_22[3] Prod2_22[2] Prod2_22[1] Prod2_22[0]
+ Prod2_23[3] Prod2_23[2] Prod2_23[1] Prod2_23[0]
+ Prod2_24[3] Prod2_24[2] Prod2_24[1] Prod2_24[0]
+ Prod2_25[3] Prod2_25[2] Prod2_25[1] Prod2_25[0]
+ Prod2_26[3] Prod2_26[2] Prod2_26[1] Prod2_26[0]
+ Prod2_27[3] Prod2_27[2] Prod2_27[1] Prod2_27[0]
+ Prod2_28[3] Prod2_28[2] Prod2_28[1] Prod2_28[0]
+ Prod2_29[3] Prod2_29[2] Prod2_29[1] Prod2_29[0]
+ Prod2_30[3] Prod2_30[2] Prod2_30[1] Prod2_30[0]
+ Prod2_31[3] Prod2_31[2] Prod2_31[1] Prod2_31[0]
+ Prod3_0[3] Prod3_0[2] Prod3_0[1] Prod3_0[0]
+ Prod3_1[3] Prod3_1[2] Prod3_1[1] Prod3_1[0]
+ Prod3_2[3] Prod3_2[2] Prod3_2[1] Prod3_2[0]
+ Prod3_3[3] Prod3_3[2] Prod3_3[1] Prod3_3[0]
+ Prod3_4[3] Prod3_4[2] Prod3_4[1] Prod3_4[0]
+ Prod3_5[3] Prod3_5[2] Prod3_5[1] Prod3_5[0]
+ Prod3_6[3] Prod3_6[2] Prod3_6[1] Prod3_6[0]
+ Prod3_7[3] Prod3_7[2] Prod3_7[1] Prod3_7[0]
+ Prod3_8[3] Prod3_8[2] Prod3_8[1] Prod3_8[0]
+ Prod3_9[3] Prod3_9[2] Prod3_9[1] Prod3_9[0]
+ Prod3_10[3] Prod3_10[2] Prod3_10[1] Prod3_10[0]
+ Prod3_11[3] Prod3_11[2] Prod3_11[1] Prod3_11[0]
+ Prod3_12[3] Prod3_12[2] Prod3_12[1] Prod3_12[0]
+ Prod3_13[3] Prod3_13[2] Prod3_13[1] Prod3_13[0]
+ Prod3_14[3] Prod3_14[2] Prod3_14[1] Prod3_14[0]
+ Prod3_15[3] Prod3_15[2] Prod3_15[1] Prod3_15[0]
+ Prod3_16[3] Prod3_16[2] Prod3_16[1] Prod3_16[0]
+ Prod3_17[3] Prod3_17[2] Prod3_17[1] Prod3_17[0]
+ Prod3_18[3] Prod3_18[2] Prod3_18[1] Prod3_18[0]
+ Prod3_19[3] Prod3_19[2] Prod3_19[1] Prod3_19[0]
+ Prod3_20[3] Prod3_20[2] Prod3_20[1] Prod3_20[0]
+ Prod3_21[3] Prod3_21[2] Prod3_21[1] Prod3_21[0]
+ Prod3_22[3] Prod3_22[2] Prod3_22[1] Prod3_22[0]
+ Prod3_23[3] Prod3_23[2] Prod3_23[1] Prod3_23[0]
+ Prod3_24[3] Prod3_24[2] Prod3_24[1] Prod3_24[0]
+ Prod3_25[3] Prod3_25[2] Prod3_25[1] Prod3_25[0]
+ Prod3_26[3] Prod3_26[2] Prod3_26[1] Prod3_26[0]
+ Prod3_27[3] Prod3_27[2] Prod3_27[1] Prod3_27[0]
+ Prod3_28[3] Prod3_28[2] Prod3_28[1] Prod3_28[0]
+ Prod3_29[3] Prod3_29[2] Prod3_29[1] Prod3_29[0]
+ Prod3_30[3] Prod3_30[2] Prod3_30[1] Prod3_30[0]
+ Prod3_31[3] Prod3_31[2] Prod3_31[1] Prod3_31[0]
+ CIM_arr

.param tr=10p
.param tf=10p
.param prd=750p
.param td1='prd*5'
.param td2='0'
.param trst='td1-100p'
.param pw="0.5*prd-tr"
V_clk clk 0 DC=0 pulse (0 v_dd td1 tr tf pw prd)
V_rstn rst_n 0 DC=0 pulse (v_dd 0 td2 tr tf trst 1)
*Vdd2 VDD2 GND DC=0.7v

X_Add_tree0 VDD! GND rst_n clk
+ Prod0_0[3] Prod0_0[2] Prod0_0[1] Prod0_0[0]
+ Prod0_1[3] Prod0_1[2] Prod0_1[1] Prod0_1[0]
+ Prod0_2[3] Prod0_2[2] Prod0_2[1] Prod0_2[0]
+ Prod0_3[3] Prod0_3[2] Prod0_3[1] Prod0_3[0]
+ Prod0_4[3] Prod0_4[2] Prod0_4[1] Prod0_4[0]
+ Prod0_5[3] Prod0_5[2] Prod0_5[1] Prod0_5[0]
+ Prod0_6[3] Prod0_6[2] Prod0_6[1] Prod0_6[0]
+ Prod0_7[3] Prod0_7[2] Prod0_7[1] Prod0_7[0]
+ Prod0_8[3] Prod0_8[2] Prod0_8[1] Prod0_8[0]
+ Prod0_9[3] Prod0_9[2] Prod0_9[1] Prod0_9[0]
+ Prod0_10[3] Prod0_10[2] Prod0_10[1] Prod0_10[0]
+ Prod0_11[3] Prod0_11[2] Prod0_11[1] Prod0_11[0]
+ Prod0_12[3] Prod0_12[2] Prod0_12[1] Prod0_12[0]
+ Prod0_13[3] Prod0_13[2] Prod0_13[1] Prod0_13[0]
+ Prod0_14[3] Prod0_14[2] Prod0_14[1] Prod0_14[0]
+ Prod0_15[3] Prod0_15[2] Prod0_15[1] Prod0_15[0]
+ Prod0_16[3] Prod0_16[2] Prod0_16[1] Prod0_16[0]
+ Prod0_17[3] Prod0_17[2] Prod0_17[1] Prod0_17[0]
+ Prod0_18[3] Prod0_18[2] Prod0_18[1] Prod0_18[0]
+ Prod0_19[3] Prod0_19[2] Prod0_19[1] Prod0_19[0]
+ Prod0_20[3] Prod0_20[2] Prod0_20[1] Prod0_20[0]
+ Prod0_21[3] Prod0_21[2] Prod0_21[1] Prod0_21[0]
+ Prod0_22[3] Prod0_22[2] Prod0_22[1] Prod0_22[0]
+ Prod0_23[3] Prod0_23[2] Prod0_23[1] Prod0_23[0]
+ Prod0_24[3] Prod0_24[2] Prod0_24[1] Prod0_24[0]
+ Prod0_25[3] Prod0_25[2] Prod0_25[1] Prod0_25[0]
+ Prod0_26[3] Prod0_26[2] Prod0_26[1] Prod0_26[0]
+ Prod0_27[3] Prod0_27[2] Prod0_27[1] Prod0_27[0]
+ Prod0_28[3] Prod0_28[2] Prod0_28[1] Prod0_28[0]
+ Prod0_29[3] Prod0_29[2] Prod0_29[1] Prod0_29[0]
+ Prod0_30[3] Prod0_30[2] Prod0_30[1] Prod0_30[0]
+ Prod0_31[3] Prod0_31[2] Prod0_31[1] Prod0_31[0]
+ S_0[8] S_0[7]  S_0[6] S_0[5] S_0[4] S_0[3] S_0[2] S_0[1] S_0[0]
+ Adder_Tree

X_Acc0 VDD! GND rst_n clk
+ S_0[8] S_0[7] S_0[6] S_0[5] S_0[4] S_0[3] S_0[2] S_0[1] S_0[0]
+ out_valid O_0[12] O_0[11] O_0[10] O_0[9] O_0[8] O_0[7] O_0[6] O_0[5] O_0[4] O_0[3] O_0[2] O_0[1] O_0[0]
+ Accumulators

X_Add_tree1 VDD! GND rst_n clk
+ Prod1_0[3] Prod1_0[2] Prod1_0[1] Prod1_0[0]
+ Prod1_1[3] Prod1_1[2] Prod1_1[1] Prod1_1[0]
+ Prod1_2[3] Prod1_2[2] Prod1_2[1] Prod1_2[0]
+ Prod1_3[3] Prod1_3[2] Prod1_3[1] Prod1_3[0]
+ Prod1_4[3] Prod1_4[2] Prod1_4[1] Prod1_4[0]
+ Prod1_5[3] Prod1_5[2] Prod1_5[1] Prod1_5[0]
+ Prod1_6[3] Prod1_6[2] Prod1_6[1] Prod1_6[0]
+ Prod1_7[3] Prod1_7[2] Prod1_7[1] Prod1_7[0]
+ Prod1_8[3] Prod1_8[2] Prod1_8[1] Prod1_8[0]
+ Prod1_9[3] Prod1_9[2] Prod1_9[1] Prod1_9[0]
+ Prod1_10[3] Prod1_10[2] Prod1_10[1] Prod1_10[0]
+ Prod1_11[3] Prod1_11[2] Prod1_11[1] Prod1_11[0]
+ Prod1_12[3] Prod1_12[2] Prod1_12[1] Prod1_12[0]
+ Prod1_13[3] Prod1_13[2] Prod1_13[1] Prod1_13[0]
+ Prod1_14[3] Prod1_14[2] Prod1_14[1] Prod1_14[0]
+ Prod1_15[3] Prod1_15[2] Prod1_15[1] Prod1_15[0]
+ Prod1_16[3] Prod1_16[2] Prod1_16[1] Prod1_16[0]
+ Prod1_17[3] Prod1_17[2] Prod1_17[1] Prod1_17[0]
+ Prod1_18[3] Prod1_18[2] Prod1_18[1] Prod1_18[0]
+ Prod1_19[3] Prod1_19[2] Prod1_19[1] Prod1_19[0]
+ Prod1_20[3] Prod1_20[2] Prod1_20[1] Prod1_20[0]
+ Prod1_21[3] Prod1_21[2] Prod1_21[1] Prod1_21[0]
+ Prod1_22[3] Prod1_22[2] Prod1_22[1] Prod1_22[0]
+ Prod1_23[3] Prod1_23[2] Prod1_23[1] Prod1_23[0]
+ Prod1_24[3] Prod1_24[2] Prod1_24[1] Prod1_24[0]
+ Prod1_25[3] Prod1_25[2] Prod1_25[1] Prod1_25[0]
+ Prod1_26[3] Prod1_26[2] Prod1_26[1] Prod1_26[0]
+ Prod1_27[3] Prod1_27[2] Prod1_27[1] Prod1_27[0]
+ Prod1_28[3] Prod1_28[2] Prod1_28[1] Prod1_28[0]
+ Prod1_29[3] Prod1_29[2] Prod1_29[1] Prod1_29[0]
+ Prod1_30[3] Prod1_30[2] Prod1_30[1] Prod1_30[0]
+ Prod1_31[3] Prod1_31[2] Prod1_31[1] Prod1_31[0]
+ S_1[8] S_1[7]  S_1[6] S_1[5] S_1[4] S_1[3] S_1[2] S_1[1] S_1[0]
+ Adder_Tree

X_Acc1 VDD! GND rst_n clk
+ S_1[8] S_1[7] S_1[6] S_1[5] S_1[4] S_1[3] S_1[2] S_1[1] S_1[0]
+ out_valid O_1[12] O_1[11] O_1[10] O_1[9] O_1[8] O_1[7] O_1[6] O_1[5] O_1[4] O_1[3] O_1[2] O_1[1] O_1[0]
+ Accumulators

X_Add_tree2 VDD! GND rst_n clk
+ Prod2_0[3] Prod2_0[2] Prod2_0[1] Prod2_0[0]
+ Prod2_1[3] Prod2_1[2] Prod2_1[1] Prod2_1[0]
+ Prod2_2[3] Prod2_2[2] Prod2_2[1] Prod2_2[0]
+ Prod2_3[3] Prod2_3[2] Prod2_3[1] Prod2_3[0]
+ Prod2_4[3] Prod2_4[2] Prod2_4[1] Prod2_4[0]
+ Prod2_5[3] Prod2_5[2] Prod2_5[1] Prod2_5[0]
+ Prod2_6[3] Prod2_6[2] Prod2_6[1] Prod2_6[0]
+ Prod2_7[3] Prod2_7[2] Prod2_7[1] Prod2_7[0]
+ Prod2_8[3] Prod2_8[2] Prod2_8[1] Prod2_8[0]
+ Prod2_9[3] Prod2_9[2] Prod2_9[1] Prod2_9[0]
+ Prod2_10[3] Prod2_10[2] Prod2_10[1] Prod2_10[0]
+ Prod2_11[3] Prod2_11[2] Prod2_11[1] Prod2_11[0]
+ Prod2_12[3] Prod2_12[2] Prod2_12[1] Prod2_12[0]
+ Prod2_13[3] Prod2_13[2] Prod2_13[1] Prod2_13[0]
+ Prod2_14[3] Prod2_14[2] Prod2_14[1] Prod2_14[0]
+ Prod2_15[3] Prod2_15[2] Prod2_15[1] Prod2_15[0]
+ Prod2_16[3] Prod2_16[2] Prod2_16[1] Prod2_16[0]
+ Prod2_17[3] Prod2_17[2] Prod2_17[1] Prod2_17[0]
+ Prod2_18[3] Prod2_18[2] Prod2_18[1] Prod2_18[0]
+ Prod2_19[3] Prod2_19[2] Prod2_19[1] Prod2_19[0]
+ Prod2_20[3] Prod2_20[2] Prod2_20[1] Prod2_20[0]
+ Prod2_21[3] Prod2_21[2] Prod2_21[1] Prod2_21[0]
+ Prod2_22[3] Prod2_22[2] Prod2_22[1] Prod2_22[0]
+ Prod2_23[3] Prod2_23[2] Prod2_23[1] Prod2_23[0]
+ Prod2_24[3] Prod2_24[2] Prod2_24[1] Prod2_24[0]
+ Prod2_25[3] Prod2_25[2] Prod2_25[1] Prod2_25[0]
+ Prod2_26[3] Prod2_26[2] Prod2_26[1] Prod2_26[0]
+ Prod2_27[3] Prod2_27[2] Prod2_27[1] Prod2_27[0]
+ Prod2_28[3] Prod2_28[2] Prod2_28[1] Prod2_28[0]
+ Prod2_29[3] Prod2_29[2] Prod2_29[1] Prod2_29[0]
+ Prod2_30[3] Prod2_30[2] Prod2_30[1] Prod2_30[0]
+ Prod2_31[3] Prod2_31[2] Prod2_31[1] Prod2_31[0]
+ S_2[8] S_2[7]  S_2[6] S_2[5] S_2[4] S_2[3] S_2[2] S_2[1] S_2[0]
+ Adder_Tree

X_Acc2 VDD! GND rst_n clk
+ S_2[8] S_2[7] S_2[6] S_2[5] S_2[4] S_2[3] S_2[2] S_2[1] S_2[0]
+ out_valid O_2[12] O_2[11] O_2[10] O_2[9] O_2[8] O_2[7] O_2[6] O_2[5] O_2[4] O_2[3] O_2[2] O_2[1] O_2[0]
+ Accumulators

X_Add_tree3 VDD! GND rst_n clk
+ Prod3_0[3] Prod3_0[2] Prod3_0[1] Prod3_0[0]
+ Prod3_1[3] Prod3_1[2] Prod3_1[1] Prod3_1[0]
+ Prod3_2[3] Prod3_2[2] Prod3_2[1] Prod3_2[0]
+ Prod3_3[3] Prod3_3[2] Prod3_3[1] Prod3_3[0]
+ Prod3_4[3] Prod3_4[2] Prod3_4[1] Prod3_4[0]
+ Prod3_5[3] Prod3_5[2] Prod3_5[1] Prod3_5[0]
+ Prod3_6[3] Prod3_6[2] Prod3_6[1] Prod3_6[0]
+ Prod3_7[3] Prod3_7[2] Prod3_7[1] Prod3_7[0]
+ Prod3_8[3] Prod3_8[2] Prod3_8[1] Prod3_8[0]
+ Prod3_9[3] Prod3_9[2] Prod3_9[1] Prod3_9[0]
+ Prod3_10[3] Prod3_10[2] Prod3_10[1] Prod3_10[0]
+ Prod3_11[3] Prod3_11[2] Prod3_11[1] Prod3_11[0]
+ Prod3_12[3] Prod3_12[2] Prod3_12[1] Prod3_12[0]
+ Prod3_13[3] Prod3_13[2] Prod3_13[1] Prod3_13[0]
+ Prod3_14[3] Prod3_14[2] Prod3_14[1] Prod3_14[0]
+ Prod3_15[3] Prod3_15[2] Prod3_15[1] Prod3_15[0]
+ Prod3_16[3] Prod3_16[2] Prod3_16[1] Prod3_16[0]
+ Prod3_17[3] Prod3_17[2] Prod3_17[1] Prod3_17[0]
+ Prod3_18[3] Prod3_18[2] Prod3_18[1] Prod3_18[0]
+ Prod3_19[3] Prod3_19[2] Prod3_19[1] Prod3_19[0]
+ Prod3_20[3] Prod3_20[2] Prod3_20[1] Prod3_20[0]
+ Prod3_21[3] Prod3_21[2] Prod3_21[1] Prod3_21[0]
+ Prod3_22[3] Prod3_22[2] Prod3_22[1] Prod3_22[0]
+ Prod3_23[3] Prod3_23[2] Prod3_23[1] Prod3_23[0]
+ Prod3_24[3] Prod3_24[2] Prod3_24[1] Prod3_24[0]
+ Prod3_25[3] Prod3_25[2] Prod3_25[1] Prod3_25[0]
+ Prod3_26[3] Prod3_26[2] Prod3_26[1] Prod3_26[0]
+ Prod3_27[3] Prod3_27[2] Prod3_27[1] Prod3_27[0]
+ Prod3_28[3] Prod3_28[2] Prod3_28[1] Prod3_28[0]
+ Prod3_29[3] Prod3_29[2] Prod3_29[1] Prod3_29[0]
+ Prod3_30[3] Prod3_30[2] Prod3_30[1] Prod3_30[0]
+ Prod3_31[3] Prod3_31[2] Prod3_31[1] Prod3_31[0]
+ S_3[8] S_3[7]  S_3[6] S_3[5] S_3[4] S_3[3] S_3[2] S_3[1] S_3[0]
+ Adder_Tree

X_Acc3 VDD! GND rst_n clk
+ S_3[8] S_3[7] S_3[6] S_3[5] S_3[4] S_3[3] S_3[2] S_3[1] S_3[0]
+ out_valid O_3[12] O_3[11] O_3[10] O_3[9] O_3[8] O_3[7] O_3[6] O_3[5] O_3[4] O_3[3] O_3[2] O_3[1] O_3[0]
+ Accumulators

.TRAN 10p 30n

.option post
.option probe
.option measform=2
.option runlvl=1
.probe tran v(*) level=1
+ v(X_Add_tree0.Xsum_level1_reg_0__3_.D)
*+ v(X_Add_tree0.XP_reg_2_.VDD)
*+ v(X_Add_tree0.XP_reg_2_.VSS)
*+ v(X_Add_tree0.XP_reg_2_.QN)
*+ v(X_Add_tree0.XP_reg_2_.RESET)
*+ v(X_Add_tree0.XP_reg_2_.SET)
*+ v(X_Add_tree0.XP_reg_2_.CLK)
*+ v(X_Acc.Xctr_reg_2_.CLK)
*+ v(X_Acc.Xctr_reg_2_.D)
*+ v(X_Acc.Xctr_reg_2_.VSS)
*+ v(X_Acc.Xctr_reg_2_.VDD)
*+ v(X_Acc.Xctr_reg_2_.RESET)
*+ v(X_Acc.Xctr_reg_2_.SET)
*+ v(X_Add_tree0.XP_reg_2_.D)
*+ v(X_Add_tree0.XP_reg_2_.VDD)
*+ v(X_Add_tree0.XP_reg_2_.VSS)
*+ v(X_Add_tree0.XP_reg_2_.QN)
*+ v(X_Add_tree0.XP_reg_2_.RESET)
*+ v(X_Add_tree0.XP_reg_2_.SET)
*+ v(X_Add_tree0.XP_reg_2_.CLK)
*+ v(X_Acc0.Xctr_reg_2_.CLK)
*+ v(X_Acc0.Xctr_reg_2_.D)
*+ v(X_Acc0.Xctr_reg_2_.VSS)
*+ v(X_Acc0.Xctr_reg_2_.VDD)
*+ v(X_Acc0.Xctr_reg_2_.RESET)
*+ v(X_Acc0.Xctr_reg_2_.SET)
*
*+ v(X_Add_tree1.XP_reg_2_.D)
*+ v(X_Add_tree1.XP_reg_2_.VDD)
*+ v(X_Add_tree1.XP_reg_2_.VSS)
*+ v(X_Add_tree1.XP_reg_2_.QN)
*+ v(X_Add_tree1.XP_reg_2_.RESET)
*+ v(X_Add_tree1.XP_reg_2_.SET)
*+ v(X_Add_tree1.XP_reg_2_.CLK)
*+ v(X_Acc1.Xctr_reg_2_.CLK)
*+ v(X_Acc1.Xctr_reg_2_.D)
*+ v(X_Acc1.Xctr_reg_2_.VSS)
*+ v(X_Acc1.Xctr_reg_2_.VDD)
*+ v(X_Acc1.Xctr_reg_2_.RESET)
*+ v(X_Acc1.Xctr_reg_2_.SET)
*
*+ v(X_Add_tree2.XP_reg_2_.D)
*+ v(X_Add_tree2.XP_reg_2_.VDD)
*+ v(X_Add_tree2.XP_reg_2_.VSS)
*+ v(X_Add_tree2.XP_reg_2_.QN)
*+ v(X_Add_tree2.XP_reg_2_.RESET)
*+ v(X_Add_tree2.XP_reg_2_.SET)
*+ v(X_Add_tree2.XP_reg_2_.CLK)
*+ v(X_Acc2.Xctr_reg_2_.CLK)
*+ v(X_Acc2.Xctr_reg_2_.D)
*+ v(X_Acc2.Xctr_reg_2_.VSS)
*+ v(X_Acc2.Xctr_reg_2_.VDD)
*+ v(X_Acc2.Xctr_reg_2_.RESET)
*+ v(X_Acc2.Xctr_reg_2_.SET)
*
*+ v(X_Add_tree3.XP_reg_2_.D)
*+ v(X_Add_tree3.XP_reg_2_.VDD)
*+ v(X_Add_tree3.XP_reg_2_.VSS)
*+ v(X_Add_tree3.XP_reg_2_.QN)
*+ v(X_Add_tree3.XP_reg_2_.RESET)
*+ v(X_Add_tree3.XP_reg_2_.SET)
*+ v(X_Add_tree3.XP_reg_2_.CLK)
*+ v(X_Acc3.Xctr_reg_2_.CLK)
*+ v(X_Acc3.Xctr_reg_2_.D)
*+ v(X_Acc3.Xctr_reg_2_.VSS)
*+ v(X_Acc3.Xctr_reg_2_.VDD)
*+ v(X_Acc3.Xctr_reg_2_.RESET)
*+ v(X_Acc3.Xctr_reg_2_.SET)

*.MEAS TRAN P_CIM_ARR AVG p(X_CIM_arr) from=0 to=30n

.option VCD
.LPRINT (0.3 0.35) v(in0) v(in1) v(in2) v(in3) v(in4) v(in5) v(in6) v(in7) v(in8) v(in9)
+ v(in10) v(in11) v(in12) v(in13) v(in14) v(in15) v(in16) v(in17) v(in18) v(in19)
+ v(in20) v(in21) v(in22) v(in23) v(in24) v(in25) v(in26) v(in27) v(in28) v(in29)
+ v(in30) v(in31) v(clk) v(rst_n) v(out_valid)
*+ v(S_0[8]) v(S_0[7])  v(S_0[6]) v(S_0[5]) v(S_0[4]) v(S_0[3]) v(S_0[2]) v(S_0[1]) v(S_0[0])
*+ v(O[12]) v(O[11]) v(O[10]) v(O[9]) v(O[8]) v(O[7]) v(O[6]) v(O[5]) v(O[4]) v(O[3]) v(O[2]) v(O[1]) v(O[0])
+ v(S_0[8]) v(S_0[7])  v(S_0[6]) v(S_0[5]) v(S_0[4]) v(S_0[3]) v(S_0[2]) v(S_0[1]) v(S_0[0])
+ v(S_1[8]) v(S_1[7])  v(S_1[6]) v(S_1[5]) v(S_1[4]) v(S_1[3]) v(S_1[2]) v(S_1[1]) v(S_1[0])
+ v(S_2[8]) v(S_2[7])  v(S_2[6]) v(S_2[5]) v(S_2[4]) v(S_2[3]) v(S_2[2]) v(S_2[1]) v(S_2[0])
+ v(S_3[8]) v(S_3[7])  v(S_3[6]) v(S_3[5]) v(S_3[4]) v(S_3[3]) v(S_3[2]) v(S_3[1]) v(S_3[0])
+ v(O_0[12]) v(O_0[11]) v(O_0[10]) v(O_0[9]) v(O_0[8]) v(O_0[7]) v(O_0[6]) v(O_0[5]) v(O_0[4]) v(O_0[3]) v(O_0[2]) v(O_0[1]) v(O_0[0])
+ v(O_1[12]) v(O_1[11]) v(O_1[10]) v(O_1[9]) v(O_1[8]) v(O_1[7]) v(O_1[6]) v(O_1[5]) v(O_1[4]) v(O_1[3]) v(O_1[2]) v(O_1[1]) v(O_1[0])
+ v(O_2[12]) v(O_2[11]) v(O_2[10]) v(O_2[9]) v(O_2[8]) v(O_2[7]) v(O_2[6]) v(O_2[5]) v(O_2[4]) v(O_2[3]) v(O_2[2]) v(O_2[1]) v(O_2[0])
+ v(O_3[12]) v(O_3[11]) v(O_3[10]) v(O_3[9]) v(O_3[8]) v(O_3[7]) v(O_3[6]) v(O_3[5]) v(O_3[4]) v(O_3[3]) v(O_3[2]) v(O_3[1]) v(O_3[0])
+ v(Prod0_0[3]) v(Prod0_0[2]) v(Prod0_0[1]) v(Prod0_0[0])
+ v(Prod0_1[3]) v(Prod0_1[2]) v(Prod0_1[1]) v(Prod0_1[0])
+ v(Prod0_2[3]) v(Prod0_2[2]) v(Prod0_2[1]) v(Prod0_2[0])
+ v(Prod0_3[3]) v(Prod0_3[2]) v(Prod0_3[1]) v(Prod0_3[0])
+ v(Prod0_4[3]) v(Prod0_4[2]) v(Prod0_4[1]) v(Prod0_4[0])
+ v(Prod0_5[3]) v(Prod0_5[2]) v(Prod0_5[1]) v(Prod0_5[0])
+ v(Prod0_6[3]) v(Prod0_6[2]) v(Prod0_6[1]) v(Prod0_6[0])
+ v(Prod0_7[3]) v(Prod0_7[2]) v(Prod0_7[1]) v(Prod0_7[0])
+ v(Prod0_8[3]) v(Prod0_8[2]) v(Prod0_8[1]) v(Prod0_8[0])
+ v(Prod0_9[3]) v(Prod0_9[2]) v(Prod0_9[1]) v(Prod0_9[0])
+ v(Prod0_10[3]) v(Prod0_10[2]) v(Prod0_10[1]) v(Prod0_10[0])
+ v(Prod0_11[3]) v(Prod0_11[2]) v(Prod0_11[1]) v(Prod0_11[0])
+ v(Prod0_12[3]) v(Prod0_12[2]) v(Prod0_12[1]) v(Prod0_12[0])
+ v(Prod0_13[3]) v(Prod0_13[2]) v(Prod0_13[1]) v(Prod0_13[0])
+ v(Prod0_14[3]) v(Prod0_14[2]) v(Prod0_14[1]) v(Prod0_14[0])
+ v(Prod0_15[3]) v(Prod0_15[2]) v(Prod0_15[1]) v(Prod0_15[0])
+ v(Prod0_16[3]) v(Prod0_16[2]) v(Prod0_16[1]) v(Prod0_16[0])
+ v(Prod0_17[3]) v(Prod0_17[2]) v(Prod0_17[1]) v(Prod0_17[0])
+ v(Prod0_18[3]) v(Prod0_18[2]) v(Prod0_18[1]) v(Prod0_18[0])
+ v(Prod0_19[3]) v(Prod0_19[2]) v(Prod0_19[1]) v(Prod0_19[0])
+ v(Prod0_20[3]) v(Prod0_20[2]) v(Prod0_20[1]) v(Prod0_20[0])
+ v(Prod0_21[3]) v(Prod0_21[2]) v(Prod0_21[1]) v(Prod0_21[0])
+ v(Prod0_22[3]) v(Prod0_22[2]) v(Prod0_22[1]) v(Prod0_22[0])
+ v(Prod0_23[3]) v(Prod0_23[2]) v(Prod0_23[1]) v(Prod0_23[0])
+ v(Prod0_24[3]) v(Prod0_24[2]) v(Prod0_24[1]) v(Prod0_24[0])
+ v(Prod0_25[3]) v(Prod0_25[2]) v(Prod0_25[1]) v(Prod0_25[0])
+ v(Prod0_26[3]) v(Prod0_26[2]) v(Prod0_26[1]) v(Prod0_26[0])
+ v(Prod0_27[3]) v(Prod0_27[2]) v(Prod0_27[1]) v(Prod0_27[0])
+ v(Prod0_28[3]) v(Prod0_28[2]) v(Prod0_28[1]) v(Prod0_28[0])
+ v(Prod0_29[3]) v(Prod0_29[2]) v(Prod0_29[1]) v(Prod0_29[0])
+ v(Prod0_30[3]) v(Prod0_30[2]) v(Prod0_30[1]) v(Prod0_30[0])
+ v(Prod0_31[3]) v(Prod0_31[2]) v(Prod0_31[1]) v(Prod0_31[0])
* + v(Prod1_0[3]) v(Prod1_0[2]) v(Prod1_0[1]) v(Prod1_0[0])
* + v(Prod1_1[3]) v(Prod1_1[2]) v(Prod1_1[1]) v(Prod1_1[0])
* + v(Prod1_2[3]) v(Prod1_2[2]) v(Prod1_2[1]) v(Prod1_2[0])
* + v(Prod1_3[3]) v(Prod1_3[2]) v(Prod1_3[1]) v(Prod1_3[0])
* + v(Prod1_4[3]) v(Prod1_4[2]) v(Prod1_4[1]) v(Prod1_4[0])
* + v(Prod1_5[3]) v(Prod1_5[2]) v(Prod1_5[1]) v(Prod1_5[0])
* + v(Prod1_6[3]) v(Prod1_6[2]) v(Prod1_6[1]) v(Prod1_6[0])
* + v(Prod1_7[3]) v(Prod1_7[2]) v(Prod1_7[1]) v(Prod1_7[0])
* + v(Prod1_8[3]) v(Prod1_8[2]) v(Prod1_8[1]) v(Prod1_8[0])
* + v(Prod1_9[3]) v(Prod1_9[2]) v(Prod1_9[1]) v(Prod1_9[0])
* + v(Prod1_10[3]) v(Prod1_10[2]) v(Prod1_10[1]) v(Prod1_10[0])
* + v(Prod1_11[3]) v(Prod1_11[2]) v(Prod1_11[1]) v(Prod1_11[0])
* + v(Prod1_12[3]) v(Prod1_12[2]) v(Prod1_12[1]) v(Prod1_12[0])
* + v(Prod1_13[3]) v(Prod1_13[2]) v(Prod1_13[1]) v(Prod1_13[0])
* + v(Prod1_14[3]) v(Prod1_14[2]) v(Prod1_14[1]) v(Prod1_14[0])
* + v(Prod1_15[3]) v(Prod1_15[2]) v(Prod1_15[1]) v(Prod1_15[0])
* + v(Prod1_16[3]) v(Prod1_16[2]) v(Prod1_16[1]) v(Prod1_16[0])
* + v(Prod1_17[3]) v(Prod1_17[2]) v(Prod1_17[1]) v(Prod1_17[0])
* + v(Prod1_18[3]) v(Prod1_18[2]) v(Prod1_18[1]) v(Prod1_18[0])
* + v(Prod1_19[3]) v(Prod1_19[2]) v(Prod1_19[1]) v(Prod1_19[0])
* + v(Prod1_20[3]) v(Prod1_20[2]) v(Prod1_20[1]) v(Prod1_20[0])
* + v(Prod1_21[3]) v(Prod1_21[2]) v(Prod1_21[1]) v(Prod1_21[0])
* + v(Prod1_22[3]) v(Prod1_22[2]) v(Prod1_22[1]) v(Prod1_22[0])
* + v(Prod1_23[3]) v(Prod1_23[2]) v(Prod1_23[1]) v(Prod1_23[0])
* + v(Prod1_24[3]) v(Prod1_24[2]) v(Prod1_24[1]) v(Prod1_24[0])
* + v(Prod1_25[3]) v(Prod1_25[2]) v(Prod1_25[1]) v(Prod1_25[0])
* + v(Prod1_26[3]) v(Prod1_26[2]) v(Prod1_26[1]) v(Prod1_26[0])
* + v(Prod1_27[3]) v(Prod1_27[2]) v(Prod1_27[1]) v(Prod1_27[0])
* + v(Prod1_28[3]) v(Prod1_28[2]) v(Prod1_28[1]) v(Prod1_28[0])
* + v(Prod1_29[3]) v(Prod1_29[2]) v(Prod1_29[1]) v(Prod1_29[0])
* + v(Prod1_30[3]) v(Prod1_30[2]) v(Prod1_30[1]) v(Prod1_30[0])
* + v(Prod1_31[3]) v(Prod1_31[2]) v(Prod1_31[1]) v(Prod1_31[0])
* + v(Prod2_0[3]) v(Prod2_0[2]) v(Prod2_0[1]) v(Prod2_0[0])
* + v(Prod2_1[3]) v(Prod2_1[2]) v(Prod2_1[1]) v(Prod2_1[0])
* + v(Prod2_2[3]) v(Prod2_2[2]) v(Prod2_2[1]) v(Prod2_2[0])
* + v(Prod2_3[3]) v(Prod2_3[2]) v(Prod2_3[1]) v(Prod2_3[0])
* + v(Prod2_4[3]) v(Prod2_4[2]) v(Prod2_4[1]) v(Prod2_4[0])
* + v(Prod2_5[3]) v(Prod2_5[2]) v(Prod2_5[1]) v(Prod2_5[0])
* + v(Prod2_6[3]) v(Prod2_6[2]) v(Prod2_6[1]) v(Prod2_6[0])
* + v(Prod2_7[3]) v(Prod2_7[2]) v(Prod2_7[1]) v(Prod2_7[0])
* + v(Prod2_8[3]) v(Prod2_8[2]) v(Prod2_8[1]) v(Prod2_8[0])
* + v(Prod2_9[3]) v(Prod2_9[2]) v(Prod2_9[1]) v(Prod2_9[0])
* + v(Prod2_10[3]) v(Prod2_10[2]) v(Prod2_10[1]) v(Prod2_10[0])
* + v(Prod2_11[3]) v(Prod2_11[2]) v(Prod2_11[1]) v(Prod2_11[0])
* + v(Prod2_12[3]) v(Prod2_12[2]) v(Prod2_12[1]) v(Prod2_12[0])
* + v(Prod2_13[3]) v(Prod2_13[2]) v(Prod2_13[1]) v(Prod2_13[0])
* + v(Prod2_14[3]) v(Prod2_14[2]) v(Prod2_14[1]) v(Prod2_14[0])
* + v(Prod2_15[3]) v(Prod2_15[2]) v(Prod2_15[1]) v(Prod2_15[0])
* + v(Prod2_16[3]) v(Prod2_16[2]) v(Prod2_16[1]) v(Prod2_16[0])
* + v(Prod2_17[3]) v(Prod2_17[2]) v(Prod2_17[1]) v(Prod2_17[0])
* + v(Prod2_18[3]) v(Prod2_18[2]) v(Prod2_18[1]) v(Prod2_18[0])
* + v(Prod2_19[3]) v(Prod2_19[2]) v(Prod2_19[1]) v(Prod2_19[0])
* + v(Prod2_20[3]) v(Prod2_20[2]) v(Prod2_20[1]) v(Prod2_20[0])
* + v(Prod2_21[3]) v(Prod2_21[2]) v(Prod2_21[1]) v(Prod2_21[0])
* + v(Prod2_22[3]) v(Prod2_22[2]) v(Prod2_22[1]) v(Prod2_22[0])
* + v(Prod2_23[3]) v(Prod2_23[2]) v(Prod2_23[1]) v(Prod2_23[0])
* + v(Prod2_24[3]) v(Prod2_24[2]) v(Prod2_24[1]) v(Prod2_24[0])
* + v(Prod2_25[3]) v(Prod2_25[2]) v(Prod2_25[1]) v(Prod2_25[0])
* + v(Prod2_26[3]) v(Prod2_26[2]) v(Prod2_26[1]) v(Prod2_26[0])
* + v(Prod2_27[3]) v(Prod2_27[2]) v(Prod2_27[1]) v(Prod2_27[0])
* + v(Prod2_28[3]) v(Prod2_28[2]) v(Prod2_28[1]) v(Prod2_28[0])
* + v(Prod2_29[3]) v(Prod2_29[2]) v(Prod2_29[1]) v(Prod2_29[0])
* + v(Prod2_30[3]) v(Prod2_30[2]) v(Prod2_30[1]) v(Prod2_30[0])
* + v(Prod2_31[3]) v(Prod2_31[2]) v(Prod2_31[1]) v(Prod2_31[0])
* + v(Prod3_0[3]) v(Prod3_0[2]) v(Prod3_0[1]) v(Prod3_0[0])
* + v(Prod3_1[3]) v(Prod3_1[2]) v(Prod3_1[1]) v(Prod3_1[0])
* + v(Prod3_2[3]) v(Prod3_2[2]) v(Prod3_2[1]) v(Prod3_2[0])
* + v(Prod3_3[3]) v(Prod3_3[2]) v(Prod3_3[1]) v(Prod3_3[0])
* + v(Prod3_4[3]) v(Prod3_4[2]) v(Prod3_4[1]) v(Prod3_4[0])
* + v(Prod3_5[3]) v(Prod3_5[2]) v(Prod3_5[1]) v(Prod3_5[0])
* + v(Prod3_6[3]) v(Prod3_6[2]) v(Prod3_6[1]) v(Prod3_6[0])
* + v(Prod3_7[3]) v(Prod3_7[2]) v(Prod3_7[1]) v(Prod3_7[0])
* + v(Prod3_8[3]) v(Prod3_8[2]) v(Prod3_8[1]) v(Prod3_8[0])
* + v(Prod3_9[3]) v(Prod3_9[2]) v(Prod3_9[1]) v(Prod3_9[0])
* + v(Prod3_10[3]) v(Prod3_10[2]) v(Prod3_10[1]) v(Prod3_10[0])
* + v(Prod3_11[3]) v(Prod3_11[2]) v(Prod3_11[1]) v(Prod3_11[0])
* + v(Prod3_12[3]) v(Prod3_12[2]) v(Prod3_12[1]) v(Prod3_12[0])
* + v(Prod3_13[3]) v(Prod3_13[2]) v(Prod3_13[1]) v(Prod3_13[0])
* + v(Prod3_14[3]) v(Prod3_14[2]) v(Prod3_14[1]) v(Prod3_14[0])
* + v(Prod3_15[3]) v(Prod3_15[2]) v(Prod3_15[1]) v(Prod3_15[0])
* + v(Prod3_16[3]) v(Prod3_16[2]) v(Prod3_16[1]) v(Prod3_16[0])
* + v(Prod3_17[3]) v(Prod3_17[2]) v(Prod3_17[1]) v(Prod3_17[0])
* + v(Prod3_18[3]) v(Prod3_18[2]) v(Prod3_18[1]) v(Prod3_18[0])
* + v(Prod3_19[3]) v(Prod3_19[2]) v(Prod3_19[1]) v(Prod3_19[0])
* + v(Prod3_20[3]) v(Prod3_20[2]) v(Prod3_20[1]) v(Prod3_20[0])
* + v(Prod3_21[3]) v(Prod3_21[2]) v(Prod3_21[1]) v(Prod3_21[0])
* + v(Prod3_22[3]) v(Prod3_22[2]) v(Prod3_22[1]) v(Prod3_22[0])
* + v(Prod3_23[3]) v(Prod3_23[2]) v(Prod3_23[1]) v(Prod3_23[0])
* + v(Prod3_24[3]) v(Prod3_24[2]) v(Prod3_24[1]) v(Prod3_24[0])
* + v(Prod3_25[3]) v(Prod3_25[2]) v(Prod3_25[1]) v(Prod3_25[0])
* + v(Prod3_26[3]) v(Prod3_26[2]) v(Prod3_26[1]) v(Prod3_26[0])
* + v(Prod3_27[3]) v(Prod3_27[2]) v(Prod3_27[1]) v(Prod3_27[0])
* + v(Prod3_28[3]) v(Prod3_28[2]) v(Prod3_28[1]) v(Prod3_28[0])
* + v(Prod3_29[3]) v(Prod3_29[2]) v(Prod3_29[1]) v(Prod3_29[0])
* + v(Prod3_30[3]) v(Prod3_30[2]) v(Prod3_30[1]) v(Prod3_30[0])
* + v(Prod3_31[3]) v(Prod3_31[2]) v(Prod3_31[1]) v(Prod3_31[0])
.end
