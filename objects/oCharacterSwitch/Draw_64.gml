var posx = view_xport[0];
var posy = view_yport[0] + 90;

draw_sprite_ext(character_switch_sprite,0, posx, posy, 3, 3, 0, c_white, 1.2 - timer/40);
draw_sprite_ext(portrait, 0, posx + 30, posy, 3, 3, 0, c_white, 1.2 - timer/40);