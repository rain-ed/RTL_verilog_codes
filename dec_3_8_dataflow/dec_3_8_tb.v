module dec_3_8_tb;
  reg [2:0] a;
  reg en;
  wire [7:0] y;
  
  dec_3_8 dut(.a(a), .en(en), .y(y));
  
  initial begin
    
    $monitor(" en=%b  a=%b  y=%b", en,a,y);
    
    en=0; a=3'b000; #10;
    en=1; a=3'b001; #10;
    en=1; a=3'b010; #10;
    en=1; a=3'b011; #10;
    en=1; a=3'b100; #10;
    
    repeat(5) begin
      en = $random % 2;
      a  = $random % 8;
      #10;
      $display(" en=%b  a=%b  y=%b", en, a, y);
    end
  end
  
