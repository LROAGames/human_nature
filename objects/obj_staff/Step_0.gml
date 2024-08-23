/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(room==room_title||room==room_settings||room==room_help||room==room_chooseMap){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="mage"){
		if(obj_pause.stop==0){
			depth=-50
			image_angle=direction
			sprite_index=ar[sprId]
			if(flag==0){
				direction=-45
				x=obj_mage.x+30
				y=obj_mage.y+10
			}
			else if(flag==1){
				direction=45
				x=obj_mage.x-30
				y=obj_mage.y+10
			}
			if(obj_mage.direction=0){
				flag=0
			}
			else if(obj_mage.direction=180){
				flag=1
			}
			if(obj_mage.angry==1){
				if(obj_mage.angryTime<=2) sprId=3
				else sprId=4
			}
			else{
				if(keyboard_check_pressed(vk_space)&&obj_mage.p==0&&obj_mage.h==0){
					sprId=1
				}
				if(keyboard_check_pressed(ord("E"))){
					sprId+=1
					if(sprId==1) sprId+=1
					if(sprId>3) sprId=0
				}
				if(keyboard_check_pressed(ord("Q"))){
					sprId-=1
					if(sprId==1) sprId-=1
					if(sprId<0) sprId=3
				}
			}
		}
	}
	else{
		instance_destroy()
	}
}