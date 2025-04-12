.protect
.include '7nm_TT.pm'
.vec 'pattern_test2.vec'
.unprotect
.global VDD VSS
.param VDD = 0.7 

.subckt One_dot Input[0] Output[0] Output[1] Output[2] Output[3] qb[0] qb[1] qb[2] qb[3]
    Xbuf Input[0] In_bar INV
    X_oneweight In_bar Output[0] Output[1] Output[2] Output[3] qb[0] qb[1] qb[2] qb[3]  CIM_weight
.ends

*1 weight 4 bits --> need 4 sram cell 
.subckt SRAM_6T WL BL BLB q qb
    MP1 q   qb  VDD VDD pmos_sram m=1
    MP2 qb  q   VDD VDD pmos_sram m=1
    MN1 q   qb  GND GND nmos_sram m=1
    MN2 qb  q   GND GND nmos_sram m=1
    MN3 BL  WL  q   GND nmos_sram m=1
    MN4 qb  WL  BLB GND nmos_sram m=1
.ends


.subckt CIM_cell Input Output WL BL BLB q qb
    X01 WL BL BLB q qb SRAM_6T
    X02 qb Input Output NOR_2
.ends
.subckt CIM_weight Input Output[0] Output[1] Output[2] Output[3] qb[0] qb[1] qb[2] qb[3]
    X_CIM_cell0 Input Output[0] WL[0] BL[0] BLB[0] q[0] qb[0] CIM_cell
    X_CIM_cell1 Input Output[1] WL[0] BL[1] BLB[1] q[1] qb[1] CIM_cell
    X_CIM_cell2 Input Output[2] WL[0] BL[2] BLB[2] q[2] qb[2] CIM_cell
    X_CIM_cell3 Input Output[3] WL[0] BL[3] BLB[3] q[3] qb[3] CIM_cell
    .IC V(BL[0]) = 0V
    .IC V(BL[1]) = 0V
    .IC V(BL[2]) = 0V
    .IC V(BL[3]) = 0V
    .IC V(BLB[0]) = 0V
    .IC V(BLB[1]) = 0V
    .IC V(BLB[2]) = 0V
    .IC V(BLB[3]) = 0V 
    .IC V(WL[0]) = 0V
    *.IC V(qb[0]) = 0V 
.ends

.subckt NOR_2 A B Y
    MP1 N1  A   VDD VDD pmos_lvt m=1
    MP2 Y   B   N1  VDD pmos_lvt m=1
    MN1 Y   A   GND GND nmos_lvt m=1
    MN2 Y   B   GND GND nmos_lvt m=1
.ends

.subckt Buffer in out
    X_INV1 in   in_b INV
    X_INV2 in_b out  INV
.ends

.subckt INV in out
    Mp  out  in  VDD  VDD  pmos_lvt  m=1
    Mn  out  in  GND  GND  nmos_lvt  m=1
.ends

*subcircuit for one input (4bits) * one weight(4bits) 
.SUBCKT mul In_b[0] In_b[1] In_b[2] In_b[3] W_b[0] W_b[1] W_b[2] W_b[3] Output[0] Output[1] Output[2] Output[3] Output[4] Output[5] Output[6] Output[7] Output[8] Output[9] Output[10] Output[11] Output[12] Output[13] Output[14] Output[15]
X_dot3 In_b[3] Output[0] Output[1] Output[2] Output[3] W_b[0] W_b[1] W_b[2] W_b[3] One_dot
X_dot2 In_b[2] Output[4] Output[5] Output[6] Output[7] W_b[0] W_b[1] W_b[2] W_b[3] One_dot
X_dot1 In_b[1] Output[8] Output[9] Output[10] Output[11] W_b[0] W_b[1] W_b[2] W_b[3] One_dot
X_dot0 In_b[0] Output[12] Output[13] Output[14] Output[15] W_b[0] W_b[1] W_b[2] W_b[3] One_dot
.ends



*subcircuit for 4 input * 4 weights 
.SUBCKT mul4_4 In0[0] In0[1] In0[2] In0[3] In1[0] In1[1] In1[2] In1[3] In2[0] In2[1] In2[2] In2[3] In3[0] In3[1] In3[2] In3[3] 
+ W0_0_b[0] W0_0_b[1] W0_0_b[2] W0_0_b[3] W0_1_b[0] W0_1_b[1] W0_1_b[2] W0_1_b[3] W0_2_b[0] W0_2_b[1] W0_2_b[2] W0_2_b[3] W0_3_b[0] W0_3_b[1] W0_3_b[2] W0_3_b[3]  
+ Output0[0] Output0[1] Output0[2] Output0[3] Output0[4] Output0[5] Output0[6] Output0[7] Output0[8] Output0[9] Output0[10] Output0[11] Output0[12] Output0[13] Output0[14] Output0[15] 
+ Output1[0] Output1[1] Output1[2] Output1[3] Output1[4] Output1[5] Output1[6] Output1[7] Output1[8] Output1[9] Output1[10] Output1[11] Output1[12] Output1[13] Output1[14] Output1[15] 
+ Output2[0] Output2[1] Output2[2] Output2[3] Output2[4] Output2[5] Output2[6] Output2[7] Output2[8] Output2[9] Output2[10] Output2[11] Output2[12] Output2[13] Output2[14] Output2[15] 
+ Output3[0] Output3[1] Output3[2] Output3[3] Output3[4] Output3[5] Output3[6] Output3[7] Output3[8] Output3[9] Output3[10] Output3[11] Output3[12] Output3[13] Output3[14] Output3[15] 
X_mul0 In0_b[0] In0_b[1] In0_b[2] In0_b[3] W0_0_b[0] W0_0_b[1] W0_0_b[2] W0_0_b[3] Output0[0] Output0[1] Output0[2] Output0[3] Output0[4] Output0[5] Output0[6] Output0[7] Output0[8] Output0[9] Output0[10] Output0[11] Output0[12] Output0[13] Output0[14] Output0[15] mul 
X_mul1 In1_b[0] In1_b[1] In1_b[2] In1_b[3] W0_1_b[0] W0_1_b[1] W0_1_b[2] W0_1_b[3] Output1[0] Output1[1] Output1[2] Output1[3] Output1[4] Output1[5] Output1[6] Output1[7] Output1[8] Output1[9] Output1[10] Output1[11] Output1[12] Output1[13] Output1[14] Output1[15] mul 
X_mul2 In2_b[0] In2_b[1] In2_b[2] In2_b[3] W0_2_b[0] W0_2_b[1] W0_2_b[2] W0_2_b[3] Output2[0] Output2[1] Output2[2] Output2[3] Output2[4] Output2[5] Output2[6] Output2[7] Output2[8] Output2[9] Output2[10] Output2[11] Output2[12] Output2[13] Output2[14] Output2[15] mul 
X_mul3 In3_b[0] In3_b[1] In3_b[2] In3_b[3] W0_3_b[0] W0_3_b[1] W0_3_b[2] W0_3_b[3] Output3[0] Output3[1] Output3[2] Output3[3] Output3[4] Output3[5] Output3[6] Output3[7] Output3[8] Output3[9] Output3[10] Output3[11] Output3[12] Output3[13] Output3[14] Output3[15] mul 
.ends 

*subcircuit for 32 input * 32 weights 
.SUBCKT mul32_32 
+ In0_b[0] In0_b[1] In0_b[2] In0_b[3] In1_b[0] In1_b[1] In1_b[2] In1_b[3] In2_b[0] In2_b[1] In2_b[2] In2_b[3] In3_b[0] In3_b[1] In3_b[2] In3_b[3] 
+ In4_b[0] In4_b[1] In4_b[2] In4_b[3] In5_b[0] In5_b[1] In5_b[2] In5_b[3] In6_b[0] In6_b[1] In6_b[2] In6_b[3] In7_b[0] In7_b[1] In7_b[2] In7_b[3]
+ In8_b[0] In8_b[1] In8_b[2] In8_b[3] In9_b[0] In9_b[1] In9_b[2] In9_b[3] In10_b[0] In10_b[1] In10_b[2] In10_b[3] In11_b[0] In11_b[1] In11_b[2] In11_b[3]
+ In12_b[0] In12_b[1] In12_b[2] In12_b[3] In13_b[0] In13_b[1] In13_b[2] In13_b[3] In14_b[0] In14_b[1] In14_b[2] In14_b[3] In15_b[0] In15_b[1] In15_b[2] In15_b[3]   
+ In16_b[0] In16_b[1] In16_b[2] In16_b[3] In17_b[0] In17_b[1] In17_b[2] In17_b[3] In18_b[0] In18_b[1] In18_b[2] In18_b[3] In19_b[0] In19_b[1] In19_b[2] In19_b[3]   
+ In20_b[0] In20_b[1] In20_b[2] In20_b[3] In21_b[0] In21_b[1] In21_b[2] In21_b[3] In22_b[0] In22_b[1] In22_b[2] In22_b[3] In23_b[0] In23_b[1] In23_b[2] In23_b[3]   
+ In24_b[0] In24_b[1] In24_b[2] In24_b[3] In25_b[0] In25_b[1] In25_b[2] In25_b[3] In26_b[0] In26_b[1] In26_b[2] In26_b[3] In27_b[0] In27_b[1] In27_b[2] In27_b[3]   
+ In28_b[0] In28_b[1] In28_b[2] In28_b[3] In29_b[0] In29_b[1] In29_b[2] In29_b[3] In30_b[0] In30_b[1] In30_b[2] In30_b[3] In31_b[0] In31_b[1] In31_b[2] In31_b[3]
+ W0_0_b[0] W0_0_b[1] W0_0_b[2] W0_0_b[3] W0_1_b[0] W0_1_b[1] W0_1_b[2] W0_1_b[3] W0_2_b[0] W0_2_b[1] W0_2_b[2] W0_2_b[3] W0_3_b[0] W0_3_b[1] W0_3_b[2] W0_3_b[3]  
+ W0_4_b[0] W0_4_b[1] W0_4_b[2] W0_4_b[3] W0_5_b[0] W0_5_b[1] W0_5_b[2] W0_5_b[3] W0_6_b[0] W0_6_b[1] W0_6_b[2] W0_6_b[3] W0_7_b[0] W0_7_b[1] W0_7_b[2] W0_7_b[3]
+ W0_8_b[0] W0_8_b[1] W0_8_b[2] W0_8_b[3] W0_9_b[0] W0_9_b[1] W0_9_b[2] W0_9_b[3] W0_10_b[0] W0_10_b[1] W0_10_b[2] W0_10_b[3] W0_11_b[0] W0_11_b[1] W0_11_b[2] W0_11_b[3]
+ W0_12_b[0] W0_12_b[1] W0_12_b[2] W0_12_b[3] W0_13_b[0] W0_13_b[1] W0_13_b[2] W0_13_b[3] W0_14_b[0] W0_14_b[1] W0_14_b[2] W0_14_b[3] W0_15_b[0] W0_15_b[1] W0_15_b[2] W0_15_b[3]
+ W0_16_b[0] W0_16_b[1] W0_16_b[2] W0_16_b[3] W0_17_b[0] W0_17_b[1] W0_17_b[2] W0_17_b[3] W0_18_b[0] W0_18_b[1] W0_18_b[2] W0_18_b[3] W0_19_b[0] W0_19_b[1] W0_19_b[2] W0_19_b[3]
+ W0_20_b[0] W0_20_b[1] W0_20_b[2] W0_20_b[3] W0_21_b[0] W0_21_b[1] W0_21_b[2] W0_21_b[3] W0_22_b[0] W0_22_b[1] W0_22_b[2] W0_22_b[3] W0_23_b[0] W0_23_b[1] W0_23_b[2] W0_23_b[3]
+ W0_24_b[0] W0_24_b[1] W0_24_b[2] W0_24_b[3] W0_25_b[0] W0_25_b[1] W0_25_b[2] W0_25_b[3] W0_26_b[0] W0_26_b[1] W0_26_b[2] W0_26_b[3] W0_27_b[0] W0_27_b[1] W0_27_b[2] W0_27_b[3]
+ W0_28_b[0] W0_28_b[1] W0_28_b[2] W0_28_b[3] W0_29_b[0] W0_29_b[1] W0_29_b[2] W0_29_b[3] W0_30_b[0] W0_30_b[1] W0_30_b[2] W0_30_b[3] W0_31_b[0] W0_31_b[1] W0_31_b[2] W0_31_b[3]
+ Output0[0] Output0[1] Output0[2] Output0[3] Output0[4] Output0[5] Output0[6] Output0[7] Output0[8] Output0[9] Output0[10] Output0[11] Output0[12] Output0[13] Output0[14] Output0[15] 
+ Output1[0] Output1[1] Output1[2] Output1[3] Output1[4] Output1[5] Output1[6] Output1[7] Output1[8] Output1[9] Output1[10] Output1[11] Output1[12] Output1[13] Output1[14] Output1[15] 
+ Output2[0] Output2[1] Output2[2] Output2[3] Output2[4] Output2[5] Output2[6] Output2[7] Output2[8] Output2[9] Output2[10] Output2[11] Output2[12] Output2[13] Output2[14] Output2[15] 
+ Output3[0] Output3[1] Output3[2] Output3[3] Output3[4] Output3[5] Output3[6] Output3[7] Output3[8] Output3[9] Output3[10] Output3[11] Output3[12] Output3[13] Output3[14] Output3[15] 
+ Output4[0] Output4[1] Output4[2] Output4[3] Output4[4] Output4[5] Output4[6] Output4[7] Output4[8] Output4[9] Output4[10] Output4[11] Output4[12] Output4[13] Output4[14] Output4[15]
+ Output5[0] Output5[1] Output5[2] Output5[3] Output5[4] Output5[5] Output5[6] Output5[7] Output5[8] Output5[9] Output5[10] Output5[11] Output5[12] Output5[13] Output5[14] Output5[15]
+ Output6[0] Output6[1] Output6[2] Output6[3] Output6[4] Output6[5] Output6[6] Output6[7] Output6[8] Output6[9] Output6[10] Output6[11] Output6[12] Output6[13] Output6[14] Output6[15]
+ Output7[0] Output7[1] Output7[2] Output7[3] Output7[4] Output7[5] Output7[6] Output7[7] Output7[8] Output7[9] Output7[10] Output7[11] Output7[12] Output7[13] Output7[14] Output7[15]
+ Output8[0] Output8[1] Output8[2] Output8[3] Output8[4] Output8[5] Output8[6] Output8[7] Output8[8] Output8[9] Output8[10] Output8[11] Output8[12] Output8[13] Output8[14] Output8[15]
+ Output9[0] Output9[1] Output9[2] Output9[3] Output9[4] Output9[5] Output9[6] Output9[7] Output9[8] Output9[9] Output9[10] Output9[11] Output9[12] Output9[13] Output9[14] Output9[15]
+ Output10[0] Output10[1] Output10[2] Output10[3] Output10[4] Output10[5] Output10[6] Output10[7] Output10[8] Output10[9] Output10[10] Output10[11] Output10[12] Output10[13] Output10[14] Output10[15]
+ Output11[0] Output11[1] Output11[2] Output11[3] Output11[4] Output11[5] Output11[6] Output11[7] Output11[8] Output11[9] Output11[10] Output11[11] Output11[12] Output11[13] Output11[14] Output11[15]
+ Output12[0] Output12[1] Output12[2] Output12[3] Output12[4] Output12[5] Output12[6] Output12[7] Output12[8] Output12[9] Output12[10] Output12[11] Output12[12] Output12[13] Output12[14] Output12[15]
+ Output13[0] Output13[1] Output13[2] Output13[3] Output13[4] Output13[5] Output13[6] Output13[7] Output13[8] Output13[9] Output13[10] Output13[11] Output13[12] Output13[13] Output13[14] Output13[15]
+ Output14[0] Output14[1] Output14[2] Output14[3] Output14[4] Output14[5] Output14[6] Output14[7] Output14[8] Output14[9] Output14[10] Output14[11] Output14[12] Output14[13] Output14[14] Output14[15]
+ Output15[0] Output15[1] Output15[2] Output15[3] Output15[4] Output15[5] Output15[6] Output15[7] Output15[8] Output15[9] Output15[10] Output15[11] Output15[12] Output15[13] Output15[14] Output15[15]
+ Output16[0] Output16[1] Output16[2] Output16[3] Output16[4] Output16[5] Output16[6] Output16[7] Output16[8] Output16[9] Output16[10] Output16[11] Output16[12] Output16[13] Output16[14] Output16[15]
+ Output17[0] Output17[1] Output17[2] Output17[3] Output17[4] Output17[5] Output17[6] Output17[7] Output17[8] Output17[9] Output17[10] Output17[11] Output17[12] Output17[13] Output17[14] Output17[15]
+ Output18[0] Output18[1] Output18[2] Output18[3] Output18[4] Output18[5] Output18[6] Output18[7] Output18[8] Output18[9] Output18[10] Output18[11] Output18[12] Output18[13] Output18[14] Output18[15]
+ Output19[0] Output19[1] Output19[2] Output19[3] Output19[4] Output19[5] Output19[6] Output19[7] Output19[8] Output19[9] Output19[10] Output19[11] Output19[12] Output19[13] Output19[14] Output19[15]
+ Output20[0] Output20[1] Output20[2] Output20[3] Output20[4] Output20[5] Output20[6] Output20[7] Output20[8] Output20[9] Output20[10] Output20[11] Output20[12] Output20[13] Output20[14] Output20[15]
+ Output21[0] Output21[1] Output21[2] Output21[3] Output21[4] Output21[5] Output21[6] Output21[7] Output21[8] Output21[9] Output21[10] Output21[11] Output21[12] Output21[13] Output21[14] Output21[15]
+ Output22[0] Output22[1] Output22[2] Output22[3] Output22[4] Output22[5] Output22[6] Output22[7] Output22[8] Output22[9] Output22[10] Output22[11] Output22[12] Output22[13] Output22[14] Output22[15] 
+ Output23[0] Output23[1] Output23[2] Output23[3] Output23[4] Output23[5] Output23[6] Output23[7] Output23[8] Output23[9] Output23[10] Output23[11] Output23[12] Output23[13] Output23[14] Output23[15]
+ Output24[0] Output24[1] Output24[2] Output24[3] Output24[4] Output24[5] Output24[6] Output24[7] Output24[8] Output24[9] Output24[10] Output24[11] Output24[12] Output24[13] Output24[14] Output24[15]
+ Output25[0] Output25[1] Output25[2] Output25[3] Output25[4] Output25[5] Output25[6] Output25[7] Output25[8] Output25[9] Output25[10] Output25[11] Output25[12] Output25[13] Output25[14] Output25[15]
+ Output26[0] Output26[1] Output26[2] Output26[3] Output26[4] Output26[5] Output26[6] Output26[7] Output26[8] Output26[9] Output26[10] Output26[11] Output26[12] Output26[13] Output26[14] Output26[15]
+ Output27[0] Output27[1] Output27[2] Output27[3] Output27[4] Output27[5] Output27[6] Output27[7] Output27[8] Output27[9] Output27[10] Output27[11] Output27[12] Output27[13] Output27[14] Output27[15]
+ Output28[0] Output28[1] Output28[2] Output28[3] Output28[4] Output28[5] Output28[6] Output28[7] Output28[8] Output28[9] Output28[10] Output28[11] Output28[12] Output28[13] Output28[14] Output28[15]
+ Output29[0] Output29[1] Output29[2] Output29[3] Output29[4] Output29[5] Output29[6] Output29[7] Output29[8] Output29[9] Output29[10] Output29[11] Output29[12] Output29[13] Output29[14] Output29[15]
+ Output30[0] Output30[1] Output30[2] Output30[3] Output30[4] Output30[5] Output30[6] Output30[7] Output30[8] Output30[9] Output30[10] Output30[11] Output30[12] Output30[13] Output30[14] Output30[15]
+ Output31[0] Output31[1] Output31[2] Output31[3] Output31[4] Output31[5] Output31[6] Output31[7] Output31[8] Output31[9] Output31[10] Output31[11] Output31[12] Output31[13] Output31[14] Output31[15]

X_mul4_4_0 In0[0] In0[1] In0[2] In0[3] In1[0] In1[1] In1[2] In1[3] In2[0] In2[1] In2[2] In2[3] In3[0] In3[1] In3[2] In3[3]
+ W0_0_b[0] W0_0_b[1] W0_0_b[2] W0_0_b[3] W0_1_b[0] W0_1_b[1] W0_1_b[2] W0_1_b[3] W0_2_b[0] W0_2_b[1] W0_2_b[2] W0_2_b[3] W0_3_b[0] W0_3_b[1] W0_3_b[2] W0_3_b[3]     
+ Output0[0] Output0[1] Output0[2] Output0[3] Output0[4] Output0[5] Output0[6] Output0[7] Output0[8] Output0[9] Output0[10] Output0[11] Output0[12] Output0[13] Output0[14] Output0[15]
+ Output1[0] Output1[1] Output1[2] Output1[3] Output1[4] Output1[5] Output1[6] Output1[7] Output1[8] Output1[9] Output1[10] Output1[11] Output1[12] Output1[13] Output1[14] Output1[15]
+ Output2[0] Output2[1] Output2[2] Output2[3] Output2[4] Output2[5] Output2[6] Output2[7] Output2[8] Output2[9] Output2[10] Output2[11] Output2[12] Output2[13] Output2[14] Output2[15]
+ Output3[0] Output3[1] Output3[2] Output3[3] Output3[4] Output3[5] Output3[6] Output3[7] Output3[8] Output3[9] Output3[10] Output3[11] Output3[12] Output3[13] Output3[14] Output3[15]

X_mul4_4_1 In4[0] In4[1] In4[2] In4[3] In5[0] In5[1] In5[2] In5[3] In6[0] In6[1] In6[2] In6[3] In7[0] In7[1] In7[2] In7[3]
+ W0_4_b[0] W0_4_b[1] W0_4_b[2] W0_4_b[3] W0_5_b[0] W0_5_b[1] W0_5_b[2] W0_5_b[3] W0_6_b[0] W0_6_b[1] W0_6_b[2] W0_6_b[3] W0_7_b[0] W0_7_b[1] W0_7_b[2] W0_7_b[3]     
+ Output4[0] Output4[1] Output4[2] Output4[3] Output4[4] Output4[5] Output4[6] Output4[7] Output4[8] Output4[9] Output4[10] Output4[11] Output4[12] Output4[13] Output4[14] Output4[15]
+ Output5[0] Output5[1] Output5[2] Output5[3] Output5[4] Output5[5] Output5[6] Output5[7] Output5[8] Output5[9] Output5[10] Output5[11] Output5[12] Output5[13] Output5[14] Output5[15]
+ Output6[0] Output6[1] Output6[2] Output6[3] Output6[4] Output6[5] Output6[6] Output6[7] Output6[8] Output6[9] Output6[10] Output6[11] Output6[12] Output6[13] Output6[14] Output6[15]
+ Output7[0] Output7[1] Output7[2] Output7[3] Output7[4] Output7[5] Output7[6] Output7[7] Output7[8] Output7[9] Output7[10] Output7[11] Output7[12] Output7[13] Output7[14] Output7[15]

X_mul4_4_2 In8[0] In8[1] In8[2] In8[3] In9[0] In9[1] In9[2] In9[3] In10[0] In10[1] In10[2] In10[3] In11[0] In11[1] In11[2] In11[3]
+ W0_8_b[0] W0_8_b[1] W0_8_b[2] W0_8_b[3] W0_9_b[0] W0_9_b[1] W0_9_b[2] W0_9_b[3] W0_10_b[0] W0_10_b[1] W0_10_b[2] W0_10_b[3] W0_11_b[0] W0_11_b[1] W0_11_b[2] W0_11_b[3]
+ Output8[0] Output8[1] Output8[2] Output8[3] Output8[4] Output8[5] Output8[6] Output8[7] Output8[8] Output8[9] Output8[10] Output8[11] Output8[12] Output8[13] Output8[14] Output8[15]
+ Output9[0] Output9[1] Output9[2] Output9[3] Output9[4] Output9[5] Output9[6] Output9[7] Output9[8] Output9[9] Output9[10] Output9[11] Output9[12] Output9[13] Output9[14] Output9[15]
+ Output10[0] Output10[1] Output10[2] Output10[3] Output10[4] Output10[5] Output10[6] Output10[7] Output10[8] Output10[9] Output10[10] Output10[11] Output10[12] Output10[13] Output10[14] Output10[15]
+ Output11[0] Output11[1] Output11[2] Output11[3] Output11[4] Output11[5] Output11[6] Output11[7] Output11[8] Output11[9] Output11[10] Output11[11] Output11[12] Output11[13] Output11[14] Output11[15]

X_mul4_4_3 In12[0] In12[1] In12[2] In12[3] In13[0] In13[1] In13[2] In13[3] In14[0] In14[1] In14[2] In14[3] In15[0] In15[1] In15[2] In15[3]
+ W0_12_b[0] W0_12_b[1] W0_12_b[2] W0_12_b[3] W0_13_b[0] W0_13_b[1] W0_13_b[2] W0_13_b[3] W0_14_b[0] W0_14_b[1] W0_14_b[2] W0_14_b[3] W0_15_b[0] W0_15_b[1] W0_15_b[2] W0_15_b[3]
+ Output12[0] Output12[1] Output12[2] Output12[3] Output12[4] Output12[5] Output12[6] Output12[7] Output12[8] Output12[9] Output12[10] Output12[11] Output12[12] Output12[13] Output12[14] Output12[15]
+ Output13[0] Output13[1] Output13[2] Output13[3] Output13[4] Output13[5] Output13[6] Output13[7] Output13[8] Output13[9] Output13[10] Output13[11] Output13[12] Output13[13] Output13[14] Output13[15]
+ Output14[0] Output14[1] Output14[2] Output14[3] Output14[4] Output14[5] Output14[6] Output14[7] Output14[8] Output14[9] Output14[10] Output14[11] Output14[12] Output14[13] Output14[14] Output14[15]
+ Output15[0] Output15[1] Output15[2] Output15[3] Output15[4] Output15[5] Output15[6] Output15[7] Output15[8] Output15[9] Output15[10] Output15[11] Output15[12] Output15[13] Output15[14] Output15[15]

X_mul4_4_4 In16[0] In16[1] In16[2] In16[3] In17[0] In17[1] In17[2] In17[3] In18[0] In18[1] In18[2] In18[3] In19[0] In19[1] In19[2] In19[3]
+ W0_16_b[0] W0_16_b[1] W0_16_b[2] W0_16_b[3] W0_17_b[0] W0_17_b[1] W0_17_b[2] W0_17_b[3] W0_18_b[0] W0_18_b[1] W0_18_b[2] W0_18_b[3] W0_19_b[0] W0_19_b[1] W0_19_b[2] W0_19_b[3]
+ Output16[0] Output16[1] Output16[2] Output16[3] Output16[4] Output16[5] Output16[6] Output16[7] Output16[8] Output16[9] Output16[10] Output16[11] Output16[12] Output16[13] Output16[14] Output16[15]
+ Output17[0] Output17[1] Output17[2] Output17[3] Output17[4] Output17[5] Output17[6] Output17[7] Output17[8] Output17[9] Output17[10] Output17[11] Output17[12] Output17[13] Output17[14] Output17[15]
+ Output18[0] Output18[1] Output18[2] Output18[3] Output18[4] Output18[5] Output18[6] Output18[7] Output18[8] Output18[9] Output18[10] Output18[11] Output18[12] Output18[13] Output18[14] Output18[15]
+ Output19[0] Output19[1] Output19[2] Output19[3] Output19[4] Output19[5] Output19[6] Output19[7] Output19[8] Output19[9] Output19[10] Output19[11] Output19[12] Output19[13] Output19[14] Output19[15]

X_mul4_4_5 In20[0] In20[1] In20[2] In20[3] In21[0] In21[1] In21[2] In21[3] In22[0] In22[1] In22[2] In22[3] In23[0] In23[1] In23[2] In23[3]
+ W0_20_b[0] W0_20_b[1] W0_20_b[2] W0_20_b[3] W0_21_b[0] W0_21_b[1] W0_21_b[2] W0_21_b[3] W0_22_b[0] W0_22_b[1] W0_22_b[2] W0_22_b[3] W0_23_b[0] W0_23_b[1] W0_23_b[2] W0_23_b[3]
+ Output20[0] Output20[1] Output20[2] Output20[3] Output20[4] Output20[5] Output20[6] Output20[7] Output20[8] Output20[9] Output20[10] Output20[11] Output20[12] Output20[13] Output20[14] Output20[15]
+ Output21[0] Output21[1] Output21[2] Output21[3] Output21[4] Output21[5] Output21[6] Output21[7] Output21[8] Output21[9] Output21[10] Output21[11] Output21[12] Output21[13] Output21[14] Output21[15]
+ Output22[0] Output22[1] Output22[2] Output22[3] Output22[4] Output22[5] Output22[6] Output22[7] Output22[8] Output22[9] Output22[10] Output22[11] Output22[12] Output22[13] Output22[14] Output22[15]
+ Output23[0] Output23[1] Output23[2] Output23[3] Output23[4] Output23[5] Output23[6] Output23[7] Output23[8] Output23[9] Output23[10] Output23[11] Output23[12] Output23[13] Output23[14] Output23[15]

X_mul4_4_6 In24[0] In24[1] In24[2] In24[3] In25[0] In25[1] In25[2] In25[3] In26[0] In26[1] In26[2] In26[3] In27[0] In27[1] In27[2] In27[3]
+ W0_24_b[0] W0_24_b[1] W0_24_b[2] W0_24_b[3] W0_25_b[0] W0_25_b[1] W0_25_b[2] W0_25_b[3] W0_26_b[0] W0_26_b[1] W0_26_b[2] W0_26_b[3] W0_27_b[0] W0_27_b[1] W0_27_b[2] W0_27_b[3]
+ Output24[0] Output24[1] Output24[2] Output24[3] Output24[4] Output24[5] Output24[6] Output24[7] Output24[8] Output24[9] Output24[10] Output24[11] Output24[12] Output24[13] Output24[14] Output24[15]
+ Output25[0] Output25[1] Output25[2] Output25[3] Output25[4] Output25[5] Output25[6] Output25[7] Output25[8] Output25[9] Output25[10] Output25[11] Output25[12] Output25[13] Output25[14] Output25[15]
+ Output26[0] Output26[1] Output26[2] Output26[3] Output26[4] Output26[5] Output26[6] Output26[7] Output26[8] Output26[9] Output26[10] Output26[11] Output26[12] Output26[13] Output26[14] Output26[15]
+ Output27[0] Output27[1] Output27[2] Output27[3] Output27[4] Output27[5] Output27[6] Output27[7] Output27[8] Output27[9] Output27[10] Output27[11] Output27[12] Output27[13] Output27[14] Output27[15]

X_mul4_4_7 In28[0] In28[1] In28[2] In28[3] In29[0] In29[1] In29[2] In29[3] In30[0] In30[1] In30[2] In30[3] In31[0] In31[1] In31[2] In31[3]
+ W0_28_b[0] W0_28_b[1] W0_28_b[2] W0_28_b[3] W0_29_b[0] W0_29_b[1] W0_29_b[2] W0_29_b[3] W0_30_b[0] W0_30_b[1] W0_30_b[2] W0_30_b[3] W0_31_b[0] W0_31_b[1] W0_31_b[2] W0_31_b[3]
+ Output28[0] Output28[1] Output28[2] Output28[3] Output28[4] Output28[5] Output28[6] Output28[7] Output28[8] Output28[9] Output28[10] Output28[11] Output28[12] Output28[13] Output28[14] Output28[15]
+ Output29[0] Output29[1] Output29[2] Output29[3] Output29[4] Output29[5] Output29[6] Output29[7] Output29[8] Output29[9] Output29[10] Output29[11] Output29[12] Output29[13] Output29[14] Output29[15]
+ Output30[0] Output30[1] Output30[2] Output30[3] Output30[4] Output30[5] Output30[6] Output30[7] Output30[8] Output30[9] Output30[10] Output30[11] Output30[12] Output30[13] Output30[14] Output30[15]
+ Output31[0] Output31[1] Output31[2] Output31[3] Output31[4] Output31[5] Output31[6] Output31[7] Output31[8] Output31[9] Output31[10] Output31[11] Output31[12] Output31[13] Output31[14] Output31[15]

.ends 
*******************************
*         TESTBED             *
*******************************
*----recall circuit--------
.SUBCKT Buffer_4b In[0] In[1] In[2] In[3] In_b[0] In_b[1] In_b[2] In_b[3] 
X_buffer3 In[3] In_b[3] Buffer 
X_buffer2 In[2] In_b[2] Buffer 
X_buffer1 In[1] In_b[1] Buffer 
X_buffer0 In[0] In_b[0] Buffer 
.ends 

.SUBCKT Buffer_4in  In00[0] In00[1] In00[2] In00[3] In10[0] In10[1] In10[2] In10[3] In20[0] In20[1] In20[2] In20[3] In30[0] In30[1] In30[2] In30[3] 
X_buf_in00 In00[0] In00[1] In00[2] In00[3] In00_b[0] In00_b[1] In00_b[2] In00_b[3] Buffer_4b 
X_buf_in01 In10[0] In10[1] In10[2] In10[3] In10_b[0] In10_b[1] In10_b[2] In10_b[3] Buffer_4b 
X_buf_in02 In20[0] In20[1] In20[2] In20[3] In20_b[0] In20_b[1] In20_b[2] In20_b[3] Buffer_4b 
X_buf_in03 In30[0] In30[1] In30[2] In30[3] In30_b[0] In30_b[1] In30_b[2] In30_b[3] Buffer_4b 
.ends 

X_buf In00[0] In00[1] In00[2] In00[3] In10[0] In10[1] In10[2] In10[3] In20[0] In20[1] In20[2] In20[3] In30[0] In30[1] In30[2] In30[3]  Buffer_4in 
X_mul4_4 In0_b[0] In0_b[1] In0_b[2] In0_b[3] In1_b[0] In1_b[1] In1_b[2] In1_b[3] In2_b[0] In2_b[1] In2_b[2] In2_b[3] In3_b[0] In3_b[1] In3_b[2] In3_b[3] 
+ W0_0_b[0] W0_0_b[1] W0_0_b[2] W0_0_b[3] W0_1_b[0] W0_1_b[1] W0_1_b[2] W0_1_b[3] W0_2_b[0] W0_2_b[1] W0_2_b[2] W0_2_b[3] W0_3_b[0] W0_3_b[1] W0_3_b[2] W0_3_b[3]  
+ Output0[0] Output0[1] Output0[2] Output0[3] Output0[4] Output0[5] Output0[6] Output0[7] Output0[8] Output0[9] Output0[10] Output0[11] Output0[12] Output0[13] Output0[14] Output0[15] 
+ Output1[0] Output1[1] Output1[2] Output1[3] Output1[4] Output1[5] Output1[6] Output1[7] Output1[8] Output1[9] Output1[10] Output1[11] Output1[12] Output1[13] Output1[14] Output1[15] 
+ Output2[0] Output2[1] Output2[2] Output2[3] Output2[4] Output2[5] Output2[6] Output2[7] Output2[8] Output2[9] Output2[10] Output2[11] Output2[12] Output2[13] Output2[14] Output2[15] 
+ Output3[0] Output3[1] Output3[2] Output3[3] Output3[4] Output3[5] Output3[6] Output3[7] Output3[8] Output3[9] Output3[10] Output3[11] Output3[12] Output3[13] Output3[14] Output3[15]  mul4_4


*----spply votlage---------
*V_in In_before_buf[3] 0 PULSE 0V  0.7V 0.1ns 0.01n 0.01n 1n 2n
V_vdd VDD 0 0.7V
*.IC X_dot.X_oneweight.v(q\[0\])= 0.7V

.nodeset  v(X_mul0.X_dot0.X_oneweight.q[0])=0.7V
.nodeset  v(X_mul0.X_dot0.X_oneweight.q[1])=0.0V
.nodeset  v(X_mul0.X_dot0.X_oneweight.q[2])=0.7V
.nodeset  v(X_mul0.X_dot0.X_oneweight.q[3])=0.0V

.nodeset  v(X_mul1.X_dot0.X_oneweight.q[0])=0V
.nodeset  v(X_mul1.X_dot0.X_oneweight.q[1])=0.7V
.nodeset  v(X_mul1.X_dot0.X_oneweight.q[2])=0V
.nodeset  v(X_mul1.X_dot0.X_oneweight.q[3])=0.7V

.nodeset  v(X_mul2.X_dot0.X_oneweight.q[0])=0.7V
.nodeset  v(X_mul2.X_dot0.X_oneweight.q[1])=0.0V
.nodeset  v(X_mul2.X_dot0.X_oneweight.q[2])=0.7V
.nodeset  v(X_mul2.X_dot0.X_oneweight.q[3])=0.0V

.nodeset  v(X_mul3.X_dot0.X_oneweight.q[0])=0V
.nodeset  v(X_mul3.X_dot0.X_oneweight.q[1])=0.7V
.nodeset  v(X_mul3.X_dot0.X_oneweight.q[2])=0V
.nodeset  v(X_mul3.X_dot0.X_oneweight.q[3])=0.7V



.option VCD
.LPRINT (0.3 0.5) v(W_b[0]) v(W_b[1]) v(W_b[2]) v(W_b[3])


********************************
**       option ctrl          **
********************************s
.tran 0.01ns 100ns
.op
.option post=vcd 
.option probe
.probe v(*) level=-1
.end 

