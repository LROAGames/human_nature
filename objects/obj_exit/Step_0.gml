/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
player=obj_chooseRole.player
if(y>room_height-768) y=room_height-768
if(y<768) y=768
if(x>room_width-1366) x=room_width-1366
if(x<1366) x=1366
if(distance_to_object(player)<10){
	if(keyboard_check_pressed(ord("Z"))) room_goto(room_win)
}