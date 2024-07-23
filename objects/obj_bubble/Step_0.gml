/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_pause.stop==0){
	if(distance_to_point(obj_player.x,obj_player.y)<50){
		obj_game3.o2+=180
		if(obj_player.hp<100){
			obj_player.hp+=0.2
		}
		instance_destroy()
	}
}