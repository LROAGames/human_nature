/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	alarm[0]=60
	for(var i=0;i<6;i++) instance_create_depth(irandom(room_width),irandom(room_height),5,obj_bubble)
	instance_create_depth(irandom(room_width),irandom(room_height),3,obj_enemyBall)
}