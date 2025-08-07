
module mealy1101_tb;
  reg clk, rst, in;
  wire det;

  mealy1101 dut (
    .in(in),
    .clk(clk),
    .rst(rst),
    .det(det)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("Time=%0d rst=%b in=%b det=%b", $time, rst, in, det);
    rst = 1; in = 0;
    #12 rst = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #20;
    $finish;
  end
endmodule