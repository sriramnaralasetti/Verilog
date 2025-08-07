module sr_latch_tb();
reg s,r,clk,rst;
wire q,q_bar;
sr_latch dut(s,r,clk,rst,q,q_bar);
initial begin
clk=0;
forever #10 clk=~clk;
end
task initialize; begin
{s,r,rst}=0;
end
endtask
task reset(); begin
@(negedge clk);
rst=1'b1;
@(negedge clk);
rst=1'b0;
end
endtask
task din(input a,b,c); begin
@(negedge clk);
s=a;
r=b;
rst=c;
end
endtask
initial begin
initialize;
reset;
din(1'b0, 1'b0, 1'b0);
din(1'b0, 1'b1, 1'b0);
din(1'b1, 1'b0, 1'b0);
din(1'b1, 1'b1, 1'b0);
#20 $finish;
end
initial begin
  $monitor("Time=%0t | s=%b r=%b rst=%b | q=%b q_bar=%b", $time, s, r, rst, q, q_bar);
end
endmodule




