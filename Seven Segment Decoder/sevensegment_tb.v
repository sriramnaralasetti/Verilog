module sevensegment_tb();
reg [3:0]s;
wire a,b,c,d,e,f,g;
sevensegment dut(s,a,b,c,d,e,f,g);
task initialize();
begin
{s}=4'b0000;
end
endtask
task inputs(input [3:0]i);
begin
#5;
s=i;
#5;
end
endtask
initial
begin
initialize;
inputs(4'b0110);
inputs(4'b0111);
inputs(4'b1111);
end
initial
begin
$monitor("time=%t,b=%b;d=%d",$time,b,d);
end
endmodule
