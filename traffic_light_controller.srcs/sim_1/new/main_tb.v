`timescale 1ns / 1ps


module main_tb();
reg rst,Fclk,t;
wire [1:0]cnt_sig,hgw_sig;

main dut(.rst(rst), .Fclk(Fclk), .t(t), .cnt_sig(cnt_sig), .hgw_sig(hgw_sig));

initial begin
    Fclk = 1'b0;
    forever #8 Fclk = ~Fclk;
end

initial begin
    rst = 1'b1; t = 1'b0;
    #18 rst = 1'b0;
    #80 t = 1'b1;
    #160 t = 1'b0;
    #100 t = 1'b1;
end

endmodule
