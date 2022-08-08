function scr_set_screen_size()
{
	camera_set_view_border(view_camera[view_current], camera_get_view_width(view_camera[view_current]), camera_get_view_height(view_camera[view_current])); /*View Border*/
	
	var default_view_width = 960;
	var default_view_height = 960;
	
    if (window_get_width() <= default_view_width)
    and (window_get_height() <= default_view_height)
    {
        camera_set_view_size(view_camera[view_current], window_get_width(), window_get_height());
    }
    else
    if (window_get_width() > default_view_width)
    and (window_get_height() <= default_view_height)
    {
        camera_set_view_size(view_camera[view_current], default_view_width, window_get_height());
    }
    else
    if (window_get_width() <= default_view_width)
    and (window_get_height() > default_view_height)
    {
        camera_set_view_size(view_camera[view_current], window_get_width(), default_view_height);
    }
    else
    {
        camera_set_view_size(view_camera[view_current], default_view_width, default_view_height);
    }

}