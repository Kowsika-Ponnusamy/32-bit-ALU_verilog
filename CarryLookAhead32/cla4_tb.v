module cla4_tb();
reg[3:0] a,b;
reg c;
wire[3:0] s;
wire cout;
cla4 f1(s,cout,a,b,c);
initial
begin
a=4'b1011;
b=4'b1100;
c=0;
end
initial
begin
$monitor($time,"a=%b b=%b c=%b s=%b cout=%b",a,b,c,s,cout);
end
endmodule
