module Accumulators(
    rst_n,
    clk,
    // input
    P,
    //out
    out_valid,
    O
);
input rst_n;
input clk;
input [8:0] P;

output reg out_valid;
output reg [12:0] O;

reg [4:0]ctr;
//reg IN_valid;
reg flag ;

//*============================================*//
//*                Accumulator                 *//
//*============================================*//
    always @(posedge clk  or negedge rst_n) begin
        if (!rst_n) begin
            flag <= 1'd0;
        end else if(ctr == 4'd8)
                flag <= 1'd1;
        else
            flag <= flag;    
    end
    
    always @(posedge clk or negedge rst_n ) begin
        if(!rst_n)
            ctr  <= 4'd0;
        else if( ctr == 4'd3 && flag)
            ctr <= 4'd0;  
        else if(ctr <= 4'd8)
            ctr <=  ctr + 3'd1;    
        else
            ctr <= 4'd0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            out_valid  <= 1'd0;
        else if(ctr == 4'd8)
            out_valid <=  1'd1;
        else if(ctr == 4'd2 && flag)
            out_valid <=  1'd1;
        else
            out_valid <= 1'd0;
    end

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            O <= 13'd0;
        else if(ctr == 4'd9)
            O <= P;
        else if(ctr == 4'd3 && flag)
            O <= P;
        else
            O <= P + (O << 1);
    end
endmodule
