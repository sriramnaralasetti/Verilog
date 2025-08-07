module jk_ff_tb();
reg [1:0] state;
  reg rst, clk;
  wire q, q_bar;
  jk_ff dut (.state(state),.rst(rst),.clk(clk),.q(q),.q_bar(q_bar));
  parameter cycle = 10;
  always begin
    #(cycle/2);
  clk=1'b0;
  #(cycle/2);
     clk=1'b1;end
  task reset;  begin
    @(negedge clk);
    rst = 1'b1;
    @(negedge clk);
    rst = 1'b0;
  end
  endtask
  task din(input [1:0] s);
  begin
    @(negedge clk);
    state = s;
  end endtask
  initial begin
    rst = 0;
    state = 2'b00;
    reset();
    din(2'b00);
    din(2'b01);
    din(2'b10);
    din(2'b11);
#5;$finish; end
  initial begin
    $monitor("time=%t | clk=%b | rst=%b | state={j=%b, k=%b} | q=%b | q_bar=%b",
              $time, clk, rst, state[1], state[0], q, q_bar);
  end
endmodule
