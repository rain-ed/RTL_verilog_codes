module mux_8x1(i,sel,out);
  input [7:0] i;
  input [2:0] sel;
  output out;
  
  assign out=sel[2] ? (sel[1] ? (sel[0] ? i[7] : i[6]) : (sel[0] ? i[5] : i[4])) : (sel[1] ? (sel[0] ? i[3] : i[2]) :(sel[0] ? i[1]: i[0]));
  
  
endmodule
      
