module priority_enc( a, y);
  input [7:0] a;
  output reg [2:0] y;
  
  always@(*) begin
      casez(a)					//casez: This allows us to use don't-care (?) bits to simplify the priority checking.
        8'b1???????: y=3'b111;			//high to low is important for time
        8'b01??????: y=3'b110;
        8'b001?????: y=3'b101;
        8'b0001????: y=3'b100;
        8'b00001???: y=3'b011;
        8'b000001??: y=3'b010;
        8'b0000001?: y=3'b001;
        8'b00000001: y=3'b000;   
        default: y=3'bxxx;
      endcase
    end
endmodule
