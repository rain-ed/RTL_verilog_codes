module decoder_2_4( a, en, y);
  input [1:0] a;
  input en;
  output reg [3:0] y;
  
  assign y[0] = en & ~a[1] & ~a[0];
  assign y[1] = en & ~a[1] & a[0];
  assign y[2] = en & a[1] & ~a[0];
  assign y[3] = en & a[1] & a[0];
  
endmodule
