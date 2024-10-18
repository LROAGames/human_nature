/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(room==room_chooseDifficulty||room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="summoner"){
		if(obj_pause.stop==0){
			depth=-50
			image_angle=direction
			if(flag==0){
				direction=-45-obj_summoner.attackTime
				x=obj_summoner.x+30
				y=obj_summoner.y+10
			}
			else if(flag==1){
				direction=45+obj_summoner.attackTime
				x=obj_summoner.x-30
				y=obj_summoner.y+10
			}
			if(obj_summoner.direction=0){
				flag=0
			}
			else if(obj_summoner.direction=180){
				flag=1
			}
		}
	}
	else{
		instance_destroy()
	}
}