/// Init lights object

// This object is currently broken
// Lights do not stay centered on the car once it turns

// Init to off
visible = false;

// Utility variables
lights_on = false;

// Set position
x = plyr_car_controller.x+80;
y = plyr_car_controller.y;

// Set the angle
image_angle = plyr_car_controller.image_angle;