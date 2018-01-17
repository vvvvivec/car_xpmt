// Player movement script

x_axis = RIGHT - LEFT;
y_axis = BRAKE - GAS; 

if(y_axis != 0)
{
	moving = true;
}

if (moving)
{
	dir = y_axis;
	
	// Movement
	if(y_axis == -1) // Moving forward
	{
		if(len < maxSpd)
		{
			len += accel;
		}
		else if(len > maxSpd)
		{
			len = maxSpd;
		}
	}
	else if(y_axis == 1) // Moving backwards
	{
		if(len > -maxReverseSpd)
		{
			len -= accReverseSpd;
		}
		else if(len < -maxReverseSpd)
		{
			len = -maxReverseSpd;
		}
	}
}
else // Not moving and decel 
{	
	player_turn();
	
	if(dir == -1) // Moving forward
	{
		if(len > 0) 
		{
			len -= decel;
		}
		else if(len <= 0)
		{
			len = 0;
		}
	}
	else if(dir == 1) // Moving backward
	{
		if(len < 0) 
		{
			len += decel;
		}
		else if(len >= 0)
		{
			len = 0;
		}
	}
}

// Update position
hspd = lengthdir_x(len, image_angle);
vspd = lengthdir_y(len, image_angle);

player_turn();

x += hspd;
y += vspd;