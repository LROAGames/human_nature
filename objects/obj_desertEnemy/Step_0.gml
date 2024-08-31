/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop==0){
	depth=-y
	if(posionTime>0){
		if(posionTime%30==0) hp-=max(1,obj_calculation.posionDamage-defence)
		posionTime-=1
	}
	if(iceTime>0) iceTime-=1
	if(iceTime==0) iceLever=0
	if(hp>maxHp) hp=maxHp
	if(preHp<=0){
		score+=2
		instance_destroy()
	}
	if(beatenEffectTime==0){
		image_alpha=max(0.25,hp/maxHp)
	}
	if(hp<preHp){
		preHp=hp
	}
	else if(hp>preHp){
		preHp=hp
	}
	if(beatenEffectTime>0) beatenEffectTime-=1
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<25){
			if(player.d==0){
				player.hp-=5
				player.d=60
			}
		}
		if(abs(obj_ninjaRealShadow.x-x)<200&&abs(obj_ninjaRealShadow.y-y)<200){
			flag=true
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<25){
			if(player.d==0){
				player.hp-=5
				player.d=60
			}
		}
		if(abs(player.x-x)<200&&abs(player.y-y)<200){
			flag=true
		}
	}
	if(instance_exists(obj_mage)){
		if(distance_to_point(obj_mage.x,obj_mage.y)<3000&&obj_mage.freezeTime>0){
			iceLever+=2
			iceTime=300
		}
	}
	if(flag=false){
		image_blend=c_white
		iceLever=0
		speed=0
		direction = startDirection
		image_angle = direction
	}
	else{
		direction = point_direction(x,y,player.x,player.y)
		image_angle = direction
		if(lightTime>0){
			lightTime-=1
			speed=-8
		}
		else if(iceLever>2){
			for(var i=0;i<6;i++){
				with(instance_create_depth(x,y,-50,obj_iceBullet)){
					direction=i*60
				}
			}	
			if(beatenEffectTime==0){
				hp-=max(1,obj_calculation.iceDamage-defence)
				beatenEffectTime=6
			}
			iceLever-=3
		}
		else if(iceLever==2){
			image_blend=c_blue
			speed=0
		}
		else if(iceLever==1){
			image_blend=c_aqua
			speed=1
		}
		else if(angry=false){
			image_blend=c_ltgray
			speed=2
		}
		else{
			image_blend=c_fuchsia
			speed=3
		}
	}
}
else{
	speed=0
	alarm[0]+=1
}