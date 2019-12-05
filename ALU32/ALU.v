`timescale 1ns / 1ps
module alu(out,a,b,opcode,clk,reset);
input [31:0] a,b;
input [2:0] opcode;
input clk,reset;
output [31:0] out;
wire [31:0] a,b;
wire [2:0] opcode;
wire [31:0] s[5:0];
wire [31:0] out1,out2,out3,out4,out5,out6,out7,out8,out9a,out9b,nb;
wire [63:0] out9;
wire cout;
wire x,t;
assign x=1;
assign t=1;
assign nb=~b;

prefix32pipe p2(out1,cout,a,b,1'b0,clk,reset);
prefix32pipe p3(out2,cout,a,nb,1'b1,clk,reset);
/*wallacepipe32 w(out9,a,b,clk,reset);
assign out9a=out9[31:0];
assign out9b=out9[63:32];*/

fpaddpipe fpadd(out3,a,b,clk,reset);
fpmultipipe fpmul(out4,a,b,clk,reset);


bsr shr(out5,b[4:0],0,a,clk,reset);
bsr rr(out6,b[4:0],1'b1,a,clk,reset);
bsl shl(out7,b[4:0],1'b0,a,clk,reset);
bsl rl(out8,b[4:0],1'b1,a,clk,reset);
/*assign OUT7 = A & B;
assign OUT8 = A | B;*/

/*Define operation codes, there's only 9 so far
parameter   INT ADD 	= 3'b000;
parameter   INT SUB 	= 3'b001;
parameter   FLOAT ADD 	= 3'b010;
parameter   FLOAT MUL 	= 3'b011;
parameter   SHIFT RIGHT = 3'b100;
parameter   ROTATERIGHT = 3'b101;
parameter   SHIFT LEFT	= 3'b110;
parameter   ROTATE LEFT = 3'b111;*/

mux32 m1(s[0],opcode[0],out1,out2);
mux32 m2(s[1],opcode[0],out3,out4);
mux32 m3(s[2],opcode[0],out5,out6);
mux32 m4(s[3],opcode[0],out7,out8);
	
mux32 m5(s[4],opcode[1],s[0],s[1]);
mux32 m6(s[5],opcode[1],s[2],s[3]);
	
mux32 m7(out,opcode[2],s[4],s[5]);

endmodule
