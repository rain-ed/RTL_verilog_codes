module encoder_8_3( a, en, y);
  input [7:0] a;
  input en;
  output reg [2:0] y;
  
  always@(*) begin
    if(en) begin
      y[0]=a[1] | a[3] | a[5] | a[7];
      y[1]=a[2] | a[3] | a[6] | a[7];
      y[2]=a[4] | a[5] | a[6] | a[7];
    end
    else begin
      y=3'b000;
    end
    end
endmodule
