module security_fsm(
    input clk,
    input motion,
    output reg alarm
);

reg [1:0] state = 0;

always @(posedge clk) begin
    case(state)
        2'b00: begin
            alarm <= 0;
            if(motion) state <= 2'b01;
        end
        2'b01: begin
            alarm <= 1;
            state <= 2'b10;
        end
        2'b10: begin
            alarm <= 0;
            state <= 2'b00;
        end
    endcase
end

endmodule