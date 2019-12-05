module fpmul_tb( );
reg [31:0]a,b;
reg clk;
wire [31:0]out;
fpmulti f1(out,a,b,clk);
always #10 clk = ~clk;
initial
begin
	clk=0;
end
initial
begin
a=32'b00000000000011111100111000100011;
b=32'b00100011001111111100101110011000;
end
initial
begin
   $monitor($time,"\na=%b\n b=%b\n out=%b",a,b,out);
  #400 $finish;
end
endmodule