module decoder3to8_tb();
reg en;
reg [2:0]d;
wire [7:0]y;
decoder3to8 dut(en,d,y);
task initialize();
begin
en=1;
{d}=3'b000;
end
endtask
task stimilus(input [2:0]i);
begin
#5;
d=i;
end
endtask
initial
begin
initialize;
stimilus(3'b000);
stimilus(3'b001);
stimilus(3'b010);
stimilus(3'b011);
stimilus(3'b100);
stimilus(3'b101);
stimilus(3'b110);
stimilus(3'b111);
end
initial
begin
$monitor("%0t,en=%b,d=%b,y=%b",$time,en,d,y);
end
endmodule

