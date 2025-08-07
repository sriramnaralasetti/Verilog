module vedic2bit_tb();
reg [1:0]a,b;
wire c;
wire [3:0]v;

vedic2bit dut(.a(a),.b(b),.c(c),.v(v));
initial
begin
a=2'b00; b=2'b00;
#5 a=2'b01; b=2'b01;
#5 a=2'b10; b=2'b11;
#5 a=2'b11; b=2'b01;
#5 a=2'b11; b=2'b11;
#5;


end
endmodule
