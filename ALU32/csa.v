module csa(sum,carry,x,y,z);
input [63:0]x,y,z;
output [63:0]sum,carry;
wire [63:0]c;
assign sum=x^y^z;
assign c=(x&y)|(y&z)|(z&x);
assign carry[63:1]=c[62:0];
assign carry[0]=0;
endmodule