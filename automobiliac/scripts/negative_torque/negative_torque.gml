// Negative torque script for passive deccel
//if(dir == -1) // Moving forward
//{
	if(len > 0) 
	{
		len -= decel;
	}
//}
//else if(dir == 1) // Moving backward
//{
	if(len < 0) 
	{
		len += decel;
	}
	else if(len == 0)
	{
		len = 0;
	}
//}