/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(obj_pause.stop=0){
	depth=-y
	if(beatenEffectTime>0) image_blend=c_black
	else image_blend=c_red
	if(iceTime>0) iceTime-=1
	if(iceTime==0) iceLever=0
	if(hp>maxHp) hp=maxHp
	if(preHp<=0){
		score+=10
		instance_destroy()
	}
	if(beatenEffectTime==0){
		image_alpha=max(hp/maxHp,0.25)
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
	}
	if(lightTime>5){
		speed=-8
	}
	else if(iceLever>2){	
		if(beatenEffectTime==0){
			hp-=max(1,obj_calculation.iceDamage-defence)
			beatenEffectTime=30
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
	else if(0<lightTime&&lightTime<=5){
		speed=1
	}
	else{
		if(room=room_sea) speed=4
		else speed=3
	}
	direction = point_direction(x,y,player.x,player.y)
	image_angle = direction
	if(obj_chooseRole.role=="ninja"){
		if(distance_to_point(obj_ninjaRealShadow.x,obj_ninjaRealShadow.y)<25){
			if(player.q==0){
				player.hp-=15
				player.q=60
			}
		}
	}
	else{
		if(distance_to_point(player.x,player.y)<25){
			if(player.q==0){
				player.hp-=15
				player.q=60
			}
		}
	}
}
else{
	speed=0
	alarm[0]+=1
}