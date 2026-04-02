module door_control(
    input clk,
    input button,
    output reg door
);

always @(posedge clk) begin
    if(button)
        door <= 1;
    else
        door <= 0;
end

endmodule