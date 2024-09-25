module sr_ff(q, qbar, s, r, clk, rst);
  input s, r, clk, rst;
  output reg q, qbar;
  
  always@(posedge clk) begin
    if(rst) begin
      q<=1'b0;
    end
    else begin
      case({s,r})
        2'b00: q<= q;
        2'b01: q<= 1'b0;
        2'b10: q<= 1'b1;
        2'b11: q<= 1'bx;
        default: q<=q;
      endcase
    end
  end
  assign qbar=~q;
endmodule
