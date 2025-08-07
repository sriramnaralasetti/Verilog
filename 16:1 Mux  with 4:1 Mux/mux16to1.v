module mux4to1(input [3:0]i,
               input [1:0]sel,
               output reg y
                   );
always@ (*)
begin
case(sel)
2'b00:y=i[0];
2'b01:y=i[1];
2'b10:y=i[2];
2'b11:y=i[3];
default:y=0;
endcase
end
endmodule



module mux16to1(input [15:0] i, input [3:0] sel, output y);

wire w1,w2,w3,w4;
mux4to1 m1(.i(i[3:0]), .sel(sel[1:0]), .y(w1));
mux4to1 m2(.i(i[7:4]), .sel(sel[1:0]), .y(w2));
mux4to1 m3(.i(i[11:8]), .sel(sel[1:0]), .y(w3));
mux4to1 m4(.i(i[15:12]), .sel(sel[1:0]), .y(w4));
mux4to1 m5(.i({w1, w2, w3, w4}), .sel(sel[3:2]), .y(y));

endmodule