module light_control(
    input clk,
    input light_sensor,
    output reg light
);

always @(posedge clk) begin
    if (light_sensor == 0)
        light <= 1;
    else
        light <= 0;
end

endmodule