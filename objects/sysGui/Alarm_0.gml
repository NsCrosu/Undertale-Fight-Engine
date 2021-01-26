/// @desc Gif Save
if !gifsave{
	if keyboard_check_pressed(ord("G")){
		gifsave = 1;
	}
}
if gifsave == 1{
	gif = gif_open(surface_get_width(application_surface), surface_get_height(application_surface));
	gifsave = 2;
	alarm[0] = 5;
}
if gifsave == 2{
	gif_add_surface(gif, application_surface, 5/100);
	if keyboard_check_pressed(ord("G")){
		gif_save(gif, "GameCapture.gif");
		gifsave = 0;
	}
}
alarm[0] = 1;
