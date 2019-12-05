module fpmultipipe(out,a,b,clk,reset);
input [31:0]a,b;
input clk,reset;
output [31:0]out;
wire [31:0]exp1,exp2,expf,exp,dexp1,dexp2,dexpf,dexp,d2expf,d3expf,d4expf;
wire [31:0] a1,b1,da1,db1,aa,bb,aaa,bbb,aaaa,bbbb,a5,b5,a6,b6;
wire [63:0] man,dman;
wire cout1,cout2,dcout1,dcout2;

assign dexp1[7:0]=a[8:1];
assign dexp1[31:8]=24'd0;
assign dexp2[7:0]=b[8:1];
assign dexp2[31:8]=24'd0;
dff32 dff00(dexp1,clk,reset,exp1);
dff32 dff01(dexp2,clk,reset,exp2);
dff32 dff02(a,clk,reset,aa);
dff32 dff03(b,clk,reset,bb);

prefix32pipe p1(dexp,cout1,exp1,exp2,1'b0,clk,reset);
dff32 dff04(dexp,clk,reset,exp);
dff32 dff05(aa,clk,reset,aaa);
dff32 dff06(bb,clk,reset,bbb);
prefix32pipe p2(dexpf,cout2,exp,32'b11111111111111111111111110000000,1'b1,clk,reset);
dff32 dff07(dexpf,clk,reset,d2expf);
dff32 dff08(aaa,clk,reset,aaaa);
dff32 dff09(bbb,clk,reset,bbbb);

assign da1[0]=1'b1;
assign da1[23:1]=aaaa[31:9];
assign da1[31:24]=9'b0;
assign db1[0]=1'b1;
assign db1[23:1]=bbbb[31:9];
assign db1[31:24]=9'd0;
dff32 dff10(da1,clk,reset,a1);
dff32 dff11(db1,clk,reset,b1);
dff32 dff12(aaaa,clk,reset,a5);
dff32 dff13(bbbb,clk,reset,b5);
dff32 dff14(d2expf,clk,reset,d3expf);

wallacepipe32 w1(dman,a1,b1,clk,1'b1);
dff63 dff16(dman,clk,reset,man);
dff32 dff17(a5,clk,reset,a6);
dff32 dff18(b5,clk,reset,b6);
dff32 dff19(d3expf,clk,reset,d4expf);

assign out[0]=a6[0]^b6[0];
assign out[8:1]=d4expf[7:0];
assign out[31:9]=man[23:1];
endmodule