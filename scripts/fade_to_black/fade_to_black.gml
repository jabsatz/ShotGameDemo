// fade_to_black(next)
next = argument0
if(next) {
	global.checkpointX = -1;
	global.checkpointY = -1;
}
with(instance_create_depth(0,0,-999,RoomFadeEnd)) {
	next = other.next;
}