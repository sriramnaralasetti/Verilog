module singleport(we,en,data,addr );
input en,we;
inout [7:0]data;
input [3:0]addr;
reg [7:0]mem[15:0];
always@(en,we,data,addr)
if(we&&!en)
mem[addr]<=data;
assign data=(en&&!we)?mem[addr]:8'hzz;
endmodule

