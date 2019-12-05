module dff(data,clk,reset,q);
input [63:0]data;
input clk,reset;
output [63:0]q;
reg [63:0]q;
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





















