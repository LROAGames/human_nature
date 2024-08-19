/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	speed=24
	depth=-y
	image_angle=direction
	image_blend=c_blue
	if(y>(obj_mage.y+camera_get_view_height(0))) instance_destroy()
	if(y<(obj_mage.y-camera_get_view_height(0))) instance_destroy()
	if(x>(obj_mage.x+camera_get_view_width(0))) instance_destroy()
	if(x<(obj_mage.x-camera_get_view_width(0))) instance_destroy()
}
else{
	speed=0
	alarm[0]+=1
}