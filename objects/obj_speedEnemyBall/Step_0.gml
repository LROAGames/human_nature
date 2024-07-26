/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	depth=-y
	if(alarm[1]>300) speed=3
	else speed=6
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	image_angle = direction
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<30){
			if(obj_player.f==0){
				obj_player.hp-=10
				obj_player.f=60
			}
		}
	}
	else{
		if(distance_to_point(obj_player.x,obj_player.y)<30){
			if(obj_player.f==0){
				obj_player.hp-=10
				obj_player.f=60
			}
		}
	}
}
else{
	speed=0
	alarm[0]+=1
	alarm[1]+=1
}