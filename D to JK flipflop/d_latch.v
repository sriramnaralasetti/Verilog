module d_latch(d,clk,rst,q,q_bar);
input d,clk,rst;
output reg q;
output q_bar;
always @(posedge clk)
begin
if(rst)
q<=1'b0;
else
q<=d;
end
assign q_bar=~q;

endmodule

