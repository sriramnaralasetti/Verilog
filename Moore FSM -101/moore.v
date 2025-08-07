module moore(input in, input clock, input reset, output det);
  parameter s0 = 2'b00, s1 = 2'b01,s2 = 2'b10, s3 = 2'b11; 
  reg [1:0] state, nextstate;
  always @(posedge clock or posedge reset) begin
    if (reset)
      state <= s0;
    else
      state <= nextstate;
  end
  always @(state ,in) begin
    case (state)
      s0: if(in==1)
        nextstate = s1;
        else
         nextstate = s0;
     
      s1: if(in==0)
        nextstate = s2;
        else
         nextstate = s1;
       
       s2: if(in==1)
        nextstate = s3;
        else
         nextstate = s0;
     
       s3: if(in==1)
        nextstate = s1;
        else
         nextstate = s2;
      
      default:
        nextstate = s0;
       
    endcase
  end
assign det = (state == s3)?1'b1:1'b0;
endmodule
