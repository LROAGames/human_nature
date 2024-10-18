/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(room==room_chooseDifficulty||room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	if(obj_chooseRole.role=="ninja"){
		if(obj_pause.stop==0){
			visible=true
			if(obj_pause.stop==0){
				with(instance_create_depth(x,y,depth+10,obj_ninjaShadow)){
					direction=other.direction
					image_angle=direction
				}
				if(obj_ninja.shadowTime==0){
					x=obj_ninja.x
					y=obj_ninja.y
				}
			}
		}
	}
	else{
		instance_destroy()
	}
}
