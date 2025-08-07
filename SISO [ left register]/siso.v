module siso(input clk,rst,
            input din,
            output reg [3:0]q,
            output reg dout
);

always @(posedge clk)
begin
if(rst)
q<=4'b0000;
else
/*w<={w[2:0],din};
dout<=w[3];*/
q[0]<=din;
q[1]<=q[0];
q[2]<=q[1];
q[3]<=q[2];
dout<=q[3];


end
endmodule
