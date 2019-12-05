module d_ff_tb();
reg [63:0] data;
reg clk,reset;
wire [63:0] q;
dff UUT(.data(data),.clk(clk),.reset(reset),.q(q));
//d_ff UUT(data,clk,reset,q);
initial 
	begin
		data=0;
		reset=1;
		clk = 0;
	end
always #100 clk = ~clk;
initial
	begin
		#300 data=64'h8484848484848484;
		//reset=1'b1;
		#200 data=64'h4848484848484848;
		//reset=1'b1;
		/*#300 data=1'b1;
		//reset=1'b1;
		#600 data=1'b0;
		#500 data=1'b1;
		#200 data=1'b0;*/
		#400 $finish;
	end
/*initial
	begin 
		$monitor($time,"d= %b",q);
	end*/
always @ (posedge clk)
	$display($time,"d= %b",q);

endmodule
		
