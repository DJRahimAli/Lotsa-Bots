/// @description 
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
	
	// Smoothly move the camera to the target position
	x = lerp(x, targetX, CAM_SMOOTH);
	y = lerp(y, targetY, CAM_SMOOTH);
	
}


// Clamp the camera position to room bounds
x = clamp(x, 0, room_width - camW);
y = clamp(y, 0, room_height - camH);


round_position();


// Apply camera position
camera_set_view_pos(camera, x, y);

/*
if ( global.mobileControls )
{
	oJoystickLeft.x += oCamera.x;
	oJoystickLeft.y += oCamera.y;
	
	oJoystickRight.x += oCamera.x;
	oJoystickRight.y += oCamera.y;
}*/

//Store previous
mouse_x_previous = mouse_x;
mouse_y_previous = mouse_y;
