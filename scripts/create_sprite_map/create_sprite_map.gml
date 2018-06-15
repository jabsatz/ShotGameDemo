// create_sprite_map(sprites, spriteGroupName)
// defines a sprite map which holds a [k,v] pair
// that represents [action, sprite]

// SPRITES SHOULD BE IN CAMELCASE, STARTING WITH AN "s"
// i.e: sPlayerRunForward
// We want to get the ACTION from this name
// i.e: RunForward

var sprites = argument0;
var spriteGroupName = argument1;
var spriteMap = ds_map_create();
for(var i = 0; i < array_length_1d(sprites); i++) {

	var name = sprite_get_name(sprites[i]);
	// Remove first letter (s)
	name = string_copy(name, 2, string_length(name));
	
	// Remove name, so we get the action
	name = string_replace(name, spriteGroupName, "");

	spriteMap[? name] = sprites[i];
}
return spriteMap;