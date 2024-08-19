/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("P"))||keyboard_check_pressed(vk_escape)){
	if(stop=0) stop=1
	else stop=0
}
if(keyboard_check_pressed(ord("R"))&&stop==1){
	game_restart()
}