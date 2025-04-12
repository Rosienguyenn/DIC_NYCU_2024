`timescale 1ns/1ps

`ifdef RTL
    `define CYCLE_TIME 1
`endif
`ifdef GATE
    `define CYCLE_TIME 0.7
`endif

module PATTERN(
    output reg clk,
    output reg rst_n,
    /*
    output reg [3:0] T_w1, T_w2, T_w3, T_w4, T_w5, T_w6, T_w7, T_w8,
    output reg [3:0] T_w9, T_w10, T_w11, T_w12, T_w13, T_w14, T_w15, T_w16,
    output reg [3:0] T_w17, T_w18, T_w19, T_w20, T_w21, T_w22, T_w23, T_w24,
    output reg [3:0] T_w25, T_w26, T_w27, T_w28, T_w29, T_w30, T_w31, T_w32,
    */
    output reg [3:0] T1_w1, T1_w2, T1_w3, T1_w4, 
            T1_w5, T1_w6, T1_w7, T1_w8, 
            T1_w9, T1_w10, T1_w11, T1_w12, 
            T1_w13, T1_w14, T1_w15, T1_w16, 
            T1_w17, T1_w18, T1_w19, T1_w20, 
            T1_w21, T1_w22, T1_w23, T1_w24, 
            T1_w25, T1_w26, T1_w27, T1_w28, 
            T1_w29, T1_w30, T1_w31, T1_w32,
    output reg [3:0] T2_w1, T2_w2, T2_w3, T2_w4, 
            T2_w5, T2_w6, T2_w7, T2_w8, 
            T2_w9, T2_w10, T2_w11, T2_w12, 
            T2_w13, T2_w14, T2_w15, T2_w16, 
            T2_w17, T2_w18, T2_w19, T2_w20, 
            T2_w21, T2_w22, T2_w23, T2_w24, 
            T2_w25, T2_w26, T2_w27, T2_w28, 
            T2_w29, T2_w30, T2_w31, T2_w32,
    output reg [3:0] T3_w1, T3_w2, T3_w3, T3_w4, 
            T3_w5, T3_w6, T3_w7, T3_w8, 
            T3_w9, T3_w10, T3_w11, T3_w12, 
            T3_w13, T3_w14, T3_w15, T3_w16, 
            T3_w17, T3_w18, T3_w19, T3_w20, 
            T3_w21, T3_w22, T3_w23, T3_w24, 
            T3_w25, T3_w26, T3_w27, T3_w28, 
            T3_w29, T3_w30, T3_w31, T3_w32,
    output reg [3:0] T4_w1, T4_w2, T4_w3, T4_w4, 
            T4_w5, T4_w6, T4_w7, T4_w8, 
            T4_w9, T4_w10, T4_w11, T4_w12, 
            T4_w13, T4_w14, T4_w15, T4_w16, 
            T4_w17, T4_w18, T4_w19, T4_w20, 
            T4_w21, T4_w22, T4_w23, T4_w24, 
            T4_w25, T4_w26, T4_w27, T4_w28, 
            T4_w29, T4_w30, T4_w31, T4_w32,           

    input  out_valid,
    /*
    input wire [12:0] O
    */
    input  [12:0]  O_1, O_2, O_3, O_4
    
);

integer input_num = 100;  
integer x, i;
integer pattern_num = 100;
integer fin,fout;
// Clock generation

initial clk = 0;

real CYCLE = `CYCLE_TIME;
always	#(CYCLE/2.0) clk = ~clk; //clock


// Test pattern generation
initial begin
    // Initialize signals
    rst_n = 0;
    /*
    T_w1 = 0;  T_w2 = 0;  T_w3 = 0;  T_w4 = 0;
    T_w5 = 0;  T_w6 = 0;  T_w7 = 0;  T_w8 = 0;
    T_w9 = 0;  T_w10 = 0; T_w11 = 0; T_w12 = 0;
    T_w13 = 0; T_w14 = 0; T_w15 = 0; T_w16 = 0;
    T_w17 = 0; T_w18 = 0; T_w19 = 0; T_w20 = 0;
    T_w21 = 0; T_w22 = 0; T_w23 = 0; T_w24 = 0;
    T_w25 = 0; T_w26 = 0; T_w27 = 0; T_w28 = 0;
    T_w29 = 0; T_w30 = 0; T_w31 = 0; T_w32 = 0;
*/
    T1_w1 = 0;  T1_w2 = 0;  T1_w3 = 0;  T1_w4 = 0;
    T1_w5 = 0;  T1_w6 = 0;  T1_w7 = 0;  T1_w8 = 0;
    T1_w9 = 0;  T1_w10 = 0; T1_w11 = 0; T1_w12 = 0;
    T1_w13 = 0; T1_w14 = 0; T1_w15 = 0; T1_w16 = 0;
    T1_w17 = 0; T1_w18 = 0; T1_w19 = 0; T1_w20 = 0;
    T1_w21 = 0; T1_w22 = 0; T1_w23 = 0; T1_w24 = 0;
    T1_w25 = 0; T1_w26 = 0; T1_w27 = 0; T1_w28 = 0;
    T1_w29 = 0; T1_w30 = 0; T1_w31 = 0; T1_w32 = 0;

    T2_w1 = 0;  T2_w2 = 0;  T2_w3 = 0;  T2_w4 = 0;
    T2_w5 = 0;  T2_w6 = 0;  T2_w7 = 0;  T2_w8 = 0;
    T2_w9 = 0;  T2_w10 = 0; T2_w11 = 0; T2_w12 = 0;
    T2_w13 = 0; T2_w14 = 0; T2_w15 = 0; T2_w16 = 0;
    T2_w17 = 0; T2_w18 = 0; T2_w19 = 0; T2_w20 = 0;
    T2_w21 = 0; T2_w22 = 0; T2_w23 = 0; T2_w24 = 0;
    T2_w25 = 0; T2_w26 = 0; T2_w27 = 0; T2_w28 = 0;
    T2_w29 = 0; T2_w30 = 0; T2_w31 = 0; T2_w32 = 0;

    T3_w1 = 0;  T3_w2 = 0;  T3_w3 = 0;  T3_w4 = 0;
    T3_w5 = 0;  T3_w6 = 0;  T3_w7 = 0;  T3_w8 = 0;
    T3_w9 = 0;  T3_w10 = 0; T3_w11 = 0; T3_w12 = 0;
    T3_w13 = 0; T3_w14 = 0; T3_w15 = 0; T3_w16 = 0;
    T3_w17 = 0; T3_w18 = 0; T3_w19 = 0; T3_w20 = 0;
    T3_w21 = 0; T3_w22 = 0; T3_w23 = 0; T3_w24 = 0;
    T3_w25 = 0; T3_w26 = 0; T3_w27 = 0; T3_w28 = 0;
    T3_w29 = 0; T3_w30 = 0; T3_w31 = 0; T3_w32 = 0;

    T4_w1 = 0;  T4_w2 = 0;  T4_w3 = 0;  T4_w4 = 0;
    T4_w5 = 0;  T4_w6 = 0;  T4_w7 = 0;  T4_w8 = 0;
    T4_w9 = 0;  T4_w10 = 0; T4_w11 = 0; T4_w12 = 0;
    T4_w13 = 0; T4_w14 = 0; T4_w15 = 0; T4_w16 = 0;
    T4_w17 = 0; T4_w18 = 0; T4_w19 = 0; T4_w20 = 0;
    T4_w21 = 0; T4_w22 = 0; T4_w23 = 0; T4_w24 = 0;
    T4_w25 = 0; T4_w26 = 0; T4_w27 = 0; T4_w28 = 0;
    T4_w29 = 0; T4_w30 = 0; T4_w31 = 0; T4_w32 = 0;

    fin = $fopen("../verif/input_patterns.txt", "r");
    if (fin == 0) begin
        $display("Error: Cannot open input_pattern.txt");
        $finish;
    end

    fout = $fopen("../verif/output_patterns.txt", "r");
    if (fout == 0) begin
        $display("Error: Cannot open output_pattern.txt");
        $finish;
    end


    // Reset the design
    #20 rst_n = 1;

    for(i=0;i<pattern_num;i=i+1) begin
		read_file;
	end
    $fclose(fin);
	$fclose(fout);
    /*
    // Apply test patterns
    repeat (2000) begin
        @(posedge clk);
        T_w1  = $random % 16;  T_w2  = $random % 16;  T_w3  = $random % 16;  T_w4  = $random % 16;
        T_w5  = $random % 16;  T_w6  = $random % 16;  T_w7  = $random % 16;  T_w8  = $random % 16;
        T_w9  = $random % 16;  T_w10 = $random % 16;  T_w11 = $random % 16;  T_w12 = $random % 16;
        T_w13 = $random % 16;  T_w14 = $random % 16;  T_w15 = $random % 16;  T_w16 = $random % 16;
        T_w17 = $random % 16;  T_w18 = $random % 16;  T_w19 = $random % 16;  T_w20 = $random % 16;
        T_w21 = $random % 16;  T_w22 = $random % 16;  T_w23 = $random % 16;  T_w24 = $random % 16;
        T_w25 = $random % 16;  T_w26 = $random % 16;  T_w27 = $random % 16;  T_w28 = $random % 16;
        T_w29 = $random % 16;  T_w30 = $random % 16;  T_w31 = $random % 16;  T_w32 = $random % 16;
    end
    */

    // Stop simulation after generating patterns
    
    #100;
    $finish;
end

// Monitor outputs
initial begin
    $monitor("Time=%0t | out_valid=%b | O_1 =%d O_2 =%d O_3 =%d O_4 =%d", $time, out_valid, O_1, O_2, O_3, O_4);
end
/*
task read_file; begin
	//for(j=0;j<input_num;j=j+1) begin
		@(negedge clk)
		x = $fscanf(fin,"%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d "
                    ,T_w1 ,T_w2 ,T_w3 ,T_w4 ,T_w5 ,T_w6 ,T_w7 ,T_w8 ,T_w9 ,T_w10 ,T_w11 ,T_w12 ,T_w13 ,T_w14 ,T_w15 ,T_w16 ,T_w17 ,T_w18 ,T_w19 ,T_w20 ,T_w21 ,T_w22 ,T_w23 ,T_w24 ,T_w25 ,T_w26 ,T_w27 ,T_w28 ,T_w29 ,T_w30 ,T_w31 ,T_w32);
	//end
end
endtask
*/
task read_file; begin
	//for(j=0;j<input_num;j=j+1) begin
		@(negedge clk)
		x = $fscanf(fin,"%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d"
            ,T1_w1, T1_w2, T1_w3, T1_w4, 
            T1_w5, T1_w6, T1_w7, T1_w8, 
            T1_w9, T1_w10, T1_w11, T1_w12, 
            T1_w13, T1_w14, T1_w15, T1_w16, 
            T1_w17, T1_w18, T1_w19, T1_w20, 
            T1_w21, T1_w22, T1_w23, T1_w24, 
            T1_w25, T1_w26, T1_w27, T1_w28, 
            T1_w29, T1_w30, T1_w31, T1_w32,
            T2_w1, T2_w2, T2_w3, T2_w4, 
            T2_w5, T2_w6, T2_w7, T2_w8, 
            T2_w9, T2_w10, T2_w11, T2_w12, 
            T2_w13, T2_w14, T2_w15, T2_w16, 
            T2_w17, T2_w18, T2_w19, T2_w20, 
            T2_w21, T2_w22, T2_w23, T2_w24, 
            T2_w25, T2_w26, T2_w27, T2_w28, 
            T2_w29, T2_w30, T2_w31, T2_w32,
            T3_w1, T3_w2, T3_w3, T3_w4, 
            T3_w5, T3_w6, T3_w7, T3_w8, 
            T3_w9, T3_w10, T3_w11, T3_w12, 
            T3_w13, T3_w14, T3_w15, T3_w16, 
            T3_w17, T3_w18, T3_w19, T3_w20, 
            T3_w21, T3_w22, T3_w23, T3_w24, 
            T3_w25, T3_w26, T3_w27, T3_w28, 
            T3_w29, T3_w30, T3_w31, T3_w32,
            T4_w1, T4_w2, T4_w3, T4_w4, 
            T4_w5, T4_w6, T4_w7, T4_w8, 
            T4_w9, T4_w10, T4_w11, T4_w12, 
            T4_w13, T4_w14, T4_w15, T4_w16, 
            T4_w17, T4_w18, T4_w19, T4_w20, 
            T4_w21, T4_w22, T4_w23, T4_w24, 
            T4_w25, T4_w26, T4_w27, T4_w28, 
            T4_w29, T4_w30, T4_w31, T4_w32
            
            );
	//end
end
endtask


endmodule
