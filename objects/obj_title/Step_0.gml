/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(keyboard_check_pressed(ord("Z"))){
	room_goto(room_chooseRole)
}
if(keyboard_check_pressed(ord("X"))){
	audio_pause_all()
	room_goto(room_settings)
}
if(keyboard_check_pressed(ord("C"))){
	audio_pause_all()
	room_goto(room_help)
}