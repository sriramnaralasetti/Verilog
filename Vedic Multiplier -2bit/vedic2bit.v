
module vedic2bit (
    input  [1:0] a,
    input  [1:0] b,
    output [3:0] v,
    output       c
);
    wire p0, p1, p2, p3;
    wire sum1, carry1;
    wire sum2, carry2;

    assign p0 = a[0] & b[0];
    assign p1 = a[1] & b[0];
    assign p2 = a[0] & b[1];
    assign p3 = a[1] & b[1];

    assign v[0] = p0;

    
    assign sum1   = p1 ^ p2;
    assign carry1 = p1 & p2;

    assign v[1] = sum1;

    
    assign sum2   = p3 ^ carry1;
    assign carry2 = p3 & carry1;

    assign v[2] = sum2;
    assign v[3] = carry2;

    assign c = v[3]; 
endmodule
