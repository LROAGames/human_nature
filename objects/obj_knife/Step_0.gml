/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(room==room_title||room==room_settings||room==room_help||room==room_chooseMap){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="ninja"){
		if(obj_pause.stop==0){
			depth=-50
			image_angle=direction
			if(obj_ninja.angry==1){
				image_blend=c_red
				obj_calculation.knifeDamage=8
			}
			else{
				image_blend=c_white
				obj_calculation.knifeDamage=6
			}
			if(attackTime>0){
				if(flag==0){
					direction+=45
					x=obj_ninja.x
					y=obj_ninja.y+10
				}
				else if(flag==1){
					direction+=45
					x=obj_ninja.x
					y=obj_ninja.y+10
				}
			}
			else if(flag==0){
				direction=obj_ninja.shadowTime+45
				x=obj_ninja.x-30
				y=obj_ninja.y+10
			}
			else if(flag==1){
				direction=-45-obj_ninja.shadowTime
				x=obj_ninja.x+30
				y=obj_ninja.y+10
			}
			with(instance_create_depth(x,y,depth+10,obj_knifeShadow)){
				direction=other.direction
				image_angle=direction
			}
			if(obj_ninja.direction=0){
				flag=0
			}
			else if(obj_ninja.direction=180){
				flag=1
			}
			if(attackTime>0) attackTime-=1
			if(mouse_check_button_pressed(mb_left)&&obj_ninja.shadowTime==0&&obj_ninja.energy>=1){
				attackTime=30
			}
		}
	}
	else{
		instance_destroy()
	}
}

