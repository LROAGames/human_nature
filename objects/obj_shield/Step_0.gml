/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(room==room_title||room==room_settings||room==room_help){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="warrior"){
		if(obj_pause.stop==0){
			depth=-50
			image_angle=direction
			x=obj_warrior.x
			y=obj_warrior.y
			direction=point_direction(x,y,mouse_x,mouse_y)
			if(attackTime>0) attackTime-=1
			if(mouse_check_button_released(mb_left)&&obj_warrior.energy>=1){
				attackTime=30
			}
		}
	}
	else{
		instance_destroy()
	}
}

