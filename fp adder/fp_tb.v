module fp_tb();
reg [31:0]a,b;
reg clk;
wire [31:0]out;
fp f1(out,a,b,clk);
always #10 clk = ~clk;

initial
begin
clk = 0;
a=32'b00000000000011111100111000100010;
b=32'b00100011001111111100101110011000;
#100 $finish;
end
initial
begin
   $monitor($time,"\na=%d\n b=%d\n out=%b",a[8:1],b[8:1],out);
   #200 $finish;
end
endmodule