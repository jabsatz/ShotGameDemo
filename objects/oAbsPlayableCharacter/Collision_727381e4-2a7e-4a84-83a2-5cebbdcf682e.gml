if(other.enemy && !dying) {
	dying = true;
	with(instance_create_depth(0,0,-999,RoomFadeEnd)) {
		checkpoint = true;
	}
}