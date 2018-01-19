// Control car lights

// Control whether or not the lights are on and visible
if(LIGHTS)
{
	if(lights_on)
	{
		visible = false;
		lights_on = false;
	}
	else if(!lights_on)
	{
		visible = true;
		lights_on = true;
	}
}