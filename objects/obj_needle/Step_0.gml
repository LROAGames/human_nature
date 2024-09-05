/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="doctor"){
		if(obj_pause.stop==0){
			depth=-y
			if(mode=="posion"){
				obj_calculation.posionDamage=2+(obj_doctor.energy-obj_doctor.energy%15)/15
				image_alpha=0.15+(obj_doctor.energy-obj_doctor.energy%15)/150+(obj_doctor.energy>=0.5?0.15:0)
			}
			else{
				image_alpha=0.5
			}
			if(mode=="posion"){
				sprite_index=spr_posionNeedle
			}
			else if(mode=="heal"){
				sprite_index=spr_healNeedle
			}
			if(attackTime>0) image_blend=c_dkgrey
			else if(attackTime>-18&&attackTime<=0) image_blend=c_ltgray
			else image_blend=c_white
			if(attackTime>-18) attackTime-=1
			if(attackTime<=0){
				if(alarm[0]>0&&attackTime<-9){
					attackTime=6
				}
				if(num>0&&alarm[0]<=0){
					with(instance_create_depth(x,y,1,obj_darkHole)){
						direction=other.direction
						image_angle=direction
					}
					instance_destroy()
				}
				x=obj_doctor.x
				y=obj_doctor.y
				if(num>0) direction=point_direction(x,y,mouse_x,mouse_y)-120+num*30
				else direction=point_direction(x,y,mouse_x,mouse_y)
				image_angle=direction
				flag=0
			}
			else{
				if(mode=="posion") speed=24
				else if(mode=="heal") speed=12
			}
			if(keyboard_check_pressed(vk_space)&&attackTime<=0&&obj_doctor.coldDown<=900){
				if(mode=="posion") mode="heal"
				else if(mode=="heal") mode="posion"
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