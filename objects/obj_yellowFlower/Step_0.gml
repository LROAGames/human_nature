/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
player=obj_chooseRole.player
if(distance_to_object(player)<1){
	if(player.b<120) player.b=120
	instance_destroy()
}