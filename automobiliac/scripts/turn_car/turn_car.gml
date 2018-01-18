// Player turning script

// Turning
if(moving && !drifting)
{
	if(LEFT)
	{
		image_angle += turnSpd * len;
	}
	if(RIGHT)
	{
		image_angle -= turnSpd * len;
	}
}
else if(moving && drifting)
{
	if(LEFT)
	{
		image_angle += turnSpd * len * 2.6;
	}
	if(RIGHT)
	{
		image_angle -= turnSpd * len * 2.6;
	}
}
