if(flash > 0 && status != "dying") {
	flash --;
	shader_set(shWhite);
}
draw_self();
shader_reset();