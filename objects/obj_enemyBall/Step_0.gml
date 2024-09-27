// 你可以在此编辑器中写入代码
event_inherited();
player=obj_chooseRole.player
if(obj_pause.stop==0){
	depth=-y
	image_angle=direction
	image_alpha=max(hp/maxHp,0.25)
	direction = point_direction(x,y,player.x,player.y)
	if(hp>maxHp) hp=maxHp
	if(preHp<=0){
		if(instance_exists(obj_summoner)){
			obj_summoner.soul+=soul
		}
		score+=1
		instance_destroy()
	}
	if(hp<preHp){
		preHp=hp
	}
	else if(hp>preHp){
		preHp=hp
	}
	if(beatenEffectTime>0) beatenEffectTime-=1
	if(instance_exists(obj_mage)){
		if(distance_to_point(obj_mage.x,obj_mage.y)<3000&&obj_mage.freezeTime>0){
			iceLever+=2
			iceTime=300
		}
	}
	if(lightTime>0){
		lightTime-=1
		speed=-8
	}
	else if(iceLever>2){
		if(beatenEffectTime==0){
			hp-=max(1,obj_calculation.iceDamage-defence)
			beatenEffectTime=6
		}
		iceLever-=3
		for(var i=0;i<6;i++){
			with(instance_create_depth(x,y,-50,obj_iceBullet)){
				direction=i*60
			}
		}	
	}
	else if(iceLever==2){
		image_blend=c_blue
		speed=0
	}
	else if(iceLever==1){
		image_blend=c_aqua
		speed=1
	}
	else{
		image_blend=c_white
		speed=2-(soulTime>0?1:0)
	}
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<25){
			if(player.a==0){
				player.hp-=obj_calculation.enemyBallDamage
				player.a=60
			}
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<25){
			if(player.a==0){
				player.hp-=obj_calculation.enemyBallDamage
				player.a=60
			}
		}
	}
	if(room==room_sea){
		if(obj_mapSea.a==2){
			x=obj_mapSea.xx
			y=obj_mapSea.yy
		}
		if(instance_exists(obj_seaEnemyBoss)){
			if(distance_to_point(obj_seaEnemyBoss.x,obj_seaEnemyBoss.y)<100){
				obj_seaEnemyBoss.hp+=2
				instance_destroy()
			}
		}
		if(cd==0){
			for(var i=0;i<3;i+=1){
				with(instance_create_depth(x,y,0,obj_enemyBulletRedyy)){
					speed=6
					direction=other.direction+i*120
					image_angle=direction
				}
			}
			cd=300
		}
	}
	else{
		direction = point_direction(x,y,player.x,player.y)
	}
	if(cd>0) cd-=1
}
else{
	alarm[1]+=1
	speed=0
}
