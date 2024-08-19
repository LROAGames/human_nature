/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if(obj_pause.stop=0){
	alarm[0]=50
	var xx=irandom(room_width)
	var yy=irandom(room_height)
	if((xx<player.x-300||xx>player.x+300)&&(yy<player.y-300||yy>player.y+300)){
		instance_create_depth(xx,yy,2,obj_enemyBall)
	}
}