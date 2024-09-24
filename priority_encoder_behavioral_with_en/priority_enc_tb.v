module priority_enc_tb;
  reg [7:0] a;
  reg en;
  wire [2:0] y;
  
  priority_enc dut(.a(a), .en(en), .y(y));
  
  initial begin
    $monitor("a=%b   y=%b", a,y);
    en=0; a=8'b00000000;
    #10 en=1; a=8'b00000000;
    #10 en=1; a=8'b00000010;
    #10 en=1; a=8'b00000100;
    #10 en=1; a=8'b00001000;
    #10 en=1; a=8'b00010000;
    #10 en=1; a=8'b00100000;
    #10 en=1; a=8'b01000001;
    #10 en=1; a=8'b11111111;
	#10;
    
    repeat(5) begin
      a=$random;
      #10;
      $display("a=%b   y=%b", a,y);
    end
  end
endmodule
