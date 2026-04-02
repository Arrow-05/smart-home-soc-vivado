module smart_home_top(
    input clk,
    input [7:0] temp,
    input [7:0] threshold,
    input light_sensor,
    input motion,
    input button,
    output fan,
    output buzzer,
    output light,
    output alarm,
    output door
);

temp_control t1(clk, temp, threshold, fan, buzzer);
light_control l1(clk, light_sensor, light);
security_fsm s1(clk, motion, alarm);
door_control d1(clk, button, door);

endmodule