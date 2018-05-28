image_blend = active ? c_white : c_dkgray;
if(flash > 0) {
	flash--;
	shader_set(shWhite);
}
draw_self();
shader_reset();