/// @description Insert description here
// You can write your code in this editor
if(obj_pause.stop=0){
	alarm[0]=180
	for(var i=0;i<9;i++) instance_create_depth(irandom(room_width),irandom(room_height),5,obj_bubble)
	var xx=irandom(room_width)
	var yy=irandom(room_height)
	if((xx<player.x-300||xx>player.x+300)&&(yy<player.y-300||yy>player.y+300)){
		instance_create_depth(xx,yy,3,obj_enemyBall)
		instance_create_depth(xx,yy,3,obj_speedEnemyBall)
	}
}