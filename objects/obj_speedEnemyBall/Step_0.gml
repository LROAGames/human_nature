/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	depth=-y
	image_blend=c_yellow
	if(hp>maxHp) hp=maxHp
	if(preHp<=0){
		score+=1
		instance_destroy()
	}
	if(beatenEffectTime==0){
		image_alpha=max(hp/maxHp,0.25)
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
	else if(alarm[1]>180) speed=3
	else speed=6
	direction = point_direction(x,y,player.x,player.y)
	image_angle = direction
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<25){
			if(player.f==0){
				player.hp-=10
				player.f=60
			}
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<25){
			if(player.f==0){
				player.hp-=10
				player.f=60
			}
		}
	}
}
else{
	speed=0
	alarm[0]+=1
	alarm[1]+=1
}