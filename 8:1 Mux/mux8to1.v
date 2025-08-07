module mux8to1(input [7:0]i,
               input [2:0]sel,
               output reg y
                   
               );
always@(*)
begin
if(sel==3'd0)
y=i[0];
else if(sel==3'd1)
y=i[1];
else if(sel==3'd2)
y=i[2];
else if(sel==3'd3)
y=i[3];
else if(sel==3'd4)
y=i[4];
else if(sel==3'd5)
y=i[5];
else if(sel==3'd6)
y=i[6];
else 
y=i[7];
end
endmodule
