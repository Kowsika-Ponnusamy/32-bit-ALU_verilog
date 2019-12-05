module cla4(s,cout,a,b,c);
input[3:0] a,b;
input c;
output[3:0] s;
output cout;
wire [3:0]p,g,k;
assign p=a^b;
assign g=a&b;
assign k[0]=c;
assign k[1]=g[0]|(p[0]&c);
assign k[2]=g[1]|(p[1]&g[0])|(p[1]&p[0]&c);
assign k[3]=g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&c);
assign cout=g[3]|(p[3]&g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&c);
assign s=p^k;
endmodule