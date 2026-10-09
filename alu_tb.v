
`timescale 1ns/1ps

module alu_tb;

reg [7:0] A, B;
reg [2:0] sel;
wire [7:0] result;
wire carry;

integer errors;

alu uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result),
    .carry(carry)
);

task check_result;
    input [2:0] operation;
    input [7:0] expected;
    begin
        sel = operation;
        #10;
        if (result !== expected) begin
            $display("FAIL: sel=%b A=%d B=%d result=%d expected=%d",
                     sel, A, B, result, expected);
            errors = errors + 1;
        end else begin
            $display("PASS: sel=%b result=%d", sel, result);
        end
    end
endtask

initial begin
    errors = 0;
    A = 8'd10;
    B = 8'd3;

    check_result(3'b000, 8'd13);  // Addition
    check_result(3'b001, 8'd7);   // Subtraction
    check_result(3'b010, 8'd2);   // AND
    check_result(3'b011, 8'd11);  // OR
    check_result(3'b100, 8'd9);   // XOR
    check_result(3'b101, 8'd245); // NOT of 10
    check_result(3'b110, 8'd20);  // Left shift
    check_result(3'b111, 8'd5);   // Right shift

    if (errors == 0)
        $display("ALL TESTS PASSED");
    else
        $display("TOTAL ERRORS: %0d", errors);

    $finish;
end

endmodule
