timer = 0;

instance_create_layer(0,0,"Controllers", RoomFadeStart);

cam = view_camera[0];
camera_set_view_size(cam, view_wport[0]/3, view_hport[0]/3);
display_set_gui_size(view_wport[0], view_hport[0]);
follow = oAbsPlayableCharacter;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
x = follow.x;
y = follow.y;
xTo = xstart;
yTo = ystart;
brightness = shader_get_uniform(shBrightness, "brightness");


if(!variable_global_exists("checkpointX") && !variable_global_exists("checpointY")) {
	global.checkpointX = -1;
	global.checkpointY = -1;
}
if(global.checkpointX != -1 && global.checkpointY != -1) {
	oAbsPlayableCharacter.x = global.checkpointX;
	oAbsPlayableCharacter.y = global.checkpointY;
}