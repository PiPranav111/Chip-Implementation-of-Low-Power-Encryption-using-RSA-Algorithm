module rsa_decrypt(
    input [6:0] C,
    input [6:0] d,
    input [6:0] n,
    input clk, reset,
    output reg [6:0] decrypted_M
);
    integer j;
    reg [15:0] res;
    always @(posedge clk) begin
        if (reset) begin
            decrypted_M <= 0; // Reset output
        end else begin
            res = 1;
            for (j = 0; j < d; j = j + 1)  begin
           
                res = (res * C) % n; // Perform modular multiplication
            end  
            decrypted_M <= res[6:0]; // Take the lower 7 bits as the result
        end
    end
    
endmodule
