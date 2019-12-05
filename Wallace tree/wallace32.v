module wallace(out,x,y);
input [31:0]x,y;
output [63:0] out;
wire cout,over;
reg [63:0] a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31;
wire [63:0] s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28,s29;
wire [63:0] c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29;

always @(x or y)
begin
	if(y[0] == 1)
	begin
		a0[31:0]=x;
		a0[63:32]= 0;
	end
	else	
		assign a0 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[1] == 1)
	begin
		a1[0]=0;
		a1[32:1] = x;
		a1[63:33]=0;
	end
	else	
		assign a1 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[2] == 1)
	begin
		a2[1:0]=0;
		a2[33:2]=x;
		a2[63:34]=0;
	end
	else	
		assign a2 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[3] == 1)
	begin
		a3[2:0]=0;
		a3[34:3]=x;
		a3[63:35]=0;
	end	
	else	
		assign a3 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[4] == 1)
	begin
		a4[3:0]=0;
		a4[35:4]=x;
		a4[63:36]=0;
	end
	else	
		assign a4 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[5] == 1)
	begin
		a5[4:0]=0;
		a5[36:5]=x;
		a5[63:37]=0;
	end
	else	
		assign a5 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[6] == 1)
	begin
		a6[5:0]=0;
		a6[37:6]=x;
		a6[63:38]=0;
	end
	else	
		assign a6 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[7] == 1)
	begin
		a7[6:0]=0;
		a7[38:7]=x;
		a7[63:39]=0;
	end
	else	
		assign a7 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[8] == 1)
	begin
		a8[7:0]=0;
		a8[39:8]=x;
		a8[63:40]=0;
	end
	else	
		assign a8 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[9] == 1)
	begin
		a9[8:0]=0;
		a9[40:9]=x;
		a9[63:41]=0;
	end
	else	
		assign a9 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[10] == 1)
	begin
		a10[9:0]=0;
		a10[41:10]=x;
		a10[63:41]=0;
	end
	else	
		assign a10 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[11] == 1)
	begin
		a11[10:0]=0;
		a11[42:11]=x;
		a11[63:43]=0;
	end
	else	
		assign a11 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[12] == 1)
	begin
		a12[11:0]=0;
		a12[43:12]=x;
		a12[63:44]=0;
	end
	else	
		assign a12 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[13] == 1)
	begin
		a13[12:0]=0;
		a13[44:13]=x;
		a13[63:45]=0;
	end
	else	
		assign a13 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[14] == 1)
	begin
		a14[13:0]=0;
		a14[45:14]=x;
		a14[63:46]=0;
	end
	else	
		assign a14 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[15] == 1)
	begin
		a15[14:0]=0;
		a15[46:15]=x;
		a15[63:47]=0;
	end
	else	
		assign a15 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[16] == 1)
	begin
		a16[15:0]=0;
		a16[47:16]=x;
		a16[63:48]=0;
	end
	else	
		assign a16 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[17] == 1)
	begin
		a17[16:0]=0;
		a17[48:17]=x;
		a17[63:49]=0;
	end
	else	
		assign a17 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[18] == 1)
	begin
		a18[17:0]=0;
		a18[49:18]=x;
		a18[63:50]=0;
	end
	else	
		assign a18 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[19] == 1)
	begin
		a19[18:0]=0;
		a19[50:19]=x;
		a19[63:51]=0;
	end
	else	
		assign a19 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[20] == 1)
	begin
		a20[19:0]=0;
		a20[51:20]=x;
		a20[63:52]=0;
	end
	else	
		assign a20 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[21] == 1)
	begin
		a21[20:0]=0;
		a21[52:21]=x;
		a21[63:53]=0;
	end
	else	
		assign a21 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[22] == 1)
	begin
		a22[21:0]=0;
		a22[53:22]=x;
		a22[63:54]=0;
	end
	else	
		assign a22 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[23] == 1)
	begin
		a23[22:0]=0;
		a23[54:23]=x;
		a23[63:55]=0;
	end
	else	
		assign a23 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[24] == 1)
	begin
		a24[23:0]=0;
		a24[55:24]=x;
		a24[63:56]=0;
	end
	else	
		assign a24 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[25] == 1)
	begin
		a25[24:0]=0;
		a25[56:25]=x;
		a25[63:57]=0;
	end
	else	
		assign a25 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[26] == 1)
	begin
		a26[25:0]=0;
		a26[57:26]=x;
		a26[63:58]=0;
	end
	else	
		assign a26 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[27] == 1)
	begin
		a27[26:0]=0;
		a27[58:27]=x;
		a27[63:59]=0;
	end
	else	
		assign a27 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[28] == 1)
	begin
		a28[27:0]=0;
		a28[59:28]=x;
		a28[63:60]=0;
	end
	else	
		assign a28 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[29] == 1)
	begin
		a29[28:0]=0;
		a29[60:29]=x;
		a29[63:61]=0;
	end
	else	
		assign a29 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[30] == 1)
	begin
		a30[29:0]=0;
		a30[61:30]=x;
		a30[63:62]=0;
	end
	else	
		assign a30 =64'h0000000000000000;
end
always @(x or y)
begin
	if(y[31] == 1)
	begin
		a31[30:0]=0;
		a31[62:31]=x;
		a31[63]=0;
	end
	else	
		assign a31 =64'h0000000000000000;
	
end

csa cs0(s0,c0,a0,a1,a2);
csa cs1(s1,c1,a3,a4,a5);
csa cs2(s2,c2,a6,a7,a8);
csa cs3(s3,c3,a9,a10,a11);
csa cs4(s4,c4,a12,a13,a14);
csa cs5(s5,c5,a15,a16,a17);
csa cs6(s6,c6,a18,a19,a20);
csa cs7(s7,c7,a21,a22,a23);
csa cs8(s8,c8,a24,a25,a26);
csa cs9(s9,c9,a27,a28,a29);
csa cs10(s10,c10,s0,c0,s1);
csa cs11(s11,c11,c1,s2,c2);
csa cs12(s12,c12,s3,c3,s4);
csa cs13(s13,c13,c4,s5,c5);
csa cs14(s14,c14,s6,c6,s7);
csa cs15(s15,c15,c7,s8,c8);
csa cs16(s16,c16,s9,c9,a30);
csa cs17(s17,c17,s10,c10,s11);
csa cs18(s18,c18,c11,s12,c12);
csa cs19(s19,c19,s13,c13,s14);
csa cs20(s20,c20,c14,s15,c15);
csa cs21(s21,c21,s16,c16,a31);
csa cs22(s22,c22,s17,c17,s18);
csa cs23(s23,c23,c18,s19,c19);
csa cs24(s24,c24,s20,c20,s21);
csa cs25(s25,c25,s22,c22,s23);
csa cs26(s26,c26,c23,s24,c24);
csa cs27(s27,c27,s25,c25,s26);
csa cs28(s28,c28,s27,c27,c26);
csa cs29(s29,c29,s28,c28,c21);

prefix32 p1(out[31:0],cout,s29[31:0],c29[31:0],0);
prefix32 p2(out[63:32],over,s29[63:32],c29[63:32],cout);

endmodule
