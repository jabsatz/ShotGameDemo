if(instance_exists(follow)) {
	xTo = follow.x + (mouse_x - follow.x)*0.2;
	yTo = follow.y + (mouse_y - follow.y)*0.2;
}

x += (xTo - x) / 5;
y += (yTo - y) / 5;

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

camera_set_view_pos(cam, x-view_w_half, y-view_h_half);