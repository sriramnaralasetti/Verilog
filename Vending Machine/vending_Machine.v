module vending_Machine(input clk,rst,input [1:0]coin ,
                       output reg product,change
                      );
parameter s0=2'b00,s1=2'b01,s2=2'b10;
reg [1:0] present ,next;
always@(posedge clk) begin
if(rst)
present<=s0;
else
present<=next; end
always@(*) begin
next=s0;
case(present)
s0:if(coin==1)
next=s1;
else if(coin==2)
next=s2;
s1:if(coin==1)
next=s2;
else if(coin==2)
next=s0;
else
next=s1;
s2:if((coin==1)||(coin==2))
next=s0;
else
next=s2;
endcase end
always @(posedge clk) begin
    product <= 0;
    change <= 0;
    case (present)
        s1: if (coin == 2'b10) begin
                product <= 1;
            end
        s2: begin
            product <= 1;
            if (coin == 2'b10)
                change <= 1;       
end
endcase
end
endmodule
