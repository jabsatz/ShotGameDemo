key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_shift = keyboard_check(vk_shift);
key_jump = keyboard_check_pressed(vk_space);
key_switch = keyboard_check_pressed(vk_tab);

switchCooldown = max(switchCooldown - 1, 0);

if(switchCooldown == 0 && key_switch) {
	if(!active) {
		with(instance_create_layer(0,0,"UI",CharacterSwitch)) {
			portrait = other.spriteMap[? "portrait"];
		};
	}
	layer = active ? layer_get_id("Inactive_Characters") : layer_get_id("Character");
	active = !active;
	switchCooldown = 30;
}

//Movement
if(grounded && key_jump)
	vsp += jumpsp;

var move = key_right - key_left;
move *= 0.3;
var spModifier = key_shift ? runsp : walksp;
if(move != 0) {
	hsp = clamp(move + hsp, -spModifier, spModifier);
} else {
	hsp = lerp(hsp, 0, 0.2);
}
vsp += grv;

var finalPos = check_for_collision(x,y,hsp,vsp,Block);
x = finalPos[? "x"];
y = finalPos[? "y"];
hsp = finalPos[? "hsp"];
vsp = finalPos[? "vsp"];

//Animation
var angleToMouse = point_direction(x,y,mouse_x,mouse_y);
facingRight = angleToMouse <= 90 || angleToMouse >= 270;

image_xscale = facingRight ? 1 : -1;
sprite_index = get_animated_sprite(spriteMap, facingRight, move, vsp, grounded);

if(bbox_top > room_height) {
	instance_create_depth(0,0,-999,RoomFadeEnd);
}