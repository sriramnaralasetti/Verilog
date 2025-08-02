module cla_adder_tb();
reg [3:0]a,b;
wire[3:0]s;

wire cout;

integer i;
cla_adder dut(a,b,s,cout);
initial begin
{a,b}=0;
end
initial
begin
$monitor("Time=%0t, A=%b, B=%b, Sum=%b, Cout=%b", $time, a, b, s, cout);
for(i=0;i<256;i=i+1)
begin
{a,b}=i;
#5;
end
$finish;
end
endmodule
