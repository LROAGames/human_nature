
//summoner
if(room==room_chooseDifficulty||room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_pause.stop==0){
		depth=-y
		if(y>room_height) y=room_height
		if(y<0) y=0
		if(x>room_width) x=room_width
		if(x<0) x=0
		if(a>0) a-=1
		if(b>0) b-=1
		if(b<0) b+=1
		if(c>0) c-=1
		if(d>0) d-=1
		if(e>0) e-=1
		if(f>0) f-=1
		if(g>0) g-=1
		if(m>0) m-=1
		if(n>0) n-=1
		if(o>0) o-=1
		if(q>0) q-=1
		if(beatenEffectTime>0) beatenEffectTime-=1
		if(beatenEffectTime<0) beatenEffectTime+=1
		if(burnTime>0){
			if(burnTime%60==0) hp-=obj_calculation.burnDamage
			burnTime-=1
		}
	}
	else{
		speed=0
	}
}
/*

//
event_inherited();
if(room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="archer"){
		if(obj_pause.stop==0){
			depth=-y
			if(beatenEffectTime==0){
				image_alpha=1
			}
			if(hp<preHp){
				beatenEffectTime=30
				preHp=hp
			}
			else if(hp>preHp){
				beatenEffectTime=30
				preHp=hp
			}
			if(beatenEffectTime>15){
				image_alpha-=0.02
			}
			if(0<beatenEffectTime&&beatenEffectTime<=15){
				image_alpha+=0.02
			}
			if(image_alpha<0.25){
				image_alpha=0.25
			}
			if(keyboard_check(ord("W"))){
				y-=spd
				direction=90
			}
			else if(keyboard_check(ord("S"))){
				y+=spd
				direction=-90
				sprite_index=spr_player_cowboy_move_front
			}
			else if(keyboard_check(ord("A"))){
				x-=spd
				direction=180
				sprite_index=spr_player_cowboy_move_left
			}
			else if(keyboard_check(ord("D"))){
				x+=spd
				direction=0
				sprite_index=spr_player_cowboy_move_right
			}
			else{
				sprite_index=spr_player_cowboy
			}
			if(y>room_height) y=room_height
			if(y<0) y=0
			if(x>room_width) x=room_width
			if(x<0) x=0
			if(preHp<=0){
				game_restart()
			}
			if(b==0){
				spd=4
			}
			else if(b<0){
				spd=2
			}
			else{
				spd=6
			}
			if(energy<maxEnergy){
				energyRecoverTime+=1
				if(energyRecoverTime>=60){
					energy+=1
					energyRecoverTime=0
				}
			}
			if(angryTime>0){
				angryTime-=1
			}
			else angry=0
			if(energy<0) energy=0
			if(energy>maxEnergy) energy=maxEnergy
			if(beatenEffectTime>0) beatenEffectTime-=1
			if(coldDown>0) coldDown-=1
			if(coldDown2>0) coldDown2-=1
			if(hp>maxHp) hp=maxHp
		}
		else{
			speed=0
		}
	}
	else{
		instance_destroy()
	}
}
*/