`timescale 1ns / 1ps


module traffic_light_controller #(parameter RED = 2'd2, parameter YELLOW = 2'd1, parameter GREEN = 2'd0)(
    input rst,clk,t,
    output reg [1:0]cnt_sig,hgw_sig
);

reg [2:0] state,next_state;

initial begin
    state = 3'd0; next_state = 3'd0;
    hgw_sig = GREEN; cnt_sig  = RED;
end

always @(posedge clk or posedge rst) begin
    if (rst == 1'b1) begin
        // next_state = 3'd0;
        state = 3'd0;
    end
    else begin
        state = next_state;
    end
end

always @(state) begin
    case (state)
        3'd0: begin
                hgw_sig = GREEN; cnt_sig  = RED;
              end
        3'd1: begin
                hgw_sig = YELLOW; cnt_sig  = RED;
              end
        3'd2: begin
                hgw_sig = RED; cnt_sig  = RED;
              end
        3'd3: begin
                hgw_sig = RED; cnt_sig  = GREEN;
              end
        3'd4: begin
                hgw_sig = RED; cnt_sig  = YELLOW;
              end 
    endcase
end

always @(t or state) begin
    case (state)
        3'd0: begin
                if (t == 1'b1)
                    next_state = 3'd1;
                else
                    next_state = 3'd0;
              end
        3'd1: begin
                next_state = 3'd2;
              end
        3'd2: begin
                if (t == 1'b1)
                    next_state = 3'd3;
                else
                    next_state = 3'd0;
              end
        3'd3: begin
                if (t == 1'b0)
                    next_state = 3'd4;
                else
                    next_state = 3'd3;
              end
        3'd4: begin
                next_state = 3'd2;
              end 
        default: next_state = 3'd0;
    endcase
end

endmodule
