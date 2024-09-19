module mux_2x1_tb;
  reg i0, i1;
  reg sel;
  wire y;
  
  mux_2 dut(.i0(i0), .i1(i1), .sel(sel), .y(y));
  
  initial begin 
    
    $monitor("i0=%b  i1=%b  sel=%b  y=%b",i0,i1,sel,y);
    
     i0=0; i1=0; sel=0;
    #10 i0=0; i1=0; sel=1;
    #10 i0=0; i1=1; sel=0;
    #10 i0=0; i1=1; sel=1;
    #10 i0=1; i1=0; sel=0;
    #10 i0=1; i1=0; sel=1;
    #10 i0=1; i1=1; sel=0;
    #10 i0=1; i1=1; sel=1;
    
  end
endmodule
