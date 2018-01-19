/// Maintain draw on player
x = plyr_car_controller.x;
y = plyr_car_controller.y;

// Get angle variables
plyr_angle = plyr_car_controller.image_angle;
drift_angle = 45;
lerp_interval = .2;

// NOTE: Need to revisit this code and use the approach script to see if it
// makes the angle adjust more smoothly than the lerp function
// If the player is not drifting, adjust angle normally
// Otherwise, add some sick angle in there as well as skid marks
if(!plyr_car_controller.drifting)
{
	if(image_angle > plyr_angle)
	{
		image_angle = lerp(plyr_angle,image_angle,lerp_interval);
	}
	else if(image_angle < plyr_angle)
	{
		image_angle = lerp(plyr_angle,image_angle,lerp_interval);
	}
}
else if(plyr_car_controller.drifting && (plyr_car_controller.len != 0))
{
	// Draw particles
	part_emitter_region(part_sys,part_emit,x-1,x+1,y-1,y+1,ps_shape_line,ps_distr_gaussian);
	part_type_orientation(tire_part,image_angle,image_angle,0,0,0);
	part_emitter_burst(part_sys,part_emit,tire_part,10)
	
	// Increase car angle [bruh]
	if(LEFT)
	{
		image_angle = lerp(plyr_angle,plyr_angle+drift_angle,lerp_interval);
	}
	if(RIGHT)
	{
		image_angle = lerp(plyr_angle,plyr_angle-drift_angle,lerp_interval);
	}
}