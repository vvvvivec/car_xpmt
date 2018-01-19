// Ebrake script

// Apply braking decceleration accordingly if ebrake is pulled
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

// Set drifting to true while ebrake is up
drifting = true;