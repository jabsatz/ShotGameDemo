event_inherited();
tresholdX = 200;
tresholdY = 100;
tresholdTimerActive = false;
tresholdTimer = 0;
initialTresholdTimer = 50;

// possible status: idle, alert, attacking, dying
status = "idle";
alertTimer = 0;
initialAlertTimer = 50;

spriteMap = create_sprite_map([
	sRobotTurretIdle,
	sRobotTurretAlert,
	sRobotTurretAttacking
], "RobotTurret");