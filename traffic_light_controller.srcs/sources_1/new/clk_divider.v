`timescale 1ns / 1ps


// frquency = 125MHz/125000000 = 1Hz
// module clk_divider #(parameter DIVISOR = 32'd125000000)(rst,Fclk,clk);
module clk_divider #(parameter DIVISOR = 32'd2)(rst,Fclk,clk);
input rst,Fclk;
output reg clk;

reg [31:0] cnt = 32'd0;

always @(posedge Fclk or rst) begin
    if (rst == 1'b1) begin
        cnt <= 32'd0;
        clk <= 1'b0;
    end
    else begin
        cnt <= cnt + 32'd1;
        if(cnt>=(DIVISOR-1)) begin
            cnt <= 32'd0;
        end
        clk <= cnt<DIVISOR/2 ? 1'b1:1'b0;
    end
end

endmodule
