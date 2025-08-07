module tristatebuf(input a,ctrl,
                   output y
                  );
assign y=(ctrl==1)?a:1'bz;
endmodule
