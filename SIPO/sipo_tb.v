module sipo_tb;
  reg clk, din, rst;
  wire [3:0]dout;
  sipo dut(.din(din),.clk(clk),.rst(rst),.dout(dout));
  initial begin
    clk = 0;
    forever #10 clk = ~clk;  end
task initialize;
begin
rst=0;
din=0;
end endtask
task reset;begin
@(negedge clk)
rst=1'b1;
@(negedge clk)
rst=1'b0; end endtask
task stimilus(input i); begin
@(negedge clk)
din=i;
end
endtask
  initial begin
    initialize;
    reset;
    #10;
    stimilus(1);
    stimilus(0);
    stimilus(1);
    stimilus(0);
$finish;
 end
  initial begin
    $monitor("Time=%0t | clk=%b | rst=%b | din=%b | dout=%b ", $time, clk, rst, din, dout);
  end

endmodule
