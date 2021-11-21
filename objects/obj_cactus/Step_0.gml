/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	if(obj_game2.a=1){
		if(obj_desertEnemyBoss.a>0){
			speed=4
			direction = point_direction(x,y,obj_desertEnemyBoss.x,obj_desertEnemyBoss.y)+80
			image_angle = direction		
		}
		else{
			speed=0
			direction = 0
			image_angle = direction
		}
	}
}
else{
	speed=0
}
