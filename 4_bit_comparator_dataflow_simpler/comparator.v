module comparator_4bit(a,b,equal,greater,lesser);
  input [3:0] a,b;
  output equal, greater, lesser;
  
  assign equal= (a==b);
  assign greater= (a>b);
  assign lesser= (a<b);
  
endmodule
