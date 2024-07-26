/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_knife.attackTime>0){
	score+=1
	if(obj_player.angry==1){
		obj_player.shadowTime=0
		obj_player.hp+=0.1
	}
	instance_destroy()
}