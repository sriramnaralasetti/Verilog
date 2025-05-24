module halfadder_tb();
reg x,y;
wire sum,carry;
halfadder dut(.a(x),.b(y),.sum(sum),.carry(carry));
initial
begin
  x=0;y=0;
#5 x=0;y=1;
#5 x=1;y=0;
#5 x=1;y=1;
end 
endmodule
