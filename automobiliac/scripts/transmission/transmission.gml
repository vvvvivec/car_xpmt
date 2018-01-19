// Control the car's transmission

// If gears are shifted, change gears and RPM accordingly
if(SHIFT_UP)
{
	if(current_gear != max_gear)
	{
		current_gear += 1
		
		if(engine_on)
		{
			current_rpm -= 2800;
		}
	}
}

if(SHIFT_DOWN)
{
	if(current_gear != min_gear)
	{
		current_gear -= 1;
		
		if(engine_on)
		{
			current_rpm += 1000;
		}
	}
}

// Control acceleration by gear

// Normal Speed Variables
// maxSpd = 12;
// accel = .7;
// decel = .1;

if(current_gear == FIRST)
{
	maxSpd = 10; 
	accel = .6;
	decel =.13;
}
if(current_gear == SECOND)
{
	maxSpd = 16; 
	accel = .3;
	decel =.12;
}
if(current_gear == THIRD)
{
	maxSpd = 22; 
	accel = .15;
	decel =.11;
}
if(current_gear == FOURTH)
{
	maxSpd = 26; 
	accel = .075;
	decel =.1;
}
if(current_gear == FIFTH)
{
	maxSpd = 29; 
	accel = .04;
	decel =.1;
}
if(current_gear == SIXTH)
{
	maxSpd = 31; 
	accel = .025;
	decel =.1;
}