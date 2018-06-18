key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

/*
//Character Switch
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
*/

if(!dying) {
	//Movement
	if(shootRecoil == 0) {
		if(grounded && key_jump) {
			vsp += jumpsp;
			attached = -1;
		}

		move = key_right - key_left;
		move *= 0.5;
		if(move != 0) {
			hsp = clamp(move + hsp, -walksp, walksp);
		} else {
			hsp = lerp(hsp, 0, 0.2);
		}
		vsp = min(vsp + grv, maxvsp);
	} else {
		vsp = sin(recoilAngle)*shootRecoil;
		hsp = -cos(recoilAngle)*shootRecoil;
		move = hsp;
		shootRecoil = lerp(0, shootRecoil, 0.9);
		if(shootRecoil < 1.5) shootRecoil = 0;
	}
} else {
	deathTimer--;
	vsp = min(vsp + grv, maxvsp);
	if(deathTimer == 0) {
		fade_to_black(false);	
	}
}

var finalPos = apply_movement_and_collision(id);
x = finalPos[? "x"];
y = finalPos[? "y"];
hsp = finalPos[? "hsp"];
vsp = finalPos[? "vsp"];
grounded = finalPos[? "grounded"];
attached = finalPos[? "attached"];


//Animation
var angleToMouse = point_direction(x,y,mouse_x,mouse_y);
facingRight = angleToMouse <= 90 || angleToMouse >= 270;

image_xscale = facingRight ? 1 : -1;
sprite_index = get_playable_character_sprite(spriteMap, id);