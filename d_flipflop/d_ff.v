module d_ff(q, qbar, clk, d);
  input d, clk;
  output reg q, qbar;
 
  assign qbar=~q;
  
  always@(posedge clk) begin
    q<=d;
  end
 
endmodule
