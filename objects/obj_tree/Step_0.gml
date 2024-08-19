/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_chooseRole.role=="ninja"){
	if(distance_to_object(obj_knife)<30&&obj_ninja.angry==1&&obj_ninja.energy>=3&&obj_knife.attackTime>0){
		obj_ninja.energy-=1
		obj_knife.attackTime=30
		instance_destroy()
	}
}