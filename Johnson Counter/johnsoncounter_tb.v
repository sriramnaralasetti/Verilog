module johnsoncounter_tb;
  reg clk,reset;
  wire [3:0] out; 
  johnsoncounter dut (.out(out), .reset(reset), .clk(clk));
   initial begin
    clk=0; 
    forever #5 clk =~clk;
  end
  initial begin
    reset=1'b1; 
    clk=1'b0;
   #20 reset= 1'b0;
  end
  
  initial 
    begin 
   	 $monitor( $time, " clk=%b, out= %b, reset=%b", clk,out,reset);
  	  
   end
 
endmodule
