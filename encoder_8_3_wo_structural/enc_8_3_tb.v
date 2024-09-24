module encoder_8_3_tb;
  reg [7:0] a;
  wire [2:0] y;
  
  encoder_8_3 dut(.y(y), .a(a));
  
  initial begin 
    $monitor("a=%b  y=%b", a, y);
   
     a=8'b00000000;
    #10 a=8'b00000010;
    #10 a=8'b00000100;
    #10 a=8'b00001000;
    #10 a=8'b00010000;
    #10 a=8'b00100000;
    #10 a=8'b01000000;
    #10 a=8'b10000000;
    
  
  /*repeat(10) begin
    a=$random;
    #10;
    $display("a=%b  y=%b", a, y);
  end*/
    #20 $finish;
  end
endmodule
