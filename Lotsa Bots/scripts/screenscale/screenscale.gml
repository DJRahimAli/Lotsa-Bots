function ScreenScale()
{
	var thing1 = browser_width;
	var thing2 = browser_height;
	
	//if ( thing1 > RES_W ) thing1 -= RES_W;
	//if ( thing2 > RES_H ) thing2 -= RES_H;
	thing1 = clamp(thing1, 0, RES_W);
	thing2 = clamp(thing2, 0, RES_H);
	
	
	camera_set_view_size(view_camera[view_current], thing1, thing2);
	
	window_set_size(thing1, thing2);
	window_center();
	
	display_set_gui_size(window_get_width(), window_get_height());
}