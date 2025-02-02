module fp(out,a,b,clk);
input [31:0]a,b;
input clk;
output [31:0]out;
wire [7:0]exp,exp1,exp2,diff,diff1,diff2,v,v1,v2,v3;
wire overflow,overflow1,c1,c2;
wire [22:0]a1,b1,aa1,bb1,in,mant,mantf;
wire [31:0]ma,mb,mc,mi,mf;
comparator cc1(overflow,diff,a[8:1],b[8:1]);
comparator cc2(overflow1,diff1,b[8:1],a[8:1]);
assign v[0]=diff[0]&overflow;
assign v[1]=diff[1]&overflow;
assign v[2]=diff[2]&overflow;
assign v[3]=diff[3]&overflow;
assign v[4]=diff[4]&overflow;
assign v[5]=diff[5]&overflow;
assign v[6]=diff[6]&overflow;
assign v[7]=diff[7]&overflow;
assign v1[0]=diff1[0]&overflow1;
assign v1[1]=diff1[1]&overflow1;
assign v1[2]=diff1[2]&overflow1;
assign v1[3]=diff1[3]&overflow1;
assign v1[4]=diff1[4]&overflow1;
assign v1[5]=diff1[5]&overflow1;
assign v1[6]=diff1[6]&overflow1;
assign v1[7]=diff1[7]&overflow1;
assign diff2=v|v1;
assign exp=a[8:1];
assign exp1=b[8:1];
assign v2[0]=exp[0]&overflow;
assign v2[1]=exp[1]&overflow;
assign v2[2]=exp[2]&overflow;
assign v2[3]=exp[3]&overflow;
assign v2[4]=exp[4]&overflow;
assign v2[5]=exp[5]&overflow;
assign v2[6]=exp[6]&overflow;
assign v2[7]=exp[7]&overflow;
assign v3[0]=exp1[0]&overflow1;
assign v3[1]=exp1[1]&overflow1;
assign v3[2]=exp1[2]&overflow1;
assign v3[3]=exp1[3]&overflow1;
assign v3[4]=exp1[4]&overflow1;
assign v3[5]=exp1[5]&overflow1;
assign v3[6]=exp1[6]&overflow1;
assign v3[7]=exp1[7]&overflow1;
assign exp2=v2|v3;
assign a1[0]=a[9]&~overflow;
assign a1[1]=a[10]&~overflow;
assign a1[2]=a[11]&~overflow;
assign a1[3]=a[12]&~overflow;
assign a1[4]=a[13]&~overflow;
assign a1[5]=a[14]&~overflow;
assign a1[6]=a[15]&~overflow;
assign a1[7]=a[16]&~overflow;
assign a1[8]=a[17]&~overflow;
assign a1[9]=a[18]&~overflow;
assign a1[10]=a[19]&~overflow;
assign a1[11]=a[20]&~overflow;
assign a1[12]=a[21]&~overflow;
assign a1[13]=a[22]&~overflow;
assign a1[14]=a[23]&~overflow;
assign a1[15]=a[24]&~overflow;
assign a1[16]=a[25]&~overflow;
assign a1[17]=a[26]&~overflow;
assign a1[18]=a[27]&~overflow;
assign a1[19]=a[28]&~overflow;
assign a1[20]=a[29]&~overflow;
assign a1[21]=a[30]&~overflow;
assign a1[22]=a[31]&~overflow;
assign b1[0]=b[9]&~overflow1;
assign b1[1]=b[10]&~overflow1;
assign b1[2]=b[11]&~overflow1;
assign b1[3]=b[12]&~overflow1;
assign b1[4]=b[13]&~overflow1;
assign b1[5]=b[14]&~overflow1;
assign b1[6]=b[15]&~overflow1;
assign b1[7]=b[16]&~overflow1;
assign b1[8]=b[17]&~overflow1;
assign b1[9]=b[18]&~overflow1;
assign b1[10]=b[19]&~overflow1;
assign b1[11]=b[20]&~overflow1;
assign b1[12]=b[21]&~overflow1;
assign b1[13]=b[22]&~overflow1;
assign b1[14]=b[23]&~overflow1;
assign b1[15]=b[24]&~overflow1;
assign b1[16]=b[25]&~overflow1;
assign b1[17]=b[26]&~overflow1;
assign b1[18]=b[27]&~overflow1;
assign b1[19]=b[28]&~overflow1;
assign b1[20]=b[29]&~overflow1;
assign b1[21]=b[30]&~overflow1;
assign b1[22]=b[31]&~overflow1;
assign in=a1|b1;
bsl br1(mant,diff2[4:0],in,clk,1'b1);
assign aa1[0]=a[9]&overflow;
assign aa1[1]=a[10]&overflow;
assign aa1[2]=a[11]&overflow;
assign aa1[3]=a[12]&overflow;
assign aa1[4]=a[13]&overflow;
assign aa1[5]=a[14]&overflow;
assign aa1[6]=a[15]&overflow;
assign aa1[7]=a[16]&overflow;
assign aa1[8]=a[17]&overflow;
assign aa1[9]=a[18]&overflow;
assign aa1[10]=a[19]&overflow;
assign aa1[11]=a[20]&overflow;
assign aa1[12]=a[21]&overflow;
assign aa1[13]=a[22]&overflow;
assign aa1[14]=a[23]&overflow;
assign aa1[15]=a[24]&overflow;
assign aa1[16]=a[25]&overflow;
assign aa1[17]=a[26]&overflow;
assign aa1[18]=a[27]&overflow;
assign aa1[19]=a[28]&overflow;
assign aa1[20]=a[29]&overflow;
assign aa1[21]=a[30]&overflow;
assign aa1[22]=a[31]&overflow;
assign bb1[0]=b[9]&overflow1;
assign bb1[1]=b[10]&overflow1;
assign bb1[2]=b[11]&overflow1;
assign bb1[3]=b[12]&overflow1;
assign bb1[4]=b[13]&overflow1;
assign bb1[5]=b[14]&overflow1;
assign bb1[6]=b[15]&overflow1;
assign bb1[7]=b[16]&overflow1;
assign bb1[8]=b[17]&overflow1;
assign bb1[9]=b[18]&overflow1;
assign bb1[10]=b[19]&overflow1;
assign bb1[11]=b[20]&overflow1;
assign bb1[12]=b[21]&overflow1;
assign bb1[13]=b[22]&overflow1;
assign bb1[14]=b[23]&overflow1;
assign bb1[15]=b[24]&overflow1;
assign bb1[16]=b[25]&overflow1;
assign bb1[17]=b[26]&overflow1;
assign bb1[18]=b[27]&overflow1;
assign bb1[19]=b[28]&overflow1;
assign bb1[20]=b[29]&overflow1;
assign bb1[21]=b[30]&overflow1;
assign bb1[22]=b[31]&overflow1;
assign ma[22:0]=aa1;
assign ma[31:23]=9'd0;
assign mb[22:0]=bb1;
assign mb[31:23]=9'd0;
assign mc[22:0]=mant;
assign mc[31:23]=9'd0;
prefix32 p1(mi,c1,ma,mb,1'b0);
prefix32 p2(mf,c2,mi,mc,c1);
assign out[0]=a[0]&overflow|b[0]&overflow1;
assign out[8:1]=exp2;
assign out[31:9]=mf[22:0];
//assign out=exp2;
endmodule