/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
//audio_stop_all()
if(room==room_settings){
	if(keyboard_check_pressed(ord("1"))){
		role="cowboy"
		player=obj_cowboy
	}
	else if(keyboard_check_pressed(ord("2"))){
		role="ninja"
		player=obj_ninja
	}
	else if(keyboard_check_pressed(ord("3"))){
		role="mage"
		player=obj_mage
	}
	else if(keyboard_check_pressed(ord("4"))){
		role="warrior"
		player=obj_warrior
	}
}