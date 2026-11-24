`timescale 1ns / 1ps

module tb_booth_multiplier;

reg clk;
reg signed [7:0] A, B;
wire signed [15:0] P;

low_power_booth_multiplier uut (
    .clk(clk),
    .A(A),
    .B(B),
    .P(P)
);

// Clock generation (100 MHz)
always #5 clk = ~clk;

initial begin
    clk = 0;

    $monitor("Time=%0t A=%d B=%d P=%d", $time, A, B, P);

    A = 5;   B = 3;   #10;
    A = -4;  B = 2;   #10;
    A = 7;   B = -3;  #10;
    A = -6;  B = -2;  #10;
    A = 15;  B = 10;  #10;

    $finish;
end

endmodule
