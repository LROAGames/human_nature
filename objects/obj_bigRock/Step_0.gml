/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_chooseRole.role=="ninja"&&obj_ninja.energy>=0.5){
	if(distance_to_object(obj_knife)<30&&obj_ninja.angry==1&&obj_knife.attackTime>0){
		obj_ninja.energy-=0.5
		obj_knife.attackTime=30
		instance_destroy()
	}
}
if(distance_to_object(obj_shield)<30&&obj_chooseRole.role=="warrior"&&obj_warrior.energy>=0.5){
	if(obj_shield.flag==1){
		instance_destroy()
	}
}