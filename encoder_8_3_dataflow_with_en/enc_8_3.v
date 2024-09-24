module encoder_8_3( a, en, y);
  input [7:0] a;
  input en;
  output [2:0] y;
  
  assign y[0]= en ? (a[1] | a[3] | a[5] | a[7]) : 3'b0;
  assign y[1]= en ? (a[2] | a[3] | a[6] | a[7]) : 3'b0;
  assign y[2]= en ? (a[4] | a[5] | a[6] | a[7]) : 3'b0;
    
endmodule
