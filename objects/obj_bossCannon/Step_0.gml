/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_pause.stop==0){
	speed=40
	if(flag==1){
		image_blend=c_red
		image_alpha=1
	}
	else{
		image_blend=c_white
		image_alpha=0.25
	}
	if(distance_to_point(obj_player.x,obj_player.y)<30&&flag==1){
		if(obj_player.o==0){
			obj_player.hp-=20
			obj_player.o=60
		}
	}
	if(y>room_height) instance_destroy()
	if(y<0) instance_destroy()
	if(x>room_width) instance_destroy()
	if(x<0) instance_destroy()
}
else{
	speed=0
}
