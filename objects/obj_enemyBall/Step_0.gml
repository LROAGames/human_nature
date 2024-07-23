// 你可以在此编辑器中写入代码
if(obj_pause.stop==0){
	depth=-y
	speed=2
	image_angle = direction
	if(distance_to_point(obj_player.x,obj_player.y)<30){
		if(obj_player.a==0){
			obj_player.hp-=10
			obj_player.a=60
		}
	}
	if(room==room_game3){
		if(instance_exists(obj_seaEnemyBoss)){
			if(distance_to_point(obj_seaEnemyBoss.x,obj_seaEnemyBoss.y)<100){
				obj_seaEnemyBoss.hp+=10
				instance_destroy()
			}
			if(alarm[0]<600){
				direction = point_direction(x,y,obj_seaEnemyBoss.x,obj_seaEnemyBoss.y)
			}
			else{
				direction = point_direction(x,y,obj_player.x,obj_player.y)
			}
		}
		else{
			direction = point_direction(x,y,obj_player.x,obj_player.y)
		}
		if(cd==0){
			for(var i=0;i<6;i+=1){
				with(instance_create_depth(x,y,0,obj_enemyBullet_redyy)){
					speed=4
					direction=other.angel
					image_angle=direction
				}
				angel=(angel+60)%360
			}
			cd=300
		}
	}
	else{
		direction = point_direction(x,y,obj_player.x,obj_player.y)
	}
	if(cd>0) cd-=1
}
else{
	alarm[0]+=1
	speed=0
}
