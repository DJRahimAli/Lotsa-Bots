// Get current camera position
x = camera_get_view_x(view_camera[view_current]);
y = camera_get_view_y(view_camera[view_current]);


// Set target camera position
var targetX, targetY;

targetX = target.x - round(window_get_width() / 2);
targetY = target.y - round(window_get_height() / 2);


// Set camera position
// Smoothly move the camera to the target position
x = lerp(x, targetX, CAM_SMOOTH);
y = lerp(y, targetY, CAM_SMOOTH);


// Clamp the camera position to room bounds
x = clamp(x, 0, room_width - window_get_width());
y = clamp(y, 0, room_height - window_get_height());


round_position();


// Apply camera position
camera_set_view_pos(view_camera[view_current], x, y);

/*
if ( global.mobileControls )
{
	oJoystickLeft.x += oCamera.x;
	oJoystickLeft.y += oCamera.y;
	
	oJoystickRight.x += oCamera.x;
	oJoystickRight.y += oCamera.y;
}*/
