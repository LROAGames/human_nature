/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
image_alpha=0.7
if(obj_chooseRole.role=="ninja"){
	if(distance_to_object(obj_knife)<30&&obj_ninja.angry==1&&obj_knife.attackTime>0){
		obj_knife.attackTime=30
		instance_destroy()
	}
}
if(distance_to_object(obj_shield)<30&&obj_chooseRole.role=="warrior"){
	if(obj_shield.flag==1){
		instance_destroy()
	}
}
if(distance_to_object(obj_needle)<30&&obj_chooseRole.role=="doctor"){
	if(obj_needle.attackTime>0&&obj_needle.mode=="posion"){
		instance_destroy()
	}
}