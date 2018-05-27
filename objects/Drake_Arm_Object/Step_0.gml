fire_key = mouse_check_button(mb_left);
alt_fire_key = mouse_check_button(mb_right);

x = Drake_Object.x;
y = Drake_Object.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

layer = Drake_Object.active ? layer_get_id("Character_Addons") : layer_get_id("Inactive_Characters_Addons");

if(!Drake_Object.active){image_angle = 270}

if(Drake_Object.image_xscale == -1) {
	image_yscale = -1;
	image_angle = clamp(image_angle, 90, 270);
}
else {
	image_yscale = 1;
	image_angle = ceil(image_angle/90) > 2 ? clamp(image_angle, 270, 360) : clamp(image_angle, 0, 90);
}

if(!Drake_Object.active){exit}

if(Drake_Object.grounded)
	canAltFire = true;

firingDelay -= 1;

if(fire_key && firingDelay < 0) {
	firingDelay = 15;
	with (instance_create_layer(x, y, "Bullets", Bullet)) {
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}
}

if(alt_fire_key && canAltFire && firingDelay < 0) {
	firingDelay = 15;
	canAltFire = false;
	Drake_Object.recoilAngle = degtorad(image_angle);
	Drake_Object.shootRecoil = 10;
}