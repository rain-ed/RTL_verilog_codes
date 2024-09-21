module mux_2(i0,i1,sel,y);
  input i0, i1;
  input sel;
  output reg y;
  
  assign y=(~sel) & i0 | sel & i1;		//assign y= sel ? i1:i0;
  
endmodule
