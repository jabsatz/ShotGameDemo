shader_set(shBrightness);
shader_set_uniform_f(brightness, -(y/room_height)*0.5);
draw_surface(application_surface,0,0);
shader_reset();