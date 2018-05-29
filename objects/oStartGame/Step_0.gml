mouseIsOverButton = mouse_x <= x + sprite_width && mouse_x >= x && mouse_y <= y + sprite_height && mouse_y >= y;
if(mouse_check_button(mb_left) && mouseIsOverButton) {
	room_goto(Level1);
}