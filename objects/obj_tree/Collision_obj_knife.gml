/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_player.angry==1&&obj_player.energy>=5&&obj_knife.attackTime>0){
	obj_player.energy-=3
	if(obj_player.angry==1){
		obj_player.shadowTime=0
	}
	instance_destroy()
}