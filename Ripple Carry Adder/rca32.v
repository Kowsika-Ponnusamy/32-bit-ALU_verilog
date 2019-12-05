module rca32(s,cout,a,b,c);
input[31:0] a,b;
input c;
output[31:0] s;
output cout;
wire w;
rca16 fa0(s[15:0],w,a[15:0],b[15:0],c);
rca16 fa1(s[31:16],cout,a[31:16],b[31:16],w);
endmodule
