/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
//audio_stop_all()
if(keyboard_check_pressed(ord("1"))){
	room_goto(room_forest)
}
else if(keyboard_check_pressed(ord("2"))){
	room_goto(room_desert)
}
else if(keyboard_check_pressed(ord("3"))){
	room_goto(room_sea)
}
else if(keyboard_check_pressed(ord("X"))){
	game_restart()
}