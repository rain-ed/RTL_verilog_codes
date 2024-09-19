module mux_2(i0,i1,sel,y);
  input i0, i1;
  input sel;
  output reg y;
  
  wire seln, m1, m2;
  
  not (seln,sel);
  and a1(m1, seln, i0);
  and a2(m2, sel, i1);
  or o1(y, m1, m2);
  
endmodule
