/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(obj_pause.stop==0){
	depth=-y
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<10){
			if(player.burnTime<=120){
				if(player.b==0) player.b=-60
				player.hp-=obj_calculation.lavaDamage
				player.burnTime=180
			}
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<10){
			if(player.burnTime<=120){
				if(player.b==0) player.b=-60
				player.hp-=obj_calculation.lavaDamage
				player.burnTime=180
			}
		}
	}
}
else{
	alarm[0]+=1
}
