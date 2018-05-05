// create_sprite_map(sprites)
// defines a sprite map which holds a [k,v] pair
// that represents [action, sprite]

var sprites = argument0;
var spriteMap = ds_map_create();
for(var i = 0; i < array_length_1d(sprites); i++) {
	var name = sprite_get_name(sprites[i]);
	name = string_replace(name, "_sprite", "");
	var found = false;
	for(var j = 1; !found; j++) {
		if(string_char_at(name, j) == "_") {
			name = string_copy(name, j + 1, string_length(name));
			found = true;
		}
	}
	spriteMap[? name] = sprites[i];
}
return spriteMap;