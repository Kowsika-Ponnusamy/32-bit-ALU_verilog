module alu_tb();
reg [31:0]a,b;
reg clk,reset;
reg[2:0] opcode;
wire [31:0]out;
alu alu1(out,a,b,opcode,clk,reset);
always #1 clk = ~clk;

initial
begin
clk = 0;
reset=1;
opcode=3'b011;

a=32'b00000000000000000000000100000100;
b=32'b00000000000000000000000100000100;

/*#300
a=32'b00000000000011111100111000100010;
b=32'b01000000000011111100111000100101;*/
#100 $finish;
end
initial
begin
   $monitor($time,"\na=%b\nb=%b\nout=%b",a,b,out);
   #100 $finish;
end
endmodule