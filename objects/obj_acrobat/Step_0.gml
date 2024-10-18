
//acrobat
event_inherited();
if(room==room_chooseDifficulty||room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="acrobat"){
		if(obj_pause.stop==0){
			depth=-y
			if(beatenEffectTime==0){
				image_alpha=1
			}
			if(hp<preHp){
				if(moveTime>0) hp=preHp
				else{
					beatenEffectTime=30
					preHp=hp
				}
			}
			else if(hp>preHp){
				beatenEffectTime=-30
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
			if(y>room_height-768/2) y=room_height-768/2
			if(y<768/2) y=768/2
			if(x>room_width-1366/2) x=room_width-1366/2
			if(x<1366/2) x=1366/2
			/*if(distance_to_object(obj_enemyMode)<1&&moveTime>0){
				instance_create_depth(x,y,0,obj_darkHole)
			}
			if(distance_to_object(obj_strongEnemyBall)<1&&moveTime>0){
				instance_create_depth(x,y,0,obj_darkHole)
			}
			if(distance_to_object(obj_bossMode)<1&&moveTime>0){
				instance_create_depth(x,y,0,obj_darkHole)
			*/
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
			if(coldDown>0) coldDown-=1
			if(coldDown2>0) coldDown2-=1
			if(attackTime>0) attackTime-=1
			if(moveTime>0){
				speed=10
				moveTime-=1
				image_blend=c_dkgray
			}
			else{
				speed=0
				image_blend=c_white
			}
			if(hp>maxHp){
				hp=maxHp
				preHp=maxHp
			}
			if(mouse_check_button(mb_left)&&energy>=1){
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
				if(h>30+p*30){
					if(p>=3) p=3
					else{
						if(energy>=1+p*1){
							energy-=1+p*1
							p+=1
						}
					}
					h=0
				}
			}
			if(mouse_check_button_released(mb_left)){
				if(p==0&&energy>=0.2&&attackTime==0){
					energy-=0.2
					with(instance_create_depth(x,y,0,obj_multiShot)){
						magic=1
						direction=point_direction(x,y,mouse_x,mouse_y)
					}
				}
				else if(p>0){
					for(var i=0;i<1+2*p;i+=1){
						with(instance_create_depth(x,y,0,obj_multiShot)){
							time=90
							alarm[0]=90
							magic=other.p
							multicnt=other.p*2+1
							direction=point_direction(x,y,mouse_x,mouse_y)-other.p*4+i*4
						}
					}
				}
				h=0
				p=0
			}
			if(mouse_check_button(mb_right)&&energy>=0.1&&coldDown==0&&coldDownCnt<1320){
				if(coldDownCnt<1320) coldDownCnt+=4
				if(attackTime==0){
					energy-=0.2
					attackTime=3
					for(var i=0;i<3;i++){
						with(instance_create_depth(x,y,0,obj_multiShot)){
							magic=0
							time=120
							alarm[0]=120
							direction=point_direction(x,y,mouse_x,mouse_y)-15+i*15
						}
					}
				}
			}
			else if(coldDownCnt>0){
				coldDown=coldDownCnt+180
				coldDownCnt=0
			}
			if(keyboard_check_pressed(vk_space)&&energy>=4){
				energy-=4
				if(moveTime<20) moveTime=20
			}
			if(keyboard_check_pressed(ord("F"))&&coldDown2==0){
				coldDown2=3600
				energy+=10
				for(var i=0;i<60;i++){
					with(instance_create_depth(x,y,0,obj_multiShot)){
						time=90
						alarm[0]=90
						magic=1
						multicnt=6
						direction=i*6
					}
				}
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