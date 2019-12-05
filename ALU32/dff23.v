module dff23(data,clk,reset,q);
input [22:0]data;
input clk,reset;
output [22:0]q;
reg [22:0]q;
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





















