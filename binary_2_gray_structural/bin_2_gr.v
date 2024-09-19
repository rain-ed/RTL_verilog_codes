module bin_2_gr(b,g);
  input [3:0]b;
  output reg [3:0]g;
  
  xor x0(g[3],b[3]);		//buf x0(g[3],b[3]);
  xor x1(g[2],b[2],b[3]);
  xor x2(g[1],b[1],b[2]);
  xor x3(g[0],b[0],b[1]);
  
endmodule
