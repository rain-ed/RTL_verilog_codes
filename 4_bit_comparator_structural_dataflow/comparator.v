//Structural modeling is when you only use module instantiations (like your 1-bit comparators) and connect them explicitly using wires.

module comparator_1bit(a,b,equal,greater,lesser);
  input a,b;
  output equal, greater, lesser;
 
  wire an, bn;
 
  not (an, a);
  not (bn, b);
 
  and a1(greater, a, bn);
  and a2(lesser, an, b);
  xnor x1(equal, a, b);

endmodule
 
module comparator_4bit(a,b,equal,greater,lesser);
  input [3:0] a,b;
  output equal, greater, lesser;
 
  comparator_1bit c1(a[0], b[0], e0, g0, l0);
  comparator_1bit c2(a[1], b[1], e1, g1, l1);
  comparator_1bit c3(a[2], b[2], e2, g2, l2);
  comparator_1bit c4(a[3], b[3], e3, g3, l3);
 
  assign equal=e0 & e1 & e2 & e3;
  assign greater= (g3|(e3 & (g2|(e2&(g1|(e1& g0))))));
  assign lesser= (l3 | (e3 & (l2 | (e2 & (l1 | (e1 & l0))))) );;
 
endmodule  
