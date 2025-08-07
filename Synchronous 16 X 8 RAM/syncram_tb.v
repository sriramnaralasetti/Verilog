module syncram_tb( );
wire [7:0]dout;
reg clk,rst,we,re;
reg [3:0]waddr,raddr;
reg [7:0]din;
integer l,m;
sync16_8ram dut(clk,rst,we,re,waddr,raddr,dout,din);
initial begin
clk=1'b0;
forever #10 clk=~clk; end
task initialize(); begin
{din,we,re}=0; end endtask
task rst_dut(); begin
@(negedge clk);
rst=1'b1;
@(negedge clk);
rst=1'b0; end endtask
task  write(input [7:0]i,input[3:0]j); begin
@(negedge clk);
we=1'b1; waddr=j; din=i; end endtask
task read(input [3:0]j); begin
@(negedge clk);
re=1'b1; raddr=j; end endtask
initial  begin
initialize; rst_dut();
write(8'd32,4'd4);
write(8'd31,4'd3); #10 we=1'b0;
read(4'd14);
read(4'd13);
for(l=0;l<16;l=l+1) begin
write(l,1); end
#20 we=1'b0;
for(m=0;m<16;m=m+1) begin
read(m); end
#20 re=1'b0; end
initial
#1000 $finish;
endmodule


