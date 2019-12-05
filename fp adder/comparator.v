module comparator(overflow,diff,a,b);
input [7:0] a,b;
output  reg [7:0]diff;
output overflow;
wire [31:0]a1,b1;
wire[31:0] out1,out2,s;
wire cout;
assign a1[7:0]=a;
assign a1[31:8]=24'b0;
assign b1[7:0]=b;
assign b1[31:8]=24'b0;
assign out1=~b1;
prefix32 p1(out2,cout,out1,32'd0,1'b1);
prefix32 p2(s,overflow,a1,out2,1'b0);

always @(overflow)
begin
	if(~overflow)
	begin
		//assign out=a;
		assign diff=s;
	end
	else
	begin
		//assign out=b;
		assign diff=s;
	end
end
endmodule
	
