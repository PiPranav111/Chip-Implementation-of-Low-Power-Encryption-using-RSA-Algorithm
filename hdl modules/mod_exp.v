module mod_exp (
    input [3:0] p,
    input [3:0] q,
    //input [6:0] e,
    input clk, reset,
    output reg [6:0] phi_n,
    output reg [6:0]  n,
    output reg [6:0] d,e,
    output reg done
);
    reg [6:0] d_temp;
    reg [1:0] state;
    localparam S_IDLE = 0, S_CALC = 1, S_DONE =2;
    always @(posedge clk or posedge reset) begin 
        if (reset) begin
            n <= 0; 
            phi_n <= 0;
            e <= 3; 
            d <= 0;
            d_temp <= 1;
            state <= S_IDLE;
            done <= 0;
        end else begin
            case (state)
                S_IDLE: begin
                    n <= p * q;
                    phi_n <= (p-1) * (q-1);
                    d_temp <= 1;
                    state <= S_CALC;
                end
                S_CALC: begin
                  if ((e * d_temp) % phi_n == 1) begin
                        d <= d_temp;
                        state <= S_DONE;
                    end else begin
                        d_temp <= d_temp + 1;
                    end
                end
                S_DONE: begin
                    done <= 1; // Only set done once
                end
            endcase
        end
    end
endmodule
