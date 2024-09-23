module demux_1x8_tb;
  reg din;
  reg [2:0] sel;
  wire [7:0] y;
  
  demux_1x8 dut( .din(din), .sel(sel), .y(y));
  
  initial begin
    // Basic structured test cases for sanity check
    din = 1'b1;
    
    sel = 3'b000; #10;
    $display("din=%b  sel=%b  y=%b", din, sel, y);
    
    sel = 3'b001; #10;
    $display("din=%b  sel=%b  y=%b", din, sel, y);
    
    sel = 3'b010; #10;
    $display("din=%b  sel=%b  y=%b", din, sel, y);
    
    sel = 3'b011; #10;
    $display("din=%b  sel=%b  y=%b", din, sel, y);
    
    sel = 3'b100; #10;
    $display("din=%b  sel=%b  y=%b", din, sel, y);
    
    sel = 3'b101; #10;
    $display("din=%b  sel=%b  y=%b", din, sel, y);
    
    sel = 3'b110; #10;
    $display("din=%b  sel=%b  y=%b", din, sel, y);
    
    sel = 3'b111; #10;
    $display("din=%b  sel=%b  y=%b", din, sel, y);
    
    // Now throw in your random inputs, sure, why not?
    repeat(10) begin
      {din,sel} = $random;
      #10;
      $display("Random test: din=%b  sel=%b  y[%d]=%b", din, sel, sel, y);
    end
  end
endmodule
