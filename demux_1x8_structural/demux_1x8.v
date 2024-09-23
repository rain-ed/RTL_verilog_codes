module demux_1x8(din,sel,y);
  input din;
  input [2:0] sel;
  output [7:0] y;
  
  and (y[0], ~sel[2], ~sel[1], ~sel[0], din);
  and (y[1], ~sel[2], ~sel[1], sel[0], din);
  and (y[2], ~sel[2], sel[1], ~sel[0], din);
  and (y[3], ~sel[2], sel[1], sel[0], din);
  and (y[4], sel[2], ~sel[1], ~sel[0], din);
  and (y[5], sel[2], ~sel[1], sel[0], din);
  and (y[6], sel[2], sel[1], ~sel[0], din);
  and (y[7], sel[2], sel[1], sel[0], din);
  
endmodule
