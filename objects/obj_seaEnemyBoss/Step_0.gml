/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	depth=-y
	if(a>0) a-=1
	if(b>0) b-=1
	if(c>0) c-=1
	if(d>0) d-=1
	if(instance_exists(obj_mage)){
		if(distance_to_point(obj_mage.x,obj_mage.y)<3000&&obj_mage.freezeTime>0){
			iceLever+=4
			iceTime=300
		}
	}
	if(posionTime>0){
		if(posionTime%30==0) hp-=max(1,obj_calculation.posionDamage-defence)
		posionTime-=1
	}
	if(summonFieldTime>0) summonFieldTime-=1
	if(lightTime>0) lightTime-=1
	if(iceTime>0) iceTime-=1
	if(iceTime==0){
		if(iceLever>3){
			iceLever-=3
			iceTime=300
		}
		else iceLever=0
	}
	if(hp<=0||!flag){
		hp=0
		image_blend=c_red
		if(flag){
			alarm[4]=540
			flag=false
		}
		direction+=2
		image_angle=direction
		image_alpha-=0.0016
		with(instance_create_depth(x,y,0,obj_seaBossBullet)){
			speed=6
			direction=other.direction
			image_angle=direction
		}
		if(alarm[4]==0){
			obj_mapSea.a=2
			obj_mapSea.xx=x
			obj_mapSea.yy=y
			obj_mapSea.alarm[1]=60
			instance_create_depth(x,y,-100,obj_exit)
			instance_create_depth(player.x,player.y,-100,obj_findExit)
			instance_destroy()
		}
	}
	else if(flag){
		image_angle=direction
		if(obj_chooseRole.role=="ninja"){
			if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<10){
				if(player.g==0){
					player.hp-=obj_calculation.seaEnemyBossDamage
					player.g=60
				}
			}
		}
		else{
			if(distance_to_point(player.x,player.y)<10){
				if(player.g==0){
					player.hp-=obj_calculation.seaEnemyBossDamage
					player.g=60
				}
			}
		}
		if(720<alarm[3]){
			skillDirection=point_direction(x,y,player.x,player.y)
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
			direction = point_direction(x,y,player.x,player.y)
			if(alarm[1]<150&&alarm[1]%60==0){
				ff2=(ff2+1)%4 
				if(ff2==1){
					x=player.x-1000+random(200)
					y=player.y-1000+random(200)	
				}
				else if(ff2==2){
					x=player.x+1000-random(200)
					y=player.y+1000-random(200)	
				}
				else if(ff2==3){
					x=player.x-1000+random(200)
					y=player.y+1000-random(200)	
				}
				else{
					x=player.x+1000-random(200)
					y=player.y-1000+random(200)	
				}
				for(var i=0;i<36;i+=1){
					with(instance_create_depth(x,y,0,obj_seaBossBullet)){
						speed=6
						direction=i*10%360
						image_angle=direction
					}
				}
			}
			if(alarm[2]<3){
				for(var i=0;i<10;i+=1){
					with(instance_create_depth(x,y,0,obj_seaBossBullet)){
						direction = point_direction(x,y,player.x,player.y)-10+i*2
						image_angle=direction
					}
				}
			}
			if(teleportation){
				ff=(ff+1)%4 
				if(ff==1){
					x=player.x-500+random(200)
					y=player.y-500+random(200)	
				}
				else if(ff==2){
					x=player.x+500-random(200)
					y=player.y+500-random(200)	
				}
				else if(ff==3){
					x=player.x-500+random(200)
					y=player.y+500-random(200)	
				}
				else{
					x=player.x+500-random(200)
					y=player.y-500+random(200)	
				}
				teleportation=false
			}
			else{
				if(lightTime>=150){
					speed=-4
				}
				else if(iceLever>6){
					iceLever=4
					hp-=max(1,obj_calculation.iceDamage-defence)
				}
				else if(4<=iceLever&&iceLever<=6){
					image_blend=c_blue
					speed=0
				}
				else if((1<=iceLever&&iceLever<=3)||(lightTime<150&&lightTime>0)){
					if(iceLever>0) image_blend=c_aqua
					else image_blend=c_white
					speed=1
				}
				else{
					image_blend=c_white
					speed=2
				}
				image_angle = direction
			}
		}
	}
}
else{
	speed=0
	alarm[4]+=1
	alarm[3]+=1
	alarm[2]+=1
	alarm[1]+=1
	alarm[0]+=1
}