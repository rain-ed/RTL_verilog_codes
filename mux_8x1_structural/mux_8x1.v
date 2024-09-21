module mux_8x1(i,sel,out);
  input [7:0] i;
  input [2:0] sel;
  output out;
  
  wire w1,w2,w3,w4,w5,w6,w7,w8; 	//Even if you don't wire output it'll f you don’t specify a type for a signal, it defaults to wire
  
  and(w1, ~sel[2], ~sel[1], ~sel[0], i[0]);
  and(w2, ~sel[2], ~sel[1], sel[0], i[1]);
  and(w3, ~sel[2], sel[1],~sel[0], i[2]);
  and(w4, ~sel[2], sel[1], sel[0], i[3]);
  and(w5, sel[2], ~sel[1], ~sel[0], i[4]);
  and(w6, sel[2], ~sel[1], sel[0], i[5]);
  and(w7, sel[2], sel[1], ~sel[0], i[6]);
  and(w8, sel[2], sel[1], sel[0], i[7]);
  or(out,w1,w2,w3,w4,w5,w6,w7,w8);
  
  
endmodule
