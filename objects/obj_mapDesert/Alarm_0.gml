/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	alarm[0]=90
	var xx=irandom(room_width)
	var yy=irandom(room_height)
	if((xx<player.x-300||xx>player.x+300)&&(yy<player.y-300||yy>player.y+300)){
		instance_create_depth(xx,yy,2,obj_speedEnemyBall)
		instance_create_depth(xx,yy,4,obj_desertEnemy)
	}
}