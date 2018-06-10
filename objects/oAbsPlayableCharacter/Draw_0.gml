image_blend = active ? c_white : c_dkgray;
if(flash > 0 || quickFlash > 0) {
	flash = max(flash-1, 0);
	quickFlash = max(quickFlash-1, 0);
	shader_set(shWhite);
}
draw_self();
shader_reset();