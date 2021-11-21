/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	x=obj_player.x
	y=obj_player.y
	direction+=24
	image_angle = direction
	if(mouse_check_button_released(mb_left)){
		instance_destroy()
	}
}