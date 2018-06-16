a = clamp(a + (fade * 0.05), 0, 1);

if(a == 1) {
	if(next) room_goto_next();
	else room_restart();
}