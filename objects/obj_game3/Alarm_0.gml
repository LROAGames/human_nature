/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	alarm[0]=30
	instance_create_depth(irandom(room_width),irandom(room_height),5,obj_bubble)
	instance_create_depth(irandom(room_width),irandom(room_height),3,obj_enemyBall)
}