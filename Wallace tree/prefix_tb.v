module prefix_tb();
reg[31:0] a,b;
reg c;
reg clk,reset;
wire[31:0] s;
wire cout;
always #10 clk = ~clk;
prefix32pipe p1(s,cout,a,b,c,clk,reset);
initial
begin
	#0 a=32'h11111111;
	#0 b=32'h33333333;
	#0 c=1;
	#0 reset=1;
	#0 clk = 0;
	#40 a=32'h44444444;
	#0 b=32'h33333333;
	#0 c=0;
	#0 reset=1;
	#0 clk = 0;
end
initial
begin
	$monitor($time,"a=%h b=%h c=%h s=%h cout=%h",a,b,c,s,cout);
	#400 $finish;
end
endmodule
