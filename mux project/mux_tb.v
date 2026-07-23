`timescale 1ns/1ps

module encoder4x2_tb;

reg [3:0] in;
wire [1:0] out;

// Instantiate the encoder
encoder4x2 uut (
    .in(in),
    .out(out)
);

// Generate VCD file
initial begin
    $dumpfile("encoder4x2.vcd");
    $dumpvars(0, encoder4x2_tb);
end

// Test cases
initial begin

    $display("Time\tInput | Output");
    $monitor("%0t\t%b | %b", $time, in, out);

    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;

    $finish;
end

endmodule