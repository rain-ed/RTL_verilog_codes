module mux_4x1_tb;
  reg [3:0] i;
  reg [1:0] sel;
  wire y;
  
  mux_4x1 dut(.i(i), .sel(sel), .y(y));
  
  initial begin 
    
    $monitor("i=%b  sel=%b  y=%b-->i[%d]",i,sel,y,sel);
    
     i=4'b0000; sel=00;
    #10 i=4'b0001; sel=00;
    #10 i=4'b0010; sel=01;
    #10 i=4'b0100; sel=10;
    #10 i=4'b1000; sel=11;
    #10 i=4'b1100; sel=00;
    #10 i=4'b1111; sel=10;
    #10 i=4'b0010; sel=11;
    #10 $finish;
    
  end
endmodule
