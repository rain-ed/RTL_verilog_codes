module comparator_4bit(a, b, equal, greater, lesser);
  input [3:0] a,b;
  output equal, greater, lesser;
  
  wire g1,g2,g3,g0;
  
  assign g3= (a[3] & ~b[3]);
  assign g2= (a[3] ~^ b[3]) & (a[2] & ~b[2]);
  assign g1= (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] & ~b[1]);
  assign g0= (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & (a[0] & ~b[0]);
  
  assign greater= g0 | g1 | g2 | g3 ;
  
  wire e1,e2,e3,e0;
  
  assign e3= ~(a[3]^b[3]);
  assign e2= ~(a[2]^b[2]);
  assign e1= ~(a[1]^b[1]);
  assign e0= ~(a[0]^b[0]);
  
  assign equal= e0 & e1 & e2 & e3;
  
  wire l0,l1,l2,l3;
  
  assign l3= (~a[3] & b[3]);
  assign l2= (a[3] ~^ b[3]) & (~a[2] & b[2]);
  assign l1= (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (~a[1] & b[1]);
  assign l0= (a[3] ~^ b[3]) & (a[2] ~^ b[2]) & (a[1] ~^ b[1]) & (~a[0] & b[0]);
  
  assign lesser= l0 | l1 | l2 | l3;
  
endmodule
  
