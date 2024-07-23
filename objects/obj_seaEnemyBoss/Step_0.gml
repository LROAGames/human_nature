/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	depth=-y
	if(hp<=0){
		if(flag){
			alarm[4]=300
			flag=false
		}
		direction+=3
		image_angle=direction
		image_alpha-=0.0033
		if(alarm[4]==0){
			obj_game3.a=2
			instance_destroy()
		}
	}
	else{
		image_angle=direction
		if(distance_to_point(obj_player.x,obj_player.y)<10){
			if(obj_player.n==0){
				obj_player.hp-=25
				obj_player.n=60
			}
		}
		if(720<alarm[3]){
			skillDirection=point_direction(x,y,obj_player.x,obj_player.y)
		}
		if(360<=alarm[3]&&alarm[3]<=720){
			speed=1
			if(instance_exists(obj_bossCannon)){
				obj_bossCannon.flag=0
			}
			direction = skillDirection+alarm[3]
			with(instance_create_depth(x,y,0,obj_bossCannon)){
				direction = other.direction
			}
		}
		else if(alarm[3]<360){
			speed=0
			direction = skillDirection+alarm[3]
			if(instance_exists(obj_bossCannon)){
				obj_bossCannon.flag=1
			}
			with(instance_create_depth(x,y,0,obj_bossCannon)){
				direction = other.direction
			}
		}
		else{
			if(instance_exists(obj_bossCannon)){
				obj_bossCannon.flag=0
			}
			direction = point_direction(x,y,obj_player.x,obj_player.y)
			if(alarm[1]<150&&alarm[1]%60==0){
				ff2=(ff2+1)%4 
				if(ff2==1){
					x=obj_player.x-1000+random(400)
					y=obj_player.y-1000+random(400)	
				}
				else if(ff2==2){
					x=obj_player.x+1000-random(400)
					y=obj_player.y+1000-random(400)	
				}
				else if(ff2==3){
					x=obj_player.x-1000+random(400)
					y=obj_player.y+1000-random(400)	
				}
				else{
					x=obj_player.x+1000-random(400)
					y=obj_player.y-1000+random(400)	
				}
				for(var i=0;i<36;i+=1){
					with(instance_create_depth(x,y,0,obj_enemyBullet_redyy)){
						speed=6
						direction=i*10%360
						image_angle=direction
					}
				}
			}
			if(alarm[2]<3){
				for(var i=0;i<10;i+=1){
					with(instance_create_depth(x,y,0,obj_enemyBullet_redyy)){
						direction = point_direction(x,y,obj_player.x,obj_player.y)-10+i*2
						image_angle=direction
					}
				}
			}
			if(teleportation){
				ff=(ff+1)%4 
				if(ff==1){
					x=obj_player.x-500+random(200)
					y=obj_player.y-500+random(200)	
				}
				else if(ff==2){
					x=obj_player.x+500-random(200)
					y=obj_player.y+500-random(200)	
				}
				else if(ff==3){
					x=obj_player.x-500+random(200)
					y=obj_player.y+500-random(200)	
				}
				else{
					x=obj_player.x+500-random(200)
					y=obj_player.y-500+random(200)	
				}
				teleportation=false
			}
			else{
				speed=2
				image_angle = direction
			}
		}
	}
}
else{
	speed=0
	alarm[3]+=1
	alarm[2]+=1
	alarm[1]+=1
	alarm[0]+=1
}