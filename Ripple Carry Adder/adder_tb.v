
module adder_tb();
reg [3:0]a,b;
reg m;
wire [3:0] s;

wire cout;

integer i;
adder dut(a,b,m,s,cout);
initial
begin
{a,b,m}=0;
end
initial
begin
for(i=0;i<256;i=i+1)
begin
{a,b,m}=i;
end
#5;
$finish;
end

endmodule

