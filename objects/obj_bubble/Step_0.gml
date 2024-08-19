/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
player=obj_chooseRole.player
if(obj_pause.stop==0){
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<50){
			obj_mapSea.o2+=180
			player.hp+=0.2
			instance_destroy()
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<50){
			obj_mapSea.o2+=180
			if(player.hp<100){
				player.hp+=0.2
			}
			instance_destroy()
		}
	}
}