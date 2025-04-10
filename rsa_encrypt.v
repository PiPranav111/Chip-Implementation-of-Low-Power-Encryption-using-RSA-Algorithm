module rsa_encrypt(
    input  [6:0] n, M, e,
    input clk, reset,
    output reg [6:0] C
);
    reg [15:0] result;
    integer i;
    always @(posedge clk) begin
        if (reset) begin
            C <= 0; // Reset output
        end else begin
            result = 1;
            for (i = 0; i < e; i = i + 1) begin
            
                result = (result * M) % n; // Modular multiplication
            end  
            C <= result[6:0]; // Take the lower 7 bits as the result
        end
    end
    
endmodule
