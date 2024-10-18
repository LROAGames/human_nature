/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
alarm[3]=3000
for(var i=0;i<8;i++){
	var v=irandom(4)
	if(v==1){
		x=player.x-800+random(400)
		y=player.y-400+random(800)
		direction=point_direction(x,y,player.x,player.y)-15+irandom(30)
		with(instance_create_depth(x,y,0,obj_lavaBullet)){
			direction=other.direction
		}
	}
	else if(v==2){
		x=player.x+400-random(800)
		y=player.y-800+random(400)
		direction=point_direction(x,y,player.x,player.y)-15+irandom(30)
		with(instance_create_depth(x,y,0,obj_lavaBullet)){
			direction=other.direction
		}
	}
	else if(v==3){
		x=player.x+800-random(400)
		y=player.y+400-random(800)
		direction=point_direction(x,y,player.x,player.y)-15+irandom(30)
		with(instance_create_depth(x,y,0,obj_lavaBullet)){
			direction=other.direction
		}
	}
	else{
		x=player.x-400+random(800)
		y=player.y+800-random(400)
		direction=point_direction(x,y,player.x,player.y)-15+irandom(30)
		with(instance_create_depth(x,y,0,obj_lavaBullet)){
			direction=other.direction
		}
	}
}