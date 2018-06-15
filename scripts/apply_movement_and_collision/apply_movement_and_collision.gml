// apply_movement_and_collision(id)

var instance = argument0;
var x1 = instance.x;
var y1 = instance.y;
var hsp = instance.hsp;
var vsp = instance.vsp;
var attached = instance.attached;
var grounded = false;

var obj = oBlock;

//Vertical Collision
if (place_meeting(x1, y1+vsp, obj)) {
	var block = instance_place(x1, y1+vsp, oMovingBlock);
	if(block != noone) {
		if(y1 < block.y) {
			attached = block;
		} else {
			y1 = block.y + block.sprite_height + instance.sprite_height - instance.sprite_yoffset;
			vsp = max(block.vsp, 0);
			if(variable_instance_get(instance, "shootRecoil")) {
				instance.shootRecoil = 0;	
			}
		}
	} else {
		while (!place_meeting(x1, y1+sign(vsp)*0.2, obj)) {
			y1 += sign(vsp)*0.1;
		}
		if(sign(vsp) != -1) grounded = true;
		vsp = 0;
	}
}

if(attached != -1) {
	y1 = attached.y - instance.sprite_yoffset;
	grounded = true;
	vsp = 0;
	if(!place_meeting(x1, y1+instance.sprite_yoffset+instance.grv, attached)){
		attached = -1;
		vsp += instance.grv;
		grounded = false;
	}
}

y1 += vsp;

//Horizontal Collision
if (place_meeting(x1+hsp, y1, obj)) {
	while (!place_meeting(x1+sign(hsp), y1, obj)) {
		x1 += sign(hsp);
	}
	hsp = 0;
}
x1 += hsp;

var result = ds_map_create();
result[? "x"] = x1;
result[? "y"] = y1;
result[? "hsp"] = hsp;
result[? "vsp"] = vsp;
result[? "grounded"] = grounded;
result[? "attached"] = attached;

return result;