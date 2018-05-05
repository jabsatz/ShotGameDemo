/// get_animated_sprite(spriteMap, facingRight, move, vspd, grounded)
// returns correct sprite to render, spriteMap needs to have the following actions:
// idle (note: will override any other that isn't defined);
// jump, midair, jump_forward, jump_back, run_forward, run_back)

var spriteMap = argument0;
var facingRight = argument1;
var move = argument2;
var vspd = argument3;
var grounded = argument4;
var facingGoingSameDirection = (move > 0 && facingRight) || (move < 0 && !facingRight);
var idle = spriteMap[? "idle"];

//Animation

if(!grounded) {
	if(move == 0) {
		if(vsp < 0)
			return ds_map_default_value(spriteMap, "jump", idle);
		else
			return ds_map_default_value(spriteMap, "midair", idle);
	} else {
		if(facingGoingSameDirection)
			return ds_map_default_value(spriteMap, "jump_forward", idle);
		else
			return ds_map_default_value(spriteMap, "jump_back", idle);
	}
}

else if(move != 0) {
	if(facingGoingSameDirection)
		return ds_map_default_value(spriteMap, "run_forward", idle);
	else
		return ds_map_default_value(spriteMap, "run_back", idle);
} else {
	return idle;
}
