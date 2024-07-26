/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(obj_chooseRole.role=="ninja"){
	if(obj_pause.stop==0){
		depth=-y
		image_angle=direction
		if(obj_player.angry==1){
			image_blend=c_red
		}
		else{
			image_blend=c_white
		}
		if(attackTime>0){
			if(flag==0){
				direction+=45
				x=obj_player.x
				y=obj_player.y+10
			}
			else if(flag==1){
				direction+=45
				x=obj_player.x
				y=obj_player.y+10
			}
		}
		else if(flag==0){
			direction=obj_player.shadowTime+45
			x=obj_player.x-30
			y=obj_player.y+10
		}
		else if(flag==1){
			direction=-45-obj_player.shadowTime
			x=obj_player.x+30
			y=obj_player.y+10
		}
		with(instance_create_depth(x,y,depth+10,obj_knifeShadow)){
			direction=other.direction
			image_angle=direction
		}
		if(obj_player.direction=0){
			flag=0
		}
		else if(obj_player.direction=180){
			flag=1
		}
		if(attackTime>0) attackTime-=1
		if(mouse_check_button_pressed(mb_left)&&obj_player.shadowTime==0&&obj_player.energy>=1){
			attackTime=30
		}
	}
}
else{
	instance_destroy()
}
