module mealy1101(input in, clk,rst,
                  output reg det );
parameter s0=3'b00, s1=3'b01,  s2=3'b10,s3=3'b11;
reg [1:0]pre,next;
always @(posedge clk)
begin
if(rst)
pre<=s0;
else 
pre<=next;
end
always@(*)
begin
next=s0;
case(pre)
s0:if(in)
next=s1;
s1:if(~in)
next=s2;
else
next=s1;
s2: if(in)
next=s3;
s3:if(in)
 next=s1;
else
next=s2;
endcase
end
always@(posedge clk)
begin
det<=0;
case(pre)
s3:if(in)
det<=1'b1;
endcase
end
endmodule
