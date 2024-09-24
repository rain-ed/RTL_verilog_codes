module encoder_8_3( y, a);
  input [7:0] a;
  output [2:0] y;
  
  or ( y[0], a[1], a[3], a[5], a[7]);
  or ( y[1], a[2], a[3], a[6], a[7]);
  or ( y[2], a[4], a[5], a[6], a[7]);
  
endmodule
