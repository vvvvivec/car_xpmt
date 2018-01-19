/// Check for inputs for meta functions

// Check if player is changing the zoom while in the car
// Otherwise, don't zoom
if(global.player_in_car)
{
	if(ZOOM_OUT || ZOOM_IN)
	{
		ctrl_camera();
	}
}

// If the player presses the car enter/exit key, either enter or leave the car
if(GET_IN_CAR)
{
	// Note need to clean code to exit player at appropriate location each time
	// If the player is in the car, put him out of it
	// Set player location near the car and make the player object visible
	// Update the camera's follow target
	if(global.player_in_car)
	{
		global.player_in_car = false;
		obj_player.x = plyr_car_controller.x -50;
		obj_player.y = plyr_car_controller.y;
		obj_player.visible = true;
		camera_set_view_target(view_camera[0],obj_player);
	}
	// If the player is not in the car, put him in the car
	// Set player object off of the map to avoid random collisions and hide the player object
	// Update the camera's follow target
	else if(!global.player_in_car)
	{
		global.player_in_car = true;
		obj_player.visible = false;
		obj_player.x = -1;
		obj_player.y = -1;
		camera_set_view_target(view_camera[0],plyr_car_controller);
	}
}