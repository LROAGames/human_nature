/// @description Insert description here
// You can write your code in this editor
depth=-999999999
x=obj_player.x
y=obj_player.y
if(obj_player.angry==0){
	direction+=3
}
else if(obj_player.angry==1){
	direction+=6
}
image_angle = direction
if(keyboard_check_released(vk_space)){
	if(obj_player.angry==0){
		if(obj_player.bulletTime<120){
			obj_player.bulletTime=0
		}
	}
	else if(obj_player.angry==1){
		if(obj_player.bulletTime<60){
			obj_player.bulletTime=0
		}
	}
	instance_destroy()
}