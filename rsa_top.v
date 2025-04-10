module rsa_top( 
    input wire clk,
    input wire reset,
    input wire [6:0] M,
    input wire [3:0] p,
    input wire [3:0] q, 
    output wire [6:0] C,
    output wire [6:0] decrypted_M
);
    wire [6:0] n;      
    wire [6:0] phi_n;       
    wire [6:0] d,e;      
    wire done;         

    mod_exp kg (
        .p(p),
        .q(q),
        .reset(reset), 
        .n(n),
        .phi_n(phi_n),
       .e(e),
        .d(d),
        .clk(clk),
        .done(done)  );
  rsa_encrypt enc (
        .M(M),
        .e(e),
        .n(n),
        .C(C),
        .clk(clk),
        .reset(reset)
    );
  rsa_decrypt dec (
        .C(C),
        .d(d),
        .n(n),
        .decrypted_M(decrypted_M),
        .clk(clk),
        .reset(reset)
    );  
endmodule

