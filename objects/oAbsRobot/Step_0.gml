if(status != "dying") {
	var finalPos = apply_movement_and_collision(id);
	x = finalPos[? "x"];
	y = finalPos[? "y"];
	hsp = finalPos[? "hsp"];
	vsp = finalPos[? "vsp"];	
}

if(hp <= 0) {
	status = "dying";
}

//Animation
facingRight = oAbsPlayableCharacter.x > x;

image_xscale = facingRight ? 1 : -1;
if(status == "dying") {
	sprite_index = sExplosion;
}