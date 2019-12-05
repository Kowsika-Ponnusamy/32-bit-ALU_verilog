module dff2(data,clk,reset,q);
input [1:0]data;
input clk,reset;
output [1:0]q;
reg [1:0]q;
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





















