module rca4(s,cout,a,b,c);
input[3:0] a,b;
input c;
output[3:0] s;
output cout;
wire[2:0] w;
fulladder fa0(s[0],w[0],a[0],b[0],c);
fulladder fa1(s[1],w[1],a[1],b[1],w[0]);
fulladder fa2(s[2],w[2],a[2],b[2],w[1]);
fulladder fa3(s[3],cout,a[3],b[3],w[2]);
endmodule