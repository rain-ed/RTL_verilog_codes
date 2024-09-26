module lfsr(clk, rst, seq_out);
  input clk, rst;
  output reg [3:0] seq_out;
  
  always@(posedge clk) begin
    if(rst) 
      seq_out <= 4'hf;
    else 
      seq_out <= {seq_out[2:0], seq_out[3] ^ seq_out[2]};
  end
endmodule
