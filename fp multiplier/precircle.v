module circle(gl,al,gr,ar,gout,aout);
input gl,gr,al,ar;
output gout,aout;
assign gout=gl|(al&gr);
assign aout=al&ar;
endmodule
