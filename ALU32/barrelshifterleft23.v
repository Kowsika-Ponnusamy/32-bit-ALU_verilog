module bsl23(out,sel,in,clk,reset);
input [22:0]in;
input [4:0]sel;
input clk,reset;
output [22:0] out;
wire [22:0]out1,in1;
reversal23 r1(in1,1'b1,in);
bsr23 bs(out1,sel,in1,clk,reset);
reversal23 r2(out,1'b1,out1);
endmodule