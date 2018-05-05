vsp += grv;

var finalPos = check_for_collision(x,y,hsp,vsp,Block);
x = finalPos[? "x"];
y = finalPos[? "y"];
hsp = finalPos[? "hsp"];
vsp = finalPos[? "vsp"];

if(hp <= 0) {
	instance_destroy();
}

//Animation
facingRight = Drake_Object.x > x;

image_xscale = facingRight ? 1 : -1;
sprite_index = get_animated_sprite(spriteMap, facingRight, 0, vsp, grounded);