/// @description Insert description here
// You can write your code in this editor
if(hp<=0){
	hp=0
	instance_create_depth(obj_player.x,obj_player.y,-100,obj_findExit)
	obj_enemyBall.speed=4
	obj_game.a=2
	instance_destroy()
}
if(a>0){
	a-=1
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	image_angle = direction
	if(a>180) speed=-1
	else speed=6
}
else{
	a=0
	speed=1
	if(alarm[0]<90||alarm>1050){
		direction+=6
		image_angle = direction
	}
	else{
		direction = point_direction(x,y,obj_player.x,obj_player.y)
		image_angle = direction
	}
}