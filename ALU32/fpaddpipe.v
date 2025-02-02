module fpaddpipe(out,a,b,clk,reset);
input [31:0]a,b;
input clk,reset;
output [31:0]out1,out;

wire [7:0]exp,exp1,exp2,diff,diff1,diff2,v,v1,v2,v3;
wire of,of1,c0,c1,c2,bigof,smallof;
wire [22:0]a1,b1,aa1,bb1,mant,in;
wire [31:0] big,big1,nbig,smal,smal1,nsmal,nmant,fmant1,fmant2,fmant;
wire [1:0]sel;

wire [31:0]p1a,p1b,p2a,p2b,p3a,p3b,p4a,p4b,p5a,p5b,p6a,p6b,p7a,p7b,p8a,p8b,p9a,p9b,p10a,p10b,p11a,p11b,p5big,p6big,p7big,p7smal,p8big,p8smal,p8big1,p8smal1,p9big,p9smal,p9nbig,p9nsmal,p10fmant1,p10fmant2,p11fmant;
wire p1of,p1of1,p2of,p2of1,p3of,p3of1,p4of,p4of1,p5of,p5of1,p6of,p6of1,p7of,p7of1,p8of,p8of1,p9of,p9of1,p10of,p10of1,p11of,p11of1,p7bigof,p7smalof;
wire [7:0]p1diff,p1diff1,p1exp,p1exp1,p2v,p2v1,p2v2,p2v3,p3diff2,p3exp2,p4diff2,p4exp2,p5diff2,p5exp2,p6exp2,p7exp2,p8exp2,p9exp2,p10exp2,p11exp2;
wire [22:0]p4a1,p4b1,p4aa1,p4bb1,p5in,p6mant;
wire [1:0]p8sel,p9sel;

comp1 cc1(of,diff,a[8:1],b[8:1],clk,reset);
comp2 cc2(of1,diff1,b[8:1],a[8:1],clk,reset);
assign exp=a[8:1];
assign exp1=b[8:1];
dff32 dff01(a,clk,reset,p1a);
dff32 dff02(b,clk,reset,p1b);
d_ff dff03(of,clk,reset,p1of);
d_ff dff04(of1,clk,reset,p1of1);
dff8 dff05(diff,clk,reset,p1diff);
dff8 dff06(diff1,clk,reset,p1diff1);
dff8 dff07(exp,clk,reset,p1exp);
dff8 dff08(exp1,clk,reset,p1exp1);

assign v[0]=p1diff[0]&p1of;
assign v[1]=p1diff[1]&p1of;
assign v[2]=p1diff[2]&p1of;
assign v[3]=p1diff[3]&p1of;
assign v[4]=p1diff[4]&p1of;
assign v[5]=p1diff[5]&p1of;
assign v[6]=p1diff[6]&p1of;
assign v[7]=p1diff[7]&p1of;
assign v1[0]=p1diff1[0]&p1of1;
assign v1[1]=p1diff1[1]&p1of1;
assign v1[2]=p1diff1[2]&p1of1;
assign v1[3]=p1diff1[3]&p1of1;
assign v1[4]=p1diff1[4]&p1of1;
assign v1[5]=p1diff1[5]&p1of1;
assign v1[6]=p1diff1[6]&p1of1;
assign v1[7]=p1diff1[7]&p1of1;

assign v2[0]=p1exp[0]&p1of;
assign v2[1]=p1exp[1]&p1of;
assign v2[2]=p1exp[2]&p1of;
assign v2[3]=p1exp[3]&p1of;
assign v2[4]=p1exp[4]&p1of;
assign v2[5]=p1exp[5]&p1of;
assign v2[6]=p1exp[6]&p1of;
assign v2[7]=p1exp[7]&p1of;
assign v3[0]=p1exp1[0]&p1of1;
assign v3[1]=p1exp1[1]&p1of1;
assign v3[2]=p1exp1[2]&p1of1;
assign v3[3]=p1exp1[3]&p1of1;
assign v3[4]=p1exp1[4]&p1of1;
assign v3[5]=p1exp1[5]&p1of1;
assign v3[6]=p1exp1[6]&p1of1;
assign v3[7]=p1exp1[7]&p1of1;
dff32 dff09(p1a,clk,reset,p2a);
dff32 dff10(p1b,clk,reset,p2b);
d_ff dff11(p1of,clk,reset,p2of);
d_ff dff12(p1of1,clk,reset,p2of1);
dff8 dff13(v,clk,reset,p2v);
dff8 dff14(v1,clk,reset,p2v1);
dff8 dff15(v2,clk,reset,p2v2);
dff8 dff16(v3,clk,reset,p2v3);

assign diff2=p2v|p2v1;
assign exp2=p2v2|p2v3;
assign a1[0]=p2a[9]&~p2of;
assign a1[1]=p2a[10]&~p2of;
assign a1[2]=p2a[11]&~p2of;
assign a1[3]=p2a[12]&~p2of;
assign a1[4]=p2a[13]&~p2of;
assign a1[5]=p2a[14]&~p2of;
assign a1[6]=p2a[15]&~p2of;
assign a1[7]=p2a[16]&~p2of;
assign a1[8]=p2a[17]&~p2of;
assign a1[9]=p2a[18]&~p2of;
assign a1[10]=p2a[19]&~p2of;
assign a1[11]=p2a[20]&~p2of;
assign a1[12]=p2a[21]&~p2of;
assign a1[13]=p2a[22]&~p2of;
assign a1[14]=p2a[23]&~p2of;
assign a1[15]=p2a[24]&~p2of;
assign a1[16]=p2a[25]&~p2of;
assign a1[17]=p2a[26]&~p2of;
assign a1[18]=p2a[27]&~p2of;
assign a1[19]=p2a[28]&~p2of;
assign a1[20]=p2a[29]&~p2of;
assign a1[21]=p2a[30]&~p2of;
assign a1[22]=p2a[31]&~p2of;

assign b1[0]=p2b[9]&~p2of1;
assign b1[1]=p2b[10]&~p2of1;
assign b1[2]=p2b[11]&~p2of1;
assign b1[3]=p2b[12]&~p2of1;
assign b1[4]=p2b[13]&~p2of1;
assign b1[5]=p2b[14]&~p2of1;
assign b1[6]=p2b[15]&~p2of1;
assign b1[7]=p2b[16]&~p2of1;
assign b1[8]=p2b[17]&~p2of1;
assign b1[9]=p2b[18]&~p2of1;
assign b1[10]=p2b[19]&~p2of1;
assign b1[11]=p2b[20]&~p2of1;
assign b1[12]=p2b[21]&~p2of1;
assign b1[13]=p2b[22]&~p2of1;
assign b1[14]=p2b[23]&~p2of1;
assign b1[15]=p2b[24]&~p2of1;
assign b1[16]=p2b[25]&~p2of1;
assign b1[17]=p2b[26]&~p2of1;
assign b1[18]=p2b[27]&~p2of1;
assign b1[19]=p2b[28]&~p2of1;
assign b1[20]=p2b[29]&~p2of1;
assign b1[21]=p2b[30]&~p2of1;
assign b1[22]=p2b[31]&~p2of1;

assign aa1[0]=p2a[9]&p2of;
assign aa1[1]=p2a[10]&p2of;
assign aa1[2]=p2a[11]&p2of;
assign aa1[3]=p2a[12]&p2of;
assign aa1[4]=p2a[13]&p2of;
assign aa1[5]=p2a[14]&p2of;
assign aa1[6]=p2a[15]&p2of;
assign aa1[7]=p2a[16]&p2of;
assign aa1[8]=p2a[17]&p2of;
assign aa1[9]=p2a[18]&p2of;
assign aa1[10]=p2a[19]&p2of;
assign aa1[11]=p2a[20]&p2of;
assign aa1[12]=p2a[21]&p2of;
assign aa1[13]=p2a[22]&p2of;
assign aa1[14]=p2a[23]&p2of;
assign aa1[15]=p2a[24]&p2of;
assign aa1[16]=p2a[25]&p2of;
assign aa1[17]=p2a[26]&p2of;
assign aa1[18]=p2a[27]&p2of;
assign aa1[19]=p2a[28]&p2of;
assign aa1[20]=p2a[29]&p2of;
assign aa1[21]=p2a[30]&p2of;
assign aa1[22]=p2a[31]&p2of;

assign bb1[0]=p2b[9]&p2of1;
assign bb1[1]=p2b[10]&p2of1;
assign bb1[2]=p2b[11]&p2of1;
assign bb1[3]=p2b[12]&p2of1;
assign bb1[4]=p2b[13]&p2of1;
assign bb1[5]=p2b[14]&p2of1;
assign bb1[6]=p2b[15]&p2of1;
assign bb1[7]=p2b[16]&p2of1;
assign bb1[8]=p2b[17]&p2of1;
assign bb1[9]=p2b[18]&p2of1;
assign bb1[10]=p2b[19]&p2of1;
assign bb1[11]=p2b[20]&p2of1;
assign bb1[12]=p2b[21]&p2of1;
assign bb1[13]=p2b[22]&p2of1;
assign bb1[14]=p2b[23]&p2of1;
assign bb1[15]=p2b[24]&p2of1;
assign bb1[16]=p2b[25]&p2of1;
assign bb1[17]=p2b[26]&p2of1;
assign bb1[18]=p2b[27]&p2of1;
assign bb1[19]=p2b[28]&p2of1;
assign bb1[20]=p2b[29]&p2of1;
assign bb1[21]=p2b[30]&p2of1;
assign bb1[22]=p2b[31]&p2of1;
dff32 dff17(p2a,clk,reset,p4a);
dff32 dff18(p2b,clk,reset,p4b);
d_ff dff19(p2of,clk,reset,p4of);
d_ff dff20(p2of1,clk,reset,p4of1);
dff8 dff21(diff2,clk,reset,p4diff2);
dff8 dff22(exp2,clk,reset,p4exp2);
dff23 dff23(a1,clk,reset,p4a1);
dff23 dff24(b1,clk,reset,p4b1);
dff23 dff25(aa1,clk,reset,p4aa1);
dff23 dff26(bb1,clk,reset,p4bb1);

assign in=p4a1|p4b1;
assign big[22:0]=p4aa1|p4bb1;
assign big[31:23]=9'b0;
dff32 dff27(p4a,clk,reset,p5a);
dff32 dff28(p4b,clk,reset,p5b);
d_ff dff29(p4of,clk,reset,p5of);
d_ff dff30(p4of1,clk,reset,p5of1);
dff8 dff31(p4diff2,clk,reset,p5diff2);
dff8 dff32(p4exp2,clk,reset,p5exp2);
dff23 dff33(in,clk,reset,p5in);
dff32 dff34(big,clk,reset,p5big);


bsl23 br1(mant,p5diff2[4:0],p5in,clk,reset);
dff32 dff35(p5a,clk,reset,p6a);
dff32 dff36(p5b,clk,reset,p6b);
d_ff dff37(p5of,clk,reset,p6of);
d_ff dff38(p5of1,clk,reset,p6of1);
dff8 dff39(p5exp2,clk,reset,p6exp2);
dff23 dff40(mant,clk,reset,p6mant);
dff32 dff41(p5big,clk,reset,p6big);

assign smal[22:0]=p6mant;
assign smal[31:23]=9'd0;
assign bigof=p6a[0]&p6of|p6b[0]&p6of1;
assign smallof=p6a[0]&~p6of|p6b[0]&~p6of1;
dff32 dff42(p6a,clk,reset,p7a);
dff32 dff43(p6b,clk,reset,p7b);
d_ff dff44(p6of,clk,reset,p7of);
d_ff dff45(p6of1,clk,reset,p7of1);
dff8 dff46(p6exp2,clk,reset,p7exp2);
dff32 dff47(smal,clk,reset,p7smal);
dff32 dff48(p6big,clk,reset,p7big);
d_ff dff49(smallof,clk,reset,p7smallof);
d_ff dff50(bigof,clk,reset,p7bigof);

assign big1=~p7big;
assign smal1=~p7smal;
assign sel[0]=p7bigof&(p7a[0]^p7b[0]);
assign sel[1]=p7smallof&(p7a[0]^p7b[0]);
dff32 dff51(p7a,clk,reset,p8a);
dff32 dff52(p7b,clk,reset,p8b);
d_ff dff53(p7of,clk,reset,p8of);
d_ff dff54(p7of1,clk,reset,p8of1);
dff8 dff55(p7exp2,clk,reset,p8exp2);
dff32 dff56(p7smal,clk,reset,p8smal);
dff32 dff57(p7big,clk,reset,p8big);
dff32 dff58(smal1,clk,reset,p8smal1);
dff32 dff59(big1,clk,reset,p8big1);
dff2 dff60(sel,clk,reset,p8sel);

prefix32pipe p0(nbig,c0,p8big1,32'b0,1'b1,clk,reset);
prefix32pipe p1(nsmal,c1,p8smal1,32'b0,1'b1,clk,reset);
dff32 dff61(p8a,clk,reset,p9a);
dff32 dff62(p8b,clk,reset,p9b);
d_ff dff63(p8of,clk,reset,p9of);
d_ff dff64(p8of1,clk,reset,p9of1);
dff8 dff65(p8exp2,clk,reset,p9exp2);
dff32 dff66(p8smal,clk,reset,p9smal);
dff32 dff67(p8big,clk,reset,p9big);
dff32 dff68(nsmal,clk,reset,p9nsmal);
dff32 dff69(nbig,clk,reset,p9nbig);
dff2 dff70(p8sel,clk,reset,p9sel);

/*mux32 m1(fmant1,p9sel[0],p9big,p9nbig);
mux32 m2(fmant2,p9sel[1],p9smal,p9nsmal);*/
assign fmant1=p9big;
mux32 m2(fmant2,p9a[0]^p9b[0],p9smal,p9nsmal);
dff32 dff71(p9a,clk,reset,p10a);
dff32 dff72(p9b,clk,reset,p10b);
d_ff dff73(p9of,clk,reset,p10of);
d_ff dff74(p9of1,clk,reset,p10of1);
dff8 dff75(p9exp2,clk,reset,p10exp2);
dff32 dff76(fmant1,clk,reset,p10fmant1);
dff32 dff77(fmant2,clk,reset,p10fmant2);

prefix32pipe p2(fmant,c2,p10fmant1,p10fmant2,1'b0,clk,reset);
dff32 dff78(p10a,clk,reset,p11a);
dff32 dff79(p10b,clk,reset,p11b);
d_ff dff80(p10of,clk,reset,p11of);
d_ff dff81(p10of1,clk,reset,p11of1);
dff8 dff82(p10exp2,clk,reset,p11exp2);
dff32 dff83(fmant,clk,reset,p11fmant);

assign out1[0]=p11a[0]&p11of|p11b[0]&p11of1;
assign out1[8:1]=p11exp2;
assign out1[31:9]=p11fmant[22:0];
assign out=out1;
endmodule