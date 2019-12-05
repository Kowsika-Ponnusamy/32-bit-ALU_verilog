module comp1(overflow,diff,a,b,clk,reset);
input [7:0] a,b;
input clk,reset;
output [7:0]diff;
output reg overflow;
wire [31:0]a1,b1;
wire[31:0] out1,out2,s;
wire cout,of;
assign a1[7:0]=a;
assign a1[31:8]=24'b0;
assign b1[7:0]=b;
assign b1[31:8]=24'b0;
assign out1=~b1;
prefix32pipe p1(out2,cout,out1,32'd0,1'b1,clk,reset);
prefix32pipe p2(s,of,a1,out2,1'b0,clk,reset);
assign diff=s[7:0];
always @(s)
begin
	if(diff==8'b0)
	begin
		assign overflow=1'b1;
		
	end
	else
	begin
		//assign out=b;
		assign overflow=of;
	end
end
endmodule
	
