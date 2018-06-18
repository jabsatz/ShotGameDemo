hsp = 0;
vsp = 0;
maxvsp = 10;
grv = 0.2;
walksp = 4;
jumpsp = -5.5;
grounded = false;
facingRight = true;
dying = false;
deathTimer = 30;
attached = -1;
move = 0;

//Character Switch
active = layer_get_name(layer) == "Character";
switchCooldown = 0;

shootRecoil = 0;
recoilAngle = 0;
flash = 0;
quickFlash = 0;
hp = 100;
