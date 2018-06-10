if(status == "idle") {
	if(floatInterval > 0) {
		floatInterval--;
		vsp = floatInterval*(goingUp ? -1 : 1)*0.05;
	} else {
		goingUp = !goingUp;
		floatInterval = initialFloatInterval;
	}

	var finalPos = apply_movement_and_collision(x,y,hsp,vsp,oBlock);
	x = finalPos[? "x"];
	y = finalPos[? "y"];
	hsp = finalPos[? "hsp"];
	vsp = finalPos[? "vsp"];
}

event_inherited();