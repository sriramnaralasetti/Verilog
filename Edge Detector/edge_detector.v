module edgedetector(input clk,signal,output reg y);
reg s;
always@(posedge clk)
begin
s<=signal;
end
always@(*)
begin
if(signal&(~s))
y=1;
else
y=0;
end
endmodule
