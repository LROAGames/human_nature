/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	depth=-y
	image_angle=direction
	speed=24
	image_blend=c_red
	obj_calculation.shotDamage=5
	if(y>(player.y+camera_get_view_height(0))) instance_destroy()
	if(y<(player.y-camera_get_view_height(0))) instance_destroy()
	if(x>(player.x+camera_get_view_width(0))) instance_destroy()
	if(x<(player.x-camera_get_view_width(0))) instance_destroy()
}
else{
	speed=0
}