if(hp <= 0) {
	status = "dying";
}

//Animation
facingRight = oAbsPlayableCharacter.x > x;

image_xscale = facingRight ? 1 : -1;
if(status == "dying") {
	sprite_index = sExplosion;
}