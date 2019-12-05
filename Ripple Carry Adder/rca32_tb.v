module rca32_tb();
reg[31:0] a,b;
reg c;
wire[31:0] s;
wire cout;
rca32 f1(s,cout,a,b,c);
initial
begin
a=32'hf0f0f0f0;
b=32'h0f0f0f0f;
c=1'b1;
end
initial
begin
$monitor($time,"a=%b b=%b c=%b s=%b cout=%b",a,b,c,s,cout);
end
endmodule
