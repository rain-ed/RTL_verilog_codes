module decoder_2_4( a, en, y);
  input [1:0] a;
  input en;
  output [3:0] y;
  
  wire an0, an1; 
  
  not (an0, a[0]);
  not (an1, a[1]);
  
  and (y[0], an1, an0, en);
  and (y[1], an1, a[0], en);
  and (y[2], a[1], an0, en);
  and (y[3], a[1], a[0], en);
 
  
endmodule
