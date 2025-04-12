.protect
.include '7nm_TT.pm'
.vec 'pattern_test1.vec'
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

*******************************
*         TESTBED             *
*******************************
*----recall circuit--------
X_dot In00_b[3] Output[0] Output[1] Output[2] Output[3] W0[0] W0[1] W0[2] W0[3] One_dot
X_buffer In00[3] In00_b[3] Buffer 

*----spply votlage---------
*V_in In_before_buf[3] 0 PULSE 0V  0.7V 0.1ns 0.01n 0.01n 1n 2n
V_vdd VDD 0 0.7V
*.IC X_dot.X_oneweight.v(q\[0\])= 0.7V

.nodeset  v(X_dot.X_oneweight.q[0])=0.7V
.nodeset  v(X_dot.X_oneweight.q[1])=0.0V
.nodeset  v(X_dot.X_oneweight.q[2])=0.7V
.nodeset  v(X_dot.X_oneweight.q[3])=0.0V

.option VCD
.LPRINT (0.3 0.5) v(W0[0]) v(W0[1]) v(W0[2]) v(W0[3])

********************************
**       option ctrl          **
********************************s
.tran 0.01ns 100ns
.op
.option post=vcd 
.option probe
.probe v(*) level=-1
.end 
