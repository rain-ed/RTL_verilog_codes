module demux_1x8(din,sel,y);
  input din;
  input [2:0] sel;
  output [7:0] y;
  
  // shifts the din bit to the correct output line based on the value of sel
  assign y=din << sel;
  
endmodule
