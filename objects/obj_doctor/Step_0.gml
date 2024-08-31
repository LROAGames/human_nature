
//summoner
if(room==room_title||room==room_settings||room==room_help||room==room_chooseMap||room==room_win){
	visible=false
}
else{
	visible=true
	if(obj_chooseRole.role=="doctor"){
		if(obj_pause.stop==0){
			depth=-y
			if(obj_needle.mode=="heal") image_blend=c_fuchsia
			else if(obj_needle.mode=="posion") image_blend=c_green
			if(beatenEffectTime==0){
				image_alpha=0.4+(maxHp-40-(maxHp-40)%30)/100
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
				image_alpha=0.1
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
			if(b==0){
				spd=4+(maxEnergy-40-(maxEnergy-40)%30)/60
			}
			else{
				spd=6
			}
			if(energy<0) energy=0
			if(energy>maxEnergy) energy=maxEnergy
			if(beatenEffectTime>0) beatenEffectTime-=1
			if(coldDown>0) coldDown-=1
			if(coldDown2>0) coldDown2-=1
			if(hp>maxHp) hp=maxHp
			if(mouse_check_button(mb_left)&&obj_needle.attackTime<=-24){
				instance_create_depth(x,y,-999999999,obj_savePower)
				h+=1
				if(h>=30){
					if(p<1&&energy>=3){
						energy-=3
						p+=1
					}
					h=0
				}
			}
			if(mouse_check_button_released(mb_left)&&obj_needle.attackTime<=-24){
				if(p==0){
					if(obj_needle.mode=="heal"){
						obj_needle.attackTime=6
					}
					else if(obj_needle.mode=="posion"&&hp>0.2){
						hp-=0.2
						obj_needle.attackTime=6
					}
				}
				else{
					if(obj_needle.mode=="heal"){
						if(b<120) b=120
						hp+=2
					}
					else if(obj_needle.mode=="posion"){
						obj_needle.attackTime=36
					}
				}
				h=0
				p=0
			}
			if(mouse_check_button_pressed(mb_right)&&energy>=10&&coldDown<=0){
				coldDown=1500
				energy-=10
				var md=obj_needle.mode
				obj_needle.alarm[0]=600
				for(var i=1;i<=7;i++){
					with(instance_create_depth(x,y,-y,obj_needle)){
						num=i
						mode=md
						alarm[0]=600
						direction=point_direction(x,y,mouse_x,mouse_y)-120+num*30
						image_angle=direction
					}
				}
				obj_needle.attackTime=36
			}
			if(keyboard_check_pressed(ord("F"))&&energy>=maxEnergy){
				energy=0
				if(maxEnergy<100) maxEnergy+=30
				if(maxHp<100) maxHp+=30
				preHp=maxHp
				hp=maxHp
				for(var i=0;i<5;i++){
					for(var j=0;j<5;j++){
						with(instance_create_depth(x-250+i*100,y-250+j*100,-y,obj_darkHole)){
							direction=other.direction
							image_angle=direction
						}
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