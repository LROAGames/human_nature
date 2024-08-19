/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	depth=-y
	if(distance_to_point(player.x,player.y)<3000&&player.freezeTime>0){
		iceLever+=4
	}
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<1){
			if(player.c==0){
				player.hp-=30
				player.c=60
			}
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<1){
			if(player.c==0){
				player.hp-=30
				player.c=60
			}
		}
	}
	if(distance_to_object(obj_redFlower)<10){
		hp+=20
		with(obj_redFlower){
			instance_destroy()
		}
	}
	if(distance_to_object(obj_yellowFlower)<10){
		a=120
		with(obj_yellowFlower){
			instance_destroy()
		}
	}
	if(hp<=0){
		hp=0
		instance_create_depth(player.x,player.y,-100,obj_findExit)
		for(var i=0;i<100;i+=1){
			instance_create_depth(irandom(room_width),irandom(room_height),2,obj_speedEnemyBall)
		}
		obj_mapForest.a=2
		instance_destroy()
	}
	if(b>0) b-=1
	if(c>0) c-=1
	if(iceTime>0) iceTime-=1
	if(iceTime==0){
		if(iceLever>3){
			iceLever-=3
			iceTime=300
		}
		else iceLever=0
	}
	if(a>0){
		a-=1
		direction = point_direction(x,y,player.x,player.y)
		image_angle = direction
		if(a>180) speed=-1
		else speed=6
	}
	else{
		a=0
		if(iceLever>6){
			iceLever=4
			hp-=2
		}
		else if(4<=iceLever&&iceLever<=6){
			image_blend=c_blue
			speed=0
		}
		else if(1<=iceLever&&iceLever<=3){
			image_blend=c_aqua
			speed=1
		}
		else{
			image_blend=c_white
			speed=1.5
		}
		if(alarm[0]<90||alarm[0]>1050){
			direction+=6
			image_angle = direction
		}
		else{
			direction = point_direction(x,y,player.x,player.y)
			image_angle = direction
		}
	}
}
else{
	speed=0
	alarm[1]+=1
	alarm[0]+=1
}