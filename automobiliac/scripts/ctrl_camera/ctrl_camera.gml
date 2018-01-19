// Camera control script

// If the camera is not zoomed and the zoom out button is pressed, adjust the view size and border
// Update the camera_zoomed bool
if(!global.camera_zoomed && ZOOM_OUT)
{
	camera_set_view_size(view_camera[0], 2160, 1440);
	camera_set_view_border(view_camera[0], 1080,720);
	global.camera_zoomed = true;
}
// If the camera is zoomed in and the zoom out button is pressed, reverse the process
else if(global.camera_zoomed && ZOOM_IN)
{
	camera_set_view_size(view_camera[0], 1080, 720);
	camera_set_view_border(view_camera[0], 540,360);
	global.camera_zoomed = false;
}