module mux_4x1(i, sel, y);
  input [3:0] i;
  input [1:0] sel;
  output y;
  
  assign y = sel[1] ? (sel[0] ? i[3] : i[2]) : (sel[0] ? i[1] : i[0]);

endmodule
