module cla8_tb();
reg[7:0] a,b;
reg c;
wire[7:0] s;
wire cout;
cla8 f1(s,cout,a,b,c);
initial
begin
a=8'b00110011;
b=8'b11001100;
c=0;
end
initial
begin
$monitor($time,"a=%b b=%b c=%b s=%b cout=%b",a,b,c,s,cout);
end
endmodule
