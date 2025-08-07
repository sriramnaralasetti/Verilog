module moore1010(input in, clk,rst,
                  output det
                );
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;
reg [2:0]pre,next;
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
s3:if(~in)
 next=s4;
else
next=s1;
s4:if(in)
next=s3;
endcase
end
assign det=(pre==s4)?1'b1:1'b0;
endmodule
