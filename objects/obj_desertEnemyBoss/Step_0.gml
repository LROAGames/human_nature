/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	depth=-y
	if(instance_exists(obj_mage)){
		if(distance_to_point(obj_mage.x,obj_mage.y)<3000&&obj_mage.freezeTime>0){
			iceLever+=4
			iceTime=300
		}
	}
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<1){
			if(player.c==0){
				player.hp-=obj_calculation.desertEnemyBossDamage
				player.c=60
			}
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<1){
			if(player.c==0){
				player.hp-=obj_calculation.desertEnemyBossDamage
				player.c=60
			}
		}
	}
	if(hp<=0){
		hp=0
		for(var i=0;i<40;i+=1){
			instance_create_depth(irandom(room_width),irandom(room_height),4,obj_desertEnemy)
			obj_desertEnemy.flag=true
			obj_desertEnemy.angry=true
		}
		obj_mapDesert.a=2
		instance_destroy()
	}
	if(a>0) a-=1
	if(b>0) b-=1
	if(c>0) c-=1
	if(d>0) d-=1
	if(e>0) e-=1
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
	if(alarm[0]<30||alarm[0]>630){
			direction+=6
			image_angle = direction
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
			else image_blend=c_ltgray
			speed=1
		}
		else{
			image_blend=c_ltgray
			speed=1.5
		}
		direction = point_direction(x,y,player.x,player.y)
		image_angle = direction
	}
}
else{
	speed=0
	alarm[1]+=1
	alarm[0]+=1
}