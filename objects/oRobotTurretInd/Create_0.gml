event_inherited();

tresholdX = 150;
tresholdY = 100;
initialTresholdTimer = 75;

spriteMap = create_sprite_map([
	sRobotTurretIndIdle,
	sRobotTurretIndAlert,
	sRobotTurretIndAttacking
], "RobotTurretInd");