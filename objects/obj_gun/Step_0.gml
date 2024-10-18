/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(room==room_chooseDifficulty||room==room_title||room==room_settings||room==room_help||room==room_chooseMap||room==room_chooseRole||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="cowboy"){
		if(obj_pause.stop==0){
			depth=-y
			x=obj_cowboy.x
			y=obj_cowboy.y
			direction=point_direction(x,y,mouse_x,mouse_y)
			if(direction>90&&direction<=270){
				image_angle=direction
				sprite_index=spr_gun_left
			}
			else{
				image_angle=direction
				sprite_index=spr_gun_right
			}
		}
	}
	else{
		instance_destroy()
	}
}