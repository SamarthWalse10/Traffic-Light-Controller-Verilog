`timescale 1ns / 1ps


// frquency = 125MHz/125000000 = 1Hz
// module clk_divider #(parameter DIVISOR = 32'd125000000)(rst,Fclk,clk);
module clk_divider #(parameter DIVISOR = 32'd2)(Fclk,clk);
input Fclk;
output reg clk;

reg [31:0] cnt = 32'd0;

always @(posedge Fclk) begin
    cnt <= cnt + 32'd1;
    if(cnt>=(DIVISOR-1)) begin
        cnt <= 32'd0;
    end
    clk <= cnt<DIVISOR/2 ? 1'b1:1'b0;
end

endmodule
