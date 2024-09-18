/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_pause.stop==0){
	if(num==0){
		speed=12
		with(instance_create_depth(x,y,1,obj_darkHole)){
			alarm[0]=15
			direction=other.direction
			image_angle=direction
		}
		if(y>(obj_summoner.y+camera_get_view_height(0))) instance_destroy()
		if(y<(obj_summoner.y-camera_get_view_height(0))) instance_destroy()
		if(x>(obj_summoner.x+camera_get_view_width(0))) instance_destroy()
		if(x<(obj_summoner.x-camera_get_view_width(0))) instance_destroy()
	}
	else{
		x=obj_summoner.x
		y=obj_summoner.y
		image_angle=direction+obj_summoner.soulDirectionChange
	}
	if(num>obj_summoner.soul){
		instance_destroy()
	}
}
else{
	speed=0
}