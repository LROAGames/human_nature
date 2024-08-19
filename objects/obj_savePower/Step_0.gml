/// @description Insert description here
// You can write your code in this editor
if(obj_chooseRole.role=="cowboy"){
	x=obj_cowboy.x
	y=obj_cowboy.y
	if(obj_cowboy.angry==0){
		direction+=6
	}
	else if(obj_cowboy.angry==1){
		direction+=12
	}
	image_angle = direction
	if(mouse_check_button_released(mb_left)){
		instance_destroy()
	}
}
else if(obj_chooseRole.role=="mage"){
	x=obj_mage.x
	y=obj_mage.y
	if(obj_mage.angry==0){
		direction+=6
	}
	else if(obj_mage.angry==1){
		direction+=12
	}
	image_angle = direction
	if(mouse_check_button_released(mb_left)){
		instance_destroy()
	}
}