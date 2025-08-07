
module mod12counter (
    input wire clk,
    input wire rst,
    input wire load,
    input wire [3:0] din,
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (rst)
            count <= 4'd0;
        else if (load)
            count <= din % 12;
        else if (count == 4'd11)
            count <= 4'd0;
        else
            count <= count + 1;
    end

endmodule
