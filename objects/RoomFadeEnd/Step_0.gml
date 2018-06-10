a = clamp(a + (fade * 0.05), 0, 1);

if(a == 1) {
	if(checkpoint) {
		oAbsPlayableCharacter.x = global.checkpointX;
		oAbsPlayableCharacter.y = global.checkpointY;
		instance_create_depth(0,0,-999,RoomFadeStart)
		instance_destroy();
	}
	else if(next) room_goto_next();
	else room_restart();
}