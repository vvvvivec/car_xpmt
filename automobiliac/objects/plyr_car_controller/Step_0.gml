// If player is in car, execute car logic
if(global.player_in_car)
{
	// If the player presses the ignition key, perform accordingly
	if(START_ENGINE)
	{
		// If the engine is already on, turn it off
		if(engine_on)
		{
			engine_on = false;
		}
		// If the engine is not on, turn it on, start the engine sound, and set the RPM to idle
		else if(!engine_on)
		{
			engine_on = true;
			motor_sound = audio_play_sound(engine_sound,1,1);
			current_rpm = idle_rpm;
		}
	}

	// Move the car 
	move_car();

	// LIGHTS ARE BROKEN
	// Update lights position
	lights.x = x + lengthdir_x(5, direction);
	lights.y = y + lengthdir_y(5, direction);
	lights.image_angle = direction;
}