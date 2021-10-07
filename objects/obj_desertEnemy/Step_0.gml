/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	if(abs(obj_player.x-x)<200&&abs(obj_player.y-y)<200){
		flag=true
	}
	if(flag=false){
		speed=0
		direction = startDirection
		image_angle = direction
	}
	else{
		direction = point_direction(x,y,obj_player.x,obj_player.y)
		image_angle = direction		
		if(angry=false){
			speed=2
		}
		else{
			speed=3
		}
	}
}
else{
	speed=0
}