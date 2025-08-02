module alu(a,b,sel,y,x);
input [3:0]a,b;
input [3:0]sel;
output reg[3:0]y;
output reg[7:0]x;
parameter ADD=4'B0000,SUB=4'B0001,MUL=4'B0010,
          DIV=4'B0011,MOD=4'B0100,EXP=4'B0101,
          INC=4'B0110,DEC=4'B1000,AND=4'B1001,
          OR=4'B1010,NAND=4'B1011,NOR=4'B1100,
          XOR=4'B1101,XNOR=4'B1110,INV=4'B1111;
always @(a,b,sel) begin
case(sel)
    ADD:y=(a+b);
    SUB:y=(a-b);
    MUL:x=(a*b);
    DIV:y=(a/b);
    INC:y=(b+1);
    DEC:y=(a+1);
    AND:y=(a&b);
    OR:y=(a|b);
    NAND:y=~(a&b);
    NOR:y=~(a|b);
    XOR:y=(a^b);
    XNOR:y=~(a^b);
    INV:y=(~a);
default:y=4'b0;
endcase
end
endmodule
