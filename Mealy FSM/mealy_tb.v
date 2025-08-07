module mealy_tb;
  reg in, clock, reset;
  wire det;

  mealy dut (
    .in(in),
    .clock(clock),
    .reset(reset),
    .det(det)
  );

  initial begin
    clock = 0;
    forever #5 clock = ~clock;
  end

  initial begin
    reset = 1;
    in = 0;
    #10;
    reset = 0;
    in = 1;  #10;
    in = 0;  #10;
    in = 1;  #10;

    in = 0;  #10;
    in = 1;  #10;

    in = 0;  #10;
    in = 0;  #10;
    in = 1;  #10;
  end
  initial begin
    $monitor("Time=%0t | in=%b | det=%b | state=%b", $time, in, det, dut.state);
  end
endmodule
