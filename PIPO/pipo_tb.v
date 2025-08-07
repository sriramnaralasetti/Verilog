module pipo_tb();
reg clk;
reg rst;
reg load;
reg [3:0]din;
wire [3:0]dout;
pipo dut(.clk(clk),.rst(rst),.load(load),.din(din),.dout(dout));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial
begin

#5;
load=1;
rst=1'b0;
din=4'b0110;
end
initial
begin
$monitor("time=%t,clk=%b,rst=%b,load=%b,din=%b,dout=%b",$time,clk,rst,load,din,dout);
end
endmodule
