module cla32(s,cout,a,b,c);
input[31:0] a,b;
input c;
output[31:0] s;
output cout;
wire[2:0] w;
cla8 fa0(s[7:0],w[0],a[7:0],b[7:0],c);
cla8 fa1(s[15:8],w[1],a[15:8],b[15:8],w[0]);
cla8 fa2(s[23:16],w[2],a[23:16],b[23:16],w[1]);
cla8 fa3(s[31:24],cout,a[31:24],b[31:24],w[2]);
endmodule
