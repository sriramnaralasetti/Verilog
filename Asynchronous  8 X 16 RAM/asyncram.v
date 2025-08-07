module asyncram(rdclk,wclk,rst,din,dout,we,re,waddr,raddr  );
input rdclk,rst,we,re,wclk;
input [15:0]din;
output reg[15:0]dout;
input [2:0]waddr,raddr;
reg [15:0]mem[7:0];
integer i;
always@(posedge wclk or posedge rst )
begin
if(rst)
begin
for(i=0;i<8;i=i+1)
mem[i]<=0;
end
else if(we)

mem[waddr]<=din;

end
always@(posedge rdclk or posedge rst)
begin
if(rst)
begin
dout<=0;
end
else if(re)
dout<=mem[raddr];
end
endmodule

