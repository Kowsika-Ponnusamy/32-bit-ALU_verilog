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
	clk = 0;
	reset=1;
end
initial
begin
	a=32'h11111111;
	b=32'h33333333;
	c=1;
	
	#200 a=32'h44444444;
	b=32'h33333333;
	c=0;
	#200 $finish;
	
end
	

always @(posedge clk)
	$display($time,"a=%h b=%h c=%h s=%h cout=%h",a,b,c,s,cout);
	

/*always @ (posedge clk)
	begin
	$display($time,"a=%h b=%h c=%h s=%h cout=%h",a,b,c,s,cout);
	end
#400 $finish;*/
endmodule
