var inTresholdX = AbstractPlayableCharacter.x > x - tresholdX && AbstractPlayableCharacter.x < x + tresholdX;
var inTresholdY = AbstractPlayableCharacter.y > y - tresholdY && AbstractPlayableCharacter.y < y + tresholdY;
var inTreshold = inTresholdX && inTresholdY;

if(!dying) {
	if(!alert) {
		//Idle Status
		if(inTreshold) {
			sprite_index = sRobotTurretAlert;
			alert = true;
			alertTimer = initialAlertTimer;
		}
	} else {
		if(!attacking) {
			//Alert Status
			if(alertTimer > 0)
				alertTimer--;
			else
				attacking = true;
		} else {
			//Attacking Status
			with (instance_create_layer(x + random_range(-2,2), y + random_range(-2,2), "Bullets", oMachineGunBullet)) {
				speed = 10;
				direction = other.facingRight ? 0 : 180;
			}
		}
	}
}

if((alert || attacking) && !inTreshold)
	if(tresholdTimerActive) {
		tresholdTimer--;
		if(tresholdTimer == 0) {
			alert = false;
			attacking = false;
		}
	} else {
		tresholdTimer = initialTresholdTimer;
		tresholdTimerActive = true;
	}	
else
	tresholdTimerActive = false;

if(hp <= 0)
	dying = true;

//Animation
facingRight = AbstractPlayableCharacter.x > x;

image_xscale = facingRight ? 1 : -1;
if(!dying)
	if(!alert)
		sprite_index = sRobotTurretIdle;
	else
		if(!attacking)
			sprite_index = sRobotTurretAlert;
		else
			sprite_index = sRobotTurretAttacking;
else
	sprite_index = explosion;