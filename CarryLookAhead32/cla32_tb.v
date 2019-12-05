module cla8_tb();
reg[31:0] a,b;
reg c;
wire[31:0] s;
wire cout;
cla32 f1(s,cout,a,b,c);
initial
begin
a=32'b11110011001100111100110011001100;
b=32'b11001100110011000011001100110011;
c=0;
end
initial
begin
$monitor($time,"a=%b b=%b c=%b s=%b cout=%b",a,b,c,s,cout);
end
endmodule
