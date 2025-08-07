module jk_ff(input clk,
           input [1:0]state,
           input rst,
             output reg q,
             output q_bar
           );
parameter hold =2'b00,
          reset=2'b01,
          set =2'b10,
          toggle =2'b11;
always @(posedge clk)
begin
if(rst)
q<=1'b0;
else
case(state)
hold:q<=q;
reset:q<=1'b0;
set:q<=1'b1;
toggle:q<=~q;
endcase
end
assign q_bar=~q;
endmodule


