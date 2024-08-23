/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	depth=-y
	if(obj_chooseRole.role=="ninja"&&obj_ninja.energy>=0.5){
		if(distance_to_object(obj_knife)<30&&obj_ninja.angry==1&&obj_knife.attackTime>0){
			obj_ninja.energy-=0.5
			obj_knife.attackTime=30
			instance_destroy()
		}
	}
	if(distance_to_object(obj_shield)<30&&obj_chooseRole.role=="warrior"&&obj_warrior.energy>=0.5){
		if(obj_shield.flag==1){
			instance_destroy()
		}
	}
	if(distance_to_object(obj_lake)<200){
		instance_destroy()
	}
	if(obj_mapDesert.a=1){
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
