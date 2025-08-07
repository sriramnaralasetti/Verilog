module universalshift(input clk,rst,
                      input shiftleft,
                      input shiftright,
                      input [3:0]parallelin,
                      input [1:0]sel,
                      output reg[3:0]q
                      );
parameter HOLD=2'B00, SHIFTLEFT=2'B01, SHIFTRIGHT=2'B10,PARALLEL_IN_OUT=2'B11;
always@(posedge clk)
begin
if(rst)
q<=4'b0000;
else
case(sel)
HOLD :q<=q;
SHIFTLEFT:q<={q[2:0],shiftleft};
SHIFTRIGHT:q<={shiftright,q[3:1]};
PARALLEL_IN_OUT:q<=parallelin;
default:q<=4'b0000;
endcase
end
endmodule
                      
