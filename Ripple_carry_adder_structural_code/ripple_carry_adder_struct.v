module fa(a,b,c,sum,carry);
  input a,b,c;
  output sum,carry;
  
  wire n1,n2,n3; //connection
  
  xor x1(sum,a,b,c);

  and a1(n1,a,b); //gate-level connection
  and a2(n2,b,c);
  and a3(n3,a,c);

  or o1(carry,n1,n2,n3);
  
endmodule
  


module pa(a,b,c,sum,carry);
	input [3:0] a,b;
 	input c;
  	output [3:0]sum;
    output carry;
         
	wire c1,c2,c3;
         
	fa f1(a[0],b[0],c,sum[0],c1);
 	fa f2(a[1],b[1],c1,sum[1],c2);
  	fa f3(a[2],b[2],c2,sum[2],c3);
  	fa f4(a[3],b[3],c3,sum[3],carry);
  
endmodule 
