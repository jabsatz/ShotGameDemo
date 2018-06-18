/// get_playable_character_sprite(spriteMap, instanceId)
// returns correct sprite to render, spriteMap needs to have the following actions:
// idle (note: will override any other that isn't defined);
// jump, midair, jump_forward, jump_back, run_forward, run_back)

var spriteMap = argument0;
var character = argument1;
var facingGoingSameDirection = (
	(character.move > 0 && character.facingRight) ||
	(character.move < 0 && !character.facingRight)
);
var idle = spriteMap[? "Idle"];

//Animation

if(character.dying) {
	if(character.sprite_index == spriteMap[? "Unconscious"] || (
		character.sprite_index == spriteMap[? "Death"] &&
		character.image_index == character.image_number - 1
	)) {
		return ds_map_default_value(spriteMap, "Unconscious", idle);
	}
	return ds_map_default_value(spriteMap, "Death", idle);
}

if(!character.grounded) {
	if(character.move == 0) {
		if(character.vsp < 0)
			return ds_map_default_value(spriteMap, "Jump", idle);
		else
			return ds_map_default_value(spriteMap, "Midair", idle);
	} else {
		if(facingGoingSameDirection)
			return ds_map_default_value(spriteMap, "JumpForward", idle);
		else
			return ds_map_default_value(spriteMap, "JumpBack", idle);
	}
}

else if(character.move != 0) {
	if(facingGoingSameDirection)
		return ds_map_default_value(spriteMap, "RunForward", idle);
	else
		return ds_map_default_value(spriteMap, "RunBack", idle);
} else {
	return idle;
}
