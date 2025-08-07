module mux_with_decoder_tb();
reg [1:0]d;
reg i0,i1,i2,i3;
wire y;
mux_with_decoder dut(d,i0,i1,i2,i3,y);
initial
begin
i0=1'b1; i1=1'b1;i2=1'b0; i3=1'b1;

d=2'b00; 
#5 d=2'b01;
#5 d=2'b10; 
#5 d=2'b11;
end
endmodule

