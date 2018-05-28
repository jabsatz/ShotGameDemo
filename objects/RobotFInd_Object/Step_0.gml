if(floatInterval > 0) {
	floatInterval--;
	vsp = floatInterval*(goingUp ? -1 : 1)*0.05;
} else {
	goingUp = !goingUp;
	floatInterval = initialFloatInterval;
}

var finalPos = check_for_collision(x,y,hsp,vsp,Block);
x = finalPos[? "x"];
y = finalPos[? "y"];
hsp = finalPos[? "hsp"];
vsp = finalPos[? "vsp"];


//Animation
facingRight = Drake_Object.x > x;

image_xscale = facingRight ? 1 : -1;
sprite_index = get_animated_sprite(spriteMap, facingRight, 0, vsp, grounded);
