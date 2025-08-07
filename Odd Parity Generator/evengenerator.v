module oddgenerator(o,y);
input [3:0]o;
output y;
assign y=~(^o);
endmodule
