cam = view_camera[0];
camera_set_view_size(cam, view_wport[0]/3, view_hport[0]/3);
display_set_gui_size(view_wport[0], view_hport[0]);
follow = Drake_Object;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
x = follow.x;
y = follow.y;
xTo = xstart;
yTo = ystart;
brightness = shader_get_uniform(shBrightness, "brightness");
