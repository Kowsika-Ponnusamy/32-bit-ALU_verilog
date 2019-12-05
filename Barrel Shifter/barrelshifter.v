module bs(out,sel,rotate,in,clk,reset);
input [31:0]in;
input [4:0]sel;
input clk,reset,rotate;
output [31:0]out;
wire [31:0] out1,in1;
reversal32 r1(in1,1'b1,in);
bsl bs(out1,sel,rotate,in1,clk,reset);
reversal32 r2(out,1'b1,out1);
endmodule