module fulladder_tb();
reg a,b,c;
wire s,cout;
fulladder f1(s,cout,a,b,c);
initial
begin
a=1;
b=1;
c=1;
end
initial
begin
$monitor($time,"a=%b b=%b c=%b,s=%b,cout=%b",a,b,c,s,cout);
end 
endmodule