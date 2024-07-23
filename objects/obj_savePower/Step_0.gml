/// @description Insert description here
// You can write your code in this editor
depth=-999999999
x=obj_player.x
y=obj_player.y
if(obj_player.angry==0){
	direction+=6
}
else if(obj_player.angry==1){
	direction+=12
}
image_angle = direction
if(mouse_check_button_released(mb_left)/*&&!keyboard_check(ord("Z"))*/){
	instance_destroy()
}