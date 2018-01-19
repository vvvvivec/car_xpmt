// GUI drawing script

// Initialize font scale and y offsets
font_scale = 0; 
y_offset = 0;

// Calculate rotation angle for tachometer needle
needle_rotation = -(plyr_car_controller.current_rpm/33.5) - 230;

// Adjust font scale and y offset according to zoom status, then draw the tachometer
if(global.camera_zoomed)
{
	font_scale = .5;
	y_offset = 50;
	draw_sprite_ext(rpm_band,0,200,1300,1,1,0,c_white,1);
	draw_sprite_ext(rpm_needle,0,200,1300,1,1,needle_rotation,c_white,1);
}
else if(!global.camera_zoomed)
{
	font_scale = .2;
	y_offset = 20;
	draw_sprite_ext(rpm_band,0,100,650,.5,.5,0,c_white,1);
	draw_sprite_ext(rpm_needle,0,100,650,.5,.5,needle_rotation,c_white,1);
}

// Set the default font and gui size based on current view dimensions
draw_set_font(default_font);
display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));

// Draw GUI texts
// Mostly used for DBUG right now
draw_text_transformed(100 , 100, "Speed: " + string(plyr_car_controller.len),font_scale,font_scale,0);
draw_text_transformed(100 , 100+y_offset, "Gear: " + string(plyr_car_controller.current_gear),font_scale,font_scale,0);
draw_text_transformed(100 , 100+y_offset*2, "RPM: " + string(plyr_car_controller.current_rpm),font_scale,font_scale,0);
draw_text_transformed(100 , 100+y_offset*3, "Drifting: " + string(plyr_car_controller.drifting),font_scale,font_scale,0);
draw_text_transformed(100 , 100+y_offset*4, "ENGINE ON: " + string(plyr_car_controller.engine_on),font_scale,font_scale,0);


