/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
//audio_stop_all()
if(room==room_chooseRole){
	if(keyboard_check_pressed(ord("1"))){
		role="cowboy"
		player=obj_cowboy
		room_goto(room_chooseMap)
		flag=1
	}
	else if(keyboard_check_pressed(ord("2"))){
		role="ninja"
		player=obj_ninja
		room_goto(room_chooseMap)
		flag=1
	}
	else if(keyboard_check_pressed(ord("3"))){
		role="mage"
		player=obj_mage
		room_goto(room_chooseMap)
		flag=1
	}
	else if(keyboard_check_pressed(ord("4"))){
		role="warrior"
		player=obj_warrior
		room_goto(room_chooseMap)
		flag=1
	}
	else if(keyboard_check_pressed(ord("5"))){
		role="doctor"
		player=obj_doctor
		room_goto(room_chooseMap)
		flag=1
	}
	else if(keyboard_check_pressed(ord("6"))){
		role="summoner"
		player=obj_summoner
		room_goto(room_chooseMap)
		flag=1
	}
	else if(keyboard_check_pressed(ord("7"))){
		role="acrobat"
		player=obj_acrobat
		room_goto(room_chooseMap)
		flag=1
	}
	else if(keyboard_check_pressed(ord("X"))){
		game_restart()
	}
}