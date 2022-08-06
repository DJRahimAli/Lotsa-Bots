if ( myTouch == -1 )
{
	for (var i = 0; i < 10; i += 1)
	{
		if (device_mouse_check_button(i, mb_any))
		{
			if (position_meeting(device_mouse_x_to_gui(i), device_mouse_y_to_gui(i), id))
			{
				myTouch = i;
				//image_index = 1;
				//audio_play_sound(snd_button_click, 1, false);
			}
		}
	}
}
else
{
	_x = device_mouse_x_to_gui(myTouch);
	_y = device_mouse_y_to_gui(myTouch);
	
	// Clamp the camera position to room bounds
	_x = clamp(_x, bbox_left, bbox_right);
	_y = clamp(_y, bbox_top, bbox_bottom);
	
	if (device_mouse_check_button_released(myTouch, mb_any))
	{
		myTouch = -1;
		//image_index = 0;
		//audio_play_sound(snd_button_click, 1, false);
	}
}

if (!device_mouse_check_button(myTouch, mb_any))
{
	_x = x;
	_y = y;
}


hDir = map_value( _x, bbox_left, bbox_right, -1, 1 );

vDir = map_value( _y, bbox_top, bbox_bottom, -1, 1 );

oPlayer.hDir = hDir;
oPlayer.vDir = vDir;
