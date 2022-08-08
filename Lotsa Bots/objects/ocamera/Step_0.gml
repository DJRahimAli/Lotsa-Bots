// Get current camera position
x = camera_get_view_x(camera);
y = camera_get_view_y(camera);
var camW = camera_get_view_width(camera);
var camH = camera_get_view_height(camera);


// Zooming controls
var wheel = mouse_wheel_down() - mouse_wheel_up();


// Panning
if ( mouse_check_button(mb_middle) )
{
	var move_x = mouse_x - mouse_x_previous;
	var move_y = mouse_y - mouse_y_previous;
	
	x -= move_x;
	y -= move_y;
}
else
{
	// Set target camera position
	var targetX, targetY;
	
	targetX = target.x - round(camW / 2);
	targetY = target.y - round(camH / 2);
	
	
	// Set camera position
	if (wheel != 0)
	{
		//Set camera position to the target position
		x = targetX;
		y = targetY;
	}
	else
	{
		// Smoothly move the camera to the target position
		if ( CAM_SMOOTH = -1 )
		{
			x = targetX;
			y = targetY;
		}
		else
		{
			x = lerp(x, targetX, CAM_SMOOTH);
			y = lerp(y, targetY, CAM_SMOOTH);
		}
	}
}


// Zooming
if (wheel != 0)
{
	wheel *= 0.1;
	
	// Add to size
	var addW = camW * wheel;
	var addH = camH * wheel;
	
	camW += addW;
	camH += addH;
	
	// Position
	x -= addW / 2;
	y -= addH / 2;
}


// Clamp the camera resolution to initial camera resolution
camW = clamp(camW, 0, CAM_RES_W);
camH = clamp(camH, 0, CAM_RES_H);


// Clamp the camera position to room bounds
x = clamp(x, 0, room_width - camW);
y = clamp(y, 0, room_height - camH);


round_position();


// Apply camera position
camera_set_view_pos(camera, x, y);
camera_set_view_size(camera, camW, camH);

if ( global.mobileControls )
{
	oAnalogueLeft.x += oCamera.x;
	oAnalogueLeft.y += oCamera.y;
	
	oAnalogueRight.x += oCamera.x;
	oAnalogueRight.y += oCamera.y;
}

//Store previous
mouse_x_previous = mouse_x;
mouse_y_previous = mouse_y;
