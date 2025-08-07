module updowncount(input [3:0]din,
                    input clk,rst,
                    input load,mode,
                    output reg [3:0]count
                   );
always@(posedge clk)
begin
if(rst)
count<=4'b0000;
else if(load==1)
count<=din;
else if(mode==0)
count<=count+4'b0001;
else
count<=count-4'b0001;
end
endmodule



