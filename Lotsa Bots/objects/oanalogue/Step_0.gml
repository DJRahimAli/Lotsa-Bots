if ( myTouch == -1 )
{
	for (var i = 0; i < 10; i += 1)
	{
		if (device_mouse_check_button(i, mb_any))
		{
			if (position_meeting(device_mouse_x(i), device_mouse_y(i), id))
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
	_x = device_mouse_x(myTouch);
	_y = device_mouse_y(myTouch);
	
	var _direction = point_direction(x, y, _x, _y);
	var _distance = point_distance(x, y, _x, _y);
	
	if (_distance > radius)
	{
		_x = lengthdir_x(radius, _direction) + x;
		_y = lengthdir_y(radius, _direction) + y;
	}
	
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
