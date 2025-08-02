module fulladder_tb();
reg a,b,cin;
wire s,c;
integer i;
fulladder dut(a,b,cin,s,c);
initial begin
{a,b,cin}=0;
end
initial
begin
for(i=0;i<8;i=i+1)
begin
{a,b,cin}=i;
#5;
end
$finish;
end
endmodule
