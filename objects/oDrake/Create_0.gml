event_inherited();
spriteMap = create_sprite_map([
	sDrakeIdle,
	sDrakeRunForward,
	sDrakeJumpForward,
	sDrakeRunBack,
	sDrakeJumpBack,
	sDrakeJump,
	sDrakeMidair,
	sDrakePortrait
], "Drake");
instance_create_layer(0,0,"Character_Addons", oDrakeArm);