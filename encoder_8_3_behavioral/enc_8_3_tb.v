module enc_8_3_tb;
  reg [7:0] a;
  reg en;
  wire [2:0] y;
  
  encoder_8_3 dut( .a(a), .en(en), .y(y));
  
  initial begin
    $monitor(" en=%b  a=%b  y=%b", en, a, y);
     en=0; a=8'b00000000; 
    #10 en=1; a=8'b00000000;
    #10 en=1; a=8'b00000010;
    #10 en=1; a=8'b00000100;
    #10 en=1; a=8'b00001000;
    #10 en=1; a=8'b00010000;
    #10 en=1; a=8'b00100000;
    #10 en=1; a=8'b01000000;
    #10 en=1; a=8'b10000000;
    #10 $finish;
    
  end
endmodule
