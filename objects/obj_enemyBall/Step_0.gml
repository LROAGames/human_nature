// 你可以在此编辑器中写入代码
player=obj_chooseRole.player
if(obj_pause.stop==0){
	depth=-y
	image_angle=direction
	image_alpha=max(hp/maxHp,0.25)
	direction = point_direction(x,y,player.x,player.y)
	if(hp>maxHp) hp=maxHp
	if(preHp<=0){
		score+=1
		instance_destroy()
	}
	if(hp<preHp){
		if(beatenEffectTime>0){
			hp=preHp
		}
		else{
			beatenEffectTime=6
			preHp=hp
		}
	}
	else if(hp>preHp){
		preHp=hp
	}
	if(beatenEffectTime>0) beatenEffectTime-=1
	if(distance_to_point(player.x,player.y)<3000&&player.freezeTime>0){
		iceLever+=2
	}
	if(lightTime>0){
		lightTime-=1
		speed=-8
	}
	else if(iceLever>2){
		for(var i=0;i<8;i++){
			with(instance_create_depth(x,y,-50,obj_iceBullet)){
				direction=i*45
			}
		}
		hp-=5
		iceLever-=1
	}
	else if(iceLever==2){
		image_blend=c_blue
		speed=0
	}
	else if(iceLever==1){
		image_blend=c_aqua
		speed=1
	}
	else speed=2
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<25){
			if(player.a==0){
				player.hp-=10
				player.a=60
			}
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<25){
			if(player.a==0){
				player.hp-=10
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
			for(var i=0;i<6;i+=1){
				with(instance_create_depth(x,y,0,obj_enemyBullet_redyy)){
					speed=4
					direction=other.angel
					image_angle=direction
				}
				angel=(angel+60)%360
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
