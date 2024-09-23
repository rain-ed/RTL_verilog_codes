module dec_3_8(en, a, y);
  input en;
  input [2:0] a;
  output [7:0] y;
  
  wire an2,an1,an0;
  
  not(an2,a[2]);
  not(an1,a[1]);
  not(an0,a[0]);
  
  and (y[0], an2, an1, an0, en);
  and (y[1], an2, an1, a[0], en);
  and (y[2], an2, a[1], an0, en);
  and (y[3], an2, a[1], a[0], en);
  and (y[4], a[2], an1, an0, en);
  and (y[5], a[2], an1, a[0], en);
  and (y[6], a[2], a[1], an0, en);
  and (y[7], a[2], a[1], a[0], en);
  
endmodule
