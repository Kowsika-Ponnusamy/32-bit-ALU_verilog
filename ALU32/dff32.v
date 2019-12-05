module dff32(data,clk,reset,q);
input [31:0]data;
input clk,reset;
output [31:0]q;
reg [31:0]q;
//initial q=0,reset=1;
always @ (posedge clk)
if (~reset) 
	begin
		q=0;
	end
else 
	begin
		q=data;
	end
endmodule





















