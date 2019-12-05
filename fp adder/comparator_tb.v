module comparator_tb();
reg [7:0] a,b;
wire  [7:0]out;
wire overflow;
comparator c(out,overflow,a,b);
initial
begin
a=7'd30;
b=7'd30;
end
initial
begin
   $monitor($time,"\na=%d\n b=%d\n out=%d\n overflow=%d",a,b,out,overflow);
end
endmodule