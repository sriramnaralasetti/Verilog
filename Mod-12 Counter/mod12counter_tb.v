module mod12counter_tb;
reg [3:0] din;
reg clk, rst, load;
wire [3:0] count;
mod12counter dut (.clk(clk),.rst(rst),.din(din),.load(load),.count(count));
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end
task initialize; begin
    rst = 1'b0;
    din = 4'b0000;
    load = 1'b0; end
endtask
task apply_reset; begin
    @(negedge clk);
    rst = 1'b1;
    @(negedge clk);
    rst = 1'b0; end
endtask
task stimulus(input [3:0] i, input l); begin
    @(negedge clk);
    din = i;
    load = l; end endtask
initial begin
    initialize;    apply_reset;
    stimulus(4'd11, 1'b1);   
    stimulus(4'd0, 1'b0);   
    #150;
    stimulus(4'd10, 1'b1);  
    stimulus(4'd0, 1'b0);  
    #150;
    $finish; end
initial begin
    $monitor("time=%0t | clk=%b | rst=%b | din=%b | load=%b | count=%b", 
              $time, clk, rst, din, load, count);  end

endmodule
