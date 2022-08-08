if (os_browser == browser_not_a_browser)
{
	fullscreen = !fullscreen;
	window_set_fullscreen(fullscreen);
	
	if ( room == rArena )
	{
		// Resize window & application surface
		window_set_size(RES_W, RES_H);
		surface_resize(application_surface, RES_W, RES_H);
		
		display_set_gui_size(RES_W, RES_H);
	}
}
