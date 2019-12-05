module imemory(addr, d_in, rd, wr, d_out);
input[3:0] addr;
input[9:0] d_in;
input rd, wr;
output[9:0] d_out;
reg[9:0] d_out;
reg[9:0] mem[15:0];

initial
   begin


/*
	mem[0]=10'b0000010110;
	mem[1]=10'b0001001100;
	mem[2]=10'b0000011000;
	mem[3]=10'b1010111111;
	mem[4]=10'b0010011100;
	mem[5]=10'b0000001010;
	mem[6]=10'b0101110000;
	mem[7]=10'b0110100000;
	mem[8]=10'b1001011110;
	mem[9]=10'b1011100000;
*/

	/*mem[0]=10'b0000010110;
	mem[1]=10'b0001001100;
	mem[2]=10'b0000011000;
	mem[3]=10'b1100111100;
	mem[4]=10'b1010110111;
	mem[5]=10'b0010011100;
	mem[6]=10'b0000001010;
	mem[7]=10'b0101110000;
	mem[8]=10'b0110100000;
	mem[9]=10'b1001011110;
	mem[10]=10'b1011100000;
	
	mem[12] = 10'h0;
	mem[15] = 10'hd;*/

//set vth out ld followed by add - 3 loads 1st
/*
	mem[0]=10'b1100111100;
	mem[1]=10'b1100101110;
	mem[2]=10'b1100011101;
	mem[5]=10'b0001000010;
	mem[3]=10'b0110100000;
	mem[4]=10'b0100110000;
	mem[6]=10'b1001010010;
	mem[7]=10'b1010111001;
	mem[8]=10'b1101001111;	
	mem[9]=10'b0;	
	mem[10]=10'b0;	
	mem[11]=10'b0;	
	mem[15]=10'b0;	
	mem[12]=10'b0000000000;
	mem[13]=10'b0000000000;
	mem[14]=10'b0000000000;
*/
    mem[0]=10'b0001000010;//add r4,r1
	mem[1]=10'b0000110100;//add r3,r2
	mem[2]=10'b1001100100;//mov r6,r2
	mem[3]=10'b0000000000;
	mem[4]=10'b0;
	mem[5]=10'b0;
	mem[6]=10'b0;
	mem[7]=10'b0;
	mem[8]=10'b0;	
	mem[9]=10'b0;	
	mem[10]=10'b0;	
	mem[11]=10'b0;		
	mem[12]=10'b0000000000;
	mem[13]=10'b0000000000;
	mem[14]=10'b0000000000;
	mem[15]=10'b0;
/*
//1...No Data dependency
	mem[0]=10'b0000110010; //ADD R3,R1
	mem[1]=10'b0010100010; //SUB R2,R1
	mem[2]=10'b1001100010; //MOV R6,R1
	mem[3]=10'b0000000000; //end
*/

//2...With data dependancy
/*	mem[0]=10'b0000110010; //ADD R3,R1
	mem[1]=10'b0100110000; //DCR R3
	mem[2]=10'b0010100010; //SUB R2,R1
	mem[3]=10'b0110100000; //INR R2
	mem[4]=10'b1001010110; //MOV R5,R3
	mem[5]=10'b1001100010; //MOV R6,R1
	mem[6]=10'b0000000000; //end
*/	
/*
//3...LD is not followed by ADD
	mem[0]=10'b1100111100; //LD R3,M12
	mem[1]=10'b1100101110; //LD R2,M14
	mem[2]=10'b1100011101; //LD R1,M13
	mem[3]=10'b1001010010; //MOV R5,R1
	mem[4]=10'b0001000010; //ADD R4,R1
	mem[5]=10'b0110100000; //INR R2
	mem[6]=10'b0100110000; //DCR R3
	mem[7]=10'b1010111001; //JEZ R3,M9
	mem[8]=10'b1111001111; // SD R4,M15
	mem[9]=10'b0000000000; //end


//4... Multiplication
	mem[0] = 10'b1100011010; //LD R1,M10
	mem[1] = 10'b1100101011; //LD R2,M11
	mem[2] = 10'b1010100110; //JEZ R2,M6
	mem[3] = 10'b0000110010; //ADD R3,R1
	mem[4] = 10'b0100100000; //DCR R2
	mem[5] = 10'b1011000010; //JEZ R4,M2
	mem[6] = 10'b1110111100; //SD R3,M12
	mem[7] = 10'b0000000000; //end

*/	

end // initial begin
   
always @ (*)
begin
	if(rd == 1'b1)
	  begin
	     d_out = mem[addr];
	     $display($time, " Reading from M%d=%b", addr, d_out);
	  end
	else if(wr == 1'b1)
	  begin
	     mem[addr] = d_in;
	     $display($time, " Writing to M%d=%b", addr, mem[addr]);
	  end
end   
endmodule // imemory

module dmemory(addr, d_in, rd, wr, d_out);
input[3:0] addr;
input[9:0] d_in;
input rd, wr;
output[9:0] d_out;
reg[9:0] d_out;
reg[9:0] mem[15:0];
initial
  begin
	mem[0]=10'b0000000000;
	mem[1]=10'b0000111000;
	mem[2]=10'b0001011100;
	mem[3]=10'b0001110100;
	mem[4]=10'b0000000000;
	mem[9]=10'b0;
	mem[10] = 10'd3;
	mem[11] = 10'd4;
	mem[12] = 10'd0;
	mem[13]= 10'd0;
	mem[14]= 10'd0;
	mem[15]= 10'd0;	
  end // initial begin
 always @ (*)
    begin
	if(rd == 1'b1)
	  begin
	     d_out = mem[addr];
	     $display($time, " Reading from M%d=%d", addr, d_out);
	  end
	if(wr == 1'b1)
	  begin
	     mem[addr] = d_in;
	     $display($time, " Writing to M%d=%d", addr, mem[addr]);
	  end
	end
endmodule // dmemory



