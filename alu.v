
module alu (
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] sel,
    output reg [7:0] result,
    output reg carry
);

always @(*) begin
    carry  = 1'b0;
    result = 8'b00000000;

    case (sel)
        3'b000: {carry, result} = {1'b0, A} + {1'b0, B}; // Addition
        3'b001: result = A - B;                          // Subtraction
        3'b010: result = A & B;                          // AND
        3'b011: result = A | B;                          // OR
        3'b100: result = A ^ B;                          // XOR
        3'b101: result = ~A;                             // NOT
        3'b110: result = A << 1;                         // Left shift
        3'b111: result = A >> 1;                         // Right shift
        default: result = 8'b00000000;
    endcase
end

endmodule
