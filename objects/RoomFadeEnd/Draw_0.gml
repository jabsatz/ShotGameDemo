draw_set_colour(c_black);
draw_set_alpha(a);
draw_rectangle(
	view_xport[0],
	view_yport[0],
	view_xport[0] + view_wport[0],
	view_yport[0] + view_hport[0],
	false
);

draw_set_alpha(1);