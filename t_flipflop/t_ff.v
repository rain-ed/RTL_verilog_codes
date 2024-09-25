module t_ff(q, qbar, t, clk, rst);
  input t, clk, rst;
  output reg q, qbar;
  
  always@(posedge clk) begin
    if(rst) begin
      q<=1'b0;
    end
    else begin
      case(t)
        1'b0: q <= q;
        1'b1: q <= ~q;    
      endcase
    end
  end
  assign qbar=~q;
endmodule
