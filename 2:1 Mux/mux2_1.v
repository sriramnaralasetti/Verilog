
module mux2_1(i0,i1,sel,y);
input i0,i1;
input sel;
output y;
assign y=(sel==1'b0)?i0:i1;
endmodule

