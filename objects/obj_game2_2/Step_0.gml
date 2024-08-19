/// @description Insert description here
// You can write your code in this editor
player=obj_chooseRole.player
if(player.y>=20400) room_goto(room_sea)
if(obj_pause.stop=0){
	player.y+=6
}