module comparator_1bit(a,b,equal,greater, lesser);
  input a,b;
  output equal,greater,lesser;
  
  assign equal= ~(a ^ b);   //A=B ----> A'B'+A.B
  assign greater= a & (~b); //A>B ----> A.B'
  assign lesser= (~a) & b;   //A<B ----> A'.B
  
endmodule
  
