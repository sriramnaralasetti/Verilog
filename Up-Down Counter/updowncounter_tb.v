module updowncount_tb;
reg [3:0] din;
reg clk, rst, load;
reg mode;
wire [3:0] count;
updowncount dut (.clk(clk),.rst(rst),.din(din),.load(load),.mode(mode),.count(count));
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end
task initialize; begin
    rst = 1'b0;
    din = 4'b0000;
    load = 1'b0;  mode=1'b0; end
endtask
task apply_reset; begin
    @(negedge clk);
    rst = 1'b1;
    @(negedge clk);
    rst = 1'b0; end
endtask
task stimulus(input [3:0] i, input l,input a); begin
    @(negedge clk);
    din = i;
    load = l; mode=a;
end endtask
initial begin
    initialize;    apply_reset;
    stimulus(4'd2, 1'b1,1'b0);   // Load 2
    stimulus(4'd0, 1'b0,1'b0);   // Start counting from 2
    #100;
    stimulus(4'd15, 1'b1,1'b1);  // Load 15
    stimulus(4'd0, 1'b0,1'b1);   // Start counting from 15
    #100; $finish; end
initial begin
    $monitor("time=%0t | clk=%b | rst=%b | din=%b | load=%b |mode=%b| count=%b", 
              $time, clk, rst, din, load,mode, count);  end
endmodule
