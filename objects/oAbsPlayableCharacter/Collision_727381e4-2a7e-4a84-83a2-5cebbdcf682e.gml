if(other.enemy && quickFlash <= 0) {
	quickFlash = 5;
	hp -=1;
	shootRecoil = 2;
	recoilAngle = degtorad(other.direction - 180);
}