module tff_tb();
  reg t;
  reg rst, clk;
  wire q;
  tff dut (.t(t),.rst(rst),.clk(clk),.q(q));
  parameter cycle = 10;
  always begin
    #(cycle/2);
  clk=1'b0;
  #(cycle/2);
     clk=1'b1;end
  task reset;
  begin
    @(negedge clk);
    rst = 1'b1;
    @(negedge clk);
    rst = 1'b0;
  end
  endtask
  task din(input s);
  begin
    @(negedge clk);
    t = s;
  end endtask
  initial begin
    reset;
    din(1'b0);
    din(1'b1);
    din(1'b1);
    din(1'b0);
#5;$finish; end
  initial begin
    $monitor("time=%t | clk=%b | rst=%b | t=%b | q=%b",
              $time, clk, rst,t, q);
  end
endmodule
