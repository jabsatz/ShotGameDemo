var inTresholdX = oAbsPlayableCharacter.x > x - tresholdX && oAbsPlayableCharacter.x < x + tresholdX;
var inTresholdY = oAbsPlayableCharacter.y > y - tresholdY && oAbsPlayableCharacter.y < y + tresholdY;
var inTreshold = inTresholdX && inTresholdY;

switch(status) {
	case "idle":
		sprite_index = spriteMap[? "Idle"];
		if(inTreshold) {
			status = "alert";
			alertTimer = initialAlertTimer;
		}
		break;
	case "alert":
		sprite_index = spriteMap[? "Alert"];
		if(alertTimer > 0) 
			alertTimer--;
		else
			status = "attacking";
		break;
	case "attacking":
		sprite_index = spriteMap[? "Attacking"];
		with (instance_create_layer(x + random_range(-2,2), y + random_range(-2,2), "Bullets", oMachineGunBullet)) {
			enemy = true;
			damage = 1;
			speed = 10;
			direction = other.facingRight ? 0 : 180;
		}
}

if((status != "idle") && !inTreshold)
	if(tresholdTimerActive) {
		tresholdTimer--;
		if(tresholdTimer == 0)
			status = "idle";
	} else {
		tresholdTimer = initialTresholdTimer;
		tresholdTimerActive = true;
	}	
else
	tresholdTimerActive = false;

event_inherited();