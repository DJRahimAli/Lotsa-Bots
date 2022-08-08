// Resolution
#macro RES_W room_width
#macro RES_H room_height

#macro CAM_SMOOTH 1

fullscreen = false;

// Set target object
target = oPlayer;

//Set camera position to the target position
camera_set_view_pos(view_camera[view_current], target.x, target.y);
