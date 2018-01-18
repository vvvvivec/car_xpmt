// Accelerate script

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
