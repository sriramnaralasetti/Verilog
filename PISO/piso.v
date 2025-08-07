
module piso (
    input clk,
    input rst,
    input load,
    input [3:0] din,
    output reg dout
);
    reg [3:0] q;

    always @(posedge clk) begin
        if (rst) begin
            q <= 4'b0000;
            dout <= 1'b0;
        end
        else if (load) begin
            q <= din;
        end
        else begin
            dout <= q[3];       
            q <= q << 1;        
        end
    end
endmodule
