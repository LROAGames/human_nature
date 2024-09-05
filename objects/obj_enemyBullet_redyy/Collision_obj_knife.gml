/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_knife.attackTime>0&&obj_ninja.energy>=1){
	obj_ninja.energy-=1
	obj_ninja.shadowTime=0
	instance_destroy()
}