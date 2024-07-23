/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	depth=-y
	speed=4
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	image_angle = direction
	if(distance_to_point(obj_player.x,obj_player.y)<70){
		if(obj_player.d==0){
			obj_player.hp-=10
			obj_player.d=60
		}
	}
}
else{
	speed=0
}