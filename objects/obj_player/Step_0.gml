/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(keyboard_check(vk_up)){y-=spd
	b=1
}
if(keyboard_check(vk_down)){y+=spd
	b=2
}
if(keyboard_check(vk_left)){x-=spd
	b=3
}
if(keyboard_check(vk_right)){x+=spd
	b=4
}
if(y>room_height) y=room_height
if(y<0) y=0
if(x>room_width) x=room_width
if(x<0) x=0
if(hp<=0) game_restart()
if(a>0) a-=1
if(keyboard_check_pressed(ord("Z"))){
	with(instance_create_depth(x,y,-1,obj_bullet)){
		speed=16
		if(other.b=1){
			direction=90
			image_angle=direction
		}
		if(other.b=2){
			direction=270
			image_angle=direction
		}
		if(other.b=3){
			direction=180
			image_angle=direction
		}
		if(other.b=4){
			direction=0
			image_angle=direction
		}
	}
}