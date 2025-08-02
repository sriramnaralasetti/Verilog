module decoder2to4(en,d,y);
input en;
input [1:0]d;
output reg[3:0]y;
always @(*)
begin
if(en==1'b1)
y=4'bxxxx;
else
case(d)
2'd0:y=4'b0001;
2'd1:y=4'b0010;
2'd2:y=4'b0100;
2'd3:y=4'b1000;
default: y = 4'b0000;

endcase
end
endmodule