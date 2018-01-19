// Negative torque script for passive deccel

// Calculate decceleration value based on if the car is moving forward or backward
// If the car is moving, then the speed is set to 0
if(len > 0) 
{
	len -= decel;
}

if(len < 0) 
{
	len += decel;
}
else if(len == 0)
{
	len = 0;
}