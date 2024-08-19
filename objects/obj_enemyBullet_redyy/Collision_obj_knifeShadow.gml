/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_ninja.angry==1&&obj_ninja.energy>=1&&obj_knife.attackTime>0){
	obj_knife.attackTime=30
	obj_ninja.shadowTime=1
	obj_ninja.energy-=0.5
	score+=1
	instance_destroy()
}
