if ( touch_id == -1 )
{
	image_index = 0;
	
	for (var i = 0; i < 10; i += 1)
	{
		if (device_mouse_check_button(i, mb_any))
		{
			if (position_meeting(device_mouse_x(i), device_mouse_y(i), id))
			{
				touch_id = i;
			}
		}
	}
}
else
{
	image_index = 1;
	
	if (!device_mouse_check_button(touch_id, mb_any))
	{
		if (position_meeting(device_mouse_x(touch_id), device_mouse_y(touch_id), id)) room_goto_next();
		touch_id = -1;
	}
}
