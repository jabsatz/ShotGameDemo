if(status == "idle") {
	if(floatInterval > 0) {
		floatInterval--;
		vsp = floatInterval*(goingUp ? -1 : 1)*0.05;
	} else {
		goingUp = !goingUp;
		floatInterval = initialFloatInterval;
	}
}

event_inherited();