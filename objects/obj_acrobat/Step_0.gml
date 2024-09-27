
//acrobat
event_inherited();
if(room==room_title||room==room_chooseRole||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
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
				if(h>30+p*15){
					if(p>=3) p=3
					else{
						if(energy>=1+p*0.5){
							energy-=1+p*0.5
							p+=1
						}
					}
					h=0
				}
			}
			if(mouse_check_button_released(mb_left)){
				if(p==0&&energy>=0.5){
					energy-=0.5
					with(instance_create_depth(x,y,0,obj_multiShot)){
						magic=1
						multicnt=3
						direction=point_direction(x,y,mouse_x,mouse_y)
					}
				}
				else{
					for(var i=0;i<1+p*2;i+=1){
						with(instance_create_depth(x,y,0,obj_multiShot)){
							time=other.p*30+30
							alarm[0]=other.p*30+30
							magic=other.p
							multicnt=2
							direction=point_direction(x,y,mouse_x,mouse_y)-other.p*4+i*4
						}
					}
				}
				h=0
				p=0
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