module mux8to1_tb();
reg [7:0]i;
reg [2:0]sel;
wire y;
mux8to1 dut(i,sel,y);
initial
begin
i=8'b00110011;
 sel=3'b000;
#5 sel=3'b001;
#5 sel=3'b010;
#5 sel=3'b011;
#5 sel=3'b100;
#5 sel=3'b101;
#5 sel=3'b110;
#5 sel=3'b111;
#5;
end
endmodule