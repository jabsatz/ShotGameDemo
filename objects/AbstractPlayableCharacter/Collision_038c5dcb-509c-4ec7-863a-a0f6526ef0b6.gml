if(!other.dying) {
	hp -= 20;
	flash = 3;
	shootRecoil = 10;
	var angle = point_direction(x,y,other.x,other.y)
	recoilAngle = degtorad(angle);
}