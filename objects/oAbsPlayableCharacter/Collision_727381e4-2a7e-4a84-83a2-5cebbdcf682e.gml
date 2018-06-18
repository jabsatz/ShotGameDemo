if(other.enemy && !dying) {
	dying = true;
	hsp = other.direction > 90 && other.direction < 270 ? -5 : 5;
}