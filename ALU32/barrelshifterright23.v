module bsr23(out1,select,in1,clk,reset);
input [22:0]in1;
input [4:0]select;
input clk,reset;
output [22:0]out1;
wire [23:0]x,x1,x2,x3,xv,xv1,xv2,xv3,in,out;
wire [4:0]sel0,sel1,sel2,sel3,sel4;
assign in[22:0]=in1;
assign in[23]=1'b1;
d_ff s1(select[0],clk,reset,sel0[0]);
d_ff s2(select[1],clk,reset,sel0[1]);
d_ff s3(select[2],clk,reset,sel0[2]);
d_ff s4(select[3],clk,reset,sel0[3]);
d_ff s5(select[4],clk,reset,sel0[4]);
mux m000(xv[0],sel0[0],in[0],in[1]);
mux m001(xv[1],sel0[0],in[1],in[2]);
mux m002(xv[2],sel0[0],in[2],in[3]);
mux m003(xv[3],sel0[0],in[3],in[4]);
mux m004(xv[4],sel0[0],in[4],in[5]);
mux m005(xv[5],sel0[0],in[5],in[6]);
mux m006(xv[6],sel0[0],in[6],in[7]);
mux m007(xv[7],sel0[0],in[7],in[8]);
mux m008(xv[8],sel0[0],in[8],in[9]);
mux m009(xv[9],sel0[0],in[9],in[10]);
mux m010(xv[10],sel0[0],in[10],in[11]);
mux m011(xv[11],sel0[0],in[11],in[12]);
mux m012(xv[12],sel0[0],in[12],in[13]);
mux m013(xv[13],sel0[0],in[13],in[14]);
mux m014(xv[14],sel0[0],in[14],in[15]);
mux m015(xv[15],sel0[0],in[15],in[16]);
mux m016(xv[16],sel0[0],in[16],in[17]);
mux m017(xv[17],sel0[0],in[17],in[18]);
mux m018(xv[18],sel0[0],in[18],in[19]);
mux m019(xv[19],sel0[0],in[19],in[20]);
mux m020(xv[20],sel0[0],in[20],in[21]);
mux m021(xv[21],sel0[0],in[21],in[22]);
mux m022(xv[22],sel0[0],in[22],in[23]);
mux m023(xv[23],sel0[0],in[23],0);
d_ff d000(xv[0],clk,reset,x[0]);
d_ff d001(xv[1],clk,reset,x[1]);
d_ff d002(xv[2],clk,reset,x[2]);
d_ff d003(xv[3],clk,reset,x[3]);
d_ff d004(xv[4],clk,reset,x[4]);
d_ff d005(xv[5],clk,reset,x[5]);
d_ff d006(xv[6],clk,reset,x[6]);
d_ff d007(xv[7],clk,reset,x[7]);
d_ff d008(xv[8],clk,reset,x[8]);
d_ff d009(xv[9],clk,reset,x[9]);
d_ff d010(xv[10],clk,reset,x[10]);
d_ff d011(xv[11],clk,reset,x[11]);
d_ff d012(xv[12],clk,reset,x[12]);
d_ff d013(xv[13],clk,reset,x[13]);
d_ff d014(xv[14],clk,reset,x[14]);
d_ff d015(xv[15],clk,reset,x[15]);
d_ff d016(xv[16],clk,reset,x[16]);
d_ff d017(xv[17],clk,reset,x[17]);
d_ff d018(xv[18],clk,reset,x[18]);
d_ff d019(xv[19],clk,reset,x[19]);
d_ff d020(xv[20],clk,reset,x[20]);
d_ff d021(xv[21],clk,reset,x[21]);
d_ff d022(xv[22],clk,reset,x[22]);
d_ff d023(xv[23],clk,reset,x[23]);

d_ff s11(sel0[0],clk,reset,sel1[0]);
d_ff s12(sel0[1],clk,reset,sel1[1]);
d_ff s13(sel0[2],clk,reset,sel1[2]);
d_ff s14(sel0[3],clk,reset,sel1[3]);
d_ff s15(sel0[4],clk,reset,sel1[4]);
mux m100(xv1[0],sel1[1],x[0],x[2]);
mux m101(xv1[1],sel1[1],x[1],x[3]);
mux m102(xv1[2],sel1[1],x[2],x[4]);
mux m103(xv1[3],sel1[1],x[3],x[5]);
mux m104(xv1[4],sel1[1],x[4],x[6]);
mux m105(xv1[5],sel1[1],x[5],x[7]);
mux m106(xv1[6],sel1[1],x[6],x[8]);
mux m107(xv1[7],sel1[1],x[7],x[9]);
mux m108(xv1[8],sel1[1],x[8],x[10]);
mux m109(xv1[9],sel1[1],x[9],x[11]);
mux m110(xv1[10],sel1[1],x[10],x[12]);
mux m111(xv1[11],sel1[1],x[11],x[13]);
mux m112(xv1[12],sel1[1],x[12],x[14]);
mux m113(xv1[13],sel1[1],x[13],x[15]);
mux m114(xv1[14],sel1[1],x[14],x[16]);
mux m115(xv1[15],sel1[1],x[15],x[17]);
mux m116(xv1[16],sel1[1],x[16],x[18]);
mux m117(xv1[17],sel1[1],x[17],x[19]);
mux m118(xv1[18],sel1[1],x[18],x[20]);
mux m119(xv1[19],sel1[1],x[19],x[21]);
mux m120(xv1[20],sel1[1],x[20],x[22]);
mux m121(xv1[21],sel1[1],x[21],x[23]);
mux m122(xv1[22],sel1[1],x[22],0);
mux m123(xv1[23],sel1[1],x[23],0);
d_ff d100(xv1[0],clk,reset,x1[0]);
d_ff d101(xv1[1],clk,reset,x1[1]);
d_ff d102(xv1[2],clk,reset,x1[2]);
d_ff d103(xv1[3],clk,reset,x1[3]);
d_ff d104(xv1[4],clk,reset,x1[4]);
d_ff d105(xv1[5],clk,reset,x1[5]);
d_ff d106(xv1[6],clk,reset,x1[6]);
d_ff d107(xv1[7],clk,reset,x1[7]);
d_ff d108(xv1[8],clk,reset,x1[8]);
d_ff d109(xv1[9],clk,reset,x1[9]);
d_ff d110(xv1[10],clk,reset,x1[10]);
d_ff d111(xv1[11],clk,reset,x1[11]);
d_ff d112(xv1[12],clk,reset,x1[12]);
d_ff d113(xv1[13],clk,reset,x1[13]);
d_ff d114(xv1[14],clk,reset,x1[14]);
d_ff d115(xv1[15],clk,reset,x1[15]);
d_ff d116(xv1[16],clk,reset,x1[16]);
d_ff d117(xv1[17],clk,reset,x1[17]);
d_ff d118(xv1[18],clk,reset,x1[18]);
d_ff d119(xv1[19],clk,reset,x1[19]);
d_ff d120(xv1[20],clk,reset,x1[20]);
d_ff d121(xv1[21],clk,reset,x1[21]);
d_ff d122(xv1[22],clk,reset,x1[22]);
d_ff d123(xv1[23],clk,reset,x1[23]);

d_ff s21(sel1[0],clk,reset,sel2[0]);
d_ff s22(sel1[1],clk,reset,sel2[1]);
d_ff s23(sel1[2],clk,reset,sel2[2]);
d_ff s24(sel1[3],clk,reset,sel2[3]);
d_ff s25(sel1[4],clk,reset,sel2[4]);
mux m200(xv2[0],sel2[2],x1[0],x1[4]);
mux m201(xv2[1],sel2[2],x1[1],x1[5]);
mux m202(xv2[2],sel2[2],x1[2],x1[6]);
mux m203(xv2[3],sel2[2],x1[3],x1[7]);
mux m204(xv2[4],sel2[2],x1[4],x1[8]);
mux m205(xv2[5],sel2[2],x1[5],x1[9]);
mux m206(xv2[6],sel2[2],x1[6],x1[10]);
mux m207(xv2[7],sel2[2],x1[7],x1[11]);
mux m208(xv2[8],sel2[2],x1[8],x1[12]);
mux m209(xv2[9],sel2[2],x1[9],x1[13]);
mux m210(xv2[10],sel2[2],x1[10],x1[14]);
mux m211(xv2[11],sel2[2],x1[11],x1[15]);
mux m212(xv2[12],sel2[2],x1[12],x1[16]);
mux m213(xv2[13],sel2[2],x1[13],x1[17]);
mux m214(xv2[14],sel2[2],x1[14],x1[18]);
mux m215(xv2[15],sel2[2],x1[15],x1[19]);
mux m216(xv2[16],sel2[2],x1[16],x1[20]);
mux m217(xv2[17],sel2[2],x1[17],x1[21]);
mux m218(xv2[18],sel2[2],x1[18],x1[22]);
mux m219(xv2[19],sel2[2],x1[19],x1[23]);
mux m220(xv2[20],sel2[2],x1[20],0);
mux m221(xv2[21],sel2[2],x1[21],0);
mux m222(xv2[22],sel2[2],x1[22],0);
mux m223(xv2[23],sel2[2],x1[23],0);
d_ff d200(xv2[0],clk,reset,x2[0]);
d_ff d201(xv2[1],clk,reset,x2[1]);
d_ff d202(xv2[2],clk,reset,x2[2]);
d_ff d203(xv2[3],clk,reset,x2[3]);
d_ff d204(xv2[4],clk,reset,x2[4]);
d_ff d205(xv2[5],clk,reset,x2[5]);
d_ff d206(xv2[6],clk,reset,x2[6]);
d_ff d207(xv2[7],clk,reset,x2[7]);
d_ff d208(xv2[8],clk,reset,x2[8]);
d_ff d209(xv2[9],clk,reset,x2[9]);
d_ff d210(xv2[10],clk,reset,x2[10]);
d_ff d211(xv2[11],clk,reset,x2[11]);
d_ff d212(xv2[12],clk,reset,x2[12]);
d_ff d213(xv2[13],clk,reset,x2[13]);
d_ff d214(xv2[14],clk,reset,x2[14]);
d_ff d215(xv2[15],clk,reset,x2[15]);
d_ff d216(xv2[16],clk,reset,x2[16]);
d_ff d217(xv2[17],clk,reset,x2[17]);
d_ff d218(xv2[18],clk,reset,x2[18]);
d_ff d219(xv2[19],clk,reset,x2[19]);
d_ff d220(xv2[20],clk,reset,x2[20]);
d_ff d221(xv2[21],clk,reset,x2[21]);
d_ff d222(xv2[22],clk,reset,x2[22]);
d_ff d223(xv2[23],clk,reset,x2[23]);

d_ff s31(sel2[0],clk,reset,sel3[0]);
d_ff s32(sel2[1],clk,reset,sel3[1]);
d_ff s33(sel2[2],clk,reset,sel3[2]);
d_ff s34(sel2[3],clk,reset,sel3[3]);
d_ff s35(sel2[4],clk,reset,sel3[4]);
mux m300(xv3[0],sel3[3],x2[0],x2[8]);
mux m301(xv3[1],sel3[3],x2[1],x2[9]);
mux m302(xv3[2],sel3[3],x2[2],x2[10]);
mux m303(xv3[3],sel3[3],x2[3],x2[11]);
mux m304(xv3[4],sel3[3],x2[4],x2[12]);
mux m305(xv3[5],sel3[3],x2[5],x2[13]);
mux m306(xv3[6],sel3[3],x2[6],x2[14]);
mux m307(xv3[7],sel3[3],x2[7],x2[15]);
mux m308(xv3[8],sel3[3],x2[8],x2[16]);
mux m309(xv3[9],sel3[3],x2[9],x2[17]);
mux m310(xv3[10],sel3[3],x2[10],x2[18]);
mux m311(xv3[11],sel3[3],x2[11],x2[19]);
mux m312(xv3[12],sel3[3],x2[12],x2[20]);
mux m313(xv3[13],sel3[3],x2[13],x2[21]);
mux m314(xv3[14],sel3[3],x2[14],x2[22]);
mux m324(xv3[15],sel3[3],x2[15],x2[23]);
mux m325(xv3[16],sel3[3],x2[16],0);
mux m326(xv3[17],sel3[3],x2[17],0);
mux m327(xv3[18],sel3[3],x2[18],0);
mux m328(xv3[19],sel3[3],x2[19],0);
mux m329(xv3[20],sel3[3],x2[20],0);
mux m330(xv3[21],sel3[3],x2[21],0);
mux m331(xv3[22],sel3[3],x2[22],0);
mux m323(xv3[23],sel3[3],x2[23],0);

d_ff d300(xv3[0],clk,reset,x3[0]);
d_ff d301(xv3[1],clk,reset,x3[1]);
d_ff d302(xv3[2],clk,reset,x3[2]);
d_ff d303(xv3[3],clk,reset,x3[3]);
d_ff d304(xv3[4],clk,reset,x3[4]);
d_ff d305(xv3[5],clk,reset,x3[5]);
d_ff d306(xv3[6],clk,reset,x3[6]);
d_ff d307(xv3[7],clk,reset,x3[7]);
d_ff d308(xv3[8],clk,reset,x3[8]);
d_ff d309(xv3[9],clk,reset,x3[9]);
d_ff d310(xv3[10],clk,reset,x3[10]);
d_ff d311(xv3[11],clk,reset,x3[11]);
d_ff d312(xv3[12],clk,reset,x3[12]);
d_ff d313(xv3[13],clk,reset,x3[13]);
d_ff d314(xv3[14],clk,reset,x3[14]);
d_ff d315(xv3[15],clk,reset,x3[15]);
d_ff d316(xv3[16],clk,reset,x3[16]);
d_ff d317(xv3[17],clk,reset,x3[17]);
d_ff d318(xv3[18],clk,reset,x3[18]);
d_ff d319(xv3[19],clk,reset,x3[19]);
d_ff d320(xv3[20],clk,reset,x3[20]);
d_ff d321(xv3[21],clk,reset,x3[21]);
d_ff d322(xv3[22],clk,reset,x3[22]);
d_ff d323(xv3[23],clk,reset,x3[23]);

d_ff s41(sel3[0],clk,reset,sel4[0]);
d_ff s42(sel3[1],clk,reset,sel4[1]);
d_ff s43(sel3[2],clk,reset,sel4[2]);
d_ff s44(sel3[3],clk,reset,sel4[3]);
d_ff s45(sel3[4],clk,reset,sel4[4]);
mux m400(out[0],sel4[4],x3[0],x3[16]);
mux m401(out[1],sel4[4],x3[1],x3[17]);
mux m402(out[2],sel4[4],x3[2],x3[18]);
mux m403(out[3],sel4[4],x3[3],x3[19]);
mux m404(out[4],sel4[4],x3[4],x3[20]);
mux m405(out[5],sel4[4],x3[5],x3[21]);
mux m406(out[6],sel4[4],x3[6],x3[22]);
mux m416(out[7],sel4[4],x3[7],x3[23]);
mux m417(out[8],sel4[4],x3[8],0);
mux m418(out[9],sel4[4],x3[9],0);
mux m419(out[10],sel4[4],x3[10],0);
mux m420(out[11],sel4[4],x3[11],0);
mux m421(out[12],sel4[4],x3[12],0);
mux m422(out[13],sel4[4],x3[13],0);
mux m423(out[14],sel4[4],x3[14],0);
mux m424(out[15],sel4[4],x3[15],0);
mux m425(out[16],sel4[4],x3[16],0);
mux m426(out[17],sel4[4],x3[17],0);
mux m427(out[18],sel4[4],x3[18],0);
mux m428(out[19],sel4[4],x3[19],0);
mux m429(out[20],sel4[4],x3[20],0);
mux m430(out[21],sel4[4],x3[21],0);
mux m431(out[22],sel4[4],x3[22],0);
mux m432(out[23],sel4[4],x3[23],0);
assign out1=out[22:0];
endmodule




