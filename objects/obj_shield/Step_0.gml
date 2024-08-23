/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(room==room_title||room==room_settings||room==room_help||room==room_chooseMap){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="warrior"){
		if(obj_pause.stop==0){
			depth=-50
			if(obj_warrior.reboundColdDown>0) image_alpha=0.75-obj_warrior.reboundColdDown/1000
			else image_alpha=1
			if(obj_warrior.angry==1) image_blend=c_yellow
			else if(attackTime>0) image_blend=c_dkgrey
			else if(attackTime>-15&&attackTime<=0) image_blend=c_ltgray
			else image_blend=c_white
			if(attackTime<=-15){
				move=0
			}
			if(flag==0){
				if(obj_warrior.angry==1){
					obj_calculation.shieldDamage=12
				}
				else if(obj_warrior.angry==0){
					obj_calculation.shieldDamage=4
				}
			}
			if(attackTime>-15) attackTime-=1
			if(distance_to_point(obj_warrior.x,obj_warrior.y)<50&&move==0){
				flag=0
			}
			if(move==0&&flag==1){
				attackTime=3
				image_angle+=36
				move_towards_point(obj_warrior.x,obj_warrior.y,40)
			}
			else if(move==0&&flag==0){
				if(attackTime<=0){
					x=obj_warrior.x
					y=obj_warrior.y
				}
				else{
					speed=6
				}
				direction=point_direction(x,y,mouse_x,mouse_y)
				image_angle=direction
			}
			else if(move==1){
				image_angle+=36
				move_towards_point(mouse_x,mouse_y,40)
			}
		}
		if(obj_pause.stop==1){
			speed=0
		}
	}
	else{
		instance_destroy()
	}
}