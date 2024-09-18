
//cowboy
event_inherited();
if(room==room_title||room==room_settings||room==room_help||room==room_chooseMap||room==room_chooseRole||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="cowboy"){
		if(obj_pause.stop==0){
			depth=-y
			if(angryTime==0&&h==0&&bulletTime==0){
				angry=0
			}
			if(angry==0){
				image_blend=c_white
			}
			else if(angry==1){
				spd=6
				image_blend=c_red
			}
			if(hurtcnt>=3){
				hurtcnt-=3
				for(var i=0;i<30;i+=1){
					with(instance_create_depth(x,y,0,obj_shot)){
						direction=point_direction(x,y,mouse_x,mouse_y)+i*12
						image_angle=direction
					}
				}
			}
			if(beatenEffectTime==0){
				image_alpha=1
			}
			if(hp<preHp){
				hurtcnt+=1
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
			if(hp<=0) game_restart()
			if(beatenEffectTime>0) beatenEffectTime-=1
			if(coldDown>0) coldDown-=1
			if(coldDown2>0) coldDown2-=1
			if(angryTime>0){
				angryTime-=1
				if(angryTime%300==0){
					hurtcnt+=3
				}
			}
			if(hp>maxHp){
				hp=maxHp
				preHp=maxHp
			}
			if(b==0) spd=4.5
			else if(b<0){
				spd=2
			}
			else{
				spd=6
			}
			if(fireTime>0){
				if(fireTime%10==0){
					for(var i=0;i<45;i+=1){
						with(instance_create_depth(x,y,0,obj_shot)){
							direction=point_direction(x,y,mouse_x,mouse_y)-90+i*4
							image_angle=direction
						}
					}
				}
				fireTime-=1
			}
			if(mouse_check_button_pressed(mb_right)&&coldDown<=0){
				if(hp<=1){
					hp=0.1
				}
				else{
					hp-=1
				}
				fireTime=20
				coldDown=960
			}
			if(mouse_check_button_released(mb_left)){
				if(p>0){
					if(p>bullet){
						p=bullet
					}
					bullet-=p
					for(var i=0;i<p;i++){
						with(instance_create_depth(x,y,0,obj_shot)){
							speed=16
							direction=point_direction(x,y,mouse_x,mouse_y)-10+i*4
							image_angle=direction
						}
					}
				}
				else if(p==0&&bullet>=1&&bulletTime==0){
					bullet-=1
					if(angry==0){
						if(irandom(10)<2){
							with(instance_create_depth(x,y,0,obj_shot)){
								speed=16
								direction=point_direction(x,y,mouse_x,mouse_y)
								image_angle=direction
							}
						}
						else{
							with(instance_create_depth(x,y,0,obj_bullet)){
								speed=16
								direction=point_direction(x,y,mouse_x,mouse_y)
								image_angle=direction
							}
						}
					}
					else if(angry==1){
						for(var i=0;i<5;i+=1){
							if(irandom(10)<2){
								with(instance_create_depth(x,y,0,obj_shot)){
									speed=16
									direction=point_direction(x,y,mouse_x,mouse_y)-10+i*4
									image_angle=direction
								}
							}
							else{
								with(instance_create_depth(x,y,0,obj_bullet)){
									speed=16
									direction=point_direction(x,y,mouse_x,mouse_y)-10+i*4
									image_angle=direction
								}
							}
						}
					}
				}
				h=0
				p=0
			}
			if(h==0){
				if(keyboard_check(vk_space)){
					instance_create_depth(x,y,-999999999,obj_reload)
					spd=2
					bulletTime+=1
					if(angry==0){
						if(bulletTime>120){
							bulletTime=120
						}
					}
					else if(angry==1){
						if(bulletTime>60){
							bulletTime=60
						}
					}
				}
				if(keyboard_check_released(vk_space)){
					if(angry==0){
						if(bulletTime>=120){
							bullet=maxBullet
							bulletTime=0
						}
					}
					else if(angry==1){
						if(bulletTime>=60){
							bullet=maxBullet
							bulletTime=0
						}
					}
				}
			}
			if(h==0&&bulletTime==0){
				if(keyboard_check_pressed(ord("F"))&&coldDown2<=0){
					if(hp<=20){
						hp=0.1
						hurtcnt+=4
					}
					else{
						hp-=20
						hurtcnt+=4
					}
					bullet=maxBullet
					angry=1
					angryTime=1200
					coldDown2=6000
				}
			}
			if(bullet>0){
				if(bulletTime==0){
					if(mouse_check_button(mb_left)){
						instance_create_depth(x,y,-999999999,obj_savePower)
						h+=1
						if(angry==0){
							if(h>=60){
								p+=5
								if(p>5) p=5
								h=0
							}
						}
						else if(angry==1){
							if(h>=30){
								p+=5
								if(p>5) p=5
								h=0
							}
						}
					}
				}
			}
		}	
	}
	else{
		instance_destroy()
	}
}
