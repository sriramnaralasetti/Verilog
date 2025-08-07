module syncram(clk,rst,we,re,waddr,raddr,dout,din );
input clk,rst,we,re;
output reg [7:0]dout;
input [7:0]din;
input [3:0]waddr,raddr;
reg [7:0]mem[15:0];
integer i;
always@(posedge clk)
begin
if(rst)
begin
for(i=0;i<16;i=i+1)
begin
mem[i]<=0;
dout<=0;
end
end
else if(we)
mem[waddr] <= din;
else if(re)
dout<=mem[raddr];
else
begin
mem[waddr]<=mem[raddr];
dout<=mem[raddr];
end
end
endmodule


