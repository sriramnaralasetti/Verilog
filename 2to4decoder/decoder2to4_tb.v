module decoder2to4_tb();
reg en;
reg [1:0]d;
wire [3:0]y;
integer i;
decoder2to4 dut(en,d,y);
initial
begin
en=1'b1;
{d}=0;
end
initial
begin
for(i=0;i<4;i=i+1)
begin
#5;
d=i;
#5;
end
$finish;
end
endmodule

