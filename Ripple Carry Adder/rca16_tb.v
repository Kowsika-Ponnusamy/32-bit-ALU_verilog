module rca16_tb();
reg[15:0] a,b;
reg c;
wire[15:0] s;
wire cout;
rca16 f1(s,cout,a,b,c);
initial
begin
a=16'b1111010101000111;
b=16'b0000101010111000;
c=0;
end
initial
begin
$monitor($time,"a=%b b=%b c=%b,s=%b,cout=%b",a,b,c,s,cout);
end 
endmodule