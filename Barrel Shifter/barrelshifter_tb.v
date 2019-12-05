module bs_tb();
wire [31:0]out;
reg [31:0]in;
reg [4:0]sel;
reg clk,reset,rotate;
bsr b(out,sel,rotate,in,clk,reset);
always #10 clk = ~clk;
initial
	begin
		reset=1;
		clk = 0;
	end
initial
	begin
		in=32'hf2f2f2f2;
		sel=5'b00100;
		rotate=0;
		#200 in=32'hf2f2f2f2;
		sel=5'b00100;
		rotate=1;
		#200 $finish;
	end

/*always @ (posedge clk)
		$display($time,"\nin = %b\nsel= %b\nout= %b\n",in,sel,out);*/

initial
	begin
		$monitor($time,"\nin = %b\nsel= %b\nout= %b\n",in,sel,out);
		//#400 $finish;
	end
endmodule