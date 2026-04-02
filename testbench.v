module testbench;

reg clk = 0;
always #5 clk = ~clk;

reg [7:0] temp;
reg [7:0] threshold;
reg light_sensor;
reg motion;
reg button;

wire fan, buzzer, light, alarm, door;

smart_home_top uut(
    .clk(clk),
    .temp(temp),
    .threshold(threshold),
    .light_sensor(light_sensor),
    .motion(motion),
    .button(button),
    .fan(fan),
    .buzzer(buzzer),
    .light(light),
    .alarm(alarm),
    .door(door)
);

initial begin
    temp = 30;
    threshold = 25;
    light_sensor = 0;
    motion = 0;
    button = 0;

    #10 motion = 1;
    #10 button = 1;
    #20 temp = 20;

    #50 $finish;
end

endmodule