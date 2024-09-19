module gr_2_bin(b,g);
  input [3:0] g;
  output [3:0] b;
 
  buf b0(b[3],g[3]);
  xor x1(b[2],g[2],b[3]);
  xor x2(b[1],g[1],b[2]);
  xor x3(b[0],g[0],b[1]);
    
endmodule
  
  
