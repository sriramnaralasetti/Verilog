module mux2to1withbuf_tb();
reg i0,i1;
reg sel;
wire y;
mux2to1withbuf dut(i0,i1,sel,y);
initial
begin
$monitor("time=%t,i0=%b,i1=%b,sel=%b,y=%b",$time,i0,i1,sel,y);

i0=1'b0; i1=1'b1;
sel=1'b0;
#5 sel=1'b1;
#5;
end

endmodule