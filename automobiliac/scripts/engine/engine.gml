// Engine script

// Engine logic 
// If the engine is on, react accordingly
if(engine_on)
{
	// If gas is pressed, increase RPM
	if(GAS)
	{
		if(current_rpm < max_rpm)
		{
			current_rpm += 300*accel*2;
		}
		else if(current_rpm >= max_rpm)
		{
			current_rpm -= 350;
		}
	}
	// If the brake is pressed decrease RPM
	else if(BRAKE)
	{
		if(current_rpm > idle_rpm)
		{
			current_rpm -= 120;
		}
		else if(current_rpm <= idle_rpm)
		{
			current_rpm = idle_rpm;
		}
	}
	// If the car is coasting, decrease RPM passively
	else if(!GAS && !BRAKE)
	{
		if(current_rpm > idle_rpm)
		{
			current_rpm -= 100;
		}
		else if(current_rpm <= idle_rpm)
		{
			current_rpm += 50;	
		}
	}
	// If the RPM is below 0, make it positive for angular and sound functions elsewhere 
	// They will break otherwise
	if(current_rpm < 0)
	{
		current_rpm *= -1;
	}	
}
// If the engine is not on, slowly deccelerate RPM to a stop
else if(!engine_on)
{
	current_rpm = clamp(current_rpm,0,approach(current_rpm,0,100));
}

// Don't let RPM go below zero to prevent crashing the sound below
// For whatever reason, that clamp statement up there ^ isn't doing it's job
if(current_rpm < 0)
{
	current_rpm = 0;
}

// Play the motor sound
motor_sound = clamp(audio_sound_pitch(engine_sound,sqrt(current_rpm)/40),.00001,99999);

// If the RPM is 0 (engine is off), stop playing the sound
if(current_rpm = 0)
{
	// Make sure the sound exists to prevent a fatal error
	if(audio_exists(motor_sound))
	{
		audio_stop_sound(motor_sound);
	}
}
