/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	depth=-y
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<10){
			if(obj_player.c==0){
				obj_player.hp-=30
				obj_player.c=60
			}
		}
	}
	else{
		if(distance_to_point(obj_player.x,obj_player.y)<10){
			if(obj_player.c==0){
				obj_player.hp-=30
				obj_player.c=60
			}
		}
	}
	if(distance_to_object(obj_redFlower)<150){
		hp+=20
		with(obj_redFlower){
			instance_destroy()
		}
	}
	if(distance_to_object(obj_yellowFlower)<150){
		a=120
		with(obj_yellowFlower){
			instance_destroy()
		}
	}
	if(hp<=0){
		hp=0
		instance_create_depth(obj_player.x,obj_player.y,-100,obj_findExit)
		for(var i=0;i<100;i+=1){
			instance_create_depth(irandom(room_width),irandom(room_height),2,obj_speedEnemyBall)
		}
		obj_game.a=2
		instance_destroy()
	}
	if(b>0) b-=1
	if(c>0) c-=1
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