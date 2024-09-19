module bin_2_gr(b,g);
  input [3:0]b;
  output reg [3:0]g;

   assign g[3]=b[3];
   assign g[2]=b[2] ^ b[3];
   assign g[1]=b[1] ^ b[2];
   assign g[0]=b[0] ^ b[1];
  
endmodule
