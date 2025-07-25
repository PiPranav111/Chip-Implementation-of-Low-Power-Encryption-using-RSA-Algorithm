module testbench;
    reg [3:0] p, q; 
    reg [6:0] M;
    
    reg clk, reset;
    wire [6:0] n,C; 
    wire [6:0] phi_n,  d,e;
    wire [6:0] decrypted_M;
    wire done;
     
    // Instantiate the modules
    mod_exp kg(.p(p), .q(q), .clk(clk), .reset(reset), .n(n), .phi_n(phi_n), .e(e), .d(d), .done(done));
    rsa_encrypt enc( .e(e), .n(n),.M(M),.reset(reset), .C(C),.clk(clk)); 
    rsa_decrypt dec(.C(C), .d(d), .n(n),.reset(reset), .decrypted_M(decrypted_M),.clk(clk));
    
    

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize inputs
        clk = 0;
        reset = 1;
        p = 5; 
        q = 11; 
        M = 53;
   

        // Apply reset
        #10 reset = 0;

        // Wait for key generation to complete
        wait (done);

        // Display the results
        $display("p = %d, q = %d", p, q);
        $display("n = %d, phi_n = %d", n, phi_n);
        $display("e = %d, d = %d", e, d);
        $display("Original Message = %d", M);
        $display("Encrypted Message = %d", C);
        $display("Decrypted Message = %d", decrypted_M);

        // End simulation       #20 $finish;
    end
    
endmodule
