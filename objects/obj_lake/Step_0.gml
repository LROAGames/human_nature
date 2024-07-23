/// @description Insert description here
// You can write your code in this editor
depth=50
if(obj_pause.stop==0){
	if(distance_to_point(obj_player.x,obj_player.y)<100){
		obj_player.spd=2
		if(obj_player.g==0&&obj_player.hp<100){
			obj_player.hp+=1
			obj_player.g=120
		}
	}
	if(keyboard_check_pressed(ord("Z"))&&obj_game2.a=2){
		room_goto(room_game2_2)
	}
}