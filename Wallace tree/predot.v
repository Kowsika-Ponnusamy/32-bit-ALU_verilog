module dot(gout,gl,al,gr);
input gl,gr,al;
output gout;
assign gout=gl|(al&gr);
endmodule