/// @description Insert description here
// You can write your code in this editor
depth=-999999999
x=obj_cowboy.x
y=obj_cowboy.y
if(obj_cowboy.angry==0){
	direction+=3
}
else if(obj_cowboy.angry==1){
	direction+=6
}
image_angle = direction
if(keyboard_check_released(vk_space)||obj_cowboy.bullet==obj_cowboy.maxBullet){
	if(obj_cowboy.angry==0){
		if(obj_cowboy.bulletTime<120){
			obj_cowboy.bulletTime=0
		}
	}
	else if(obj_cowboy.angry==1){
		if(obj_cowboy.bulletTime<60){
			obj_cowboy.bulletTime=0
		}
	}
	instance_destroy()
}