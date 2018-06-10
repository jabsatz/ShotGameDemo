if(status != "dying" && !other.enemy) {
	hp -= other.damage;
	if(hp > 0) {
		flash = 2;	
	}
	instance_destroy(other);
}