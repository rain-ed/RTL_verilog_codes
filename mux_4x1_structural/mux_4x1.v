module mux_4x1(y,s,i);
  input [3:0] i;
  input [1:0] s;
  output y;
  wire t1,t2,t3,t4;
  
  and a1(t1,~s[1],~s[0],i[0]);
  and a2(t2,~s[1],s[0],i[1]);
  and a3(t3,s[1],~s[0],i[2]);
  and a4(t4,s[1],s[0],i[3]);
  or o1(y,t1,t2,t3,t4);
  
endmodule
