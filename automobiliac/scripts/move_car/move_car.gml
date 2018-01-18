// Player movement script

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

if(len == 0)
{
	moving = true;
}

// Run engine script
engine();

if (controlling)
{
	dir = y_axis;
	
	// Is player pressing gas?
	if(GAS)
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
else if(!controlling) // Not moving and decel 
{		
	controlling = false;
	
	negative_torque();
}

// Update position
hspd = lengthdir_x(len, image_angle);
vspd = lengthdir_y(len, image_angle);

turn_car();

x += hspd;
y += vspd;