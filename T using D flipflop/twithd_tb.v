module twithd_tb();
reg clk,rst;
reg t;
wire q,q_bar;
twithd dut(.t(t),.clk(clk),.reset(rst),.q(q),.q_bar(q_bar));
//clock generation
initial  begin
clk=0;
forever #5 clk=~clk;end
task reset; begin  //task reset
@(negedge clk);
rst=1'b1;
@(negedge clk);
rst=1'b0;
end endtask
task initialize(); begin
t=0;
rst=0;
end endtask
task din(input a); begin
@(negedge clk)
t=a;
end endtask
initial begin
initialize; reset;
din(1'b0);
din(1'b1);
din(1'b1);
din(1'b1);
din(1'b0);

#10; $finish;
end
initial begin
  $monitor("Time=%0t | clk=%b rst=%b t=%b| q=%b q_bar=%b", 
            $time, clk, rst, t, q, q_bar);
end
endmodule 
