// Engine script

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
if(current_rpm < 0)
{
	current_rpm *= -1;
}

if(current_rpm > 0)
{
	motor_sound = clamp(audio_sound_pitch(engine_sound,sqrt(current_rpm)/37),.00001,99999);
}