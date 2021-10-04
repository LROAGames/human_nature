/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_f11)){
	if(!full){
		window_set_fullscreen(true)
		full=true
	}
	else{
		window_set_fullscreen(false)
		full=false
	}
}