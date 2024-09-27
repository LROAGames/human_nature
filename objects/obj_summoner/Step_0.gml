
//summoner
event_inherited();
if(room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="summoner"){
		if(obj_pause.stop==0){
			depth=-y
			if(angry==1) image_blend=c_maroon
			else image_blend=c_dkgray
			if(beatenEffectTime==0){
				image_alpha=1
			}
			if(hp<preHp){
				beatenEffectTime=30
				if(summonedAnimalNumber>0){
					var v=preHp-hp
					preHp=hp+v/2*summonedAnimalNumber
					hp=preHp
					with(obj_summonedAnimal){
						if(level<3) alarm[0]-=v/2*6
					}
				}
				else preHp=hp
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
				spd=4.5
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
					energy+=1.5
					energyRecoverTime=0
				}
			}
			if(energy<0) energy=0
			if(energy>maxEnergy-15*summonedAnimalNumber) energy=maxEnergy-15*summonedAnimalNumber
			if(beatenEffectTime>0) beatenEffectTime-=1
			if(coldDown>0) coldDown-=1
			if(coldDown<780&&instance_exists(obj_summonedAnimal)) obj_summonedAnimal.attackSpeed=45
			if(coldDown>=780){
				with(instance_create_depth(x,y,0,obj_darkHole)){
					direction=other.direction
					image_angle=direction
				}
			}
			if(coldDown2>0) coldDown2-=1
			if(attackTime>0) attackTime-=1
			if(hp>maxHp) hp=maxHp
			if(soul>preSoul){
				energy+=1
				hp+=0.1
				for(var i=1;i<=soul;i+=1){
					with(instance_create_depth(x,y,0,obj_soul)){
						direction=i*360/other.maxSoul
						num=i
					}
				}
				preSoul=soul
			}
			if(soul<preSoul){
				preSoul=soul
			}
			if(soulDirectionChange<360){
				soulDirectionChange+=3
			}
			else soulDirectionChange=0
			if(soul>maxSoul){
				soul=maxSoul
				preSoul=maxSoul
			}
			if(energy<1) angry=0
			if(keyboard_check_pressed(vk_space)){
				if(angry==0&&energy>=1) angry=1
				else angry=0
			}
			if(mouse_check_button(mb_left)&&energy>=5&&soul>=maxSoul/3&&!(p==1&&summonedAnimalNumber>=maxSummonedAnimalNumber)){
				with(instance_create_depth(x,y,-999999999-h*p*100,obj_savePower)){
					if(1<=other.p&&other.p<=2){
						image_blend=c_red
					}
					else{
						image_blend=c_white
					}
				}
				h+=1
				if((p==0&&h>=60)||(p>0&&h>=180)){
					if(p>=2) p=2
					else{
						if(energy>=5&&soul>=maxSoul/3){
							energy-=5
							soul-=maxSoul/3
							p+=1
						}
					}
					h=0
				}
			}
			if(mouse_check_button_released(mb_left)){
				if(p==0&&attackTime==0&&energy>=0.5+angry){
					energy-=0.5+angry
					attackTime=60
					for(var i=0;i<=angry*2;i++){
						with(instance_create_depth(obj_summonStaff.x,obj_summonStaff.y,0,obj_soulBullet)){
							direction=point_direction(x,y,mouse_x,mouse_y)-other.angry*20+i*20
							image_angle=direction
						}
					}
				}
				else if(p==1){
					for(var i=0;i<maxSoul/1.5;i++){
						with(instance_create_depth(obj_summonStaff.x,obj_summonStaff.y,0,obj_soul)){
							direction=point_direction(x,y,mouse_x,mouse_y)+540/other.maxSoul*i
							image_angle=direction
							num=0
						}
					}
				}
				else if(p>1&&summonedAnimalNumber<maxSummonedAnimalNumber){
					summonedAnimalNumber+=1
					with(instance_create_depth(x,y,0,obj_summonedAnimal)){
						level=other.p
						alarm[0]=1800*other.p
					}
				}
				h=0
				p=0
			}
			if(mouse_check_button_pressed(mb_right)&&energy>=15&&coldDown<=0){
				if(instance_exists(obj_summonedAnimal)) obj_summonedAnimal.attackSpeed=15
				if(b<300) b=300
				energy-=15
				coldDown=1080
			}
			if(keyboard_check_pressed(ord("F"))&&soul>=maxSoul&&coldDown2<=0&&(!instance_exists(obj_summonField))){
				soul=0
				coldDown2=7200
				instance_create_depth(x,y,1,obj_summonField)
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

