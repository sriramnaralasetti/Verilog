module oddgenerator_tb();
reg [3:0]o;
wire y;
oddgenerator dut(.o(o),.y(y));
initial
begin
#5 o=4'b0111;
#5 o=4'b1111;
#5 o=4'b1100;
#5;
$monitor("time=%t,o=%b,y=%b",$time,o,y);

end
endmodule

