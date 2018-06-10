event_inherited();
tresholdX = 150;
tresholdY = 100;
tresholdTimerActive = false;
tresholdTimer = 0;
initialTresholdTimer = 50;

// possible status: idle, alert, attacking, dying
status = "idle";
alertTimer = 0;
initialAlertTimer = 100;

spriteMap = create_sprite_map([
	sRobotTurretIdle,
	sRobotTurretAlert,
	sRobotTurretAttacking
], "RobotTurret");