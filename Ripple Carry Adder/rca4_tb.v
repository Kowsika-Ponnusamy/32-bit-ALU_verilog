module rca4_tb();
reg[3:0] a,b;
reg c;
wire[3:0] s;
wire cout;
rca4 f1(s,cout,a,b,c);
initial
begin
a=1101;
b=0010;
c=0;
end
initial
begin
$monitor($time,"a=%b b=%b c=%b,s=%b,cout=%b",a,b,c,s,cout);
end 
endmodule