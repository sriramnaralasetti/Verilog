
module pipo (
    input wire clk,            
    input wire rst,            
    input wire load,           
    input wire [3:0] din,      
    output reg [3:0] dout    
);


always @(posedge clk) begin
    if (rst)
        dout <= 4'b0000;       
    else if (load)
        dout <= din;        
end

endmodule
