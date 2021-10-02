/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
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
if(y>room_height) y=room_height
if(y<0) y=0
if(x>room_width) x=room_width
if(x<0) x=0
if(hp<=0) game_restart()
if(a>0) a-=1
if(keyboard_check_pressed(ord("Z"))||mouse_check_button_pressed(mb_left)){
	with(instance_create_depth(x,y,1,obj_bullet)){
		speed=16
		direction=point_direction(x,y,mouse_x,mouse_y)
		image_angle=direction
	}
}