module wallace_tb();
reg[31:0] a,b;
reg clk,reset;
wire[63:0] out;
wallacepipe c1(out,a,b,clk,reset);
always #10 clk = ~clk;
initial
begin
	clk=0;
	reset=1;
end
initial
begin
	
	a=32'd11;
	b=32'd11;
	#30 a=32'd111;
	b=32'd1111;
	#30 a=32'd1111;
	b=32'd111111;
	#30 a=32'd789;
	b=32'd214;
	#200 $finish;
end
/*initial
begin

	//$monitor($time,"a=%b\n b=%b \n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b ",a,b,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31);
	$monitor($time,"\na=%d\nb=%d\nout=%d",a,b,out);
	end*/
always @ (posedge clk)
	$display($time,"\na=%d \nb=%d\nout=%d",a,b,out);
endmodule