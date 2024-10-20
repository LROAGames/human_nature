
//mage
event_inherited();
if(room==room_chooseDifficulty||room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="mage"){
		if(obj_pause.stop==0){
			depth=-y
			if(angryTime==0&&h==0&&p==0){
				angry=0
			}
			if(obj_staff.sprId==0){
				image_blend=c_yellow
			}
			else if(obj_staff.sprId==1){
				image_blend=c_dkgray				
			}
			else if(obj_staff.sprId==2){
				image_blend=c_aqua
			}
			else if(obj_staff.sprId==3){
				image_blend=c_red
			}
			else if(obj_staff.sprId==4){
				image_blend=c_ltgray
			}
			if(beatenEffectTime==0){
				image_alpha=1
			}
			if(hp<preHp){
				if(darkTime>0){
					hp=preHp
				}
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
			if(darkTime>0){
				move_towards_point(mouse_x,mouse_y,12)
			}
			else{
				speed=0
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
			}
			if(y>room_height-768/2) y=room_height-768/2
			if(y<768/2) y=768/2
			if(x>room_width-1366/2) x=room_width-1366/2
			if(x<1366/2) x=1366/2
			if(preHp<=0) game_restart()
			if(angryTime>0) angryTime-=1
			if(lightTime>0) lightTime-=1
			if(freezeTime>0) freezeTime-=1
			if(magicTime>0){
				if(magicTime%300==0){
					for(var i=0;i<15;i++){
						if(obj_staff.sprId==0&&i%4==0||obj_staff.sprId==4&&i%4==0){
							with(instance_create_depth(x,y,-50,obj_lightStar)){
								direction=i*120
								alarm[0]=1200
								a=1200
							}
						}
						if(obj_staff.sprId==2||obj_staff.sprId==4){
							iceTime+=2
						}
						if(obj_staff.sprId==3||obj_staff.sprId==4){
							with(instance_create_depth(obj_staff.x,obj_staff.y,0,obj_shot)){
								speed=16
								direction=point_direction(x,y,mouse_x,mouse_y)+i*24
								image_angle=direction
							}
						}
					}
				}
				magicTime-=1
			}
			if(iceTime>0){
				if(iceTime%15==0){
					for(var i=0;i<20;i++){
						with(instance_create_depth(obj_staff.x,obj_staff.y,-50,obj_iceBullet)){
							direction=i*18
						}
					}
				}
				iceTime-=1
			}
			if(darkTime>0){
				with(instance_create_depth(x,y,depth+50,obj_darkHole)){
					direction=other.direction
					image_angle=direction
				}
				solid=false
				if(instance_exists(obj_tree))obj_tree.solid=false
				if(instance_exists(obj_cactus))obj_cactus.solid=false
				darkTime-=1
			}
			else{
				solid=true
				if(instance_exists(obj_tree))obj_tree.solid=true
				if(instance_exists(obj_cactus))obj_cactus.solid=true
			}
			if(b==0){
				if(magicTime>0) spd=5.5
				else if(lightTime>0) spd=5
				else spd=4.5
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
					if(magicTime>0) energy+=1.5
					else energy+=1
					energyRecoverTime=0
				}
			}
			if(hp<=30) magicTime=60
			if(energy<0) energy=0
			if(energy>maxEnergy) energy=maxEnergy
			if(coldDown>0) coldDown-=1
			if(coldDown2>0) coldDown2-=1
			if(hp>=maxHp){
				hp=maxHp
				preHp=maxHp
			}
			if(mouse_check_button(mb_left)&&energy>=2&&obj_staff.sprId!=1){
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
				if(angry==0){
					if(h>60){
						if(p>=3) p=3
						else{
							if(irandom(10)<2){
								p+=1
							}
							else if(energy>=2.5){
								energy-=2.5
								p+=1
							}
						}
						h=0
					}
				}
				else if(angry==1){
					if(h>30){
						if(p>=3) p=3
						else{
							if(irandom(10)<2){
								p+=1
							}
							else if(energy>=1.5){
								energy-=1.5
								p+=1
							}
						}
						h=0
					}
				}
			}
			if(mouse_check_button_released(mb_left)){
				if(obj_staff.sprId==0){
					hp+=p*0.2
					lightTime=(12-(other.p-3)*(other.p-3))*60
					for(var i=0;i<p;i++){
						with(instance_create_depth(x,y,-50,obj_lightStar)){
							direction=i*120
							alarm[0]=(15-(other.p-3)*(other.p-3))*60
							a=(15-(other.p-3)*(other.p-3))*60
						}
					}
				}
				else if(obj_staff.sprId==2){
					iceTime=p*15
				}
				else if(obj_staff.sprId==3){
					for(var i=0;i<p*p*1.2;i+=1){
						with(instance_create_depth(obj_staff.x,obj_staff.y,0,obj_shot)){
							magic=other.p
							speed=16
							direction=point_direction(x,y,mouse_x,mouse_y)-other.p*other.p*2.4+i*4
							image_angle=direction
						}
					}
				}
				else if(obj_staff.sprId==4){
					hp+=p*0.2
					for(var i=0;i<p;i++){
						with(instance_create_depth(x,y,-50,obj_lightStar)){
							direction=i*120
							alarm[0]=(15-(other.p-3)*(other.p-3))*60
							a=(15-(other.p-3)*(other.p-3))*60
						}
					}
					iceTime=p*30
					for(var i=0;i<p*p*3;i+=1){
						with(instance_create_depth(obj_staff.x,obj_staff.y,0,obj_shot)){
							//magic=other.p
							speed=16
							direction=point_direction(x,y,mouse_x,mouse_y)-other.p*other.p*3+i*2
							image_angle=direction
						}
					}
				}
				p=0
				h=0
			}
			if(mouse_check_button_pressed(mb_left)&&obj_staff.sprId==1&&energy>=8&&darkTime<=0){
				energy-=9
				darkTime=75
			}
			if(mouse_check_button_pressed(mb_right)&&coldDown==0&&energy>=15&&obj_staff.sprId!=4){
				coldDown=1800
				energy-=15
				magicTime=310
				if(obj_staff.sprId==0){
					hp+=3
					if(instance_exists(obj_enemyBall)){
						if(obj_enemyBall.lightTime<180) obj_enemyBall.lightTime=180
					}
					if(instance_exists(obj_desertEnemy)){
						if(obj_desertEnemy.lightTime<180) obj_desertEnemy.lightTime=180
					}
					if(instance_exists(obj_speedEnemyBall)){
						if(obj_speedEnemyBall.lightTime<180) obj_speedEnemyBall.lightTime=180
					}
					if(instance_exists(obj_strongEnemyBall)){
						if(obj_strongEnemyBall.lightTime<180) obj_strongEnemyBall.lightTime=180
					}
					if(instance_exists(obj_enemyBallBoss)){
						if(obj_enemyBallBoss.lightTime<180) obj_enemyBallBoss.lightTime=180
					}
					if(instance_exists(obj_desertEnemyBoss)){
						if(obj_desertEnemyBoss.lightTime<180) obj_desertEnemyBoss.lightTime=180
					}
					if(instance_exists(obj_seaEnemyBoss)){
						if(obj_seaEnemyBoss.lightTime<180) obj_seaEnemyBoss.lightTime=180
					}
					if(instance_exists(obj_enemyBulletRedyy)) instance_destroy(obj_enemyBulletRedyy)
				}
				else if(obj_staff.sprId==2){
					freezeTime=1
				}
				else if(obj_staff.sprId==3){
					for(var i=0;i<120;i+=1){
						with(instance_create_depth(x,y,0,obj_shot)){
							//magic=2
							direction=point_direction(x,y,mouse_x,mouse_y)+i*3
							image_angle=direction
						}
					}
				}
				else if(obj_staff.sprId==1){
					darkTime=180
					for(var i=0;i<100;i+=1){
						with(instance_create_depth(irandom(x-1000+irandom(2000)),y-1000+irandom(2000),depth+50,obj_darkHole)){
							direction=other.direction
							image_angle=direction
						}
					}
				}
			}
			if(keyboard_check_pressed(ord("F"))&&coldDown2==0&&energy>=30){
				energy-=30
				angry=1
				angryTime=1200
				coldDown2=7200
				magicTime=1200
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