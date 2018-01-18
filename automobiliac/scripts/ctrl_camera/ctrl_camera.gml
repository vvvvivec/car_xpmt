// Camera control script

// BROKEN

if(!camera_zoomed && ZOOM_OUT)
{
	camera_set_view_size(view_camera[0], 2160, 1440);
	camera_set_view_border(view_camera[0], 1080,720);
	camera_zoomed = true;
}
else if(camera_zoomed && ZOOM_IN)
{
	camera_set_view_size(view_camera[0], 1080, 720);
	camera_set_view_border(view_camera[0], 540,360);
	camera_zoomed = false;
}