/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_summoner.coldDown<900){
	if(level<3)obj_summoner.summonedAnimalNumber-=1
	instance_destroy()
}
else{
	alarm[0]=15
}
