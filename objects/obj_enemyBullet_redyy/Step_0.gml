/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	depth=-y
	speed=6
	if(distance_to_point(obj_player.x,obj_player.y)<50){
		if(obj_player.m==0){
			obj_player.hp-=5
			obj_player.m=60
		}
	}
}
else{
	speed=0
	alarm[0]+=1
}