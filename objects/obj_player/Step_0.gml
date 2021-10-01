/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(keyboard_check(ord("W"))||keyboard_check(vk_up)){
	y-=spd
}
if(keyboard_check(ord("S"))||keyboard_check(vk_down)){
	y+=spd
}
if(keyboard_check(ord("A"))||keyboard_check(vk_left)){
	x-=spd
}
if(keyboard_check(ord("D"))||keyboard_check(vk_right)){
	x+=spd
}
if(y>room_height) y=room_height
if(y<0) y=0
if(x>room_width) x=room_width
if(x<0) x=0
if(hp<=0) game_restart()
if(a>0) a-=1
coldDown-=1
timer-=1
if(mouse_check_button(mb_left)&&coldDown<=0){
	with(instance_create_depth(x,y,-1,obj_bullet)){
		speed=16
		direction=point_direction(x,y,mouse_x,mouse_y)
		image_angle=direction
	}
	coldDown=30
}
if(mouse_check_button(mb_right)&&timer<=0){
	with(instance_create_depth(x,y,-1,obj_pierce)){
		speed=16
		direction=point_direction(x,y,mouse_x,mouse_y)
		image_angle=direction
	}
	timer=300
}