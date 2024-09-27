/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop==0){
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
	else if(obj_chooseRole.role=="warrior"){
		x=obj_warrior.x
		y=obj_warrior.y
		direction+=8
		image_angle = direction
		if(mouse_check_button_released(mb_left)){
			instance_destroy()
		}
	}
	else if(obj_chooseRole.role=="doctor"){
		x=obj_doctor.x
		y=obj_doctor.y
		direction+=12
		image_angle = direction
		if(mouse_check_button_released(mb_left)){
			instance_destroy()
		}
	}
	else if(obj_chooseRole.role=="summoner"){
		x=obj_summoner.x
		y=obj_summoner.y
		if(obj_summoner.p==0) direction+=6
		else direction+=2
		image_angle = direction
		if(mouse_check_button_released(mb_left)){
			instance_destroy()
		}
	}
	else if(obj_chooseRole.role=="acrobat"){
		x=obj_acrobat.x
		y=obj_acrobat.y
		if(obj_acrobat.p==0) direction+=12
		else if(obj_acrobat.p==1) direction+=8
		else if(obj_acrobat.p==2) direction+=6
		image_angle = direction
		if(mouse_check_button_released(mb_left)){
			instance_destroy()
		}
	}
}
else{
	if(mouse_check_button_released(mb_left)){
		instance_destroy()
	}
}