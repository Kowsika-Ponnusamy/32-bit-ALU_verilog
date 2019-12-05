module cos();
reg clk,reset;
wire [31:0]out1,out2,out3,out4,out5,out;
alu alu1(out1,32'b00000000000000000000000100000100,32'b00000000000000000000000100000100,3'b011,clk,reset);//out1=x^2
alu alu2(out2,out1,out1,3'b011,clk,reset);//out2=x^4
alu alu3(out3,out1,32'b00000000000000000000000011111101,3'b011,clk,reset);//out3=x^2/2!
alu alu4(out4,out2,32'b10010100011101010101010011110100,3'b011,clk,reset);//out4=x^4/4!
alu alu5(out5,out4,out3,3'b010,clk,reset);//out5=(x^4/4!)-(x^2/2!)
alu alu6(out,out5,32'b0000000000000000000000001111110,3'b010,clk,reset);//out6=1-(x^2/2!)+(x^4/4!)
always #1 clk = ~clk;
//cos(x)=1-(x^2/2!)+(x^4/4!)
//1/2!=0.5=     0 01111110 00000000000000000000000
//1/4!=0.04167= 0 01011110 01010101010111000101001 
// 08 =			0 01000001 00000000000000000000000
/*Define operation codes, there's only 9 so far
parameter   INT ADD 	= 3'b000;
parameter   INT SUB 	= 3'b001;
parameter   FLOAT ADD 	= 3'b010;
parameter   FLOAT MUL 	= 3'b011;
parameter   SHIFT RIGHT = 3'b100;
parameter   ROTATERIGHT = 3'b101;
parameter   SHIFT LEFT	= 3'b110;
parameter   ROTATE LEFT = 3'b111;*/
initial
begin
clk = 0;
reset=1;
#1000 $finish;
end
initial
begin
   $monitor($time,"\nout=%b",out);
   #1000 $finish;
end
endmodule