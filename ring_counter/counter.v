module ring_counter(clk, rst, count);
  parameter N=4;
  input clk, rst;
  output reg [N-1:0] count;
  
  always@(posedge clk) begin
    if(rst) 
      count <= 4'b0001;
    else 
      count <= {count[0], count[N-1:1]};
  end
endmodule
          
