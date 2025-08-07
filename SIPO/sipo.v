module sipo(input din,
            input clk, rst,
            output  reg [3:0]dout
);

always @(posedge clk)
begin
if(rst)
dout=4'b0000;
else
dout<={dout[2:0],din};
end
endmodule


