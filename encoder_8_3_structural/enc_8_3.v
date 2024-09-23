module encoder_8_3(
    input [7:0] a,
    input en,
    output [2:0] y
);
    wire [7:0] w; 
    wire [2:0] temp;

    and g0(w[0], a[0], en); // For a[0]
    and g1(w[1], a[1], en); // For a[1]
    and g2(w[2], a[2], en); // For a[2]
    and g3(w[3], a[3], en); // For a[3]
    and g4(w[4], a[4], en); // For a[4]
    and g5(w[5], a[5], en); // For a[5]
    and g6(w[6], a[6], en); // For a[6]
    and g7(w[7], a[7], en); // For a[7]

    or o0(temp[0], w[1], w[3], w[5], w[7]); // y[0]
    or o1(temp[1], w[2], w[3], w[6], w[7]); // y[1]
    or o2(temp[2], w[4], w[5], w[6], w[7]); // y[2]

    assign y = en ? temp : 3'b000; // Set to 000 when not enabled

endmodule
