spriteMap = create_sprite_map([
	Drake_idle_sprite,
	Drake_run_forward_sprite,
	Drake_jump_forward_sprite,
	Drake_run_back_sprite,
	Drake_jump_back_sprite,
	Drake_jump_sprite,
	Drake_midair_sprite,
	Drake_portrait
]);
instance_create_layer(0,0,"Character_Addons", Drake_Arm_Object);