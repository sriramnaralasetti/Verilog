module cla_adder(
  input [3:0] a, b,
  output [3:0] s,
  output cout
);
  wire [3:0] p, g;
  wire [3:0] c;

  assign p = a ^ b;  
  assign g = a & b; 
  
  assign c[0] = g[0];
  assign c[1] = g[1] | (p[1] & g[0]);
  assign c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]);
  assign c[3] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);

  
  assign s[0] = p[0];
  assign s[1] = p[1] ^ c[0];
  assign s[2] = p[2] ^ c[1];
  assign s[3] = p[3] ^ c[2];

 
  assign cout = c[3];

endmodule
