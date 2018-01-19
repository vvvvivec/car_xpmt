/// Initialize car controller object

// This object performs the car logic but is not visible for drift A E S T H E T I C S
// See turn_car script for explanation

// Ignition variable
engine_on = false;

// Normal Speed Variables
maxSpd = 12;
accel = .7;
decel = .1;
turnSpd = .4; 

// Reverse Speed Variables
maxReverseSpd = 5;
accReverseSpd = .3;
turnReverseSpd = .1;

//  Braking Variables
braking_decel = .3;
ebraking_decel = .4;

// Object Meta Variables
dir = 0;
hspd = 0;
vspd = 0;
x_axis = 0;
y_axis = 0;
len = 0;

// Bool to check if applying movement input
controlling = false; 

// Bool to see if car is in motion
moving = false;

// Transmisson variables
min_gear = -1;
max_gear = 5;
current_gear = 0;

// Utilities
drifting = false;
lights = instance_create_layer(x + lengthdir_x(20, image_angle), y + lengthdir_y(20, image_angle), "Instances", obj_lights);

// Engine variables
max_rpm = 7800;
idle_rpm = 700;
current_rpm = 0;

// Spawn car body
body = instance_create_layer(x,y,"Instances",plyr_car_body);