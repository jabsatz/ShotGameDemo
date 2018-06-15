fire_key = mouse_check_button(mb_left);
alt_fire_key = mouse_check_button(mb_right);

x = oDrake.x;
y = oDrake.y;


image_angle = point_direction(x,y,mouse_x,mouse_y);

layer = oDrake.active ? layer_get_id("Character_Addons") : layer_get_id("Inactive_Characters_Addons");

if(!oDrake.active){image_angle = 270}

if(oDrake.image_xscale == -1) {
	image_yscale = -1;
	image_angle = clamp(image_angle, 90, 270);
}
else {
	image_yscale = 1;
	image_angle = ceil(image_angle/90) > 2 ? clamp(image_angle, 270, 360) : clamp(image_angle, 0, 90);
}

var angle = degtorad(image_angle);
var tipx = cos(angle)*sprite_width;
var tipy = -sin(angle)*sprite_width;

if(!oDrake.active){exit}

if(oDrake.grounded || oDrake.flash > 0)
	canAltFire = true;

firingDelay -= 1;
altFiringDelay -= 1;

if(fire_key && firingDelay < 0) {
	firingDelay = 15;
	with (instance_create_layer(x + tipx*0.5, y + tipy*0.5, "Bullets", oBlasterBullet)) {
		enemy = false;
		damage = 20;
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}
}

if(alt_fire_key && canAltFire && altFiringDelay < 0) {
	altFiringDelay = 15;
	canAltFire = false;
	oDrake.recoilAngle = angle - pi;
	oDrake.shootRecoil = 10;
	oDrake.attached = -1;
	
	with (instance_create_layer(x, y, "Effects", oGust)) {
		image_angle = other.image_angle + 180;
	}
}

sprite_index = canAltFire ? spriteMap[? "Charged"] : spriteMap[? "Empty"];