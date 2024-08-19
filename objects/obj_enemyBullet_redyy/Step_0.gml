/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	depth=-y
	speed=6
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<50){
			if(player.m==0){
				player.hp-=5
				player.m=60
			}
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<50){
			if(player.m==0){
				player.hp-=5
				player.m=60
			}
		}
	}
}
else{
	speed=0
	alarm[0]+=1
}