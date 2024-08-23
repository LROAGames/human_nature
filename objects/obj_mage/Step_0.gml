
//mage
if(room==room_title||room==room_settings||room==room_help||room==room_chooseMap){
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
				beatenEffectTime=30
				preHp=hp
			}
			if(beatenEffectTime>15){
				image_alpha-=0.05
			}
			if(0<beatenEffectTime&&beatenEffectTime<=15){
				image_alpha+=0.05
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
			if(y>room_height) y=room_height
			if(y<0) y=0
			if(x>room_width) x=room_width
			if(x<0) x=0
			if(preHp<=0) game_restart()
			if(a>0) a-=1
			if(b>0) b-=1
			if(c>0) c-=1
			if(d>0) d-=1
			if(e>0) e-=1
			if(f>0) f-=1
			if(g>0) g-=1
			if(m>0) m-=1
			if(n>0) n-=1
			if(o>0) o-=1
			if(q>0) q-=1
			if(angryTime>0) angryTime-=1
			if(lightTime>0) lightTime-=1
			if(freezeTime>0) freezeTime-=1
			if(magicTime>0){
				if(magicTime%300==0){
					for(var i=0;i<15;i++){
						if(obj_staff.sprId==0&&i%4==0||obj_staff.sprId==4&&i%4==0){
							with(instance_create_depth(x,y,-50,obj_lightStar)){
								direction=i*120
								alarm[0]=1080
								a=1080
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
					for(var i=0;i<15;i++){
						with(instance_create_depth(obj_staff.x,obj_staff.y,-50,obj_iceBullet)){
							direction=i*24
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
			if(energy<100){
				energyRecoverTime+=1
				if(energyRecoverTime>=60){
					if(magicTime>0) energy+=1.5
					else energy+=1
					energyRecoverTime=0
				}
			}
			if(hp<=30) magicTime=60
			if(energy<0) energy=0
			if(energy>100) energy=100
			if(beatenEffectTime>0) beatenEffectTime-=1
			if(coldDown>0) coldDown-=1
			if(coldDown2>0) coldDown2-=1
			if(hp>100) hp=100
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
							if(energy>=1.5){
								energy-=1.5
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
							if(energy>=1.5){
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
							alarm[0]=(12-(other.p-3)*(other.p-3))*60
							a=(12-(other.p-3)*(other.p-3))*60
						}
					}
				}
				else if(obj_staff.sprId==2){
					iceTime=p*15
				}
				else if(obj_staff.sprId==3){
					for(var i=0;i<p*p*1.2;i+=1){
						with(instance_create_depth(obj_staff.x,obj_staff.y,0,obj_shot)){
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
							alarm[0]=(12-(other.p-3)*(other.p-3))*60
							a=(12-(other.p-3)*(other.p-3))*60
						}
					}
					iceTime=p*30
					for(var i=0;i<p*p*3;i+=1){
						with(instance_create_depth(obj_staff.x,obj_staff.y,0,obj_shot)){
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
			if(mouse_check_button_pressed(mb_right)&&coldDown==0&&energy>=20&&obj_staff.sprId!=4){
				coldDown=1800
				energy-=18
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
					if(instance_exists(obj_enemyBullet_redyy)) instance_destroy(obj_enemyBullet_redyy)
				}
				else if(obj_staff.sprId==2){
					freezeTime=1
				}
				else if(obj_staff.sprId==3){
					for(var i=0;i<120;i+=1){
						with(instance_create_depth(x,y,0,obj_shot)){
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
			if(keyboard_check_pressed(ord("F"))&&coldDown2==0&&energy>=10){
				energy-=10
				angry=1
				angryTime=900
				coldDown2=9000
				magicTime=900
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