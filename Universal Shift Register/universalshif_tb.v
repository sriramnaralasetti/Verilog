module  universalshif_tb;
reg clk, rst;
reg shiftleft;
reg shiftright;
reg [1:0]sel;
reg [3:0]parallelin;
wire [3:0]q;
 universalshift dut (.clk(clk),.rst(rst),.shiftleft(shiftleft),.shiftright(shiftright),.sel(sel),.parallelin(parallelin),.q(q));
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk; end
task initialize; begin
    rst = 1'b0;
    parallelin = 4'b0000;
    shiftleft = 1'b0;
    shiftright=1'b0; end endtask
task apply_reset; begin
    @(negedge clk);
    rst = 1'b1;
    @(negedge clk);
    rst = 1'b0; end endtask
task stimulus(input [3:0] i, input l,input k,input[1:0]s); begin
    @(negedge clk);
    parallelin=i;
    shiftleft=l;
    shiftright=k;
    sel = s; end endtask
initial begin
    initialize;    apply_reset;
    stimulus(4'd0, 1'b0,1'b0,2'b00);   
    stimulus(4'd0, 1'b1,1'b0,2'b01); 
    stimulus(4'd0, 1'b0,1'b1,2'b10);   
    stimulus(4'd15, 1'b0,1'b0,2'b11);  
#50;   $finish; end
initial begin
    $monitor("time=%0t | clk=%b | rst=%b |sel=%b| shiftleft=%b | shiftright=%b | parallelin=%b|q=%b", 
             $time, clk, rst,sel, shiftleft,shiftright,parallelin,q);  end
endmodule
