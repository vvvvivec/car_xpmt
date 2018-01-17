// Player turning script

// Turning
	if(x_axis != 0)
	{
		if(y_axis == -1) // Moving forward
		{
			if(LEFT)
			{
				image_angle += turnSpd;
			}
			if(RIGHT)
			{
				image_angle -= turnSpd;
			}
		}
		else if(y_axis == 1) // Moving backwards
		{
			if(LEFT)
			{
				image_angle += turnReverseSpd;
			}
			if(RIGHT)
			{
				image_angle -= turnReverseSpd;
			}
		}
	}