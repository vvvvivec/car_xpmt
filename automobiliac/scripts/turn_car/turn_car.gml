// Player turning script

// Turning
// If the player is moving and not drifting, adjust car's angle normally
// If the player is moving and drifting, add some hectic angle in there bruh
// Note: This is being applied to plyr_car_body, not plyr_car_controller so that the
// drifting effect actually renders!
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
		image_angle += turnSpd * len * 2.6; // Check those sickkkk angle mods
	}
	if(RIGHT)
	{
		image_angle -= turnSpd * len * 2.6;
	}
}
