



module mux_with_decoder(input [1:0]d,
                      
                        input i0,i1,i2,i3,
                        output y
                        );
wire w1,w2,w3,w4;
decoder3 g1(d,w1,w2,w3,w4);
 tristate_buf b1(.a(i0),.ctrl(w1),.b(y));
 tristate_buf b2(.a(i1),.ctrl(w2),.b(y));
 tristate_buf b3(.a(i2),.ctrl(w3),.b(y));
 tristate_buf b4(.a(i3),.ctrl(w4),.b(y));

endmodule
