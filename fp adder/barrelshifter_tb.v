module bs_tb();
wire [22:0]out;
reg [22:0]in;
reg [4:0]sel;
reg clk,reset;
bsr b(out,sel,in,clk,reset);
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
		
		/*#200 in=32'hf2f2f2f2;
		sel=5'b00100;*/
		#200 $finish;
	end

/*always @ (posedge clk)
		$display($time,"\nin = %b\nsel= %b\nout= %b\n",in,sel,out);*/

initial
	begin
		$monitor($time,"\nin = %b\nsel= %b\nout= %b\n",in,sel,out);
		#400 $finish;
	end
endmodule