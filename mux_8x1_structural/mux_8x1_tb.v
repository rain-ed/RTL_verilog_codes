module mux_8x1_tb;
  reg [7:0] i;
  reg [2:0] sel;
  wire out;
  
  mux_8x1 dut(.i(i), .sel(sel), .out(out));
  
  initial begin
    repeat(10) begin
      {i,sel}=$random;
      #10;
      $display("i=%b   sel=%b   out=%b",i,sel,out);
    end
  end
endmodule
