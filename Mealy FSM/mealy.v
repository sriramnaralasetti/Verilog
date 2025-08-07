module mealy(input in, input clock, input reset, output reg det);
  parameter s0 = 2'b00, 
            s1 = 2'b01, 
            s2 = 2'b10; 

  reg [1:0] state, nextstate;
  always @(posedge clock or posedge reset) begin
    if (reset)
      state <= s0;
    else
      state <= nextstate;
  end
  always @(state or in) begin
    case (state)
      s0: begin
        nextstate = in ? s1 : s0;
        det = 0;
      end
      s1: begin
        nextstate = in ? s1 : s2;
        det = 0;
      end
      s2: begin
        nextstate = in ? s1 : s0;
        det = in ? 1 : 0; 
      end
      default: begin
        nextstate = s0;
        det = 0;
      end
    endcase
  end
endmodule
