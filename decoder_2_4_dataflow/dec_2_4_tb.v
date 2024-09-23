module dec_2_4_tb;
  reg [1:0] a;
  reg en;
  wire [3:0] y;
  
  decoder_2_4 dut(.a(a), .en(en), .y(y));
  
  initial begin
    
    $monitor(" en=%b  a=%b  y=%b", en,a,y);
    
    en=0; a=2'b00; #10;
    en=1; a=2'b00; #10;
    en=1; a=2'b01; #10;
    en=1; a=2'b10; #10;
    en=1; a=2'b11; #10;
    $finish;
  end
endmodule
