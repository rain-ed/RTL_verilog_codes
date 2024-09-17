module comparator_1bit(a,b,equal,greater, lesser);
  input a,b;
  output equal,greater,lesser;
  
  wire an,bn;
  
  not (bn,b);           //B ------> B'
  and a1(greater,a,bn); //A>B ----> A.B'
  not (an,a);           //A ------> A'
  and a2(lesser,an,b);  //A<B ----> A'.B
  xnor x1(equal,a,b);   //A=B ----> A'B'+A.B
  

endmodule

