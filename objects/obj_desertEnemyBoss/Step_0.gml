/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	depth=-y
	if(distance_to_point(obj_player.x,obj_player.y)<150){
		if(obj_player.c==0){
			obj_player.hp-=20
			obj_player.c=60
		}
	}
	if(hp<=0){
		hp=0
		for(var i=0;i<40;i+=1){
			instance_create_depth(irandom(room_width),irandom(room_height),4,obj_desertEnemy)
			obj_desertEnemy.flag=true
			obj_desertEnemy.angry=true
		}
		obj_game2.a=2
		instance_destroy()
	}
	if(a>0) a-=1
	if(alarm[0]<30||alarm[0]>870){
			direction+=6
			image_angle = direction
	}
	else{
		speed=1.5
		direction = point_direction(x,y,obj_player.x,obj_player.y)
		image_angle = direction
	}
}
else{
	speed=0
	alarm[1]+=1
	alarm[0]+=1
}