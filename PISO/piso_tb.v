module piso_tb;
  reg clk;
  reg rst;
  reg load;
  reg [3:0] din;
  wire dout;
  piso dut (
    .clk(clk),
    .rst(rst),
    .load(load),
    .din(din),
    .dout(dout)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    
    rst = 1'b1;
    load = 1'b0;
    din = 4'b0000;

    #10 rst = 1'b0;            
    #10 load = 1'b1;        
         din = 4'b1100;        
    #10 load = 1'b0;          
    #50 $finish;             
  end

  
  initial begin
    $monitor("Time = %0t | clk = %b | rst = %b | load = %b | din = %b | dout = %b",
              $time, clk, rst, load, din, dout);
  end

endmodule
