/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(obj_chooseRole.role=="ninja"){
	if(obj_pause.stop==0){
		depth=-40
		if(obj_ninja.angry==1){
			image_blend=c_red
		}
		else{
			image_blend=c_white
		}
		image_angle=direction
		image_alpha-=0.1
	}
	else{
		alarm[0]+=1
	}
}
else{
	instance_destroy()
}