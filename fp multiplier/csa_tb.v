module csa_tb();
reg[63:0] a,b,c;
wire[63:0] s,cout;
csa c1(s,cout,a,b,c);
initial
begin
a=64'h9987237811111111;
b=64'h7654211100000000;
c=64'h1000000000000000;
end
initial
begin
$monitor($time,"a=%h b=%h c=%h s=%h cout=%h",a,b,c,s,cout);
end
endmodule
