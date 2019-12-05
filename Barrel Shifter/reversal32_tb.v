module reversal_tb();
wire [31:0]out;
reg [31:0]in;
reg reverse;
reversal32 r(out,reverse,in);
initial
	begin
		in=32'h25252525;
		reverse=1;
	end

initial
	begin
		$monitor($time,"\nin = %b\nreverse= %b\nout= %b\n",in,reverse,out);
		
	end
endmodule