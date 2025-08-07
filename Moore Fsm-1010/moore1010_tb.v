
module moore1010_tb;

  reg in, clk, rst;
  wire det;
  moore1010 dut (
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
    rst = 1; in = 0;

    #10 rst = 0;    

    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;

    #20 $finish;
  end

  initial begin
    $monitor("Time = %0t | in = %b | det = %b", $time, in, det);
  end

endmodule
