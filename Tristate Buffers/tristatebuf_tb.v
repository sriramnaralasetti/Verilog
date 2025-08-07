module tristatebuf_tb();
reg a,ctrl;
wire y;
tristatebuf dut(a,ctrl,y);
initial
begin
$monitor("time=%b,a=%b,ctrl=%b,y=%b",$time,a,ctrl,y);

ctrl=1'b0;
a=1'b0;
#5 ctrl=1'b1;
#5 a=0;
#5 a=1;
#5;
end
endmodule




