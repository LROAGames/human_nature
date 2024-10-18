/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
depth=50
if(y>room_height-768) y=room_height-768
if(y<768) y=768
if(x>room_width-1366) x=room_width-1366
if(x<1366) x=1366
if(obj_pause.stop==0){
	if(distance_to_point(player.x,player.y)<150){
		player.spd=2
		if(player.g==0&&player.hp<player.maxHp){
			player.hp+=1
			player.g=90
		}
	}
	if(keyboard_check_pressed(ord("Z"))&&obj_mapDesert.a=2){
		room_goto(room_win)
	}
}