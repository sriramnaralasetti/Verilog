module sisoright(input clk,rst,
            input din,
            output reg dout
);
reg [3:0]w;
always @(posedge clk)
begin
if(rst)
w<=4'b0000;
else
w<={din,w[3:1]};
dout<=w[0];
end
endmodule
