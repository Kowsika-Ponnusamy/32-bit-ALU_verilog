module reversal23(out,reverse,in);
input reverse;
input [22:0] in;
output [22:0]out;

mux m000(out[0],reverse,in[0],in[22]);
mux m001(out[1],reverse,in[1],in[21]);
mux m002(out[2],reverse,in[2],in[20]);
mux m003(out[3],reverse,in[3],in[19]);
mux m004(out[4],reverse,in[4],in[18]);
mux m005(out[5],reverse,in[5],in[17]);
mux m006(out[6],reverse,in[6],in[16]);
mux m007(out[7],reverse,in[7],in[15]);
mux m008(out[8],reverse,in[8],in[14]);
mux m009(out[9],reverse,in[9],in[13]);
mux m010(out[10],reverse,in[10],in[12]);
mux m011(out[11],reverse,in[11],in[11]);
mux m012(out[12],reverse,in[12],in[10]);
mux m013(out[13],reverse,in[13],in[9]);
mux m014(out[14],reverse,in[14],in[8]);
mux m015(out[15],reverse,in[15],in[7]);
mux m016(out[16],reverse,in[16],in[6]);
mux m017(out[17],reverse,in[17],in[5]);
mux m018(out[18],reverse,in[18],in[4]);
mux m019(out[19],reverse,in[19],in[3]);
mux m020(out[20],reverse,in[20],in[2]);
mux m021(out[21],reverse,in[21],in[1]);
mux m022(out[22],reverse,in[22],in[0]);

endmodule