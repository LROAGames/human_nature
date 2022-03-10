/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(obj_pause.stop=0){
	if(keyboard_check(ord("W"))){
		y-=spd
	}
	if(keyboard_check(ord("S"))){
		y+=spd
	}
	if(keyboard_check(ord("A"))){
		x-=spd
	}
	if(keyboard_check(ord("D"))){
		x+=spd
	}
	if(keyboard_check(vk_up)){
		y-=spd
	}
	if(keyboard_check(vk_down)){
		y+=spd
	}
	if(keyboard_check(vk_left)){
		x-=spd
	}
	if(keyboard_check(vk_right)){
		x+=spd
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
	if(coldDown>0) coldDown-=1
	if(hp>100) hp=100
	if(b=0) spd=4
	if(mouse_check_button(mb_left)){
		instance_create_depth(x,y,-5,obj_savePower)
		h+=1
		if(h>60){
			p=1
			h=0
		}
	}
	if(mouse_check_button_released(mb_left)){
		for(var i=0;i<p;i++){
			with(instance_create_depth(x,y,0,obj_shot)){
				speed=16
				direction=point_direction(x,y,mouse_x,mouse_y)
				image_angle=direction
			}
		}
		h=0
		p=0
	}
	if(mouse_check_button_pressed(mb_left)){
		with(instance_create_depth(x,y,0,obj_bullet)){
			speed=16
			direction=point_direction(x,y,mouse_x,mouse_y)
			image_angle=direction
		}
	}
	if((keyboard_check_pressed(ord("X"))||mouse_check_button_pressed(mb_right))&&coldDown<=0){
		for(var i=0;i<200;i+=1) instance_create_depth(x,y,0,obj_shot)
		coldDown=1080
	}
}