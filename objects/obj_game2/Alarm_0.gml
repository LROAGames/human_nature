/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	alarm[0]=120
	instance_create_depth(irandom(room_width),irandom(room_height),2,obj_speedEnemyBall)
	instance_create_depth(irandom(room_width),irandom(room_height),4,obj_desertEnemy)
}