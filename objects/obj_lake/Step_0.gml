/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
depth=50
if(obj_pause.stop==0){
	if(distance_to_point(player.x,player.y)<150){
		player.spd=2
		if(player!=obj_warrior){
			if(player.g==0&&player.hp<100){
				player.hp+=1
				player.g=90
			}
		}
		else{
			if(player.g==0&&player.revive==1&&player.hp<120){
				player.hp+=1
				player.g=90
			}
			else if(player.g==0&&player.revive==0&&player.hp<60){
				player.hp+=1
				player.g=90
			}
		}
	}
	if(keyboard_check_pressed(ord("Z"))&&obj_mapDesert.a=2){
		room_goto(room_title)
	}
}