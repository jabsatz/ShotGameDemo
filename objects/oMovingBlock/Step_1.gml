if(floatInterval > 0) {
	floatInterval--;
	vsp = floatInterval*(goingUp ? -1 : 1)*0.05;
} else {
	goingUp = !goingUp;
	floatInterval = initialFloatInterval;
}

var finalPos = apply_movement_and_collision(id);
x = finalPos[? "x"];
y = finalPos[? "y"];
hsp = finalPos[? "hsp"];
vsp = finalPos[? "vsp"];