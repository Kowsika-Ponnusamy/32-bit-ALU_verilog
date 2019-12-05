module registers(rs1, rs2, ws, wd, rf, wf, rd1, rd2);
input[2:0] rs1, rs2, ws;
input  rf, wf;
input [32:0] wd;
output [32:0] rd1, rd2;
reg [32:0] 	rd1, rd2;
reg [32:0] 	register[7:0];
integer 	i;
initial
   begin
	register[0] = 32'h00000000;
	register[1] = 32'h00000000;
	register[2] = 32'h00000000;
	register[3] = 32'h00000000;
	register[4] = 32'h00000000;
	register[5] = 32'h00000000;
	register[6] = 32'h00000000;
	register[7] = 32'h00000000;
   end // initial begin
always @ (*)
    begin
	if(wf == 1'b1)
	  begin
	     register[ws] = wd;
	     $display($time, " Writing into the register R%d=%d", ws, register[ws]);
	  end
	  if(rf == 1'b1)
	  begin
	     rd1 = register[rs1];
	     rd2 = register[rs2];
	     #1 $display($time, " Reading from the regs R%d=%d, R%d=%d",rs1,rd1,rs2,rd2);
	  end
	end // always @ (*)
endmodule // registers

