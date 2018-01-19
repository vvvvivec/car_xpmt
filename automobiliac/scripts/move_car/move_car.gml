// Player movement script

// Get input axis values for x and y
x_axis = RIGHT - LEFT;
y_axis = BRAKE - GAS; 

// Run transmission script to control gears, speed, and acceleration
transmission();

// Check traction
traction();

// Reset drifting variable if ebrake is no longer held
if(!EBRAKE)
{
	drifting = false;
}

// Check if player is controlling the car
if(y_axis != 0 || EBRAKE || x_axis != 0)
{
	controlling = true;
}

if(y_axis == 0 && !EBRAKE)
{
	controlling = false;
}

// This was once functional, but now does nothing and if the variable is set to false, everything breaks
if(len == 0)
{
	moving = true;
}

// Run engine script
engine();

// If the player is providing inputs to the car, evaluate them
if (controlling)
{
	// Get the direction
	dir = y_axis;
	
	// Is player pressing gas?
	if(GAS && engine_on)
	{
		accelerate();
	}
	// Is player pressing brake?
	if(BRAKE)
	{
		brake();
	}
	// Is player pressing ebrake?
	if(EBRAKE)
	{
		ebrake();
	}
}
// If the player is not moving, reset controlling variable and deccelerate
else if(!controlling) 
{		
	controlling = false;
	
	negative_torque();
}

// Update the car's speeds
hspd = lengthdir_x(len, image_angle);
vspd = lengthdir_y(len, image_angle);

// Turn the car based on input
turn_car();

// Update the car's position
x += hspd;
y += vspd;