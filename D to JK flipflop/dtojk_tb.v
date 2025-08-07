module dtojk_tb();
reg clk,rst;
reg j,k;
wire q,q_bar;
dtojk dut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q),.q_bar(q_bar));
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
j=0;
k=0;
rst=0;
end endtask
task din(input a,b); begin
@(negedge clk)
j=a;
k=b;
end endtask
initial begin
initialize; reset;
din(1'b0,1'b0);
din(1'b0,1'b1);
din(1'b1,1'b0);
din(1'b1,1'b1);
#10; $finish;
end
initial begin
  $monitor("Time=%0t | clk=%b rst=%b j=%b k=%b | q=%b q_bar=%b", 
            $time, clk, rst, j, k, q, q_bar);
end
endmodule 
