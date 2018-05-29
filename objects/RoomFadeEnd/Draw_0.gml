draw_set_colour(c_black);
draw_set_alpha(a);
draw_rectangle(
	camera_get_view_x(cam),
	camera_get_view_y(cam),
	camera_get_view_x(cam) + camera_get_view_width(cam),
	camera_get_view_y(cam) + camera_get_view_height(cam),
	false
);

draw_set_alpha(1);