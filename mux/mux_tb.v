module mux_tb();
wire out;
reg in1,in2,sel;
mux m(out,sel,in1,in2);
initial
	begin
		in1=1'b1;
		in2=1'b0;
		sel=1'b0;
	end
initial
	begin
		$monitor($time,"out = %b",out);
	end
endmodule
