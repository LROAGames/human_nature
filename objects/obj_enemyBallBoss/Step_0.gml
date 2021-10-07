/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	if(hp<=0){
		hp=0
		instance_create_depth(obj_player.x,obj_player.y,-100,obj_findExit)
		for(var i=0;i<100;i+=1){
			instance_create_depth(irandom(room_width),irandom(room_height),2,obj_speedEnemyBall)
		}
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
		if(alarm[0]<90||alarm[0]>1050){
			direction+=6
			image_angle = direction
		}
		else{
			direction = point_direction(x,y,obj_player.x,obj_player.y)
			image_angle = direction
		}
	}
}
else{
	speed=0
	alarm[1]+=1
	alarm[0]+=1
}