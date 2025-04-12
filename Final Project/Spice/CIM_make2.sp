.protect
.include '7nm_TT.pm'
.vec 'pattern_test2.vec'
.unprotect
.global VDD VSS
.param VDD = 0.7 

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
.subckt CIM_weight Input Output[3] Output[2] Output[1] Output[0] qb[3] qb[2] qb[1] qb[0]
    X_bit0 Input Output[0] WL[0] BL[0] BLB[0] q[0] qb[0] CIM_cell
    X_bit1 Input Output[1] WL[0] BL[1] BLB[1] q[1] qb[1] CIM_cell
    X_bit2 Input Output[2] WL[0] BL[2] BLB[2] q[2] qb[2] CIM_cell
    X_bit3 Input Output[3] WL[0] BL[3] BLB[3] q[3] qb[3] CIM_cell
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
.SUBCKT mul In_b W_b[0] W_b[1] W_b[2] W_b[3] Out0[0] Out0[1] Out0[2] Out0[3] Out1[0] Out1[1] Out1[2] Out1[3] Out2[0] Out2[1] Out2[2] Out2[3] Out3[0] Out3[1] Out3[2] Out3[3]

X_dot0 In_b Out0[3] Out0[2] Out0[1] Out0[0] W_b[3] W_b[2] W_b[1] W_b[0] CIM_weight
X_dot1 In_b Out1[3] Out1[2] Out1[1] Out1[0] W_b[3] W_b[2] W_b[1] W_b[0] CIM_weight
X_dot2 In_b Out2[3] Out2[2] Out2[1] Out2[0] W_b[3] W_b[2] W_b[1] W_b[0] CIM_weight
X_dot3 In_b Out1[3] Out1[2] Out1[1] Out1[0] W_b[3] W_b[2] W_b[1] W_b[0] CIM_weight 

.ends

*subcircuit for 4 input * 4 weights 

.SUBCKT mul4_4 In0_b[0] In0_b[1] In0_b[2] In0_b[3] 
+ W0_0b[0] W0_0b[1] W0_0b[2] W0_0b[3] W0_1b[0] W0_1b[1] W0_1b[2] W0_1b[3] W0_2b[0] W0_2b[1] W0_2b[2] W0_2b[3] W0_3b[0] W0_3b[1] W0_3b[2] W0_3b[3] 
+ Out00[0] Out00[1] Out00[2] Out00[3] Out01[0] Out01[1] Out01[2] Out01[3] Out02[0] Out02[1] Out02[2] Out02[3] Out03[0] Out03[1] Out03[2] Out03[3]
+ Out10[0] Out10[1] Out10[2] Out10[3] Out11[0] Out11[1] Out11[2] Out11[3] Out12[0] Out12[1] Out12[2] Out12[3] Out13[0] Out13[1] Out13[2] Out13[3] 
+ Out20[0] Out20[1] Out20[2] Out20[3] Out21[0] Out21[1] Out21[2] Out21[3] Out22[0] Out22[1] Out22[2] Out22[3] Out23[0] Out23[1] Out23[2] Out23[3]
+ Out30[0] Out30[1] Out30[2] Out30[3] Out31[0] Out31[1] Out31[2] Out31[3] Out32[0] Out32[1] Out32[2] Out32[3] Out33[0] Out33[1] Out33[2] Out33[3]
X_mul0 In0_b[0] W0_0b[0] W0_0b[1] W0_0b[2] W0_0b[3] Out00[0] Out00[1] Out00[2] Out00[3] Out01[0] Out01[1] Out01[2] Out01[3] Out02[0] Out02[1] Out02[2] Out02[3] Out03[0] Out03[1] Out03[2] Out03[3] mul 
X_mul1 In0_b[1] W0_1b[0] W0_1b[1] W0_1b[2] W0_1b[3] Out10[0] Out10[1] Out10[2] Out10[3] Out11[0] Out11[1] Out11[2] Out11[3] Out12[0] Out12[1] Out12[2] Out12[3] Out13[0] Out13[1] Out13[2] Out13[3] mul 
X_mul2 In0_b[2] W0_2b[0] W0_2b[1] W0_2b[2] W0_2b[3] Out20[0] Out20[1] Out20[2] Out20[3] Out21[0] Out21[1] Out21[2] Out21[3] Out22[0] Out22[1] Out22[2] Out22[3] Out23[0] Out23[1] Out23[2] Out23[3] mul
X_mul3 In0_b[3] W0_3b[0] W0_3b[1] W0_3b[2] W0_3b[3] Out30[0] Out30[1] Out30[2] Out30[3] Out31[0] Out31[1] Out31[2] Out31[3] Out32[0] Out32[1] Out32[2] Out32[3] Out33[0] Out33[1] Out33[2] Out33[3] mul
.ends 

*******************************
*         TESTBED             *
*******************************
*----recall circuit--------
.SUBCKT Buffer_4b In[3] In[2] In[1] In[0] In0_b[3] In0_b[2] In0_b[1] In0_b[0]
X_buffer3 In[3] In0_b[3] Buffer 
X_buffer2 In[2] In0_b[2] Buffer 
X_buffer1 In[1] In0_b[1] Buffer 
X_buffer0 In[0] In0_b[0] Buffer 
.ends 

X_buf In[3] In[2] In[1] In[0] In0_b[3] In0_b[2] In0_b[1] In0_b[0] Buffer_4b 
X_mul4_4 In0_b[0] In0_b[1] In0_b[2] In0_b[3] 
+ W0_0b[0] W0_0b[1] W0_0b[2] W0_0b[3] W0_1b[0] W0_1b[1] W0_1b[2] W0_1b[3] W0_2b[0] W0_2b[1] W0_2b[2] W0_2b[3] W0_3b[0] W0_3b[1] W0_3b[2] W0_3b[3] 
+ Out00[0] Out00[1] Out00[2] Out00[3] Out01[0] Out01[1] Out01[2] Out01[3] Out02[0] Out02[1] Out02[2] Out02[3] Out03[0] Out03[1] Out03[2] Out03[3]
+ Out10[0] Out10[1] Out10[2] Out10[3] Out11[0] Out11[1] Out11[2] Out11[3] Out12[0] Out12[1] Out12[2] Out12[3] Out13[0] Out13[1] Out13[2] Out13[3] 
+ Out20[0] Out20[1] Out20[2] Out20[3] Out21[0] Out21[1] Out21[2] Out21[3] Out22[0] Out22[1] Out22[2] Out22[3] Out23[0] Out23[1] Out23[2] Out23[3]
+ Out30[0] Out30[1] Out30[2] Out30[3] Out31[0] Out31[1] Out31[2] Out31[3] Out32[0] Out32[1] Out32[2] Out32[3] Out33[0] Out33[1] Out33[2] Out33[3] mul4_4


*----spply votlage---------
*V_in In_before_buf[3] 0 PULSE 0V  0.7V 0.1ns 0.01n 0.01n 1n 2n
V_vdd VDD 0 0.7V
*.IC X_dot.X_oneweight.v(q\[0\])= 0.7V

.nodeset  v(X_mul4_4.X_mul0.X_dot0.q[0])=0.7V
.nodeset  v(X_mul4_4.X_mul0.X_dot0.q[1])=0.0V
.nodeset  v(X_mul4_4.X_mul0.X_dot0.q[2])=0.7V
.nodeset  v(X_mul4_4.X_mul0.X_dot0.q[3])=0.0V

.nodeset  v(X_mul4_4.X_mul1.X_dot0.q[0])=0V
.nodeset  v(X_mul4_4.X_mul1.X_dot0.q[1])=0.7V
.nodeset  v(X_mul4_4.X_mul1.X_dot0.q[2])=0V
.nodeset  v(X_mul4_4.X_mul1.X_dot0.q[3])=0.7V

.nodeset  v(X_mul4_4.X_mul2.X_dot0.q[0])=0.7V
.nodeset  v(X_mul4_4.X_mul2.X_dot0.q[1])=0.0V
.nodeset  v(X_mul4_4.X_mul2.X_dot0.q[2])=0.7V
.nodeset  v(X_mul4_4.X_mul2.X_dot0.q[3])=0.0V

.nodeset  v(X_mul4_4.X_mul3.X_dot0.q[0])=0V
.nodeset  v(X_mul4_4.X_mul3.X_dot0.q[1])=0.7V
.nodeset  v(X_mul4_4.X_mul3.X_dot0.q[2])=0V
.nodeset  v(X_mul4_4.X_mul3.X_dot0.q[3])=0.7V


.option VCD
.LPRINT (0.3 0.5) v(W0_0b[0]) v(W0_0b[1]) v(W0_0b[2]) v(W0_0b[3])  
+ (0.3 0.5) v(W0_1b[0]) v(W0_1b[1]) v(W0_1b[2]) v(W0_1b[3]) 
+ (0.3 0.5) v(W0_2b[0]) v(W0_2b[1]) v(W0_2b[2]) v(W0_2b[3]) 
* .LPRINT (0.3 0.5) v(W0_3b[0]) v(W0_3b[1]) v(W0_3b[2]) v(W0_3b[3]) 

********************************
**       option ctrl          **
********************************s
.tran 0.01ns 100ns
.op
.option post=vcd 
.option probe
.probe v(*) level=-1
.end 
