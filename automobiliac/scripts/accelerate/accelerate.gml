// Accelerate script

// Calculate acceleration of car's speed based on gears
// If the car isn't in gear, do nothing
if(current_gear == REVERSE)
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
else if(current_gear > 0)
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
else if(current_gear == 0)
{

}
