// Handles player movement

// Get inputs and assign spd values accordingly
hspd = RIGHT - LEFT;
vspd = DOWN - UP;

// Calculate move speed
x_move = hspd * move_speed;
y_move = vspd * move_speed;

// If player is moving, update the image angle 
if(x_move != 0 || y_move != 0)
{
	image_angle = point_direction(x,y,x+x_move,y+y_move) - 90;
}

// Move the player
x += x_move;
y += y_move;