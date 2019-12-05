module mux(out,sel,in1,in2);
input in1,in2,sel;
output out;
assign out=(sel)?in2:in1;
endmodule
