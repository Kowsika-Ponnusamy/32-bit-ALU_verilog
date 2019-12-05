module prefix16(s,cout,a,b,c);
input [15:0] a,b;
input c;
output[15:0] s;
output cout;
wire [15:0]p,g,k;
wire [15:0]x;
assign p=a^b;
assign g=a&b;
assign k=g|p;
wire g12,g34,g35,g36,g56,g78,g79,g710,g910,g1112,g1314,g711,g712,g713,g714,g1113,g1114;
wire k12,k34,k35,k36,k56,k78,k79,k710,k910,k1112,k1314,k711,k712,k713,k714,k1113,k1114;
assign x[0]=c;
dot d1(x[1],g[0],k[0],c);
circle c1(g[2],k[2],g[1],k[1],g12,k12);
circle c2(g[4],k[4],g[3],k[3],g34,k34);
circle c3(g[6],k[6],g[5],k[5],g56,k56);
circle c4(g[8],k[8],g[7],k[7],g78,k78);
circle c5(g[10],k[10],g[9],k[9],g910,k910);
circle c6(g[12],k[12],g[11],k[11],g1112,k1112);
circle c7(g[14],k[14],g[13],k[13],g1314,k1314);

dot d2(x[2],g[1],k[1],x[1]);
dot d3(x[3],g12,k12,x[1]);
circle c8(g[5],k[5],g34,k34,g35,k35);
circle c9(g56,k56,g34,k34,g36,k36);
circle c10(g[9],k[9],g78,k78,g79,k79);
circle c11(g910,k910,g78,k78,g710,k710);
circle c12(g[13],k[13],g1112,k1112,g1113,k1113);
circle c13(g1314,k1314,g1112,k1112,g1114,k1114);

dot d4(x[4],g[3],k[3],x[3]);
dot d5(x[5],g34,k34,x[3]);
dot d6(x[6],g35,k35,x[3]);
dot d7(x[7],g36,k36,x[3]);
circle c14(g[11],k[11],g710,k710,g711,k711);
circle c15(g1112,k1112,g710,k710,g712,k712);
circle c16(g1113,k1113,g710,k710,g713,k713);
circle c17(g1114,k1114,g710,k710,g714,k714);

dot d8(x[8],g[7],k[7],x[7]);
dot d9(x[9],g78,k78,x[7]);
dot d10(x[10],g79,k79,x[7]);
dot d11(x[11],g710,k710,x[7]);
dot d12(x[12],g711,k711,x[7]);
dot d13(x[13],g712,k712,x[7]);
dot d14(x[14],g713,k713,x[7]);
dot d15(x[15],g714,k714,x[7]);
dot d16(cout,g[15],k[15],x[15]);
assign s=x^p;
endmodule