/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	speed=16
	if(y>(obj_player.y+camera_get_view_height(0))) instance_destroy()
	if(y<(obj_player.y-camera_get_view_height(0))) instance_destroy()
	if(x>(obj_player.x+camera_get_view_width(0))) instance_destroy()
	if(x<(obj_player.x-camera_get_view_width(0))) instance_destroy()
}
else{
	speed=0
}