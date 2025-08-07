module d_latch_tb;
  reg clk, d, rst;
  wire q, q_bar;

  d_latch dut (
    .d(d),
    .clk(clk),
    .rst(rst),
    .q(q),
    .q_bar(q_bar)
  );
  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end
  initial begin
    rst = 1; d = 0;
    #15 rst = 0;       
    #10 d = 1;
    #20 d = 0;
    #20 d = 1;
    #20 d = 1;
    #20 d = 0;
    #20;
    $finish;
  end

  
  initial begin
    $monitor("Time=%0t | clk=%b | rst=%b | d=%b | q=%b | q_bar=%b", $time, clk, rst, d, q, q_bar);
  end

endmodule
