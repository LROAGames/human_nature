
//ninja
if(room==room_title||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="ninja"){
		if(obj_pause.stop==0){
			depth=-y
			if(beatenEffectTime==0&&ninjaTime==0){
				image_alpha=1
			}
			if(hp<preHp){
				if(ninjaTime>0){
					hp=preHp
				}
				else{
					beatenEffectTime=30
					if(irandom(10)<2){
						hp=preHp
						with(instance_create_depth(x,y,1,obj_darkHole)){
							direction=other.direction
							image_angle=direction
						}
					}
					else preHp=hp
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
			if(distance_to_point(mx,my)<40){
				flag=0
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
			if(energy<100){
				energyRecoverTime+=1
				if(energyRecoverTime>=60){
					if(angry==0){
						if(energy<60) energy+=1.5
						else energy+=1
					}
					else energy+=0.5
					energyRecoverTime=0
				}
			}
			if(energy<0) energy=0
			if(energy>100) energy=100
			if(beatenEffectTime>0) beatenEffectTime-=1
			if(coldDown>0) coldDown-=1
			if(coldDown2>0) coldDown2-=1
			if(shadowTime>0) shadowTime-=1
			if(hp>100){
				hp=100
				preHp=100
			}
			if(ninjaTime>0){
				coldDown=0
				image_blend=c_black
				image_alpha-=0.0015
				ninjaTime-=1
				obj_knife.attackTime=30
			}
			if(b==0){
				if(ninjaTime>0){
					spd=6
					image_blend=c_black
				}
				else if(energy>=60){
					spd=5
					image_blend=c_yellow
				}
				else if(30<=energy&&energy<60){
					spd=4.5
					image_blend=c_white
				}
				else{
					spd=4
					image_blend=c_grey
				}
			}
			else{
				spd=6
			}
			if(mouse_check_button_pressed(mb_left)&&shadowTime<=0&&energy>=1){
				energy-=1
				obj_knife.attackTime=30
				shadowTime=60
				flag=1
				mx=mouse_x
				my=mouse_y
			}
			else if(mouse_check_button_pressed(mb_left)&&shadowTime>0&&energy>=1&&angry==0){
				energy-=1
				flag=0
				shadowTime=0
				x=obj_ninjaRealShadow.x
				y=obj_ninjaRealShadow.y
			}
			else if(mouse_check_button_pressed(mb_left)&&shadowTime>0&&energy>=1&&angry==1){
				energy-=1
				flag=0
				shadowTime=0
			}
			if(mouse_check_button_pressed(mb_right)&&coldDown<=0&&energy>=12){
				energy-=12
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
			if(keyboard_check_pressed(ord("F"))&&shadowTime==0&&ninjaTime==0&&energy>=25&&coldDown2==0){
				energy-=25
				ninjaTime=600
				coldDown2=4800
				image_alpha=1
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