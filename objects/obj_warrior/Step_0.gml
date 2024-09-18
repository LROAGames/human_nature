
//warrior
event_inherited();
if(room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="warrior"){
		if(obj_pause.stop==0){
			depth=-y
			if(distance_to_object(obj_defenceField)<10){
				if(fieldTime<=0){
					hp+=1
					fieldTime=60
				}
			}
			if(beatenEffectTime==0){
				image_alpha=1
			}
			if(hp<preHp){
				if(reboundTime>0){
					hp=preHp
					reboundTime=0
					reboundColdDown=240
					energy+=4
					with(instance_create_depth(x,y,-999999999,obj_defenceField)){
						alarm[0]=120
					}
				}
				else{
					beatenEffectTime=30
					var v=preHp-hp
					if(angry==0) preHp=hp+v/5
					else preHp=hp+v*4/5
					hp=preHp
				}
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
				if(revive==0) game_restart()
				else{
					hp=maxHp
					preHp=maxHp
					energy=maxEnergy
					revive=0
					with(instance_create_depth(x,y,-999999999,obj_defenceField)){
						alarm[0]=360
					}
				}
			}
			if(reboundTime>0){
				reboundTime-=1
				image_blend=c_black
			}
			else if(angry==1){
				image_blend=c_yellow
			}
			else{
				image_blend=c_white
			}
			if(fieldTime>0){
				fieldTime-=1
			}
			if(b==0){
				if(fieldTime>0||angry==1) spd=5
				else spd=4
			}
			else if(b<0){
				spd=2
			}
			else{
				spd=6
			}
			if(energy<maxEnergy||revive==0){
				energyRecoverTime+=1
				if(energyRecoverTime>=60&&revive==1){
					energy+=1
					energyRecoverTime=0
				}
				if(energyRecoverTime>=50&&revive==0){
					hp+=0.2
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
			if(reboundColdDown>0) reboundColdDown-=1
			if(hp>maxHp&&angry==0) hp=maxHp
			if(mouse_check_button(mb_left)&&energy>=0.5&&obj_shield.attackTime<=-15){
				with(instance_create_depth(x,y,-999999999-h*p*100,obj_savePower)){
					if(1<=other.p&&other.p<2){
						image_blend=c_yellow
					}
					else if(2<=other.p){
						image_blend=c_red
					}
					else{
						image_blend=c_white
					}
				}
				h+=1
				if(h>=45){
					if(p>=3) p=3
					else{
						if(energy>=2){
							energy-=2
							p+=1
						}
					}
					h=0
				}
			}
			if(mouse_check_button_released(mb_left)&&obj_shield.attackTime<=-15&&energy>=0.5){
				if(p==0){
					energy-=0.5
					obj_shield.attackTime=15
				}
				else{
					obj_shield.move=1
					obj_shield.flag=1
					obj_shield.attackTime=p*40
					if(angry==0) obj_calculation.shieldDamage=4+p*2
					else obj_calculation.shieldDamage=14+p*7
				}
				h=0
				p=0
			}
			if(mouse_check_button_pressed(mb_right)&&energy>=12&&coldDown<=0){
				energy-=12
				coldDown=1080
				with(instance_create_depth(x,y,-999999999,obj_defenceField)){
					alarm[0]=240
				}
			}
			if(keyboard_check_pressed(vk_space)&&energy>=4&&reboundTime<=0&&reboundColdDown<=0){
				energy-=4
				reboundTime=24
				reboundColdDown=480
			}
			if(keyboard_check_pressed(ord("F"))&&coldDown2<=0&&obj_shield.attackTime<=-15&&energy>=25){
				energy-=25
				hp+=15
				coldDown2=5400
				angry=1
				angryTime=1200
			}
		}
		else{
			speed=0
		}
	}
	else{
		instance_destroy()
	}
}