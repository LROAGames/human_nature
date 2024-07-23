/// @description Insert description here
// You can write your code in this editor
hp-=1
if(hp<=0){
	if(obj_player.angry==1&&obj_player.hp<100){
		obj_player.hp+=0.1
	}
	score+=2
	instance_destroy()
}