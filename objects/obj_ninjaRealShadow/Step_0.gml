/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(obj_pause.stop==0){
	with(instance_create_depth(x,y,depth+10,obj_ninjaShadow)){
		direction=other.direction
		image_angle=direction
	}
	if(obj_player.shadowTime==0){
		x=obj_player.x
		y=obj_player.y
	}
}

