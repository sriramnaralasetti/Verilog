module mux16to1_tb();
reg [15:0]i;
reg [3:0]sel;
wire y;
mux16to1 dut(i,sel,y);
task initialize();
begin
sel=4'd0;
i=16'd0;
end
endtask
task stimilus (input [3:0]a,input[15:0]b);
begin
sel=a;
i=b;
#5;
end

endtask

initial
begin
initialize;
stimilus(4'b0101,16'b0000001111111111);
stimilus(4'd9,16'd14);
stimilus(4'd4,16'd7);
stimilus(4'd8,16'd10);
end
endmodule
