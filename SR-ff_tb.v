`timescale 1ns / 1ps

module tb_SR_flipflop;
    reg clk;
    reg rst_n;
    reg s;
    reg r;
    wire q;
    wire q_bar;
    SR_flipflop uut (
        .clk(clk),
        .rst_n(rst_n),
        .s(s),
        .r(r),
        .q(q),
        .q_bar(q_bar)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
 
        rst_n = 0; 
        s = 0;
        r = 0;
        #10; 
        rst_n = 1; 
        #10;

        s = 1; r = 0; 
        #10;
        s = 0; r = 1; 
        #10;
        s = 0; r = 0; 
        #10;
        s = 1; r = 1; 
        #10;
        s = 0; r = 0; 
        #10;
        $finish;
    end
endmodule
