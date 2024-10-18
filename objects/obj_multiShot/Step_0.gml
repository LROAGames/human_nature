/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	depth=-y
	image_angle=direction
	speed=16
	image_blend=c_fuchsia
	if(distance_to_object(obj_barrier)<1){
		if(magic==0) direction=irandom(360)
		else alarm[0]=3
	}
	if(y>(player.y+camera_get_view_height(0))) instance_destroy()
	if(y<(player.y-camera_get_view_height(0))) instance_destroy()
	if(x>(player.x+camera_get_view_width(0))) instance_destroy()
	if(x<(player.x-camera_get_view_width(0))) instance_destroy()
}
else{
	alarm[0]+=1
	speed=0
}