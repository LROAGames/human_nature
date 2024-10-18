/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
//audio_stop_all()
if(room==room_chooseDifficulty){
	if(keyboard_check_pressed(ord("1"))){
		room_goto(room_chooseMap)
		difficulty=0.5
	}
	else if(keyboard_check_pressed(ord("2"))){
		room_goto(room_chooseMap)
		difficulty=1
	}
	else if(keyboard_check_pressed(ord("3"))){
		room_goto(room_chooseMap)
		difficulty=1.5
	}
	else if(keyboard_check_pressed(ord("4"))){
		room_goto(room_chooseMap)
		difficulty=2
	}
	else if(keyboard_check_pressed(ord("X"))){
		game_restart()
	}
}