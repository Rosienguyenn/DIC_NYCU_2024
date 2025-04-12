module Adder_Tree(
    rst_n,
    clk,
    // input
    T_w1, T_w2, T_w3, T_w4, 
    T_w5, T_w6, T_w7, T_w8, 
    T_w9, T_w10, T_w11, T_w12, 
    T_w13, T_w14, T_w15, T_w16, 
    T_w17, T_w18, T_w19, T_w20, 
    T_w21, T_w22, T_w23, T_w24, 
    T_w25, T_w26, T_w27, T_w28, 
    T_w29, T_w30, T_w31, T_w32,
    //out
    P
);

input            rst_n;
input            clk;

input     [3:0] T_w1, T_w2, T_w3, T_w4, 
                T_w5, T_w6, T_w7, T_w8, 
                T_w9, T_w10, T_w11, T_w12, 
                T_w13, T_w14, T_w15, T_w16, 
                T_w17, T_w18, T_w19, T_w20, 
                T_w21, T_w22, T_w23, T_w24, 
                T_w25, T_w26, T_w27, T_w28, 
                T_w29, T_w30, T_w31, T_w32; 

integer i,j;

output reg [8:0] P;

 //////////////////////////////

//*============================================*//
//*              pipeline registers            *//
//*============================================*//
    reg [4:0] sum_level1 [15:0]; 
    reg [5:0] sum_level2 [7:0]; 
    reg [6:0] sum_level3 [3:0]; 
    reg [7:0] sum_level4 [1:0]; 
    

//*============================================*//
//*                LEVEL 1                     *//
//*============================================*//
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for(i=0; i<16; i=i+1)begin
                sum_level1[i] <= 0;
        end
        end else begin
            sum_level1[0] <= T_w1 + T_w2;
            sum_level1[1] <= T_w3 + T_w4;
            sum_level1[2] <= T_w5 + T_w6;
            sum_level1[3] <= T_w7 + T_w8;
            sum_level1[4] <= T_w9 + T_w10;
            sum_level1[5] <= T_w11 + T_w12;
            sum_level1[6] <= T_w13 + T_w14;
            sum_level1[7] <= T_w15 + T_w16;
            sum_level1[8] <= T_w17 + T_w18;
            sum_level1[9] <= T_w19 + T_w20;
            sum_level1[10] <= T_w21 + T_w22;
            sum_level1[11] <= T_w23 + T_w24;
            sum_level1[12] <= T_w25 + T_w26;
            sum_level1[13] <= T_w27 + T_w28;
            sum_level1[14] <= T_w29 + T_w30;
            sum_level1[15] <= T_w31 + T_w32;
        end
    end

//*============================================*//
//*                LEVEL 2                     *//
//*============================================*//
    always @(posedge clk or negedge rst_n) begin
       if (!rst_n) begin
            for(i=0; i<8; i=i+1)begin
                sum_level2[i] <= 0;
        end
        end else begin
            sum_level2[0] <= sum_level1[0] + sum_level1[1];
            sum_level2[1] <= sum_level1[2] + sum_level1[3];
            sum_level2[2] <= sum_level1[4] + sum_level1[5];
            sum_level2[3] <= sum_level1[6] + sum_level1[7];
            sum_level2[4] <= sum_level1[8] + sum_level1[9];
            sum_level2[5] <= sum_level1[10] + sum_level1[11];
            sum_level2[6] <= sum_level1[12] + sum_level1[13];
            sum_level2[7] <= sum_level1[14] + sum_level1[15];
        end
    end

//*============================================*//
//*                LEVEL 3                     *//
//*============================================*//
    always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
            for(i=0; i<4; i=i+1)begin
                sum_level3[i] <= 0;
        end
    end else begin
            sum_level3[0] <= sum_level2[0] + sum_level2[1];
            sum_level3[1] <= sum_level2[2] + sum_level2[3];
            sum_level3[2] <= sum_level2[4] + sum_level2[5];
            sum_level3[3] <= sum_level2[6] + sum_level2[7];
        end
    end
//*============================================*//
//*                LEVEL 4                     *//
//*============================================*//

    always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
            for(i=0; i<2; i=i+1)begin
                sum_level4[i] <= 0;
        end
    end else begin
            sum_level4[0] <= sum_level3[0] + sum_level3[1];
            sum_level4[1] <= sum_level3[2] + sum_level3[3];
        end
    end
//*============================================*//
//*           pipeline  outputs                *//
//*============================================*//
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            P <= 9'd0;
        end else begin
            P <= sum_level4[0] + sum_level4[1];
        end
    end
endmodule
