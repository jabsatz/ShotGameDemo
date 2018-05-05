// Used to track bullets, not needed atm
/*
var offsetx = view_xport[0] + 30;
var offsety = view_yport[0] + 50;
var offsetxammo = offsetx + 50;

var ammo = Drake_Arm_Object.ammo;
var reloading = Drake_Arm_Object.reloading;

for (var i = 0; i < ammo; i++)
	draw_sprite(ui_bullet, 0, offsetxammo + i*30, offsety);

draw_set_color(c_green);
draw_circle(offsetx, offsety, 15, false);

draw_set_color(c_orange);
draw_circle(offsetx, offsety, reloading/4, false);

draw_set_color(reloading == 0 && ammo < 6 ? c_aqua : c_red);
draw_set_font(Common);
draw_text(offsetx + 5, offsety, "R")
*/