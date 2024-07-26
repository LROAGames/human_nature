/// @description 在此处插入描述
// 你可以在此编辑器中写入代码
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
			if(room!=room_game2_2) hurtcnt+=1
			beatenEffectTime=30
			preHp=hp
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
		/*else if(keyboard_check(vk_up)){
			y-=spd
			direction=90
		}
		else if(keyboard_check(vk_down)){
			y+=spd
			direction=-90
			sprite_index=spr_player_move_front
		}
		else if(keyboard_check(vk_left)){
			x-=spd
			direction=180
			sprite_index=spr_player_move_left
		}
		else if(keyboard_check(vk_right)){
			x+=spd
			direction=0
			sprite_index=spr_player_move_right
		}*/
		else{
			sprite_index=spr_player_cowboy
		}
		if(y>room_height) y=room_height
		if(y<0) y=0
		if(x>room_width) x=room_width
		if(x<0) x=0
		if(hp<=0) game_restart()
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
		if(beatenEffectTime>0) beatenEffectTime-=1
		if(coldDown>0) coldDown-=1
		if(coldDown2>0) coldDown2-=1
		if(angryTime>0){
			angryTime-=1
		}
		if(hp>100) hp=100
		if(b==0) spd=4
	
		if((mouse_check_button_pressed(mb_right)&&coldDown<=0)
		||(keyboard_check_pressed(ord("X"))&&coldDown<=0)){
			for(var i=0;i<90;i+=1){
				with(instance_create_depth(x,y,0,obj_shot)){
					direction=point_direction(x,y,mouse_x,mouse_y)-90+i*2
					image_angle=direction
				}
			}
			coldDown=1080
		}
		if(mouse_check_button_released(mb_left)){
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
						bullet=60
						bulletTime=0
					}
				}
				else if(angry==1){
					if(bulletTime>=60){
						bullet=60
						bulletTime=0
					}
				}
			}
		}
		if(h==0&&bulletTime==0){
			if(keyboard_check_pressed(ord("F"))&&coldDown2<=0){
				if(hp<=20) hp=1
				else hp-=20
				bullet=60
				angry=1
				angryTime=1200
				coldDown2=4800
			}
		}
		if(bullet>0){
			if(bulletTime==0){
				if(mouse_check_button_pressed(mb_left)){
					bullet-=1
					if(angry==0){
						with(instance_create_depth(x,y,0,obj_bullet)){
							speed=16
							direction=point_direction(x,y,mouse_x,mouse_y)
							image_angle=direction
						}
					}
					else if(angry==1){
						for(var i=0;i<3;i+=1){
							with(instance_create_depth(x,y,0,obj_bullet)){
								speed=16
								direction=point_direction(x,y,mouse_x,mouse_y)-5+i*5
								image_angle=direction
							}
						}
					}
				}
				if(/*keyboard_check(ord("Z"))||*/mouse_check_button(mb_left)){
					instance_create_depth(x,y,-999999999,obj_savePower)
					h+=1
					if(angry==0){
						if(h>60){
							p+=5
							if(p>5) p=5
							h=0
						}
					}
					else if(angry==1){
						if(h>30){
							p+=5
							if(p>5) p=5
							h=0
						}
					}
				}
			}
			/*else if(keyboard_check_released(ord("Z"))){
				if(p>bullet){
					p=bullet
				}
				bullet-=p
				for(var i=0;i<p;i++){
					with(instance_create_depth(x,y,0,obj_shot)){
						speed=16
						direction=obj_player.direction-10+i*4
						image_angle=direction
					}
				}
				h=0
				p=0
			}
			else if(keyboard_check_pressed(ord("Z"))){
				with(instance_create_depth(x,y,0,obj_bullet)){
					speed=16
					direction=obj_player.direction
					image_angle=direction
				}
			}*/
		}
		else{
			/*if(keyboard_check_released(ord("Z"))){
				if(bulletTime>=120){
					bullet=60
					bulletTime=0
				}
			}*/
		}
	}	
}



else if(obj_chooseRole.role=="ninja"){
	if(obj_pause.stop==0){
		depth=-y
		if(distance_to_point(mx,my)<40){
			flag=0
		}
		if(beatenEffectTime==0){
			image_alpha=1
		}
		if(hp<preHp){
			if(ninjaTime>0){
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
		if(flag==1&&shadowTime>0){
			move_towards_point(mx,my,30)
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
		if(hp<=0) game_restart()
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
		if(energy<100&&angry==0){
			energyRecoverTime+=1
			if(energyRecoverTime>=60){
				energy+=1
				energyRecoverTime=0
			}
		}
		if(energy<0) energy=0
		if(energy>100) energy=100
		if(beatenEffectTime>0) beatenEffectTime-=1
		if(coldDown>0) coldDown-=1
		if(coldDown2>0) coldDown2-=1
		if(shadowTime>0) shadowTime-=1
		if(hp>100) hp=100
		if(ninjaTime>0){
			ninjaTime-=1
			obj_knife.attackTime=30
		}
		if(b==0){
			if(energy>=70){
				spd=5
				image_blend=c_yellow
			}
			else if(40<=energy&&energy<70){
				spd=4
				image_blend=c_white
			}
			else{
				spd=3
				image_blend=c_grey
			}
		}
		if(mouse_check_button_pressed(mb_left)&&shadowTime<=0&&((energy>=1&&angry==0)||(energy>=2&&angry==1))){
			if(angry==0) energy-=1
			else energy-=2
			shadowTime=60
			flag=1
			mx=mouse_x
			my=mouse_y
		}
		if(mouse_check_button_pressed(mb_right)&&coldDown<=0&&energy>=10){
			energy-=10
			coldDown=900
			for(var i=0;i<30;i+=1){
				with(instance_create_depth(x,y,depth+10,obj_bigKnife)){
					direction=i*12
				}
			}
		}
		if(keyboard_check_pressed(vk_space)&&shadowTime==0&&obj_knife.attackTime==0){
			if(angry==0) angry=1
			else angry=0
		}
		if(keyboard_check_pressed(ord("F"))&&shadowTime==0&&ninjaTime==0&&energy>=50&&coldDown2==0){
			energy-=50
			ninjaTime=500
			coldDown2=4500
		}
	}
	else{
		speed=0
	}
}