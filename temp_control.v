module temp_control(
    input clk,
    input [7:0] temp,
    input [7:0] threshold,
    output reg fan,
    output reg buzzer
);

always @(posedge clk) begin
    if (temp > threshold) begin
        fan <= 1;
        buzzer <= 1;
    end else begin
        fan <= 0;
        buzzer <= 0;
    end
end

endmodule