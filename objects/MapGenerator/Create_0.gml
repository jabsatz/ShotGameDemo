var map_id = layer_tilemap_get_id(layer_get_id("World_Tiles"));
var object_layer_id = layer_get_id("World");



for(var mapx = -1; mapx < (room_width/16)+1; mapx++) {
	for(var mapy = -1; mapy < room_height/16; mapy++) {
		var data = tilemap_get(map_id, mapx, mapy);
		if((tile_get_index(data) > 0 || (mapx == -1 || mapy == -1 || mapx == room_width/16))) {
			instance_create_layer(mapx*16,mapy*16,object_layer_id,oBlock);
		}
	}
}