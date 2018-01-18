// Ebrake script

if(current_gear != REVERSE)
{
	if(len > 0) 
	{
		len -= ebraking_decel;
	}
	else if(len <= 0)
	{
		len = 0;
	}
}
else if(current_gear == REVERSE)
{
	if(len < 0) 
	{
		len += ebraking_decel;
	}
	if(len >= 0)
	{
		len = 0;
	}
}

drifting = true;