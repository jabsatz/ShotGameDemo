// check_for_collision(x1,y1,hsp,vsp,obj)

var x1 = argument0;
var y1 = argument1;
var hsp = argument2;
var vsp = argument3;
var obj = argument4;

//Horizontal Collision
if (place_meeting(x1+hsp, y1, obj)) {
	while (!place_meeting(x1+sign(hsp), y1, obj)) {
		x1 += sign(hsp);
	}
	hsp = 0;
}
x1 += hsp;

//Vertical Collision
if (place_meeting(x1, y1+vsp, obj)) {
	while (!place_meeting(x1, y1+sign(vsp)*0.2, obj)) {
		y1 += sign(vsp)*0.1;
	}
	vsp = 0;
	grounded = true;
} else {
	grounded = false;
}

y1 += vsp;

var result = ds_map_create();
result[? "x"] = x1;
result[? "y"] = y1;
result[? "hsp"] = hsp;
result[? "vsp"] = vsp;

return result;