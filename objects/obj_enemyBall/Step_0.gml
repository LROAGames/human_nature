// 你可以在此编辑器中写入代码
if(obj_pause.stop=0){
	speed=2
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	image_angle = direction
}
else{
	speed=0
}
if(room_get_name(room_game3)){
	if(cd==0){
		for(var i=0;i<6;i+=1)
		with(instance_create_depth(x,y,0,obj_enemyBullet_redyy)){
			speed=4
			direction=angel
			image_angle=direction
		}
		angel=angel+50
	}
	cd=300
}